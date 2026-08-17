-- ============================================================
-- Entity:      LogicUnit
-- Description: N-bit Logic subsystem for the RV64I Execution Unit
--              Implements AND, OR, XOR, and LUI operations
--              controlled by a 2-bit function select (LogicFN)
--
-- LogicFN encoding (per FP spec):
--   00 -> LUI  : Y = B (pass through, lower 12 bits pre-zeroed)
--   01 -> XOR  : Y = A xor B
--   10 -> OR   : Y = A or B
--   11 -> AND  : Y = A and B
--
-- Notes:
--   - Purely combinational circuit
--   - N is assumed to be a power of 2 (default 64)
--   - LUI passes B directly; the caller is responsible for
--     ensuring B has lower 12 bits zeroed before input
-- ============================================================

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity LogicUnit is
    Generic ( N : natural := 64 );
    Port (
        A       : in  std_logic_vector(N-1 downto 0);  -- Operand A
        B       : in  std_logic_vector(N-1 downto 0);  -- Operand B
        LogicFN : in  std_logic_vector(1 downto 0);    -- Function select
        Y       : out std_logic_vector(N-1 downto 0)   -- Result
    );
End Entity LogicUnit;

-- ============================================================
-- Architecture: Behavioral
-- Description:  Simple 4-way MUX selecting between the four
--               logic operations based on LogicFN
-- ============================================================
Architecture Behavioral of LogicUnit is
Begin

    -- Combinational process sensitive to all inputs
    process(A, B, LogicFN)
    begin
        case LogicFN is
            when "00"   => Y <= B;          -- LUI: pass B through
            when "01"   => Y <= A xor B;    -- XOR
            when "10"   => Y <= A or B;     -- OR
            when "11"   => Y <= A and B;    -- AND
            when others => Y <= (others => 'X'); -- undefined input
        End case;
    End process;

End Architecture Behavioral;