library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adder is
    generic (
        N : natural := 64
    );
    port (
        A    : in  std_logic_vector(N-1 downto 0);
        B    : in  std_logic_vector(N-1 downto 0);
        Cin  : in  std_logic;
        S    : out std_logic_vector(N-1 downto 0);
        Cout : out std_logic;
        Ovfl : out std_logic
    );
end entity Adder;


architecture Baseline of Adder is
    signal C : std_logic_vector(N downto 0);
begin

    C(0) <= Cin;

    gen_ripple : for i in 0 to N-1 generate
        S(i) <= A(i) xor B(i) xor C(i);

        C(i+1) <= (A(i) and B(i)) or
                  (A(i) and C(i)) or
                  (B(i) and C(i));
    end generate;

    Cout <= C(N);

    -- Signed overflow detection
    Ovfl <= C(N) xor C(N-1);

end architecture Baseline;


--architecture FastRipple of Adder is
--    signal A_u, B_u : unsigned(N downto 0);
--    signal Cin_u    : unsigned(N downto 0);
--    signal result  : unsigned(N downto 0);
--begin
--
--    A_u <= resize(unsigned(A), N+1);
--    B_u <= resize(unsigned(B), N+1);
--
--	 Cin_u <= (others => '0') when Cin='0'
--         else to_unsigned(1, N+1);
--
--	 result <= A_u + B_u + Cin_u;
--
--	 S    <= std_logic_vector(result(N-1 downto 0));
--	 Cout <= result(N);
--
--	 -- Correct signed overflow detection
--	 Ovfl <= (not (A(N-1) xor B(N-1))) and
--			  (std_logic(result(N-1)) xor A(N-1));


--
--end architecture FastRipple;


--architecture CarrySelect of Adder is
--
--    signal sum_low  : std_logic_vector(N/2-1 downto 0);
--    signal sum_high0, sum_high1 : std_logic_vector(N/2-1 downto 0);
--
--    signal carry_mid : std_logic;
--    signal cout_high0, cout_high1 : std_logic;
--    signal cout_int  : std_logic;
--
--    signal S_int : std_logic_vector(N-1 downto 0);
--
--begin
--
--    -- Base case
--    base_case: if N = 1 generate
--        base: entity work.Adder(Baseline)
--        generic map (N => 1)
--        port map (
--            A => A,
--            B => B,
--            Cin => Cin,
--            S => S,
--            Cout => Cout,
--            Ovfl => Ovfl
--        );
--    end generate;
--
--    -- Recursive case
--    recursive_case: if N > 1 generate
--
--        -- Lower half
--        lower: entity work.Adder(CarrySelect)
--        generic map (N => N/2)
--        port map (
--            A => A(N/2-1 downto 0),
--            B => B(N/2-1 downto 0),
--            Cin => Cin,
--            S => sum_low,
--            Cout => carry_mid,
--            Ovfl => open
--        );
--
--        -- Upper half assuming Cin = 0
--        upper0: entity work.Adder(CarrySelect)
--        generic map (N => N/2)
--        port map (
--            A => A(N-1 downto N/2),
--            B => B(N-1 downto N/2),
--            Cin => '0',
--            S => sum_high0,
--            Cout => cout_high0,
--            Ovfl => open
--        );
--
--        -- Upper half assuming Cin = 1
--        upper1: entity work.Adder(CarrySelect)
--        generic map (N => N/2)
--        port map (
--            A => A(N-1 downto N/2),
--            B => B(N-1 downto N/2),
--            Cin => '1',
--            S => sum_high1,
--            Cout => cout_high1,
--            Ovfl => open
--        );
--
--        -- Selection logic
--        S_int(N/2-1 downto 0) <= sum_low;
--
--        S_int(N-1 downto N/2) <= sum_high0 when carry_mid='0'
--                                 else sum_high1;
--
--        cout_int <= cout_high0 when carry_mid='0'
--                    else cout_high1;
--
--        S <= S_int;
--        Cout <= cout_int;
--
--        -- Signed overflow (top level only matters)
--        Ovfl <= (not (A(N-1) xor B(N-1)))
--                and (S_int(N-1) xor A(N-1));
--
--    end generate;
--
--end architecture CarrySelect;


-- ------------------------------------------------------------
-- Carry-skip block  –  N-bit ripple carry + skip MUX
--library ieee;
--use ieee.std_logic_1164.all;
--entity full_adder is
--    port (
--        a, b, cin : in std_logic;
--        s, cout   : out std_logic
--    );
--end full_adder;
--
--architecture rtl of full_adder is
--begin
--    s <= a xor b xor cin;
--    cout <= (a and b) or
--            (a and cin) or
--            (b and cin);
--end rtl; 
--
--library ieee;
--use ieee.std_logic_1164.all;
--entity csa_block is
--    generic (
--        BLOCK_SIZE : positive := 4
--    );
--    port (
--        a, b : in  std_logic_vector(BLOCK_SIZE-1 downto 0);
--        cin  : in  std_logic;
--        sum  : out std_logic_vector(BLOCK_SIZE-1 downto 0);
--        cout : out std_logic
--    );
--end csa_block;
--
--architecture rtl of csa_block is
--
--signal c : std_logic_vector(BLOCK_SIZE downto 0);
--signal prop : std_logic_vector(BLOCK_SIZE-1 downto 0);
--signal p_group : std_logic;
--
--begin
--
--c(0) <= cin;
--
--gen_fa : for i in 0 to BLOCK_SIZE-1 generate
--    fa_i : entity work.full_adder
--        port map (
--            a => a(i),
--            b => b(i),
--            cin => c(i),
--            s => sum(i),
--            cout => c(i+1)
--        );
--
--    prop(i) <= a(i) xor b(i);  -- FIXED
--end generate;
--
--
---- reduction AND
--process(prop)
--    variable tmp : std_logic := '1';
--begin
--    tmp := '1';
--    for i in 0 to BLOCK_SIZE-1 loop
--        tmp := tmp and prop(i);
--    end loop;
--    p_group <= tmp;
--end process;
--
--
---- skip mux
--cout <= (p_group and cin) or ((not p_group) and c(BLOCK_SIZE));
--
--end rtl;
--
--
--
--architecture CarrySkip of Adder is
--
--constant BLOCK_SIZE : positive := 4;
--constant NUM_BLOCKS : positive := N / BLOCK_SIZE;
--
--signal c : std_logic_vector(NUM_BLOCKS downto 0);
--signal S_int : std_logic_vector(N-1 downto 0);
--
--begin
--
--c(0) <= Cin;
--
--gen_blocks : for i in 0 to NUM_BLOCKS-1 generate
--    blk_i : entity work.csa_block
--        generic map (BLOCK_SIZE => BLOCK_SIZE)
--        port map (
--            a    => A(BLOCK_SIZE*(i+1)-1 downto BLOCK_SIZE*i),
--            b    => B(BLOCK_SIZE*(i+1)-1 downto BLOCK_SIZE*i),
--            cin  => c(i),
--            sum  => S_int(BLOCK_SIZE*(i+1)-1 downto BLOCK_SIZE*i),
--            cout => c(i+1)
--        );
--end generate;
--
--
--S <= S_int;
--
--Cout <= c(NUM_BLOCKS);
--
--Ovfl <= (A(N-1) and B(N-1) and not S_int(N-1)) or
--        (not A(N-1) and not B(N-1) and S_int(N-1));
--
--end architecture CarrySkip;