-- ============================================================
-- Entity:      ArithUnit
-- Description: N-bit Arithmetic subsystem for the RV64I Execution Unit
--              Wraps the existing Adder entity to add support for
--              subtraction (AddnSub) and 32-bit operations (ExtWord)
--
-- AddnSub:
--   '0' -> Addition:    S = A + B + Cin
--   '1' -> Subtraction: S = A - B = A + (~B) + 1
--          Cin is forced to '1' for the two's complement +1
--          any external Cin is ignored for subtraction
--
-- ExtWord:
--   '0' -> 64-bit operation, all bits used
--   '1' -> 32-bit operation, only lower 32 bits used
--          upper 32 bits of operands are zeroed before addition
--          result is sign-extended from bit 31 to 64 bits
--
-- Notes:
--   - Purely combinational circuit
--   - N is assumed to be 64
--   - Ovfl is only valid for 64-bit operations per FP spec
--   - The Adder entity underneath is your existing DP2 adder
--   - Swap between adder topologies using VHDL configurations
-- ============================================================

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity ArithUnit is
    Generic ( N : natural := 64 );
    Port (
        A        : in  std_logic_vector(N-1 downto 0);  -- Operand A
        B        : in  std_logic_vector(N-1 downto 0);  -- Operand B
--        Cin      : in  std_logic;                        -- Carry in
        AddnSub  : in  std_logic;                        -- '0'=add, '1'=sub
        ExtWord  : in  std_logic;                        -- '0'=64bit, '1'=32bit
        S        : out std_logic_vector(N-1 downto 0);  -- Sum/Difference
        Cout     : out std_logic;                        -- Carry out
        Ovfl     : out std_logic                         -- Overflow
    );
End Entity ArithUnit;


-- ============================================================
-- Architecture: Wrapper
-- Description:  Handles AddnSub and ExtWord preprocessing then
--               instantiates the Adder entity as a component.
--               The actual adder topology is selected via a
--               VHDL configuration binding the Adder component
--               to the desired architecture (Baseline, BCLA, etc.)
--
-- Preprocessing:
--   AddnSub = '1': invert B and force Cin = '1'
--   ExtWord = '1': zero upper 32 bits of A and B before adding
--                  sign extend result from bit 31
-- ============================================================
Architecture Wrapper of ArithUnit is

    component Adder is
        Generic ( N : natural := 64 );
        Port (
            A, B : in  std_logic_vector(N-1 downto 0);
            S    : out std_logic_vector(N-1 downto 0);
            Cin  : in  std_logic;
            Cout : out std_logic;
            Ovfl : out std_logic
        );
    end component Adder;

    signal A_pre    : std_logic_vector(N-1 downto 0);
    signal B_pre    : std_logic_vector(N-1 downto 0);
    signal Cin_pre  : std_logic;
    signal S_raw    : std_logic_vector(N-1 downto 0);
    signal Cout_raw : std_logic;
    signal Ovfl_raw : std_logic;

Begin

    -- --------------------------------------------------------
    -- Preprocessing: combined AddnSub and ExtWord for B
    -- Lower 32 bits: apply AddnSub inversion only
    -- Upper 32 bits: zero if ExtWord, else apply AddnSub inversion
    -- Both cases handled in one generate to avoid multiple drivers
    -- --------------------------------------------------------
    gen_b_low : for i in 0 to 31 generate
        B_pre(i) <= not B(i) when AddnSub = '1' else B(i);
    end generate;

    gen_b_high : for i in 32 to N-1 generate
        B_pre(i) <= '0'      when ExtWord  = '1'
               else not B(i) when AddnSub  = '1'
               else B(i);
    end generate;

    -- --------------------------------------------------------
    -- Preprocessing: ExtWord for A
    -- Zero upper 32 bits in 32-bit mode
    -- --------------------------------------------------------
    A_pre(31 downto 0)  <= A(31 downto 0);
    A_pre(63 downto 32) <= (others => '0') when ExtWord = '1'
                      else A(63 downto 32);

    -- --------------------------------------------------------
    -- Cin: force '1' for subtraction (two's complement +1)
    -- --------------------------------------------------------
--    Cin_pre <= '1' when AddnSub = '1' else Cin;
	Cin_pre <= AddnSub;

    -- --------------------------------------------------------
    -- Adder instantiation
    -- --------------------------------------------------------
    AdderInst : component Adder
        Generic map ( N => N )
        Port map (
            A    => A_pre,
            B    => B_pre,
            Cin  => Cin_pre,
            S    => S_raw,
            Cout => Cout_raw,
            Ovfl => Ovfl_raw
        );

    -- --------------------------------------------------------
    -- Postprocessing: ExtWord sign extension
    -- --------------------------------------------------------
    S(31 downto 0)  <= S_raw(31 downto 0);
    S(63 downto 32) <= (others => S_raw(31)) when ExtWord = '1'
                  else S_raw(63 downto 32);

    Cout <= Cout_raw;
    Ovfl <= Ovfl_raw;

End Architecture Wrapper;