library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Required for unsigned arithmetic in Fastripple


-- N-bit adder with multiple architecture implementations.
-- Each architecture trades area, speed, and complexity differently.
-- Default generic N=64 targets a 64-bit datapath (e.g. RISC-V / x86-64).
--
-- Overflow (Ovfl) is SIGNED overflow throughout -- i.e. the two MSB carries
-- disagree, meaning the result cannot be represented in two's complement.
-- Unsigned overflow is just Cout. Keep this distinction in mind when hooking
-- up to an ALU flag register.
entity Adder is
    generic (
        N : natural := 64
    );
    Port (
        A    : in  std_logic_vector(N-1 downto 0);
        B    : in  std_logic_vector(N-1 downto 0);
        Cin  : in  std_logic;
        S    : out std_logic_vector(N-1 downto 0);
        Cout : out std_logic;
        Ovfl : out std_logic
    );
end Adder;


-- ============================================================================
-- BASELINE: Ripple-Carry Adder (RCA)
-- ============================================================================
-- The textbook carry-ripple. Simple, area-minimal, slow.
-- Critical path is O(N) gate delays -- unusable at high frequency for large N,
-- but synthesises to almost nothing and is easy to verify.
-- Used as the leaf cell in CarrySelect and CarrySkip, where N is small enough
-- that its latency is absorbed into the carry-select mux delay.
architecture Baseline of Adder is
    -- C(0) is Cin; C(N) becomes Cout.
    -- Declared N+1 wide so the generate loop can index C(i) and C(i+1) uniformly.
    signal C : std_logic_vector(N downto 0);
begin

    C(0) <= Cin;

    gen_ripple : for i in 0 to N-1 generate
        -- Full-adder sum bit
        S(i) <= A(i) xor B(i) xor C(i);

        -- Full-adder carry: majority function of the three inputs
        C(i+1) <= (A(i) and B(i)) or
                  (A(i) and C(i)) or
                  (B(i) and C(i));
    end generate;

    Cout <= C(N);

    -- Signed overflow: if the carry INTO the MSB differs from the carry OUT of
    -- the MSB, the sign bit flipped unexpectedly.
    Ovfl <= C(N) xor C(N-1);

end architecture Baseline;


-- ============================================================================
-- FASTRIPPLE: Synthesis-Friendly Ripple Carry
-- ============================================================================
-- Delegates the addition to the synthesiser's built-in '+' operator on
-- unsigned, which lets the tool pick the fastest carry structure it knows
-- (typically a carry-lookahead chain using device primitives).
-- Functionally identical to Baseline but typically 2-4x faster post-synthesis
-- on FPGAs with dedicated carry chains (e.g. Xilinx CARRY4/CARRY8 primitives).
--
-- The N+1 wide intermediate 'result' is the standard width-extension trick:
-- bit N captures the carry-out without a separate signal.
--
-- Overflow logic is independent of the '+' result -- it examines the sign
-- bits of inputs vs output directly (same formula as Baseline's C(N) xor C(N-1)).
--architecture Fastripple of Adder is
--    signal A_u, B_u : unsigned(N downto 0);
--    signal Cin_u    : unsigned(N downto 0);
--    signal result   : unsigned(N downto 0);
--begin
--
--    -- Zero-extend inputs to N+1 bits so carry lands in bit N of result
--    A_u <= resize(unsigned(A), N+1);
--    B_u <= resize(unsigned(B), N+1);
--
--    -- Convert single-bit Cin to an unsigned value; conditional avoids a numeric
--    -- conversion that some synthesis tools warn on
--    Cin_u <= (others => '0') when Cin = '0'
--             else to_unsigned(1, N+1);
--
--    result <= A_u + B_u + Cin_u;
--
--    S    <= std_logic_vector(result(N-1 downto 0));
--    Cout <= result(N);
--
--    -- Signed overflow: inputs have the same sign but the output sign differs.
--    -- (not (A xor B)) = "inputs have the same sign"
--    -- (result(N-1) xor A(N-1)) = "output sign disagrees with inputs"
--    Ovfl <= (not (A(N-1) xor B(N-1))) and
--            (std_logic(result(N-1)) xor A(N-1));
--
--end architecture Fastripple;
--
--
---- ============================================================================
---- CONDITIONALSUM: Divide-and-Conquer Adder
---- ============================================================================
---- Recursively splits the N-bit problem in half. Each half is computed twice:
---- once assuming Cin=0 and once assuming Cin=1. The carry out of the lower half
---- then selects the correct pre-computed upper result.
----
---- Depth is O(log N) in theory, but the recursive instantiation means the
---- synthesiser sees a deep tree of instances. Real-world critical path depends
---- heavily on how the tool flattens and maps the hierarchy.
----
---- NOTE: Requires N to be a power of 2. Non-power-of-2 widths will recurse
---- unevenly and may produce unexpected behaviour at the boundaries.
---- If you need an odd width, pad to the next power of 2 and ignore the MSBs.
architecture ConditionalSum of Adder is

    signal sum_low            : std_logic_vector(N/2-1 downto 0);
    signal sum_high0, sum_high1 : std_logic_vector(N/2-1 downto 0);
    signal carry_mid          : std_logic;  -- carry out of the lower half
    signal cout_high0, cout_high1 : std_logic;
    signal cout_int           : std_logic;
    signal S_int              : std_logic_vector(N-1 downto 0);

begin

    -- Base case: delegate a 1-bit add to the well-verified Baseline.
    -- Avoids infinite recursion and keeps simulation fast for small widths.
    base_case: if N = 1 generate
        base: entity work.Adder(Baseline)
            generic map (N => 1)
            port map (A => A, B => B, Cin => Cin,
                      S => S, Cout => Cout, Ovfl => Ovfl);
    end generate;

    recursive_case: if N > 1 generate

        -- Lower N/2 bits: carry propagates from Cin
        lower: entity work.Adder(ConditionalSum)
            generic map (N => N/2)
            port map (A => A(N/2-1 downto 0), B => B(N/2-1 downto 0),
                      Cin => Cin, S => sum_low, Cout => carry_mid, Ovfl => open);

        -- Upper N/2 bits, pre-computed for both possible carry-in values.
        -- Ovfl is ignored here; overflow is only meaningful for the full-width result.
        upper0: entity work.Adder(ConditionalSum)
            generic map (N => N/2)
            port map (A => A(N-1 downto N/2), B => B(N-1 downto N/2),
                      Cin => '0', S => sum_high0, Cout => cout_high0, Ovfl => open);

        upper1: entity work.Adder(ConditionalSum)
            generic map (N => N/2)
            port map (A => A(N-1 downto N/2), B => B(N-1 downto N/2),
                      Cin => '1', S => sum_high1, Cout => cout_high1, Ovfl => open);

        -- Mux the upper result based on the actual carry from the lower half
        S_int(N/2-1 downto 0) <= sum_low;
        S_int(N-1 downto N/2) <= sum_high0 when carry_mid = '0' else sum_high1;
        cout_int               <= cout_high0 when carry_mid = '0' else cout_high1;

        S    <= S_int;
        Cout <= cout_int;

        -- Signed overflow at the full-width MSB
        Ovfl <= (not (A(N-1) xor B(N-1))) and (S_int(N-1) xor A(N-1));

    end generate;

end architecture ConditionalSum;

--
---- ============================================================================
---- BCLA: Block Carry-Lookahead Adder (two-level, hardcoded for N=64)
---- ============================================================================
---- Classic two-level CLA: 16 four-bit blocks each produce local P/G signals,
---- which feed a second-level CLA to compute inter-block carries.
----
---- IMPORTANT: This architecture is hardcoded for N=64 (16 blocks of 4 bits).
---- The generic N is ignored. Instantiating with N != 64 will silently produce
---- incorrect results. If you need a different width, either parameterise the
---- block count or wrap this in an adapter.
----
---- The second-level lookahead is only fully unrolled for C(1)..C(3).
---- C(4)..C(16) fall back to a ripple over block G/P signals (gen_carries loop).
---- This is intentional: full two-level lookahead for 16 blocks would require
---- a very wide fan-in gate. The hybrid approach is a common area/speed compromise.
---- If you need a fully two-level CLA, split into four groups of four blocks and
---- add a third level.
architecture BCLA of Adder is

-- Number of 4-bit blocks: scales with N
    -- N=64 -> 16 blocks, N=32 -> 8 blocks, N=16 -> 4 blocks
    -- Requires N to be a multiple of 4.
    constant NUM_BLOCKS : natural := N / 4;
 
    -- Block-level propagate and generate, one per 4-bit block
    signal P, G : std_logic_vector(NUM_BLOCKS-1 downto 0);
 
    -- Inter-block carry chain: C(0)=Cin, C(NUM_BLOCKS)=Cout
    signal C    : std_logic_vector(NUM_BLOCKS downto 0);
 
begin
 
    C(0) <= Cin;
 
    -- Each iteration handles 4 bits. Variables are block-local so synthesis
    -- can map each block independently (important for resource estimation).
    gen_blocks: for i in 0 to NUM_BLOCKS-1 generate
        signal p_bit, g_bit : std_logic_vector(3 downto 0);  -- bit-level P/G within block
        signal c_int        : std_logic_vector(4 downto 0);  -- carries inside this block
    begin
 
        c_int(0) <= C(i);
 
        -- Bit-level propagate (P = A xor B) and generate (G = A and B)
        p_bit <= A(4*i+3 downto 4*i) xor B(4*i+3 downto 4*i);
        g_bit <= A(4*i+3 downto 4*i) and B(4*i+3 downto 4*i);
 
        -- Intra-block CLA: carry equations fully expanded (no ripple inside block)
        c_int(1) <= g_bit(0) or (p_bit(0) and c_int(0));
 
        c_int(2) <= g_bit(1) or
                    (p_bit(1) and g_bit(0)) or
                    (p_bit(1) and p_bit(0) and c_int(0));
 
        c_int(3) <= g_bit(2) or
                    (p_bit(2) and g_bit(1)) or
                    (p_bit(2) and p_bit(1) and g_bit(0)) or
                    (p_bit(2) and p_bit(1) and p_bit(0) and c_int(0));
 
        c_int(4) <= g_bit(3) or
                    (p_bit(3) and g_bit(2)) or
                    (p_bit(3) and p_bit(2) and g_bit(1)) or
                    (p_bit(3) and p_bit(2) and p_bit(1) and g_bit(0)) or
                    (p_bit(3) and p_bit(2) and p_bit(1) and p_bit(0) and c_int(0));
 
        -- Sum bits use intra-block carries (NOT the inter-block chain)
        S(4*i+3 downto 4*i) <= p_bit xor c_int(3 downto 0);
 
        -- Block-level P: entire block propagates only if every bit propagates
        P(i) <= p_bit(3) and p_bit(2) and p_bit(1) and p_bit(0);
 
        -- Block-level G: block generates if any bit generates and all higher bits propagate
        G(i) <= g_bit(3) or
                (p_bit(3) and g_bit(2)) or
                (p_bit(3) and p_bit(2) and g_bit(1)) or
                (p_bit(3) and p_bit(2) and p_bit(1) and g_bit(0));
 
    end generate;
 
    -- Second-level inter-block CLA: fully unrolled for blocks 0-2 (low latency),
    -- then ripple for blocks 3 onwards.
    -- C(1..3) are always present as long as NUM_BLOCKS >= 3.
    C(1) <= G(0) or (P(0) and C(0));
 
    C(2) <= G(1) or
            (P(1) and G(0)) or
            (P(1) and P(0) and C(0));
 
    C(3) <= G(2) or
            (P(2) and G(1)) or
            (P(2) and P(1) and G(0)) or
            (P(2) and P(1) and P(0) and C(0));
 
    -- Blocks 3 to NUM_BLOCKS-1: ripple over block-level G/P.
    gen_carries: for i in 3 to NUM_BLOCKS-1 generate
        C(i+1) <= G(i) or (P(i) and C(i));
    end generate;
 
    Cout <= C(NUM_BLOCKS);
 
    -- Signed overflow: carry into MSB block vs carry out of MSB block
    Ovfl <= C(NUM_BLOCKS-1) xor C(NUM_BLOCKS);
 
end architecture BCLA;
--
--
---- ============================================================================
---- CARRYSELECT: Carry-Select Adder
---- ============================================================================
---- Hardcoded for N=64 with manually chosen block sizes: 4, 4, 8, 8, 8, 16, 16, 8.
---- Each block (except the first) is computed twice: once with Cin=0 and once
---- with Cin=1. The actual carry from the previous stage selects the right result.
----
---- Block sizes are NOT uniform. They are roughly scaled to balance the mux-select
---- latency with the ripple latency inside each block. Larger blocks appear later
---- because by the time the carry arrives, a wider block has had more time to
---- pre-compute. This is a common tuning strategy -- if the timing is off, adjust
---- block boundaries first before changing the overall architecture.
----
---- Like BCLA, this ignores the N generic and is hardcoded for 64 bits.
---- Do not instantiate with other widths without reworking the port slices.
--architecture CarrySelect of Adder is
--
--    -- --------------------------------------------------------
--    -- Block unit size: scales all block widths with N.
--    -- For N=64: U=4, blocks are 4,4,8,8,16,16,8
--    -- For N=32: U=2, blocks are 2,2,4,4,8,8,4
--    -- For N=16: U=1, blocks are 1,1,2,2,4,4,2
--    -- Requires N to be a multiple of 16.
--    -- --------------------------------------------------------
--    constant U : natural := N / 16;
--
--    -- Pre-computed sums and carries for each block
--    -- _0 = carry-in assumed 0, _1 = carry-in assumed 1
--    signal S0_1, S1_1 : std_logic_vector(U-1   downto 0);
--    signal C0_1, C1_1 : std_logic;
--
--    signal S0_2, S1_2 : std_logic_vector(2*U-1 downto 0);
--    signal C0_2, C1_2 : std_logic;
--
--    signal S0_3, S1_3 : std_logic_vector(2*U-1 downto 0);
--    signal C0_3, C1_3 : std_logic;
--
--    signal S0_4, S1_4 : std_logic_vector(4*U-1 downto 0);
--    signal C0_4, C1_4 : std_logic;
--
--    signal S0_5, S1_5 : std_logic_vector(4*U-1 downto 0);
--    signal C0_5, C1_5 : std_logic;
--
--    signal S0_6, S1_6 : std_logic_vector(2*U-1 downto 0);
--    signal C0_6, C1_6 : std_logic;
--    signal OV0_6, OV1_6 : std_logic;
--
--    -- Carry select chain: Csel(i) is the actual carry entering block i+1
--    signal Csel : std_logic_vector(6 downto 0);
--
--begin
--
--    -- --------------------------------------------------------
--    -- Block 0 (bits U-1:0)
--    -- No pre-computation needed; Cin is the real carry-in
--    -- --------------------------------------------------------
--    blk0: entity work.Adder(Baseline)
--        generic map (N => U)
--        port map (
--            A    => A(U-1 downto 0),
--            B    => B(U-1 downto 0),
--            Cin  => Cin,
--            S    => S(U-1 downto 0),
--            Cout => Csel(0),
--            Ovfl => open
--        );
--
--    -- --------------------------------------------------------
--    -- Block 1 (bits 2U-1:U)
--    -- --------------------------------------------------------
--    blk1_c0: entity work.Adder(Baseline)
--        generic map (N => U)
--        port map (
--            A    => A(2*U-1 downto U),
--            B    => B(2*U-1 downto U),
--            Cin  => '0',
--            S    => S0_1,
--            Cout => C0_1,
--            Ovfl => open
--        );
--
--    blk1_c1: entity work.Adder(Baseline)
--        generic map (N => U)
--        port map (
--            A    => A(2*U-1 downto U),
--            B    => B(2*U-1 downto U),
--            Cin  => '1',
--            S    => S1_1,
--            Cout => C1_1,
--            Ovfl => open
--        );
--
--    S(2*U-1 downto U) <= S1_1 when Csel(0) = '1' else S0_1;
--    Csel(1)           <= C1_1 when Csel(0) = '1' else C0_1;
--
--    -- --------------------------------------------------------
--    -- Block 2 (bits 4U-1:2U)
--    -- --------------------------------------------------------
--    blk2_c0: entity work.Adder(Baseline)
--        generic map (N => 2*U)
--        port map (
--            A    => A(4*U-1 downto 2*U),
--            B    => B(4*U-1 downto 2*U),
--            Cin  => '0',
--            S    => S0_2,
--            Cout => C0_2,
--            Ovfl => open
--        );
--
--    blk2_c1: entity work.Adder(Baseline)
--        generic map (N => 2*U)
--        port map (
--            A    => A(4*U-1 downto 2*U),
--            B    => B(4*U-1 downto 2*U),
--            Cin  => '1',
--            S    => S1_2,
--            Cout => C1_2,
--            Ovfl => open
--        );
--
--    S(4*U-1 downto 2*U) <= S1_2 when Csel(1) = '1' else S0_2;
--    Csel(2)             <= C1_2 when Csel(1) = '1' else C0_2;
--
--    -- --------------------------------------------------------
--    -- Block 3 (bits 6U-1:4U)
--    -- --------------------------------------------------------
--    blk3_c0: entity work.Adder(Baseline)
--        generic map (N => 2*U)
--        port map (
--            A    => A(6*U-1 downto 4*U),
--            B    => B(6*U-1 downto 4*U),
--            Cin  => '0',
--            S    => S0_3,
--            Cout => C0_3,
--            Ovfl => open
--        );
--
--    blk3_c1: entity work.Adder(Baseline)
--        generic map (N => 2*U)
--        port map (
--            A    => A(6*U-1 downto 4*U),
--            B    => B(6*U-1 downto 4*U),
--            Cin  => '1',
--            S    => S1_3,
--            Cout => C1_3,
--            Ovfl => open
--        );
--
--    S(6*U-1 downto 4*U) <= S1_3 when Csel(2) = '1' else S0_3;
--    Csel(3)             <= C1_3 when Csel(2) = '1' else C0_3;
--
--    -- --------------------------------------------------------
--    -- Block 4 (bits 10U-1:6U)
--    -- --------------------------------------------------------
--    blk4_c0: entity work.Adder(Baseline)
--        generic map (N => 4*U)
--        port map (
--            A    => A(10*U-1 downto 6*U),
--            B    => B(10*U-1 downto 6*U),
--            Cin  => '0',
--            S    => S0_4,
--            Cout => C0_4,
--            Ovfl => open
--        );
--
--    blk4_c1: entity work.Adder(Baseline)
--        generic map (N => 4*U)
--        port map (
--            A    => A(10*U-1 downto 6*U),
--            B    => B(10*U-1 downto 6*U),
--            Cin  => '1',
--            S    => S1_4,
--            Cout => C1_4,
--            Ovfl => open
--        );
--
--    S(10*U-1 downto 6*U) <= S1_4 when Csel(3) = '1' else S0_4;
--    Csel(4)              <= C1_4 when Csel(3) = '1' else C0_4;
--
--    -- --------------------------------------------------------
--    -- Block 5 (bits 14U-1:10U)
--    -- --------------------------------------------------------
--    blk5_c0: entity work.Adder(Baseline)
--        generic map (N => 4*U)
--        port map (
--            A    => A(14*U-1 downto 10*U),
--            B    => B(14*U-1 downto 10*U),
--            Cin  => '0',
--            S    => S0_5,
--            Cout => C0_5,
--            Ovfl => open
--        );
--
--    blk5_c1: entity work.Adder(Baseline)
--        generic map (N => 4*U)
--        port map (
--            A    => A(14*U-1 downto 10*U),
--            B    => B(14*U-1 downto 10*U),
--            Cin  => '1',
--            S    => S1_5,
--            Cout => C1_5,
--            Ovfl => open
--        );
--
--    S(14*U-1 downto 10*U) <= S1_5 when Csel(4) = '1' else S0_5;
--    Csel(5)               <= C1_5 when Csel(4) = '1' else C0_5;
--
--    -- --------------------------------------------------------
--    -- Block 6 (bits 16U-1:14U) -- MSB block
--    -- Overflow captured for both carry assumptions
--    -- --------------------------------------------------------
--    blk6_c0: entity work.Adder(Baseline)
--        generic map (N => 2*U)
--        port map (
--            A    => A(16*U-1 downto 14*U),
--            B    => B(16*U-1 downto 14*U),
--            Cin  => '0',
--            S    => S0_6,
--            Cout => C0_6,
--            Ovfl => OV0_6
--        );
--
--    blk6_c1: entity work.Adder(Baseline)
--        generic map (N => 2*U)
--        port map (
--            A    => A(16*U-1 downto 14*U),
--            B    => B(16*U-1 downto 14*U),
--            Cin  => '1',
--            S    => S1_6,
--            Cout => C1_6,
--            Ovfl => OV1_6
--        );
--
--    S(16*U-1 downto 14*U) <= S1_6 when Csel(5) = '1' else S0_6;
--    Csel(6)               <= C1_6 when Csel(5) = '1' else C0_6;
--
--    Cout <= Csel(6);
--
--    -- Signed overflow: carry into MSB block vs carry out of MSB block
--    -- OV0_6/OV1_6 are unused -- Csel XOR is equivalent and avoids
--    -- an extra mux on the critical path
--    Ovfl <= Csel(5) xor Csel(6);
--
--end architecture CarrySelect;

--
---- ============================================================================
---- CARRYSKIP: Carry-Skip (Carry-Bypass) Adder
---- ============================================================================
---- Splits the N bits into BLOCK_SIZE=4 bit blocks. Within each block a standard
---- ripple-carry runs. If ALL bits in a block propagate (P = A xor B = 1111),
---- the incoming carry skips straight through without waiting for the ripple.
----
---- The skip path reduces the worst-case carry chain from O(N) to O(sqrt(N))
---- gate delays (assuming optimal block sizing). For BLOCK_SIZE=4 and N=64 that
---- is 16 blocks, so the carry can skip up to 15 consecutive all-propagate blocks
---- in a single gate delay each, rather than 4 gate delays per block via ripple.
----
---- BLOCK_SIZE=4 is hardcoded rather than generic. Optimal sizing depends on
---- transistor-level carry-ripple vs skip delay ratios; 4 is a reasonable default
---- for CMOS. For very fast carry chains (FPGA carry primitives), a larger block
---- size may be better -- profile before changing.
----
---- Unlike BCLA and CarrySelect, this architecture honours the N generic,
---- as long as N is divisible by BLOCK_SIZE.
--architecture CarrySkip of Adder is
--
--    constant BLOCK_SIZE : positive := 4;
--    constant NUM_BLOCKS : positive := N / BLOCK_SIZE;
--
--    -- Carry chain between blocks. c_chain(0)=Cin, c_chain(NUM_BLOCKS)=Cout.
--    signal c_chain : std_logic_vector(NUM_BLOCKS downto 0);
--
--    signal S_int   : std_logic_vector(N-1 downto 0);
--
--begin
--
--    c_chain(0) <= Cin;
--
--    gen_blocks : for i in 0 to NUM_BLOCKS-1 generate
--        signal block_prop  : std_logic;  -- '1' if all 4 bits in this block propagate
--        signal ripple_cout : std_logic;  -- carry out from the intra-block ripple
--        signal block_a, block_b : std_logic_vector(BLOCK_SIZE-1 downto 0);
--    begin
--
--        block_a <= A(BLOCK_SIZE*(i+1)-1 downto BLOCK_SIZE*i);
--        block_b <= B(BLOCK_SIZE*(i+1)-1 downto BLOCK_SIZE*i);
--
--        -- Intra-block ripple-carry (Baseline with N=BLOCK_SIZE)
--        RCA_BLOCK : entity work.Adder(Baseline)
--            generic map (N => BLOCK_SIZE)
--            port map (A => block_a, B => block_b, Cin => c_chain(i),
--                      S => S_int(BLOCK_SIZE*(i+1)-1 downto BLOCK_SIZE*i),
--                      Cout => ripple_cout, Ovfl => open);
--
--        -- Block propagate: carry skips IFF every bit in the block propagates.
--        -- Hardcoded for BLOCK_SIZE=4. If BLOCK_SIZE ever changes, update this line.
--        block_prop <= (block_a(0) xor block_b(0)) and
--                      (block_a(1) xor block_b(1)) and
--                      (block_a(2) xor block_b(2)) and
--                      (block_a(3) xor block_b(3));
--
--        -- Skip mux: if block fully propagates, bypass the ripple with c_chain(i);
--        -- otherwise use the ripple's carry-out.
--        c_chain(i+1) <= (block_prop and c_chain(i)) or (not block_prop and ripple_cout);
--
--    end generate;
--
--    S    <= S_int;
--    Cout <= c_chain(NUM_BLOCKS);
--
--    -- Signed overflow from input and output MSBs (equivalent to C(N-1) xor C(N))
--    Ovfl <= (A(N-1) and B(N-1) and not S_int(N-1)) or
--            (not A(N-1) and not B(N-1) and S_int(N-1));
--
--end architecture CarrySkip;
--
--
---- ============================================================================
---- Structure:
----   - Bits  7:0  computed directly with Cin (no pre-computation needed for block 0)
----   - Bits 15:8 .. 63:56 each pre-computed for Cin=0 and Cin=1 in parallel
----   - C(i) is the actual inter-block carry; it selects between S0(i) and S1(i)
----
---- The bcla_8 procedure encapsulates the 8-bit two-level CLA logic.
---- It is used only for block 0 (via an inline process) and is the template
---- the gen_csa loop replicates for all subsequent blocks. If you find bugs in
---- the carry logic, fix it in bcla_8 AND in the gen_csa processes -- they are
---- deliberately not sharing the procedure to avoid issues with signal/variable
---- mixing in concurrent vs sequential contexts.
----
---- As with BCLA and CarrySelect, N=64 is assumed. The array types and loop
---- bounds are hardcoded to 8 blocks of 8 bits each.
--architecture OCPC of Adder is
--
--    -- Array types for 8 blocks of 8-bit pre-computed sums and carries
--    type pg4  is array (0 to 3) of std_logic_vector(1 downto 0);  -- unused; left for potential extension
--    type sum8 is array (0 to 7) of std_logic_vector(7 downto 0);
--
--    -- Inter-block carry chain (C(0)=Cin, C(8)=Cout)
--    signal C : std_logic_vector(8 downto 0);
--
--    -- Pre-computed sums for Cin=0 (S0) and Cin=1 (S1) for each block
--    signal S0 : sum8;
--    signal S1 : sum8;
--
--    -- Pre-computed carry-outs for each non-zero block
--    signal Cout0 : std_logic_vector(7 downto 1);  -- carry-out when block Cin=0
--    signal Cout1 : std_logic_vector(7 downto 1);  -- carry-out when block Cin=1
--
--    -- 8-bit two-level CLA, parameterised by a constant cin.
--    -- Uses variables internally so it can be called from a process.
--    -- p/g = 2-bit group propagate/generate; pb/gb = bit-level propagate/generate.
--    -- ci(0..4) are the intra-group carries; ci(4) is the block carry-out.
--    procedure bcla_8 (
--        signal   A_in   : in  std_logic_vector(7 downto 0);
--        signal   B_in   : in  std_logic_vector(7 downto 0);
--        constant cin    : in  std_logic;
--        signal   S_out  : out std_logic_vector(7 downto 0);
--        signal   Co_out : out std_logic
--    ) is
--        variable p  : std_logic_vector(3 downto 0);   -- 2-bit group propagate
--        variable g  : std_logic_vector(3 downto 0);   -- 2-bit group generate
--        variable pb : std_logic_vector(7 downto 0);   -- bit propagate
--        variable gb : std_logic_vector(7 downto 0);   -- bit generate
--        variable ci : std_logic_vector(4 downto 0);   -- group carry-ins (ci(0)=cin)
--    begin
--        pb := A_in xor B_in;
--        gb := A_in and B_in;
--
--        -- Reduce 8 bit-level P/G to 4 two-bit-group P/G (pairs of bits)
--        for k in 0 to 3 loop
--            p(k) := pb(2*k+1) and pb(2*k);
--            g(k) := gb(2*k+1) or (pb(2*k+1) and gb(2*k));
--        end loop;
--
--        -- First-level lookahead over 2-bit groups
--        ci(0) := cin;
--        for k in 0 to 3 loop
--            ci(k+1) := g(k) or (p(k) and ci(k));
--        end loop;
--
--        -- Compute sums using the group carries and bit-level P/G
--        for k in 0 to 3 loop
--            S_out(2*k)   <= pb(2*k)   xor ci(k);
--            S_out(2*k+1) <= pb(2*k+1) xor (gb(2*k) or (pb(2*k) and ci(k)));
--        end loop;
--
--        Co_out <= ci(4);
--    end procedure;
--
--begin
--
--    C(0) <= Cin;
--
--    -- Block 0 (bits 7:0): actual Cin known at runtime, compute directly.
--    -- This is the only block that cannot pre-compute; it determines C(1) for all
--    -- subsequent blocks. Keep this process as short as possible.
--    process(A, B, Cin)
--        variable p  : std_logic_vector(3 downto 0);
--        variable g  : std_logic_vector(3 downto 0);
--        variable pb : std_logic_vector(7 downto 0);
--        variable gb : std_logic_vector(7 downto 0);
--        variable ci : std_logic_vector(4 downto 0);
--    begin
--        pb := A(7 downto 0) xor B(7 downto 0);
--        gb := A(7 downto 0) and B(7 downto 0);
--        for k in 0 to 3 loop
--            p(k) := pb(2*k+1) and pb(2*k);
--            g(k) := gb(2*k+1) or (pb(2*k+1) and gb(2*k));
--        end loop;
--        ci(0) := Cin;
--        for k in 0 to 3 loop
--            ci(k+1) := g(k) or (p(k) and ci(k));
--        end loop;
--        for k in 0 to 3 loop
--            S0(0)(2*k)   <= pb(2*k)   xor ci(k);
--            S0(0)(2*k+1) <= pb(2*k+1) xor (gb(2*k) or (pb(2*k) and ci(k)));
--        end loop;
--        C(1) <= ci(4);
--    end process;
--
--    -- Block 0's sum goes directly to output (no mux needed -- only one version)
--    S(7 downto 0) <= S0(0);
--
--    -- Blocks 1-7: pre-compute for both Cin=0 and Cin=1 in parallel.
--    -- Two processes per block (cin=0 and cin=1) run concurrently.
--    -- All 14 processes fire whenever A or B changes, independent of the carry chain.
--    gen_csa : for i in 1 to 7 generate
--
--        -- Pre-compute this block assuming block carry-in = 0
--        process(A, B)
--            variable p  : std_logic_vector(3 downto 0);
--            variable g  : std_logic_vector(3 downto 0);
--            variable pb : std_logic_vector(7 downto 0);
--            variable gb : std_logic_vector(7 downto 0);
--            variable ci : std_logic_vector(4 downto 0);
--        begin
--            pb := A(8*i+7 downto 8*i) xor B(8*i+7 downto 8*i);
--            gb := A(8*i+7 downto 8*i) and B(8*i+7 downto 8*i);
--            for k in 0 to 3 loop
--                p(k) := pb(2*k+1) and pb(2*k);
--                g(k) := gb(2*k+1) or (pb(2*k+1) and gb(2*k));
--            end loop;
--            ci(0) := '0';
--            for k in 0 to 3 loop
--                ci(k+1) := g(k) or (p(k) and ci(k));
--            end loop;
--            for k in 0 to 3 loop
--                S0(i)(2*k)   <= pb(2*k)   xor ci(k);
--                S0(i)(2*k+1) <= pb(2*k+1) xor (gb(2*k) or (pb(2*k) and ci(k)));
--            end loop;
--            Cout0(i) <= ci(4);
--        end process;
--
--        -- Pre-compute this block assuming block carry-in = 1
--        process(A, B)
--            variable p  : std_logic_vector(3 downto 0);
--            variable g  : std_logic_vector(3 downto 0);
--            variable pb : std_logic_vector(7 downto 0);
--            variable gb : std_logic_vector(7 downto 0);
--            variable ci : std_logic_vector(4 downto 0);
--        begin
--            pb := A(8*i+7 downto 8*i) xor B(8*i+7 downto 8*i);
--            gb := A(8*i+7 downto 8*i) and B(8*i+7 downto 8*i);
--            for k in 0 to 3 loop
--                p(k) := pb(2*k+1) and pb(2*k);
--                g(k) := gb(2*k+1) or (pb(2*k+1) and gb(2*k));
--            end loop;
--            ci(0) := '1';
--            for k in 0 to 3 loop
--                ci(k+1) := g(k) or (p(k) and ci(k));
--            end loop;
--            for k in 0 to 3 loop
--                S1(i)(2*k)   <= pb(2*k)   xor ci(k);
--                S1(i)(2*k+1) <= pb(2*k+1) xor (gb(2*k) or (pb(2*k) and ci(k)));
--            end loop;
--            Cout1(i) <= ci(4);
--        end process;
--
--        -- Select the correct pre-computed result once the actual carry arrives.
--        -- C(i) is the critical path signal; everything else is already stable.
--        S(8*i+7 downto 8*i) <= S1(i) when C(i) = '1' else S0(i);
--        C(i+1)               <= Cout1(i) when C(i) = '1' else Cout0(i);
--
--    end generate gen_csa;
--
--    Cout <= C(8);
--
--    -- Signed overflow: carry into MSB block vs carry out of it
--    OVFL <= C(7) xor C(8);
--
--end architecture OCPC;