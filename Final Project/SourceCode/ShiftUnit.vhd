-- ============================================================
-- Entity:      ShiftUnit
-- Description: N-bit Shift subsystem for the RV64I Execution Unit
--              Implements SLL, SRL, SRA for both 64-bit and
--              32-bit operations using a combined barrel shifter
--
-- ShiftFN encoding (per FP spec):
--   00 -> arith  : not used here, handled by Arithmetic subsystem
--   01 -> sll    : logical left shift
--   10 -> srl    : logical right shift
--   11 -> sra    : arithmetic right shift
--
-- ExtWord:
--   '0' -> 64-bit operation, shift amount = B(5 downto 0)
--   '1' -> 32-bit operation, shift amount = B(4 downto 0)
--          result is sign-extended to 64 bits
--
-- Notes:
--   - Purely combinational circuit
--   - N is assumed to be 64
--   - Uses bit-reversal trick to implement SLL using right shifter
--   - Fill bit for SRA is sign bit of operand A
--   - Fill bit for SRL is '0'
-- ============================================================

Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

Entity ShiftUnit is
    Generic ( N : natural := 64 );
    Port (
        A       : in  std_logic_vector(N-1 downto 0);   -- Operand to shift
        B       : in  std_logic_vector(N-1 downto 0);   -- Shift amount
        ShiftFN : in  std_logic_vector(1 downto 0);     -- Function select
        ExtWord : in  std_logic;                         -- 32-bit mode
        Y       : out std_logic_vector(N-1 downto 0)    -- Result
    );
End Entity ShiftUnit;


-- ============================================================
-- Architecture: Dual2ChUni
--
-- Topology:
--   Two independent barrel shifter chains, one 64-bit (6 stages)
--   and one 32-bit (5 stages), each using 2-channel (2:1) MUX stages.
--   Both SLL and SRL/SRA are handled within the same chain by
--   controlling the direction of each stage mux using is_left.
--   The 32-bit result is sign-extended to 64 bits before output selection.
--
-- Key design decisions:
--   - Separate 32/64-bit chains avoids needing to zero upper bits or
--     clamp the shift amount; each chain naturally handles its own width.
--   - Direction control (is_left) is derived from ShiftFN and applied
--     uniformly across all stages, adding control inputs to every mux.
--   - The fill bit (fill64/fill32) is '0' for SRL and A(MSB) for SRA,
--     and is injected when a stage shift would move data out of range.
--   - Final output mux selects between the 32-bit sign-extended result
--     and the 64-bit chain result based on ExtWord.
--
-- Resource implications:
--   - Two chains means more total muxes than a single-chain design.
--   - Direction control pushes some stage mux functions beyond 4 inputs,
--     causing LUT spill and raising the average cost per mux above 1 LE.
-- ============================================================
Architecture Dual2ChUni of ShiftUnit is

    -- s64: holds the 64-bit datapath at each stage boundary.
    --      s64(0) is the chain input; s64(6) is the final output.
    type Stage64 is array (0 to 6) of std_logic_vector(N-1 downto 0);
    signal s64 : Stage64;

    -- fill64: the bit inserted at the MSB end when shifting right.
    --         '0' for SRL, A(N-1) for SRA.
    signal fill64 : std_logic;

    -- s32: holds the 32-bit datapath at each stage boundary.
    --      s32(0) is the chain input (lower 32 bits of A); s32(5) is output.
    type Stage32 is array (0 to 5) of std_logic_vector(N/2-1 downto 0);
    signal s32 : Stage32;

    -- fill32: same role as fill64 but for the 32-bit chain.
    --         '0' for SRL, A(N/2-1) for SRA.
    signal fill32 : std_logic;

    -- Y_32_extended: the 32-bit result sign-extended to 64 bits,
    --                ready for the final output mux.
    signal Y_32_extended : std_logic_vector(N-1 downto 0);

    -- is_left: '1' when performing SLL, '0' for SRL/SRA.
    --          Controls the shift direction at every stage.
    signal is_left : std_logic;

Begin

    -- Decode shift direction from ShiftFN.
    -- SLL (01) shifts left; all other valid operations shift right.
    is_left <= '1' when ShiftFN = "01" else '0';

    ---------------------------------------------------------------------------
    -- 64-BIT SHIFT CHAIN
    -- 6 stages, each doubling the potential shift distance (1, 2, 4, 8, 16, 32).
    -- Stage i conditionally shifts the data by 2^i positions based on B(i).
    ---------------------------------------------------------------------------
    fill64 <= A(N-1) when ShiftFN = "11" else '0';
    s64(0) <= A;  -- Chain input is the raw operand

    gen_64bit_chain: for i in 0 to 5 generate
        gen_bits_64: for j in 0 to N-1 generate
            process(s64, B, fill64, is_left)
                -- shift_amt doubles each stage: 1, 2, 4, 8, 16, 32
                variable shift_amt : integer := 2**i;
            begin
                if is_left = '0' then
                    -- RIGHT SHIFT (SRL / SRA):
                    -- Bit j of the output comes from bit j+shift_amt of the input,
                    -- or fill64 if that source index is out of range.
                    if j + shift_amt <= N-1 then
                        if B(i) = '1' then
                            s64(i+1)(j) <= s64(i)(j + shift_amt);
                        else
                            s64(i+1)(j) <= s64(i)(j);  -- no shift this stage
                        end if;
                    else
                        if B(i) = '1' then
                            s64(i+1)(j) <= fill64;      -- out of range: inject fill
                        else
                            s64(i+1)(j) <= s64(i)(j);
                        end if;
                    end if;
                else
                    -- LEFT SHIFT (SLL):
                    -- Bit j of the output comes from bit j-shift_amt of the input,
                    -- or '0' if that source index is out of range (zero-fill on right).
                    if j - shift_amt >= 0 then
                        if B(i) = '1' then
                            s64(i+1)(j) <= s64(i)(j - shift_amt);
                        else
                            s64(i+1)(j) <= s64(i)(j);  -- no shift this stage
                        end if;
                    else
                        if B(i) = '1' then
                            s64(i+1)(j) <= '0';         -- out of range: zero fill
                        else
                            s64(i+1)(j) <= s64(i)(j);
                        end if;
                    end if;
                end if;
            end process;
        end generate;
    end generate;

    ---------------------------------------------------------------------------
    -- 32-BIT SHIFT CHAIN
    -- Identical structure to the 64-bit chain but operates on only the lower
    -- 32 bits of A across 5 stages (shift amounts 1, 2, 4, 8, 16).
    -- Stage 5 of B (shift by 32) is not needed for a 32-bit operand.
    ---------------------------------------------------------------------------
    fill32 <= A(N/2-1) when ShiftFN = "11" else '0';
    s32(0) <= A(N/2-1 downto 0);  -- Lower 32 bits of A as chain input

    gen_32bit_chain: for i in 0 to 4 generate
        gen_bits_32: for j in 0 to N/2-1 generate
            process(s32, B, fill32, is_left)
                variable shift_amt : integer := 2**i;
            begin
                if is_left = '0' then
                    if j + shift_amt <= N/2-1 then
                        if B(i) = '1' then
                            s32(i+1)(j) <= s32(i)(j + shift_amt);
                        else
                            s32(i+1)(j) <= s32(i)(j);
                        end if;
                    else
                        if B(i) = '1' then
                            s32(i+1)(j) <= fill32;
                        else
                            s32(i+1)(j) <= s32(i)(j);
                        end if;
                    end if;
                else
                    if j - shift_amt >= 0 then
                        if B(i) = '1' then
                            s32(i+1)(j) <= s32(i)(j - shift_amt);
                        else
                            s32(i+1)(j) <= s32(i)(j);
                        end if;
                    else
                        if B(i) = '1' then
                            s32(i+1)(j) <= '0';
                        else
                            s32(i+1)(j) <= s32(i)(j);
                        end if;
                    end if;
                end if;
            end process;
        end generate;
    end generate;

    -- Sign-extend the 32-bit chain result to 64 bits.
    -- The upper 32 bits are filled with the sign bit (s32(5)(N/2-1))
    -- to satisfy RV64I word instruction semantics.
    Y_32_extended <= (N-1 downto N/2 => s32(5)(N/2-1)) & s32(5);

    ---------------------------------------------------------------------------
    -- FINAL OUTPUT SELECTION
    -- ExtWord selects between the 32-bit sign-extended result and the
    -- full 64-bit chain output.
    ---------------------------------------------------------------------------
    Y <= Y_32_extended when ExtWord = '1' else s64(6);

End Architecture Dual2ChUni;


-- ============================================================
-- Architecture: Dual4ChUni
--
-- Topology:
--   Same dual-chain concept as Dual2ChUni but uses 4-channel (4:1) MUX
--   stages, consuming 2 bits of shift amount per stage instead of 1.
--   This halves the number of stages on the critical path (3 instead of 6)
--   at the cost of wider per-stage mux logic.
--
-- Key design decisions:
--   - Each stage selects between 4 possible shifts: 0, base, 2*base, 3*base
--     where base = 4^i (1, 4, 16 for the three stages).
--   - The 32-bit chain requires only 5 shift amount bits, so its third
--     stage degrades to a 2-channel mux (only B(4) remains).
--   - Direction control (is_left) still applies per stage, same as Dual2ChUni.
--   - to_integer(unsigned(...)) is used to convert the 2-bit stage select
--     into an integer offset for the source index calculation.
--
-- Trade-off vs Dual2ChUni:
--   - Fewer stages reduces the gate-level critical path depth.
--   - Wider mux fan-in increases LUT usage per stage; total LE count is
--     roughly similar since stage count and mux width trade off directly.
--   - FPGA timing depends on whether Quartus maps wide muxes efficiently.
-- ============================================================
Architecture Dual4ChUni of ShiftUnit is

    -- 64-bit chain: input + 3 stage outputs
    type Stage64 is array (0 to 3) of std_logic_vector(63 downto 0);
    signal s64    : Stage64;
    signal fill64 : std_logic;

    -- 32-bit chain: input + 3 stage outputs
    -- Note: stage 2 of the 32-bit chain is a 2-channel stage (only B(4) used)
    type Stage32 is array (0 to 3) of std_logic_vector(31 downto 0);
    signal s32    : Stage32;
    signal fill32 : std_logic;

    signal Y_32_ext : std_logic_vector(63 downto 0);
    signal is_left  : std_logic;

Begin

    is_left <= '1' when ShiftFN = "01" else '0';

    -- --------------------------------------------------------
    -- 64-BIT CHAIN: 3 stages, each consuming 2 bits of B
    --   Stage 0: B(1:0) -> shifts by 0, 1, 2, or 3  (base = 1)
    --   Stage 1: B(3:2) -> shifts by 0, 4, 8, or 12 (base = 4)
    --   Stage 2: B(5:4) -> shifts by 0, 16, 32, or 48 (base = 16)
    -- --------------------------------------------------------
    fill64  <= A(63) when ShiftFN = "11" else '0';
    s64(0)  <= A;

    gen_64_stages : for i in 0 to 2 generate
        gen_64_bits : for j in 0 to 63 generate
            process(s64, B, fill64, is_left)
                variable base  : integer := 4**i;  -- 1, 4, 16 for stages 0,1,2
                variable sel   : integer;           -- 0..3 decoded from 2 bits of B
                variable src   : integer;           -- computed source bit index
            begin
                -- sel picks which of the 4 possible shifts to apply this stage
                sel := to_integer(unsigned(B(2*i+1 downto 2*i)));

                if is_left = '0' then
                    -- Right shift: source is at j + sel*base
                    src := j + sel * base;
                    if src <= 63 then
                        s64(i+1)(j) <= s64(i)(src);
                    else
                        s64(i+1)(j) <= fill64;  -- out of range: inject fill
                    end if;
                else
                    -- Left shift: source is at j - sel*base
                    src := j - sel * base;
                    if src >= 0 then
                        s64(i+1)(j) <= s64(i)(src);
                    else
                        s64(i+1)(j) <= '0';     -- out of range: zero fill
                    end if;
                end if;
            end process;
        end generate;
    end generate;

    -- --------------------------------------------------------
    -- 32-BIT CHAIN: 3 stages
    --   Stage 0: B(1:0) -> shifts by 0, 1, 2, or 3  (4-channel, base = 1)
    --   Stage 1: B(3:2) -> shifts by 0, 4, 8, or 12 (4-channel, base = 4)
    --   Stage 2: B(4)   -> shifts by 0 or 16         (2-channel, only 1 bit left)
    -- --------------------------------------------------------
    fill32  <= A(31) when ShiftFN = "11" else '0';
    s32(0)  <= A(31 downto 0);

    -- Stage 0: 4-channel using B(1:0)
    gen_32_s0 : for j in 0 to 31 generate
        process(s32, B, fill32, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(1 downto 0)));
            if is_left = '0' then
                src := j + sel;
                if src <= 31 then
                    s32(1)(j) <= s32(0)(src);
                else
                    s32(1)(j) <= fill32;
                end if;
            else
                src := j - sel;
                if src >= 0 then
                    s32(1)(j) <= s32(0)(src);
                else
                    s32(1)(j) <= '0';
                end if;
            end if;
        end process;
    end generate;

    -- Stage 1: 4-channel using B(3:2)
    gen_32_s1 : for j in 0 to 31 generate
        process(s32, B, fill32, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(3 downto 2)));
            if is_left = '0' then
                src := j + sel * 4;
                if src <= 31 then
                    s32(2)(j) <= s32(1)(src);
                else
                    s32(2)(j) <= fill32;
                end if;
            else
                src := j - sel * 4;
                if src >= 0 then
                    s32(2)(j) <= s32(1)(src);
                else
                    s32(2)(j) <= '0';
                end if;
            end if;
        end process;
    end generate;

    -- Stage 2: 2-channel using B(4) only (shift by 0 or 16)
    -- A 32-bit operand only needs 5 bits of shift amount so this final
    -- stage is a simple 2:1 mux rather than a 4:1.
    gen_32_s2 : for j in 0 to 31 generate
        process(s32, B, fill32, is_left)
            variable src : integer;
        begin
            if is_left = '0' then
                src := j + 16;
                if B(4) = '1' then
                    if src <= 31 then
                        s32(3)(j) <= s32(2)(src);
                    else
                        s32(3)(j) <= fill32;
                    end if;
                else
                    s32(3)(j) <= s32(2)(j);
                end if;
            else
                src := j - 16;
                if B(4) = '1' then
                    if src >= 0 then
                        s32(3)(j) <= s32(2)(src);
                    else
                        s32(3)(j) <= '0';
                    end if;
                else
                    s32(3)(j) <= s32(2)(j);
                end if;
            end if;
        end process;
    end generate;

    -- Sign-extend 32-bit result to 64 bits
    Y_32_ext <= (63 downto 32 => s32(3)(31)) & s32(3);

    -- Output selection: ShiftFN=00 passes A through (arith handled elsewhere)
    process(s64, Y_32_ext, A, ShiftFN, ExtWord)
    begin
        if ShiftFN = "00" then
            Y <= A;
        elsif ExtWord = '1' then
            Y <= Y_32_ext;
        else
            Y <= s64(3);
        end if;
    end process;

End Architecture Dual4ChUni;


-- ============================================================
-- Architecture: SingleZU2ChRev
--
-- Topology:
--   A single 64-bit right-shift chain of 6 two-channel stages.
--   SLL is implemented using the bit-reversal trick: reverse the
--   input bits, perform a right shift, then reverse the output bits.
--   32-bit mode is handled by zeroing the upper 32 bits of the input
--   and clamping the shift amount to 5 bits, eliminating the need
--   for a separate 32-bit chain.
--
-- Key design decisions:
--   - Bit reversal is the most hardware-efficient way to reuse a
--     right-shift chain for left shifts, avoiding a separate SLL chain.
--   - Zeroing the upper bits (ZeroUpper) for 32-bit mode means SRL and
--     SLL work correctly. SRA requires sign-extension of the input
--     instead of zeroing, so that the arithmetic fill propagates correctly.
--   - Shift amount is capped at 5 bits for 32-bit mode by forcing B(5)='0'.
--   - The output process sign-extends the lower 32 bits of the result
--     to the upper half for 32-bit instructions.
--   - ShiftFN=00 passes A through unchanged (arith handled by ArithUnit).
--
-- Resource advantage vs Dual2ChUni:
--   - Only one chain is needed, saving the hardware of the entire 32-bit
--     parallel chain, giving the lowest resource usage of all topologies.
-- ============================================================
Architecture SingleZU2ChRev of ShiftUnit is

    -- stage: the single chain datapath. stage(0) is chain input; stage(6) is output.
    type StageArray is array (0 to 6) of std_logic_vector(N-1 downto 0);
    signal stage    : StageArray;

    -- A_in: pre-processed operand fed into the chain.
    --       For 32-bit SRA: sign-extended from bit 31.
    --       For 32-bit SLL/SRL: upper 32 bits zeroed.
    --       For 64-bit: unchanged.
    signal A_in     : std_logic_vector(N-1 downto 0);

    -- A_rev: A_in with bits reversed for SLL (bit-reversal trick).
    --        For SRL/SRA: same as A_in (no reversal needed).
    signal A_rev    : std_logic_vector(N-1 downto 0);

    -- Y_rev: chain output with bits reversed back for SLL.
    --        For SRL/SRA: same as stage(6) (no reversal needed).
    signal Y_rev    : std_logic_vector(N-1 downto 0);

    signal Y_int    : std_logic_vector(N-1 downto 0);

    -- shamt: effective shift amount. B(5) is forced to '0' for 32-bit mode
    --        since a 32-bit operand only needs 5 bits of shift amount.
    signal shamt    : std_logic_vector(5 downto 0);

    -- fill: the bit injected at the MSB end during right shifts.
    --       SRA 64-bit: A(63). SRA 32-bit: A(31). SRL: '0'.
    signal fill     : std_logic;

    -- is_sll: '1' when performing SLL. Controls bit reversal.
    signal is_sll   : std_logic;

Begin

    is_sll <= '1' when ShiftFN = "01" else '0';

    -- --------------------------------------------------------
    -- INPUT PRE-PROCESSING
    -- Prepare A_in for the shift chain based on instruction width and type.
    -- SRA word: sign-extend from bit 31 so arithmetic fill is correct.
    -- SLL/SRL word: zero upper 32 bits so they do not corrupt the result.
    -- 64-bit: pass A through unchanged.
    -- --------------------------------------------------------
    process(A, ShiftFN, ExtWord)
    begin
        if ExtWord = '1' and ShiftFN = "11" then
            -- 32-bit arithmetic right shift: sign-extend input from bit 31
            A_in(N/2-1 downto 0)  <= A(N/2-1 downto 0);
            A_in(N-1 downto N/2) <= (others => A(N/2-1));
        elsif ExtWord = '1' then
            -- 32-bit logical shift: zero upper half so they shift out cleanly
            A_in(N/2-1 downto 0)  <= A(N/2-1 downto 0);
            A_in(N-1 downto N/2) <= (others => '0');
        else
            -- 64-bit: no pre-processing needed
            A_in <= A;
        end if;
    end process;

    -- Cap shift amount at 5 bits for 32-bit mode.
    -- B(5) being '0' prevents the chain from shifting beyond 31 positions.
    shamt(4 downto 0) <= B(4 downto 0);
    shamt(5)          <= B(5) when ExtWord = '0' else '0';

    -- Compute the fill bit for the right-shift chain.
    -- SRA 32-bit: sign bit is A(N/2-1). SRA 64-bit: sign bit is A(N-1).
    -- SRL: always fill with '0'.
    fill <= A(N/2-1) when (ShiftFN = "11" and ExtWord = '1')
       else A(N-1)   when (ShiftFN = "11" and ExtWord = '0')
       else '0';

    -- --------------------------------------------------------
    -- BIT REVERSAL (INPUT)
    -- For SLL: reverse all bits of A_in before entering the right-shift chain.
    -- This converts a left shift into a right shift on the mirrored data.
    -- For SRL/SRA: pass A_in directly (no reversal).
    -- --------------------------------------------------------
    gen_rev_in : for i in 0 to N-1 generate
        A_rev(i) <= A_in(N-1-i) when is_sll = '1' else A_in(i);
    end generate;

    stage(0) <= A_rev;

    -- --------------------------------------------------------
    -- 6-STAGE RIGHT-SHIFT CHAIN
    -- Stage i shifts by 2^i positions if shamt(i)='1', otherwise passes through.
    -- Fill bit is injected at the high end for out-of-range source indices.
    -- --------------------------------------------------------
    gen_stages : for i in 0 to 5 generate
        gen_bits : for j in 0 to N-1 generate
            process(stage, shamt, fill)
                variable shift_amt : integer := 2**i;
            begin
                if j + shift_amt <= N-1 then
                    if shamt(i) = '1' then
                        stage(i+1)(j) <= stage(i)(j + shift_amt);
                    else
                        stage(i+1)(j) <= stage(i)(j);
                    end if;
                else
                    if shamt(i) = '1' then
                        stage(i+1)(j) <= fill;  -- inject fill for out-of-range
                    else
                        stage(i+1)(j) <= stage(i)(j);
                    end if;
                end if;
            end process;
        end generate;
    end generate;

    -- --------------------------------------------------------
    -- BIT REVERSAL (OUTPUT)
    -- For SLL: reverse the chain output bits to restore correct bit order.
    -- For SRL/SRA: pass chain output directly.
    -- --------------------------------------------------------
    gen_rev_out : for i in 0 to N-1 generate
        Y_rev(i) <= stage(6)(N-1-i) when is_sll = '1' else stage(6)(i);
    end generate;

    Y_int <= Y_rev;

    -- --------------------------------------------------------
    -- OUTPUT ASSEMBLY
    -- ShiftFN=00: pass A through (arithmetic handled by ArithUnit).
    -- 32-bit mode: take lower 32 bits of result, sign-extend to upper half.
    -- 64-bit mode: use the full 64-bit chain result directly.
    -- --------------------------------------------------------
    process(Y_int, A, ShiftFN, ExtWord)
    begin
        if ShiftFN = "00" then
            Y <= A;
        else
            Y(N/2-1 downto 0) <= Y_int(N/2-1 downto 0);
            if ExtWord = '1' then
                -- Sign-extend: replicate bit 31 across the upper 32 bits
                Y(N-1 downto N/2) <= (others => Y_int(N/2-1));
            else
                Y(N-1 downto N/2) <= Y_int(N-1 downto N/2);
            end if;
        end if;
    end process;

End Architecture SingleZU2ChRev;


-- ============================================================
-- Architecture: SingleZU4ChRev
--
-- Topology:
--   Same as SingleZU2ChRev but uses 4-channel (4:1) MUX stages,
--   reducing the chain depth from 6 stages to 3 stages.
--   Bit-reversal trick for SLL, zero-upper for 32-bit SLL/SRL,
--   sign-extension for 32-bit SRA.
--
-- Key design decisions:
--   - Each stage consumes 2 bits of shamt simultaneously using a
--     4-way select (sel = 0,1,2,3) and shifts by sel * base positions.
--   - base = 4^i (1, 4, 16) for the three stages.
--   - Otherwise identical in structure and pre/post processing to
--     SingleZU2ChRev; the only difference is stage count vs mux width.
--
-- Trade-off vs SingleZU2ChRev:
--   - Fewer stages means a shallower critical path in theory.
--   - Wider mux fan-in (4 inputs for shift select) may require more LUTs
--     per stage, potentially offsetting the stage count reduction.
-- ============================================================
Architecture SingleZU4ChRev of ShiftUnit is

    type StageArray is array (0 to 3) of std_logic_vector(N-1 downto 0);
    signal stage    : StageArray;

    signal A_in     : std_logic_vector(N-1 downto 0);
    signal A_rev    : std_logic_vector(N-1 downto 0);
    signal Y_rev    : std_logic_vector(N-1 downto 0);
    signal Y_int    : std_logic_vector(N-1 downto 0);

    signal shamt    : std_logic_vector(5 downto 0);
    signal fill     : std_logic;
    signal is_sll   : std_logic;

Begin

    is_sll <= '1' when ShiftFN = "01" else '0';

    -- Input pre-processing: same logic as SingleZU2ChRev.
    -- SRA word: sign-extend from bit 31. SLL/SRL word: zero upper half.
    process(A, ShiftFN, ExtWord)
    begin
        if ExtWord = '1' and ShiftFN = "11" then
            A_in(31 downto 0)  <= A(31 downto 0);
            A_in(63 downto 32) <= (others => A(31));
        elsif ExtWord = '1' then
            A_in(31 downto 0)  <= A(31 downto 0);
            A_in(63 downto 32) <= (others => '0');
        else
            A_in <= A;
        end if;
    end process;

    -- Cap shift amount at 5 bits for 32-bit mode
    shamt(4 downto 0) <= B(4 downto 0);
    shamt(5)          <= B(5) when ExtWord = '0' else '0';

    -- Fill bit for SRA; '0' for SRL
    fill <= A(31) when (ShiftFN = "11" and ExtWord = '1')
       else A(63) when (ShiftFN = "11" and ExtWord = '0')
       else '0';

    -- Bit reversal on input for SLL
    gen_rev_in : for i in 0 to N-1 generate
        A_rev(i) <= A_in(N-1-i) when is_sll = '1' else A_in(i);
    end generate;

    stage(0) <= A_rev;

    -- --------------------------------------------------------
    -- 3-STAGE 4-CHANNEL RIGHT-SHIFT CHAIN
    -- Stage i handles 2 bits of shamt: shamt(2i+1 downto 2i).
    -- sel (0..3) multiplied by base (1, 4, 16) gives the shift distance.
    -- --------------------------------------------------------
    gen_stages : for i in 0 to 2 generate
        gen_bits : for j in 0 to N-1 generate
            process(stage, shamt, fill)
                variable base : integer := 4**i;  -- 1, 4, 16
                variable sel  : integer;
                variable src  : integer;
            begin
                sel := to_integer(unsigned(shamt(2*i+1 downto 2*i)));
                src := j + sel * base;
                if src <= N-1 then
                    stage(i+1)(j) <= stage(i)(src);
                else
                    stage(i+1)(j) <= fill;
                end if;
            end process;
        end generate;
    end generate;

    -- Bit reversal on output for SLL
    gen_rev_out : for i in 0 to N-1 generate
        Y_rev(i) <= stage(3)(N-1-i) when is_sll = '1' else stage(3)(i);
    end generate;

    Y_int <= Y_rev;

    -- Output assembly: passthrough for arith, sign-extend for 32-bit mode
    process(Y_int, A, ShiftFN, ExtWord)
    begin
        if ShiftFN = "00" then
            Y <= A;
        else
            Y(31 downto 0) <= Y_int(31 downto 0);
            if ExtWord = '1' then
                Y(63 downto 32) <= (others => Y_int(31));
            else
                Y(63 downto 32) <= Y_int(63 downto 32);
            end if;
        end if;
    end process;

End Architecture SingleZU4ChRev;


-- ============================================================
-- Architecture: Dual8ChUni
--
-- Topology:
--   Same dual-chain concept as Dual2ChUni/Dual4ChUni but uses
--   8-channel (8:1) MUX stages, consuming 3 bits of shift amount
--   per stage. This reduces the chain to just 2 stages, giving the
--   shallowest stage count of all architectures.
--
-- Key design decisions:
--   - 64-bit chain: 2 stages.
--       Stage 0: B(2:0) -> shifts by 0..7   (base = 1)
--       Stage 1: B(5:3) -> shifts by 0,8,16,...,56 (base = 8)
--   - 32-bit chain: 2 stages.
--       Stage 0: B(2:0) -> shifts by 0..7   (base = 1, 8-channel)
--       Stage 1: B(4:3) -> shifts by 0,8,16,24 (base = 8, 4-channel)
--     The 32-bit chain's second stage is 4-channel because only 2 bits
--     of shift amount remain after stage 0 consumes B(2:0).
--   - to_integer(unsigned(...)) converts multi-bit B slices to integer offsets.
--   - Direction (is_left) still applies per bit as in other Uni architectures.
--
-- Trade-off:
--   - Fewest pipeline stages but widest mux fan-in.
--   - 8-input muxes require more LUTs per stage on a 4-input LUT device
--     (Cyclone IV), potentially making this slower than expected despite
--     the reduced stage count.
-- ============================================================
Architecture Dual8ChUni of ShiftUnit is

    -- 64-bit chain: input + 2 stage outputs
    type Stage64 is array (0 to 2) of std_logic_vector(63 downto 0);
    signal s64    : Stage64;
    signal fill64 : std_logic;

    -- 32-bit chain: input + 2 stage outputs
    type Stage32 is array (0 to 2) of std_logic_vector(31 downto 0);
    signal s32    : Stage32;
    signal fill32 : std_logic;

    signal Y_32_ext : std_logic_vector(63 downto 0);
    signal is_left  : std_logic;

Begin

    is_left <= '1' when ShiftFN = "01" else '0';

    fill64  <= A(63) when ShiftFN = "11" else '0';
    s64(0)  <= A;

    -- --------------------------------------------------------
    -- 64-BIT CHAIN: 2 stages
    --   Stage 0: 8-channel, B(2:0), base = 1 (shifts by 0..7)
    -- --------------------------------------------------------
    gen_64_s0 : for j in 0 to 63 generate
        process(s64, B, fill64, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(2 downto 0)));
            if is_left = '0' then
                src := j + sel;
                if src <= 63 then s64(1)(j) <= s64(0)(src);
                else              s64(1)(j) <= fill64; end if;
            else
                src := j - sel;
                if src >= 0 then s64(1)(j) <= s64(0)(src);
                else             s64(1)(j) <= '0'; end if;
            end if;
        end process;
    end generate;

    -- Stage 1: 8-channel, B(5:3), base = 8 (shifts by 0,8,16,...,56)
    gen_64_s1 : for j in 0 to 63 generate
        process(s64, B, fill64, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(5 downto 3)));
            if is_left = '0' then
                src := j + sel * 8;
                if src <= 63 then s64(2)(j) <= s64(1)(src);
                else              s64(2)(j) <= fill64; end if;
            else
                src := j - sel * 8;
                if src >= 0 then s64(2)(j) <= s64(1)(src);
                else             s64(2)(j) <= '0'; end if;
        end process;
    end generate;

    -- --------------------------------------------------------
    -- 32-BIT CHAIN: 2 stages
    --   Stage 0: 8-channel, B(2:0), base = 1 (shifts by 0..7)
    --   Stage 1: 4-channel, B(4:3), base = 8 (shifts by 0,8,16,24)
    --            Only 2 bits of shift amount remain after stage 0,
    --            so this stage degrades to 4-channel.
    -- --------------------------------------------------------
    fill32  <= A(31) when ShiftFN = "11" else '0';
    s32(0)  <= A(31 downto 0);

    gen_32_s0 : for j in 0 to 31 generate
        process(s32, B, fill32, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(2 downto 0)));
            if is_left = '0' then
                src := j + sel;
                if src <= 31 then s32(1)(j) <= s32(0)(src);
                else              s32(1)(j) <= fill32; end if;
            else
                src := j - sel;
                if src >= 0 then s32(1)(j) <= s32(0)(src);
                else             s32(1)(j) <= '0'; end if;
            end if;
        end process;
    end generate;

    -- Stage 1: 4-channel, B(4:3), shift by 0/8/16/24
    gen_32_s1 : for j in 0 to 31 generate
        process(s32, B, fill32, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(4 downto 3)));
            if is_left = '0' then
                src := j + sel * 8;
                if src <= 31 then s32(2)(j) <= s32(1)(src);
                else              s32(2)(j) <= fill32; end if;
            else
                src := j - sel * 8;
                if src >= 0 then s32(2)(j) <= s32(1)(src);
                else             s32(2)(j) <= '0'; end if;
            end if;
        end process;
    end generate;

    -- Sign-extend 32-bit result to 64 bits
    Y_32_ext <= (63 downto 32 => s32(2)(31)) & s32(2);

    -- Output selection
    process(s64, Y_32_ext, A, ShiftFN, ExtWord)
    begin
        if ShiftFN = "00" then
            Y <= A;
        elsif ExtWord = '1' then
            Y <= Y_32_ext;
        else
            Y <= s64(2);
        end if;
    end process;

End Architecture Dual8ChUni;


-- ============================================================
-- Architecture: SingleZU8ChRev
--
-- Topology:
--   The most aggressive single-chain design: a single 64-bit right-shift
--   chain of only 2 stages, each using an 8-channel (8:1) MUX.
--   Bit-reversal trick for SLL, zero-upper for 32-bit SLL/SRL,
--   sign-extension input for 32-bit SRA.
--
-- Key design decisions:
--   - Stage 0: 8-channel using shamt(2:0), shifts by 0..7 (base = 1).
--   - Stage 1: 8-channel using shamt(5:3), shifts by 0,8,...,56 (base = 8).
--   - Only 2 stages on the critical path; the shallowest of all single-chain
--     designs, but each stage requires the widest mux fan-in.
--   - Pre/post processing identical to SingleZU2ChRev.
--
-- Trade-off vs SingleZU2ChRev:
--   - Dramatically fewer stages but much wider mux per stage.
--   - Whether this is faster or slower depends heavily on how Quartus
--     maps 8-input select logic onto 4-input LUTs (Cyclone IV) or
--     8-input ALUTs (Arria II).
-- ============================================================
Architecture SingleZU8ChRev of ShiftUnit is

    type StageArray is array (0 to 2) of std_logic_vector(N-1 downto 0);
    signal stage    : StageArray;

    signal A_in     : std_logic_vector(N-1 downto 0);
    signal A_rev    : std_logic_vector(N-1 downto 0);
    signal Y_rev    : std_logic_vector(N-1 downto 0);
    signal Y_int    : std_logic_vector(N-1 downto 0);

    signal shamt    : std_logic_vector(5 downto 0);
    signal fill     : std_logic;
    signal is_sll   : std_logic;

Begin

    is_sll <= '1' when ShiftFN = "01" else '0';

    -- Input pre-processing: same as SingleZU2ChRev
    process(A, ShiftFN, ExtWord)
    begin
        if ExtWord = '1' and ShiftFN = "11" then
            A_in(31 downto 0)  <= A(31 downto 0);
            A_in(63 downto 32) <= (others => A(31));
        elsif ExtWord = '1' then
            A_in(31 downto 0)  <= A(31 downto 0);
            A_in(63 downto 32) <= (others => '0');
        else
            A_in <= A;
        end if;
    end process;

    shamt(4 downto 0) <= B(4 downto 0);
    shamt(5)          <= B(5) when ExtWord = '0' else '0';

    fill <= A(31) when (ShiftFN = "11" and ExtWord = '1')
       else A(63) when (ShiftFN = "11" and ExtWord = '0')
       else '0';

    -- Bit reversal on input for SLL
    gen_rev_in : for i in 0 to N-1 generate
        A_rev(i) <= A_in(N-1-i) when is_sll = '1' else A_in(i);
    end generate;

    stage(0) <= A_rev;

    -- --------------------------------------------------------
    -- 2-STAGE 8-CHANNEL RIGHT-SHIFT CHAIN
    --   Stage 0: shamt(2:0), base = 1 (shifts by 0..7)
    -- --------------------------------------------------------
    gen_s0 : for j in 0 to N-1 generate
        process(stage, shamt, fill)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(shamt(2 downto 0)));
            src := j + sel;
            if src <= N-1 then stage(1)(j) <= stage(0)(src);
            else               stage(1)(j) <= fill; end if;
        end process;
    end generate;

    -- Stage 1: shamt(5:3), base = 8 (shifts by 0,8,16,...,56)
    gen_s1 : for j in 0 to N-1 generate
        process(stage, shamt, fill)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(shamt(5 downto 3)));
            src := j + sel * 8;
            if src <= N-1 then stage(2)(j) <= stage(1)(src);
            else               stage(2)(j) <= fill; end if;
        end process;
    end generate;

    -- Bit reversal on output for SLL
    gen_rev_out : for i in 0 to N-1 generate
        Y_rev(i) <= stage(2)(N-1-i) when is_sll = '1' else stage(2)(i);
    end generate;

    Y_int <= Y_rev;

    -- Output assembly: passthrough for arith, sign-extend for 32-bit mode
    process(Y_int, A, ShiftFN, ExtWord)
    begin
        if ShiftFN = "00" then
            Y <= A;
        else
            Y(31 downto 0) <= Y_int(31 downto 0);
            if ExtWord = '1' then
                Y(63 downto 32) <= (others => Y_int(31));
            else
                Y(63 downto 32) <= Y_int(63 downto 32);
            end if;
        end if;
    end process;

End Architecture SingleZU8ChRev;


-- ============================================================
-- Architecture: SingleSW2ChUni
--
-- Topology:
--   A single unified bidirectional barrel shifter chain of 6 two-channel
--   stages that handles both SLL and SRL/SRA without bit reversal.
--   32-bit right-shifts use the SwapWord trick: the lower 32 bits of A
--   are placed in the upper half before entering the right-shift chain,
--   so the result naturally appears in the upper half after shifting
--   and is then moved back and sign-extended.
--   32-bit left-shifts zero the upper bits and sign-extend the output.
--
-- Key design decisions:
--   - Direction (is_left) controls each stage mux directly, making this
--     a true bidirectional chain rather than a right-only chain with reversal.
--   - SwapWord pre-processing for 32-bit right-shifts avoids needing a
--     separate 32-bit chain while also avoiding the reversal overhead.
--   - The fill bit for SRA is derived from A_right(N-1), which after
--     SwapWord pre-processing is always the correct sign bit regardless
--     of instruction width.
--   - Output post-processing extracts the result from the correct half
--     of the chain and applies sign extension based on ExtWord and ShiftFN.
--
-- Resource implication:
--   - Direction control adds inputs to every stage mux, increasing LUT
--     usage per bit above a pure right-shift chain, but only one chain
--     is needed so the total is comparable to SingleZU2ChRev.
-- ============================================================
Architecture SingleSW2ChUni of ShiftUnit is

    type StageArray is array (0 to 6) of std_logic_vector(N-1 downto 0);
    signal stage    : StageArray;

    -- A_in: pre-processed input fed into the unified chain.
    --       32-bit right-shift: lower word swapped to upper half.
    --       32-bit left-shift: upper bits zeroed.
    --       64-bit: unchanged.
    signal A_in     : std_logic_vector(N-1 downto 0);

    signal Y_int    : std_logic_vector(N-1 downto 0);

    -- shamt: effective shift amount; B(5) forced to '0' for 32-bit mode
    signal shamt    : std_logic_vector(5 downto 0);

    -- fill: SRA fill bit injected at the MSB end during right shifts.
    --       After SwapWord, A_right(N-1) is always the correct sign bit.
    signal fill     : std_logic;

    signal is_left  : std_logic;

Begin

    is_left <= '1' when ShiftFN = "01" else '0';

    -- --------------------------------------------------------
    -- INPUT PRE-PROCESSING (SwapWord concept)
    -- 32-bit right-shift: move lower 32 bits to upper half, zero lower half.
    --   After the right-shift chain, the result sits in the upper half
    --   and is extracted/sign-extended in output post-processing.
    -- 32-bit left-shift: zero upper bits so they do not appear in result.
    -- 64-bit: pass through unchanged.
    -- --------------------------------------------------------
    process(A, ShiftFN, ExtWord)
    begin
        if ExtWord = '1' and ShiftFN /= "01" then
            -- 32-bit right-shift: swap lower word to upper half
            A_in(63 downto 32) <= A(31 downto 0);
            A_in(31 downto 0)  <= (others => '0');
        elsif ExtWord = '1' and ShiftFN = "01" then
            -- 32-bit left-shift: zero upper bits
            A_in(31 downto 0)  <= A(31 downto 0);
            A_in(63 downto 32) <= (others => '0');
        else
            A_in <= A;
        end if;
    end process;

    -- Shift amount: cap at 5 bits for 32-bit mode
    shamt(4 downto 0) <= B(4 downto 0);
    shamt(5)          <= B(5) when ExtWord = '0' else '0';

    -- Fill bit for SRA: after SwapWord, the sign bit is always at A_in(N-1)
    -- because the 32-bit sign bit was moved to bit 63 by the swap.
    fill <= A(31) when (ShiftFN = "11" and ExtWord = '1')
       else A(63) when (ShiftFN = "11" and ExtWord = '0')
       else '0';

    stage(0) <= A_in;

    -- --------------------------------------------------------
    -- 6-STAGE UNIFIED BIDIRECTIONAL CHAIN
    -- is_left selects direction per stage:
    --   Right (SRL/SRA): source is at j + 2^i (shift right by 2^i)
    --   Left  (SLL):     source is at j - 2^i (shift left by 2^i)
    -- shamt(i) gates whether this stage actually shifts or passes through.
    -- --------------------------------------------------------
    gen_stages : for i in 0 to 5 generate
        gen_bits : for j in 0 to N-1 generate
            process(stage, shamt, fill, is_left)
                variable shift_amt : integer := 2**i;
                variable src       : integer;
            begin
                if is_left = '0' then
                    src := j + shift_amt;
                    if shamt(i) = '1' then
                        if src <= N-1 then stage(i+1)(j) <= stage(i)(src);
                        else               stage(i+1)(j) <= fill; end if;
                    else
                        stage(i+1)(j) <= stage(i)(j);
                    end if;
                else
                    src := j - shift_amt;
                    if shamt(i) = '1' then
                        if src >= 0 then stage(i+1)(j) <= stage(i)(src);
                        else             stage(i+1)(j) <= '0'; end if;
                    else
                        stage(i+1)(j) <= stage(i)(j);
                    end if;
                end if;
            end process;
        end generate;
    end generate;

    Y_int <= stage(6);

    -- --------------------------------------------------------
    -- OUTPUT ASSEMBLY
    -- ShiftFN=00: pass A through (arith handled by ArithUnit).
    -- 32-bit right-shift: result is in upper 32 bits (due to SwapWord);
    --   move to lower half and sign-extend upper half from Y_int(63).
    -- 32-bit left-shift: result is in lower 32 bits; sign-extend upper half.
    -- 64-bit: use full chain result directly.
    -- --------------------------------------------------------
    process(Y_int, A, ShiftFN, ExtWord)
    begin
        if ShiftFN = "00" then
            Y <= A;
        elsif ExtWord = '1' and ShiftFN /= "01" then
            -- Word right-shift: extract upper 32 bits and sign-extend downward
            Y(31 downto 0)  <= Y_int(63 downto 32);
            Y(63 downto 32) <= (others => Y_int(63));
        elsif ExtWord = '1' then
            -- Word left-shift: lower 32 bits are the result; sign-extend upward
            Y(31 downto 0)  <= Y_int(31 downto 0);
            Y(63 downto 32) <= (others => Y_int(31));
        else
            Y <= Y_int;
        end if;
    end process;

End Architecture SingleSW2ChUni;


-- ============================================================
-- Architecture: SingleSW4ChUni
--
-- Topology:
--   Same as SingleSW2ChUni but uses 4-channel (4:1) MUX stages,
--   reducing the chain from 6 stages to 3 stages.
--   SwapWord pre-processing and sign-extend output post-processing
--   are identical to SingleSW2ChUni.
--
-- Key design decisions:
--   - Each stage consumes 2 bits of shamt, with sel (0..3) multiplied
--     by base (1, 4, 16) giving the shift distance for that stage.
--   - Direction (is_left) still controls per-bit mux direction.
--   - All pre/post processing is identical to SingleSW2ChUni.
--
-- Trade-off vs SingleSW2ChUni:
--   - Fewer stages reduces the gate-level critical path depth.
--   - Wider mux fan-in increases LUT cost per stage.
-- ============================================================
Architecture SingleSW4ChUni of ShiftUnit is

    type StageArray is array (0 to 3) of std_logic_vector(N-1 downto 0);
    signal stage    : StageArray;

    signal A_in     : std_logic_vector(N-1 downto 0);
    signal Y_int    : std_logic_vector(N-1 downto 0);

    signal shamt    : std_logic_vector(5 downto 0);
    signal fill     : std_logic;
    signal is_left  : std_logic;

Begin

    is_left <= '1' when ShiftFN = "01" else '0';

    -- SwapWord pre-processing: same as SingleSW2ChUni
    process(A, ShiftFN, ExtWord)
    begin
        if ExtWord = '1' and ShiftFN /= "01" then
            A_in(63 downto 32) <= A(31 downto 0);
            A_in(31 downto 0)  <= (others => '0');
        elsif ExtWord = '1' and ShiftFN = "01" then
            A_in(31 downto 0)  <= A(31 downto 0);
            A_in(63 downto 32) <= (others => '0');
        else
            A_in <= A;
        end if;
    end process;

    shamt(4 downto 0) <= B(4 downto 0);
    shamt(5)          <= B(5) when ExtWord = '0' else '0';

    fill <= A(31) when (ShiftFN = "11" and ExtWord = '1')
       else A(63) when (ShiftFN = "11" and ExtWord = '0')
       else '0';

    stage(0) <= A_in;

    -- --------------------------------------------------------
    -- 3-STAGE 4-CHANNEL UNIFIED BIDIRECTIONAL CHAIN
    -- Each stage handles 2 bits of shamt simultaneously.
    -- sel (0..3) * base (1, 4, 16) gives the shift distance per stage.
    -- --------------------------------------------------------
    gen_stages : for i in 0 to 2 generate
        gen_bits : for j in 0 to N-1 generate
            process(stage, shamt, fill, is_left)
                variable base : integer := 4**i;  -- 1, 4, 16
                variable sel  : integer;
                variable src  : integer;
            begin
                sel := to_integer(unsigned(shamt(2*i+1 downto 2*i)));
                if is_left = '0' then
                    src := j + sel * base;
                    if src <= N-1 then stage(i+1)(j) <= stage(i)(src);
                    else               stage(i+1)(j) <= fill; end if;
                else
                    src := j - sel * base;
                    if src >= 0 then stage(i+1)(j) <= stage(i)(src);
                    else             stage(i+1)(j) <= '0'; end if;
                end if;
            end process;
        end generate;
    end generate;

    Y_int <= stage(3);

    -- Output assembly: identical to SingleSW2ChUni
    process(Y_int, A, ShiftFN, ExtWord)
    begin
        if ShiftFN = "00" then
            Y <= A;
        elsif ExtWord = '1' and ShiftFN /= "01" then
            Y(31 downto 0)  <= Y_int(63 downto 32);
            Y(63 downto 32) <= (others => Y_int(63));
        elsif ExtWord = '1' then
            Y(31 downto 0)  <= Y_int(31 downto 0);
            Y(63 downto 32) <= (others => Y_int(31));
        else
            Y <= Y_int;
        end if;
    end process;

End Architecture SingleSW4ChUni;


-- ============================================================
-- Architecture: Dual248ChUni
--
-- Topology:
--   Dual separate 64-bit and 32-bit chains, each with 3 stages using
--   mixed MUX widths increasing from narrow to wide: 2-channel, 4-channel,
--   then 8-channel (248 ordering).
--   Direct left/right shift handling per stage using is_left.
--
-- Key design decisions:
--   - Stage 0: 2-channel (B(0)),   shifts by 0 or 1          (base = 1)
--   - Stage 1: 4-channel (B(2:1)), shifts by 0, 2, 4, or 6  (base = 2)
--   - Stage 2: 8-channel (B(5:3)), shifts by 0,8,16,...,56   (base = 8)
--   - The 32-bit chain mirrors this but stage 2 uses B(4:3) (4-channel)
--     since only 2 bits of shift amount remain for 32-bit mode.
--   - Rationale: fine-grained shifts (small amounts) are handled by
--     narrow, fast muxes early in the chain; large shifts are handled
--     by wide muxes later where fan-in cost matters less relative to the
--     total delay already accumulated.
--
-- Trade-off:
--   - Mixed widths may provide a better LUT-depth balance than uniform
--     width designs; empirical measurement on the target FPGA determines
--     whether this ordering outperforms uniform-width alternatives.
-- ============================================================
Architecture Dual248ChUni of ShiftUnit is

    type Stage64 is array (0 to 3) of std_logic_vector(63 downto 0);
    signal s64    : Stage64;
    signal fill64 : std_logic;

    type Stage32 is array (0 to 3) of std_logic_vector(31 downto 0);
    signal s32    : Stage32;
    signal fill32 : std_logic;

    signal Y_32ext : std_logic_vector(63 downto 0);
    signal is_left : std_logic;

Begin

    is_left <= '1' when ShiftFN = "01" else '0';
    fill64  <= A(63) when ShiftFN = "11" else '0';
    fill32  <= A(31) when ShiftFN = "11" else '0';
    s64(0)  <= A;
    s32(0)  <= A(31 downto 0);

    -- --------------------------------------------------------
    -- 64-BIT CHAIN
    -- Stage 0: 2-channel, B(0), base = 1 (shift by 0 or 1)
    -- --------------------------------------------------------
    gen_64_s0 : for j in 0 to 63 generate
        process(s64, B, fill64, is_left)
        begin
            if is_left = '0' then
                if j + 1 <= 63 then
                    if B(0) = '1' then s64(1)(j) <= s64(0)(j+1);
                    else               s64(1)(j) <= s64(0)(j); end if;
                else
                    if B(0) = '1' then s64(1)(j) <= fill64;
                    else               s64(1)(j) <= s64(0)(j); end if;
                end if;
            else
                if j - 1 >= 0 then
                    if B(0) = '1' then s64(1)(j) <= s64(0)(j-1);
                    else               s64(1)(j) <= s64(0)(j); end if;
                else
                    if B(0) = '1' then s64(1)(j) <= '0';
                    else               s64(1)(j) <= s64(0)(j); end if;
                end if;
            end if;
        end process;
    end generate;

    -- Stage 1: 4-channel, B(2:1), base = 2 (shifts by 0, 2, 4, or 6)
    gen_64_s1 : for j in 0 to 63 generate
        process(s64, B, fill64, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(2 downto 1)));
            if is_left = '0' then
                src := j + sel * 2;
                if src <= 63 then s64(2)(j) <= s64(1)(src);
                else              s64(2)(j) <= fill64; end if;
            else
                src := j - sel * 2;
                if src >= 0 then s64(2)(j) <= s64(1)(src);
                else             s64(2)(j) <= '0'; end if;
            end if;
        end process;
    end generate;

    -- Stage 2: 8-channel, B(5:3), base = 8 (shifts by 0,8,16,...,56)
    gen_64_s2 : for j in 0 to 63 generate
        process(s64, B, fill64, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(5 downto 3)));
            if is_left = '0' then
                src := j + sel * 8;
                if src <= 63 then s64(3)(j) <= s64(2)(src);
                else              s64(3)(j) <= fill64; end if;
            else
                src := j - sel * 8;
                if src >= 0 then s64(3)(j) <= s64(2)(src);
                else             s64(3)(j) <= '0'; end if;
            end if;
        end process;
    end generate;

    -- --------------------------------------------------------
    -- 32-BIT CHAIN
    -- Stage 0: 2-channel, B(0), base = 1
    -- Stage 1: 4-channel, B(2:1), base = 2
    -- Stage 2: 4-channel, B(4:3), base = 8
    --   (only 2 bits of shamt remain for 32-bit; 8-channel not needed)
    -- --------------------------------------------------------
    gen_32_s0 : for j in 0 to 31 generate
        process(s32, B, fill32, is_left)
        begin
            if is_left = '0' then
                if j + 1 <= 31 then
                    if B(0) = '1' then s32(1)(j) <= s32(0)(j+1);
                    else               s32(1)(j) <= s32(0)(j); end if;
                else
                    if B(0) = '1' then s32(1)(j) <= fill32;
                    else               s32(1)(j) <= s32(0)(j); end if;
                end if;
            else
                if j - 1 >= 0 then
                    if B(0) = '1' then s32(1)(j) <= s32(0)(j-1);
                    else               s32(1)(j) <= s32(0)(j); end if;
                else
                    if B(0) = '1' then s32(1)(j) <= '0';
                    else               s32(1)(j) <= s32(0)(j); end if;
                end if;
            end if;
        end process;
    end generate;

    gen_32_s1 : for j in 0 to 31 generate
        process(s32, B, fill32, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(2 downto 1)));
            if is_left = '0' then
                src := j + sel * 2;
                if src <= 31 then s32(2)(j) <= s32(1)(src);
                else              s32(2)(j) <= fill32; end if;
            else
                src := j - sel * 2;
                if src >= 0 then s32(2)(j) <= s32(1)(src);
                else             s32(2)(j) <= '0'; end if;
            end if;
        end process;
    end generate;

    gen_32_s2 : for j in 0 to 31 generate
        process(s32, B, fill32, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(4 downto 3)));
            if is_left = '0' then
                src := j + sel * 8;
                if src <= 31 then s32(3)(j) <= s32(2)(src);
                else              s32(3)(j) <= fill32; end if;
            else
                src := j - sel * 8;
                if src >= 0 then s32(3)(j) <= s32(2)(src);
                else             s32(3)(j) <= '0'; end if;
            end if;
        end process;
    end generate;

    Y_32ext <= (63 downto 32 => s32(3)(31)) & s32(3);

    process(s64, Y_32ext, A, ShiftFN, ExtWord)
    begin
        if ShiftFN = "00" then
            Y <= A;
        elsif ExtWord = '1' then
            Y <= Y_32ext;
        else
            Y <= s64(3);
        end if;
    end process;

End Architecture Dual248ChUni;


-- ============================================================
-- Architecture: Dual824ChUni
--
-- Topology:
--   Same dual-chain structure as Dual248ChUni but with a different
--   stage width ordering: 8-channel first, then 2-channel, then 4-channel
--   (824 ordering). Tests whether placing the widest mux first (handling
--   fine-grained shifts) produces better FPGA timing than narrow-first.
--
-- Key design decisions:
--   - 64-bit chain:
--       Stage 0: 8-channel, B(2:0), base = 1  (shifts by 0..7)
--       Stage 1: 2-channel, B(3),   base = 8  (shifts by 0 or 8)
--       Stage 2: 4-channel, B(5:4), base = 16 (shifts by 0,16,32,48)
--   - 32-bit chain:
--       Stage 0: 8-channel, B(2:0), base = 1  (shifts by 0..7)
--       Stage 1: 2-channel, B(3),   base = 8  (shifts by 0 or 8)
--       Stage 2: 2-channel, B(4),   base = 16 (shifts by 0 or 16)
--   - Rationale: the wide stage handles fine-grained shifts (LUT-heavy)
--     up front; the narrow middle stage provides a fast single-bit gate;
--     the final stage handles the coarser large shifts.
--
-- Trade-off vs Dual248ChUni:
--   - Wide-first vs narrow-first ordering; empirical FPGA results determine
--     which ordering the tool maps more efficiently.
-- ============================================================
Architecture Dual824ChUni of ShiftUnit is

    type Stage64 is array (0 to 3) of std_logic_vector(63 downto 0);
    signal s64    : Stage64;
    signal fill64 : std_logic;

    type Stage32 is array (0 to 3) of std_logic_vector(31 downto 0);
    signal s32    : Stage32;
    signal fill32 : std_logic;

    signal Y_32ext : std_logic_vector(63 downto 0);
    signal is_left : std_logic;

Begin

    is_left <= '1' when ShiftFN = "01" else '0';
    fill64  <= A(63) when ShiftFN = "11" else '0';
    fill32  <= A(31) when ShiftFN = "11" else '0';
    s64(0)  <= A;
    s32(0)  <= A(31 downto 0);

    -- --------------------------------------------------------
    -- 64-BIT CHAIN
    -- Stage 0: 8-channel, B(2:0), base = 1
    -- --------------------------------------------------------
    gen_64_s0 : for j in 0 to 63 generate
        process(s64, B, fill64, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(2 downto 0)));
            if is_left = '0' then
                src := j + sel;
                if src <= 63 then s64(1)(j) <= s64(0)(src);
                else              s64(1)(j) <= fill64; end if;
            else
                src := j - sel;
                if src >= 0 then s64(1)(j) <= s64(0)(src);
                else             s64(1)(j) <= '0'; end if;
            end if;
        end process;
    end generate;

    -- Stage 1: 2-channel, B(3), base = 8 (shift by 0 or 8)
    gen_64_s1 : for j in 0 to 63 generate
        process(s64, B, fill64, is_left)
        begin
            if is_left = '0' then
                if j + 8 <= 63 then
                    if B(3) = '1' then s64(2)(j) <= s64(1)(j+8);
                    else               s64(2)(j) <= s64(1)(j); end if;
                else
                    if B(3) = '1' then s64(2)(j) <= fill64;
                    else               s64(2)(j) <= s64(1)(j); end if;
                end if;
            else
                if j - 8 >= 0 then
                    if B(3) = '1' then s64(2)(j) <= s64(1)(j-8);
                    else               s64(2)(j) <= s64(1)(j); end if;
                else
                    if B(3) = '1' then s64(2)(j) <= '0';
                    else               s64(2)(j) <= s64(1)(j); end if;
                end if;
            end if;
        end process;
    end generate;

    -- Stage 2: 4-channel, B(5:4), base = 16 (shifts by 0,16,32,48)
    gen_64_s2 : for j in 0 to 63 generate
        process(s64, B, fill64, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(5 downto 4)));
            if is_left = '0' then
                src := j + sel * 16;
                if src <= 63 then s64(3)(j) <= s64(2)(src);
                else              s64(3)(j) <= fill64; end if;
            else
                src := j - sel * 16;
                if src >= 0 then s64(3)(j) <= s64(2)(src);
                else             s64(3)(j) <= '0'; end if;
            end if;
        end process;
    end generate;

    -- --------------------------------------------------------
    -- 32-BIT CHAIN
    -- Stage 0: 8-channel, B(2:0), base = 1
    -- Stage 1: 2-channel, B(3),   base = 8
    -- Stage 2: 2-channel, B(4),   base = 16
    -- --------------------------------------------------------
    gen_32_s0 : for j in 0 to 31 generate
        process(s32, B, fill32, is_left)
            variable sel : integer;
            variable src : integer;
        begin
            sel := to_integer(unsigned(B(2 downto 0)));
            if is_left = '0' then
                src := j + sel;
                if src <= 31 then s32(1)(j) <= s32(0)(src);
                else              s32(1)(j) <= fill32; end if;
            else
                src := j - sel;
                if src >= 0 then s32(1)(j) <= s32(0)(src);
                else             s32(1)(j) <= '0'; end if;
            end if;
        end process;
    end generate;

    gen_32_s1 : for j in 0 to 31 generate
        process(s32, B, fill32, is_left)
        begin
            if is_left = '0' then
                if j + 8 <= 31 then
                    if B(3) = '1' then s32(2)(j) <= s32(1)(j+8);
                    else               s32(2)(j) <= s32(1)(j); end if;
                else
                    if B(3) = '1' then s32(2)(j) <= fill32;
                    else               s32(2)(j) <= s32(1)(j); end if;
                end if;
            else
                if j - 8 >= 0 then
                    if B(3) = '1' then s32(2)(j) <= s32(1)(j-8);
                    else               s32(2)(j) <= s32(1)(j); end if;
                else
                    if B(3) = '1' then s32(2)(j) <= '0';
                    else               s32(2)(j) <= s32(1)(j); end if;
                end if;
            end if;
        end process;
    end generate;

    -- Stage 2: 2-channel, B(4), base = 16 (shift by 0 or 16)
    gen_32_s2 : for j in 0 to 31 generate
        process(s32, B, fill32, is_left)
        begin
            if is_left = '0' then
                if j + 16 <= 31 then
                    if B(4) = '1' then s32(3)(j) <= s32(2)(j+16);
                    else               s32(3)(j) <= s32(2)(j); end if;
                else
                    if B(4) = '1' then s32(3)(j) <= fill32;
                    else               s32(3)(j) <= s32(2)(j); end if;
                end if;
            else
                if j - 16 >= 0 then
                    if B(4) = '1' then s32(3)(j) <= s32(2)(j-16);
                    else               s32(3)(j) <= s32(2)(j); end if;
                else
                    if B(4) = '1' then s32(3)(j) <= '0';
                    else               s32(3)(j) <= s32(2)(j); end if;
                end if;
            end if;
        end process;
    end generate;

    Y_32ext <= (63 downto 32 => s32(3)(31)) & s32(3);

    process(s64, Y_32ext, A, ShiftFN, ExtWord)
    begin
        if ShiftFN = "00" then
            Y <= A;
        elsif ExtWord = '1' then
            Y <= Y_32ext;
        else
            Y <= s64(3);
        end if;
    end process;

End Architecture Dual824ChUni;


-- ============================================================
-- Architecture: SingleSW2ChSep
--
-- Topology:
--   Three fully independent 64-bit barrel shifter chains: one dedicated
--   to SLL, one to SRL, and one to SRA. Each chain uses 6 two-channel
--   stages and handles both 32-bit and 64-bit instructions internally.
--   32-bit right-shifts use the SwapWord trick on the input; 32-bit
--   left-shifts zero the upper bits. A final 3-way mux selects the
--   result from the appropriate chain based on ShiftFN.
--
-- Key design decisions:
--   - Separation into three dedicated chains eliminates the direction
--     control signal (is_left) entirely from each chain. Each chain
--     only needs to handle one operation, so every stage mux has only
--     data and shift amount inputs — reducing to a 1-LUT implementation
--     per bit rather than the 1.5-LUT average of unified/direction-controlled
--     designs. This gives the best area efficiency per LUT for each chain.
--   - The SRA chain uses A_right (after SwapWord) as its input so that
--     A_right(N-1) is always the correct sign bit for both 32-bit and
--     64-bit modes without needing separate fill logic.
--   - The final with/select mux adds one LUT level on the output path
--     but is unavoidable when using separate chains.
--   - ShiftFN=00 passes A through (arith handled by ArithUnit).
--
-- Resource implication:
--   - Three chains means roughly 3x the mux count of a single-chain design,
--     making this the most resource-intensive ShiftUnit topology.
--   - However, each individual chain is cheaper per bit than a combined
--     design, partially offsetting the triplication cost.
-- ============================================================
Architecture SingleSW2ChSep of ShiftUnit is

    -- Three independent shift chains, each with 6 stages
    type Stage64 is array (0 to 6) of std_logic_vector(N-1 downto 0);
    signal sll64 : Stage64;  -- Dedicated left shift chain
    signal srl64 : Stage64;  -- Dedicated logical right shift chain
    signal sra64 : Stage64;  -- Dedicated arithmetic right shift chain

    -- A_right: pre-processed input for the two right-shift chains.
    --          For 32-bit mode: lower word swapped to upper half (SwapWord).
    --          For 64-bit mode: A passed through unchanged.
    signal A_right  : std_logic_vector(N-1 downto 0);

    -- A_left: pre-processed input for the left-shift chain.
    --         For 32-bit mode: upper bits zeroed.
    --         For 64-bit mode: A passed through unchanged.
    signal A_left   : std_logic_vector(N-1 downto 0);

    -- shamt: effective shift amount; B(5) forced to '0' for 32-bit mode
    signal shamt    : std_logic_vector(5 downto 0);

    -- Chain output signals before final output post-processing
    signal Y_sll    : std_logic_vector(N-1 downto 0);
    signal Y_srl    : std_logic_vector(N-1 downto 0);
    signal Y_sra    : std_logic_vector(N-1 downto 0);

Begin

    -- --------------------------------------------------------
    -- INPUT PRE-PROCESSING
    -- Right chains (SRL, SRA): SwapWord for 32-bit mode.
    --   Lower word moved to upper half; lower half zeroed.
    --   This means the result appears in the upper half after shifting
    --   and A_right(N-1) is always the correct SRA sign bit.
    -- Left chain (SLL): zero upper bits for 32-bit mode.
    -- --------------------------------------------------------
    process(A, ExtWord)
    begin
        if ExtWord = '1' then
            A_right(N-1 downto N/2) <= A(N/2-1 downto 0);
            A_right(N/2-1 downto 0)  <= (others => '0');
        else
            A_right <= A;
        end if;
    end process;

    process(A, ExtWord)
    begin
        if ExtWord = '1' then
            A_left(N/2-1 downto 0)  <= A(N/2-1 downto 0);
            A_left(N-1 downto N/2) <= (others => '0');
        else
            A_left <= A;
        end if;
    end process;

    -- Shift amount: cap at 5 bits for 32-bit mode
    shamt(4 downto 0) <= B(4 downto 0);
    shamt(5)          <= B(5) when ExtWord = '0' else '0';

    -- Chain inputs
    sll64(0) <= A_left;
    srl64(0) <= A_right;
    sra64(0) <= A_right;

    -- --------------------------------------------------------
    -- SLL64 CHAIN: 6 stages of left shift
    -- Bit j comes from bit j-shift_amt; '0' fills when out of range.
    -- No direction control needed: this chain only shifts left.
    -- --------------------------------------------------------
    gen_sll : for i in 0 to 5 generate
        gen_sll_bits : for j in 0 to N-1 generate
            process(sll64, shamt)
                variable shift_amt : integer := 2**i;
            begin
                if j - shift_amt >= 0 then
                    if shamt(i) = '1' then
                        sll64(i+1)(j) <= sll64(i)(j - shift_amt);
                    else
                        sll64(i+1)(j) <= sll64(i)(j);
                    end if;
                else
                    if shamt(i) = '1' then
                        sll64(i+1)(j) <= '0';   -- zero fill for left shift
                    else
                        sll64(i+1)(j) <= sll64(i)(j);
                    end if;
                end if;
            end process;
        end generate;
    end generate;

    -- --------------------------------------------------------
    -- SRL64 CHAIN: 6 stages of logical right shift
    -- Bit j comes from bit j+shift_amt; '0' fills when out of range.
    -- No direction control needed: this chain only shifts right.
    -- --------------------------------------------------------
    gen_srl : for i in 0 to 5 generate
        gen_srl_bits : for j in 0 to N-1 generate
            process(srl64, shamt)
                variable shift_amt : integer := 2**i;
            begin
                if j + shift_amt <= N-1 then
                    if shamt(i) = '1' then
                        srl64(i+1)(j) <= srl64(i)(j + shift_amt);
                    else
                        srl64(i+1)(j) <= srl64(i)(j);
                    end if;
                else
                    if shamt(i) = '1' then
                        srl64(i+1)(j) <= '0';   -- logical right shift: zero fill
                    else
                        srl64(i+1)(j) <= srl64(i)(j);
                    end if;
                end if;
            end process;
        end generate;
    end generate;

    -- --------------------------------------------------------
    -- SRA64 CHAIN: 6 stages of arithmetic right shift
    -- Identical to SRL64 except out-of-range bits fill with fill_bit
    -- instead of '0'. fill_bit is A_right(N-1), which after SwapWord
    -- is always the correct sign bit for both 32-bit and 64-bit modes.
    -- --------------------------------------------------------
    gen_sra : for i in 0 to 5 generate
        gen_sra_bits : for j in 0 to N-1 generate
            process(sra64, shamt, A, ExtWord)
                variable shift_amt : integer := 2**i;
                variable fill_bit  : std_logic;
            begin
                fill_bit := A_right(N-1);  -- always the correct sign bit post-SwapWord
                if j + shift_amt <= N-1 then
                    if shamt(i) = '1' then
                        sra64(i+1)(j) <= sra64(i)(j + shift_amt);
                    else
                        sra64(i+1)(j) <= sra64(i)(j);
                    end if;
                else
                    if shamt(i) = '1' then
                        sra64(i+1)(j) <= fill_bit;  -- arithmetic fill
                    else
                        sra64(i+1)(j) <= sra64(i)(j);
                    end if;
                end if;
            end process;
        end generate;
    end generate;

    -- --------------------------------------------------------
    -- OUTPUT ASSEMBLY
    -- For 32-bit right-shifts (SRL/SRA): result is in upper 32 bits
    --   due to SwapWord; move to lower half and sign-extend upper half.
    -- For 32-bit left-shift (SLL): result is in lower 32 bits; sign-extend upper.
    -- For 64-bit: use full chain output directly.
    -- --------------------------------------------------------
    process(srl64, ExtWord)
    begin
        if ExtWord = '1' then
            Y_srl(N/2-1 downto 0)  <= srl64(6)(N-1 downto N/2);
            Y_srl(N-1 downto N/2) <= (others => srl64(6)(N-1));
        else
            Y_srl <= srl64(6);
        end if;
    end process;

    process(sra64, ExtWord)
    begin
        if ExtWord = '1' then
            Y_sra(N/2-1 downto 0)  <= sra64(6)(N-1 downto N/2);
            Y_sra(N-1 downto N/2) <= (others => sra64(6)(N-1));
        else
            Y_sra <= sra64(6);
        end if;
    end process;

    process(sll64, ExtWord)
    begin
        if ExtWord = '1' then
            Y_sll(N/2-1 downto 0)   <= sll64(6)(N/2-1 downto 0);
            Y_sll(N-1 downto N/2-1) <= (others => sll64(6)(N/2-1));
        else
            Y_sll <= sll64(6);
        end if;
    end process;

    -- Final output mux: select the result from the appropriate chain.
    -- ShiftFN=00 passes A through (arith handled by ArithUnit).
    with ShiftFN select Y <=
        Y_sll  when "01",   -- SLL
        Y_srl  when "10",   -- SRL
        Y_sra  when "11",   -- SRA
        A      when others; -- passthrough (ShiftFN=00)

End Architecture SingleSW2ChSep;


-- ============================================================
-- Architecture: SingleZU2ChSep
--
-- Topology:
--   Three fully independent 64-bit barrel shifter chains: SLL, SRL, SRA,
--   each using 6 two-channel stages. Handles 32-bit mode using the
--   Zero-Upper (ZU) method instead of SwapWord:
--   - SLL/SRL: zero the upper 32 bits of A before entering the chain;
--     result is already in the lower 32 bits; sign-extend on output.
--   - SRA: sign-extend from bit 31 before entering the chain so that
--     arithmetic fill propagates correctly through the upper half.
--   A final 3-way mux selects the result from the appropriate chain.
--
-- Key design decisions:
--   - ZeroUpper differs from SwapWord in that the result remains in the
--     lower 32 bits rather than being extracted from the upper half.
--     This simplifies output post-processing (no swap-back needed) but
--     requires sign-extension of the SRA input rather than relying on
--     the sign bit naturally sitting at the MSB after a swap.
--   - Separate chains eliminate direction control, giving 1-LUT per bit
--     per stage as in SingleSW2ChSep.
--   - SRA input pre-processing sign-extends A(31) to the upper half;
--     this ensures that arithmetic fill is applied correctly through
--     the upper bits, which would otherwise be zeroed and produce
--     incorrect results for negative 32-bit values.
--   - ShiftFN=00 passes A through unchanged.
--
-- Resource implication:
--   - Identical chain count and structure to SingleSW2ChSep; the only
--     difference is the 32-bit pre/post processing strategy (ZU vs SW).
--     Measured area and timing may differ due to how Quartus maps the
--     different pre-processing logic.
-- ============================================================
Architecture SingleZU2ChSep of ShiftUnit is

    type Stage64 is array (0 to 6) of std_logic_vector(63 downto 0);
    signal sll64 : Stage64;
    signal srl64 : Stage64;
    signal sra64 : Stage64;

    -- A_in: zero-upper pre-processed input for SLL and SRL chains.
    --       Upper 32 bits zeroed for 32-bit mode; unchanged for 64-bit.
    signal A_in     : std_logic_vector(63 downto 0);

    -- shamt: effective shift amount; B(5) forced to '0' for 32-bit mode
    signal shamt    : std_logic_vector(5 downto 0);

    signal Y_sll    : std_logic_vector(63 downto 0);
    signal Y_srl    : std_logic_vector(63 downto 0);
    signal Y_sra    : std_logic_vector(63 downto 0);

Begin

    -- Zero upper 32 bits for 32-bit mode (SLL and SRL chains only).
    -- SRA uses a separate pre-processing process below.
    A_in(31 downto 0)  <= A(31 downto 0);
    A_in(63 downto 32) <= (others => '0') when ExtWord = '1'
                     else A(63 downto 32);

    -- Cap shift amount at 5 bits for 32-bit mode
    shamt(4 downto 0) <= B(4 downto 0);
    shamt(5)          <= B(5) when ExtWord = '0' else '0';

    -- SLL and SRL chains use the zero-upper pre-processed input
    sll64(0) <= A_in;
    srl64(0) <= A_in;

    -- SRA chain input: sign-extend from bit 31 for 32-bit mode.
    -- Zeroing the upper bits (as done for SLL/SRL) would cause incorrect
    -- fill propagation for negative 32-bit values; sign-extension ensures
    -- the arithmetic fill bit is correctly replicated through the upper half.
    process(A, ExtWord)
    begin
        if ExtWord = '1' then
            sra64(0)(31 downto 0)  <= A(31 downto 0);
            sra64(0)(63 downto 32) <= (others => A(31));  -- sign-extend from bit 31
        else
            sra64(0) <= A;
        end if;
    end process;

    -- --------------------------------------------------------
    -- SLL64 CHAIN: 6 stages of left shift
    -- --------------------------------------------------------
    gen_sll : for i in 0 to 5 generate
        gen_sll_bits : for j in 0 to 63 generate
            process(sll64, shamt)
                variable shift_amt : integer := 2**i;
            begin
                if j - shift_amt >= 0 then
                    if shamt(i) = '1' then
                        sll64(i+1)(j) <= sll64(i)(j - shift_amt);
                    else
                        sll64(i+1)(j) <= sll64(i)(j);
                    end if;
                else
                    if shamt(i) = '1' then
                        sll64(i+1)(j) <= '0';
                    else
                        sll64(i+1)(j) <= sll64(i)(j);
                    end if;
                end if;
            end process;
        end generate;
    end generate;

    -- --------------------------------------------------------
    -- SRL64 CHAIN: 6 stages of logical right shift (zero fill)
    -- --------------------------------------------------------
    gen_srl : for i in 0 to 5 generate
        gen_srl_bits : for j in 0 to 63 generate
            process(srl64, shamt)
                variable shift_amt : integer := 2**i;
            begin
                if j + shift_amt <= 63 then
                    if shamt(i) = '1' then
                        srl64(i+1)(j) <= srl64(i)(j + shift_amt);
                    else
                        srl64(i+1)(j) <= srl64(i)(j);
                    end if;
                else
                    if shamt(i) = '1' then
                        srl64(i+1)(j) <= '0';
                    else
                        srl64(i+1)(j) <= srl64(i)(j);
                    end if;
                end if;
            end process;
        end generate;
    end generate;

    -- --------------------------------------------------------
    -- SRA64 CHAIN: 6 stages of arithmetic right shift
    -- Fill bit is A(31) for 32-bit mode, A(63) for 64-bit mode.
    -- The chain input was sign-extended so the fill bit at A(63) is
    -- always correct, but the explicit fill_bit variable makes intent clear.
    -- --------------------------------------------------------
    gen_sra : for i in 0 to 5 generate
        gen_sra_bits : for j in 0 to 63 generate
            process(sra64, shamt, A, ExtWord)
                variable shift_amt : integer := 2**i;
                variable fill_bit  : std_logic;
            begin
                if ExtWord = '1' then fill_bit := A(31); else fill_bit := A(63); end if;
                if j + shift_amt <= 63 then
                    if shamt(i) = '1' then
                        sra64(i+1)(j) <= sra64(i)(j + shift_amt);
                    else
                        sra64(i+1)(j) <= sra64(i)(j);
                    end if;
                else
                    if shamt(i) = '1' then
                        sra64(i+1)(j) <= fill_bit;
                    else
                        sra64(i+1)(j) <= sra64(i)(j);
                    end if;
                end if;
            end process;
        end generate;
    end generate;

    -- --------------------------------------------------------
    -- OUTPUT ASSEMBLY
    -- For 32-bit mode: result is in lower 32 bits of each chain;
    --   sign-extend upper 32 bits from bit 31 of the result.
    -- For 64-bit: use full chain output directly.
    -- --------------------------------------------------------
    process(sll64, ExtWord)
    begin
        if ExtWord = '1' then
            Y_sll(31 downto 0)  <= sll64(6)(31 downto 0);
            Y_sll(63 downto 32) <= (others => sll64(6)(31));
        else
            Y_sll <= sll64(6);
        end if;
    end process;

    process(srl64, ExtWord)
    begin
        if ExtWord = '1' then
            Y_srl(31 downto 0)  <= srl64(6)(31 downto 0);
            Y_srl(63 downto 32) <= (others => srl64(6)(31));
        else
            Y_srl <= srl64(6);
        end if;
    end process;

    process(sra64, ExtWord)
    begin
        if ExtWord = '1' then
            Y_sra(31 downto 0)  <= sra64(6)(31 downto 0);
            Y_sra(63 downto 32) <= (others => sra64(6)(31));
        else
            Y_sra <= sra64(6);
        end if;
    end process;

    -- Final output mux: select the result from the appropriate chain.
    with ShiftFN select Y <=
        Y_sll  when "01",
        Y_srl  when "10",
        Y_sra  when "11",
        A      when others;  -- ShiftFN=00: passthrough

End Architecture SingleZU2ChSep;