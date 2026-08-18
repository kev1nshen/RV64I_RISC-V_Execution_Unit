-- ============================================================
-- Entity:      ExecUnit
-- Description: RV64I Execution Unit
--              Implements all RV64I integer instructions
--              using three subsystems: Arithmetic, Shift, Logic
--
-- FuncClass encoding (per FP spec):
--   00 -> shift/arith : output from Arithmetic or Shift subsystem
--                       determined by ShiftFN
--   01 -> logic       : output from Logic subsystem
--   10 -> slt         : set less than (signed)
--   11 -> sltu        : set less than unsigned
--
-- ShiftFN encoding (per FP spec):
--   00 -> arith : output from Arithmetic subsystem
--   01 -> sll   : output from Shift subsystem
--   10 -> srl   : output from Shift subsystem
--   11 -> sra   : output from Shift subsystem
--
-- LogicFN encoding (per FP spec):
--   00 -> LUI   : Y = B
--   01 -> XOR   : Y = A xor B
--   10 -> OR    : Y = A or B
--   11 -> AND   : Y = A and B
--
-- Status flags (always computed from A and B directly):
--   Zero  : A = B
--   AltB  : A < B (signed)
--   AltBu : A < B (unsigned)
--
-- Notes:
--   - Purely combinational circuit
--   - N is assumed to be 64
--   - Flags are always valid for 64-bit operations
--   - 32-bit instructions do not need to produce correct flags
--   - slt/sltu use the Arithmetic subsystem result internally
-- ============================================================

Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

Entity ExecUnit is
    Generic ( N : natural := 64 );
    Port (
        A        : in  std_logic_vector(N-1 downto 0);  -- Operand A
        B        : in  std_logic_vector(N-1 downto 0);  -- Operand B
        FuncClass : in  std_logic_vector(1 downto 0);   -- Function class
        LogicFN  : in  std_logic_vector(1 downto 0);    -- Logic function
        ShiftFN  : in  std_logic_vector(1 downto 0);    -- Shift function
        AddnSub  : in  std_logic := '0';                -- '0'=add '1'=sub
        ExtWord  : in  std_logic := '0';                -- '0'=64bit '1'=32bit
        Y        : out std_logic_vector(N-1 downto 0);  -- Result
        Zero     : out std_logic;                        -- A = B
        AltB     : out std_logic;                        -- A < B signed
        AltBu    : out std_logic                         -- A < B unsigned
    );
End Entity ExecUnit;


-- ============================================================
-- Architecture: Structural
-- Description:  Instantiates the three subsystems as components
--               and wires them together with a final output MUX
--               controlled by FuncClass and ShiftFN.
--
--               Status flags are computed directly from A and B
--               using a subtraction result from the ArithUnit.
--
--               slt and sltu are implemented by performing A - B
--               and checking the sign/borrow of the result.
-- ============================================================
Architecture Structural of ExecUnit is

    -- --------------------------------------------------------
    -- Component declarations
    -- Actual architectures bound via VHDL configurations
    -- --------------------------------------------------------
    component ArithUnit is
        Generic ( N : natural := 64 );
        Port (
            A        : in  std_logic_vector(N-1 downto 0);
            B        : in  std_logic_vector(N-1 downto 0);
--            Cin      : in  std_logic;
            AddnSub  : in  std_logic;
            ExtWord  : in  std_logic;
            S        : out std_logic_vector(N-1 downto 0);
            Cout     : out std_logic;
            Ovfl     : out std_logic
        );
    end component ArithUnit;

    component ShiftUnit is
        Generic ( N : natural := 64 );
        Port (
            A       : in  std_logic_vector(N-1 downto 0);
            B       : in  std_logic_vector(N-1 downto 0);
            ShiftFN : in  std_logic_vector(1 downto 0);
            ExtWord : in  std_logic;
            Y       : out std_logic_vector(N-1 downto 0)
        );
    end component ShiftUnit;

    component LogicUnit is
        Generic ( N : natural := 64 );
        Port (
            A       : in  std_logic_vector(N-1 downto 0);
            B       : in  std_logic_vector(N-1 downto 0);
            LogicFN : in  std_logic_vector(1 downto 0);
            Y       : out std_logic_vector(N-1 downto 0)
        );
    end component LogicUnit;

    -- --------------------------------------------------------
    -- Internal result signals from each subsystem
    -- --------------------------------------------------------
    signal ArithResult  : std_logic_vector(N-1 downto 0);
    signal ShiftResult  : std_logic_vector(N-1 downto 0);
    signal LogicResult  : std_logic_vector(N-1 downto 0);

    -- arithmetic outputs
    signal ArithCout    : std_logic;
    signal ArithOvfl    : std_logic;

    -- --------------------------------------------------------
    -- Internal signals for status flags
    -- Computed using a dedicated subtraction A - B
    -- --------------------------------------------------------
    signal Sub_Result   : std_logic_vector(N-1 downto 0);
    signal Sub_Cout     : std_logic;
    signal Sub_Ovfl     : std_logic;

    -- --------------------------------------------------------
    -- Internal signals for slt and sltu
    -- slt  result is 1 if A < B signed,  0 otherwise
    -- sltu result is 1 if A < B unsigned, 0 otherwise
    -- --------------------------------------------------------
    signal SltResult    : std_logic_vector(N-1 downto 0);
    signal SltuResult   : std_logic_vector(N-1 downto 0);

    -- --------------------------------------------------------
    -- Internal signals for flag computation
    -- --------------------------------------------------------
    signal Zero_int     : std_logic;
    signal AltB_int     : std_logic;
    signal AltBu_int    : std_logic;

Begin

    -- --------------------------------------------------------
    -- Arithmetic subsystem instantiation
    -- Computes A + B or A - B based on AddnSub
    -- Also handles ExtWord for 32-bit instructions
    -- --------------------------------------------------------
    ArithInst : component ArithUnit
        Generic map ( N => N )
        Port map (
            A       => A,
            B       => B,
--            Cin     => '0',
            AddnSub => AddnSub,
            ExtWord => ExtWord,
            S       => ArithResult,
            Cout    => open,
            Ovfl    => open --changed
        );

    -- --------------------------------------------------------
    -- Shift subsystem instantiation
    -- Computes SLL, SRL, SRA based on ShiftFN
    -- Also handles ExtWord for 32-bit shift instructions
    -- --------------------------------------------------------
    ShiftInst : component ShiftUnit
        Generic map ( N => N )
        Port map (
            A       => A,
            B       => B,
            ShiftFN => ShiftFN,
            ExtWord => ExtWord,
            Y       => ShiftResult
        );

    -- --------------------------------------------------------
    -- Logic subsystem instantiation
    -- Computes AND, OR, XOR, LUI based on LogicFN
    -- --------------------------------------------------------
    LogicInst : component LogicUnit
        Generic map ( N => N )
        Port map (
            A       => A,
            B       => B,
            LogicFN => LogicFN,
            Y       => LogicResult
        );

    -- --------------------------------------------------------
    -- Dedicated subtractor for status flags
    -- Always computes A - B regardless of FuncClass
    -- This gives us the information needed for all flags
    -- ExtWord forced to '0' as flags are always 64-bit
    -- --------------------------------------------------------
    SubInst : component ArithUnit
        Generic map ( N => N )
        Port map (
            A       => A,
            B       => B,
--            Cin     => '0',
            AddnSub => '1',         -- always subtract
            ExtWord => '0',         -- always 64-bit for flags
            S       => Sub_Result,
            Cout    => Sub_Cout,
            Ovfl    => Sub_Ovfl
        );

    -- --------------------------------------------------------
    -- Status flag computation
    --
    -- Zero: A = B when A - B = 0
    --
    -- AltB (signed): A < B when
    --   the sign bit of (A - B) is '1' XOR overflow
    --   this handles the case where overflow flips the sign bit
    --
    -- AltBu (unsigned): A < B unsigned when
    --   there is no borrow from the subtraction
    --   borrow = NOT Cout when using two's complement subtraction
    -- --------------------------------------------------------

    -- Zero flag: all bits of subtraction result must be '0'
    process(Sub_Result)
        variable allzero : std_logic;
    begin
        allzero := '0';
        for i in 0 to N-1 loop
            allzero := allzero or Sub_Result(i);
        end loop;
        Zero_int <= not allzero;
    end process;

    -- AltB (signed less than)
    -- sign bit of result XOR overflow handles two's complement edge cases
    -- example: very negative A minus very positive B overflows
    -- so we correct the sign bit using overflow
    AltB_int  <= Sub_Result(N-1) xor Sub_Ovfl;

    -- AltBu (unsigned less than)
    -- in two's complement subtraction A - B
    -- if A < B unsigned then there is a borrow
    -- borrow is indicated by Cout = '0'
    AltBu_int <= not Sub_Cout;

    -- drive status outputs
    Zero  <= Zero_int;
    AltB  <= AltB_int;
    AltBu <= AltBu_int;

    -- --------------------------------------------------------
    -- SLT result: set lower bit to AltB, rest zero
    -- SLT returns 1 if A < B signed, 0 otherwise
    -- --------------------------------------------------------
    SltResult  <= (63 downto 1 => '0') & AltB_int;

    -- --------------------------------------------------------
    -- SLTU result: set lower bit to AltBu, rest zero
    -- SLTU returns 1 if A < B unsigned, 0 otherwise
    -- --------------------------------------------------------
    SltuResult <= (63 downto 1 => '0') & AltBu_int;

    -- --------------------------------------------------------
    -- Final output MUX
    -- FuncClass selects which subsystem result goes to Y
    -- When FuncClass = "00", ShiftFN determines whether
    -- the Arithmetic or Shift subsystem result is used
    -- --------------------------------------------------------
    process(FuncClass, ShiftFN, ArithResult, ShiftResult,
            LogicResult, SltResult, SltuResult)
    begin
        case FuncClass is
            when "01"   => Y <= LogicResult;
            when "10"   => Y <= SltResult;
            when "11"   => Y <= SltuResult;
            when "00"   =>
                -- ShiftFN = "00" means arithmetic
                -- ShiftFN = "01","10","11" means shift
                if ShiftFN = "00" then
                    Y <= ArithResult;
                else
                    Y <= ShiftResult;
                end if;
            when others => Y <= (others => 'X');
        end case;
    end process;

End Architecture Structural;