-- ============================================================
-- Entity:      TBExecUnit
-- Description: Testbench for the RV64I Execution Unit
--              Based on DP2.1 testbench structure with
--              ForceTime inversion trick for guaranteed
--              transitions and 1ps polling for accurate
--              propagation delay measurement
--
-- Test vector format:
--   A B FuncClass LogicFN ShiftFN AddnSub ExtWord Y Zero AltB AltBu
--   A B Y : 64-bit hexadecimal
--   all other fields : binary (1 bit or 2 bit)
--
-- Timing constants:
--   PreStimTime : 40 ns  X state before each stimulus
--   ForceTime   : 1 ns   inverted inputs before real stimulus
--   MaxWaitTime : 200 ns timeout for output to settle
-- ============================================================

Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;
Use IEEE.std_logic_textio.all;
Use STD.textio.all;

Entity TBExecUnit is
End Entity TBExecUnit;

Architecture Sim of TBExecUnit is

    -- --------------------------------------------------------
    -- Component declaration
    -- Architecture bound via VHDL configuration
    -- --------------------------------------------------------
    component ExecUnit is
        Generic ( N : natural := 64 );
        Port (
            A         : in  std_logic_vector(N-1 downto 0);
            B         : in  std_logic_vector(N-1 downto 0);
            FuncClass : in  std_logic_vector(1 downto 0);
            LogicFN   : in  std_logic_vector(1 downto 0);
            ShiftFN   : in  std_logic_vector(1 downto 0);
            AddnSub   : in  std_logic;
            ExtWord   : in  std_logic;
            Y         : out std_logic_vector(N-1 downto 0);
            Zero      : out std_logic;
            AltB      : out std_logic;
            AltBu     : out std_logic
        );
    end component ExecUnit;

    -- --------------------------------------------------------
    -- Timing constants
    -- --------------------------------------------------------
    constant N           : integer := 64;
    constant PreStimTime : time    := 40 ns;
    constant ForceTime   : time    := 1 ns;
    constant MaxWaitTime : time    := 200 ns;
	constant STABLETIME  : time    := 100 ns;

    -- --------------------------------------------------------
    -- DUT stimulus signals
    -- --------------------------------------------------------
    signal A         : std_logic_vector(N-1 downto 0);
    signal B         : std_logic_vector(N-1 downto 0);
    signal FuncClass : std_logic_vector(1 downto 0);
    signal LogicFN   : std_logic_vector(1 downto 0);
    signal ShiftFN   : std_logic_vector(1 downto 0);
    signal AddnSub   : std_logic;
    signal ExtWord   : std_logic;

    -- --------------------------------------------------------
    -- DUT output signals
    -- --------------------------------------------------------
    signal Y    : std_logic_vector(N-1 downto 0);
    signal Zero : std_logic;
    signal AltB : std_logic;
    signal AltBu: std_logic;

    -- --------------------------------------------------------
    -- Combined status signal for delay measurement
    -- Combines all three flags into one vector so a single
    -- stable check covers all flag outputs simultaneously
    -- --------------------------------------------------------
    signal Status : std_logic_vector(2 downto 0);

    -- --------------------------------------------------------
    -- Measurement and wave window signals
    -- These are driven as signals so they appear in the
    -- wave window alongside DUT signals for easy inspection
    -- --------------------------------------------------------
    signal Idx          : integer := 0;
    signal PropDelayY   : time    := 0 ns;
    signal PropDelayFlag: time    := 0 ns;
    signal Stable       : boolean := false;

Begin

    -- --------------------------------------------------------
    -- DUT instantiation as component
    -- Architecture selected via VHDL configuration
    -- --------------------------------------------------------
    DUT : component ExecUnit
        Generic map ( N => N )
        Port map (
            A         => A,
            B         => B,
            FuncClass => FuncClass,
            LogicFN   => LogicFN,
            ShiftFN   => ShiftFN,
            AddnSub   => AddnSub,
            ExtWord   => ExtWord,
            Y         => Y,
            Zero      => Zero,
            AltB      => AltB,
            AltBu     => AltBu
        );

    -- combine flags into single status vector for delay measurement
    -- same approach as DP2.1 Cout & Ovfl combination
    Status <= Zero & AltB & AltBu;

    -- --------------------------------------------------------
    -- STIM process
    -- Reads test vectors and performs measurements
    --
    -- For each vector:
    --   1. Apply X to all inputs for PreStimTime
    --   2. Apply inverted inputs for ForceTime (guarantees
    --      a transition even if new value = previous value)
    --   3. Apply real stimulus
    --   4. Poll Y every 1ps until stable and correct
    --   5. Poll Status every 1ps until correct
    --   6. Report PASS/FAIL with delays
    -- --------------------------------------------------------
    STIM : process

        -- file handling
        file     VectorFile : text;
        variable FileLine   : line;
        variable FileStatus : file_open_status;

        -- parsed vector fields
        variable A_in        : std_logic_vector(N-1 downto 0);
        variable B_in        : std_logic_vector(N-1 downto 0);
        variable FuncClass_in: std_logic_vector(1 downto 0);
        variable LogicFN_in  : std_logic_vector(1 downto 0);
        variable ShiftFN_in  : std_logic_vector(1 downto 0);
        variable AddnSub_in  : std_logic;
        variable ExtWord_in  : std_logic;
        variable Y_exp       : std_logic_vector(N-1 downto 0);
        variable Zero_exp    : std_logic;
        variable AltB_exp    : std_logic;
        variable AltBu_exp   : std_logic;
        variable Status_exp  : std_logic_vector(2 downto 0);

        -- saved previous outputs for transition detection
        variable prev_Y      : std_logic_vector(N-1 downto 0);
        variable prev_Status : std_logic_vector(2 downto 0);

        -- timing measurement variables
        variable t_start      : time;
        variable delay_Y      : time;
        variable delay_status : time;
        variable worst_Y      : time := 0 ns;
        variable worst_status : time := 0 ns;

        -- loop and reporting
        variable index      : integer := 0;
        variable total_fail : integer := 0;
        variable pass       : boolean;

    begin

        -- --------------------------------------------------------
        -- Open test vector file using relative path
        -- File located in Simulation/TestVectors/
        -- --------------------------------------------------------
		  file_open(FileStatus, VectorFile,
				 "TestVectors/ExecUnit" & integer'image(N) & ".tvs", read_mode); --opens for specific N

        if FileStatus /= open_ok then
            report "ERROR: Could not open ExecUnit00.tvs"
            severity failure;
        end if;

        report "** Note: Simulation started" severity note;

        -- --------------------------------------------------------
        -- Main measurement loop
        -- --------------------------------------------------------
        while not endfile(VectorFile) loop

            readline(VectorFile, FileLine);

            -- skip blank lines
            if FileLine'length = 0 then
                next;
            end if;

            -- skip comment lines beginning with --
            -- this allows comments in the test vector file
            if FileLine'length >= 2 then
                if FileLine.all(1) = '-' and FileLine.all(2) = '-' then
                    next;
                end if;
            end if;

            -- parse vector fields
            hread(FileLine, A_in);
            hread(FileLine, B_in);
            read(FileLine,  FuncClass_in);
            read(FileLine,  LogicFN_in);
            read(FileLine,  ShiftFN_in);
            read(FileLine,  AddnSub_in);
            read(FileLine,  ExtWord_in);
            hread(FileLine, Y_exp);
            read(FileLine,  Zero_exp);
            read(FileLine,  AltB_exp);
            read(FileLine,  AltBu_exp);

            Status_exp := Zero_exp & AltB_exp & AltBu_exp;


            -- --------------------------------------------------------
            -- Step 1: Pre-stimulus X state
            -- All inputs driven X for PreStimTime
            -- Ensures clean separation between test cases
            -- Visible as X region in wave window
            -- --------------------------------------------------------
            A         <= (others => 'X');
            B         <= (others => 'X');
            FuncClass <= (others => 'X');
            LogicFN   <= (others => 'X');
            ShiftFN   <= (others => 'X');
            AddnSub   <= 'X';
            ExtWord   <= 'X';
            Stable    <= false;

            wait for PreStimTime;

            -- --------------------------------------------------------
            -- Step 2: Apply inverted inputs for ForceTime
            -- Guarantees a signal transition when real stimulus
            -- is applied even if the new value equals the old one
            -- This is critical for accurate timing measurement
            -- Same technique used in DP2.1 testbench
            -- --------------------------------------------------------
            A         <= not A_in;
            B         <= not B_in;
            FuncClass <= not FuncClass_in;
            LogicFN   <= not LogicFN_in;
            ShiftFN   <= not ShiftFN_in;
            AddnSub   <= not AddnSub_in;
            ExtWord   <= not ExtWord_in;

            wait for ForceTime;

            -- save outputs before real stimulus for transition check
            prev_Y      := Y;
            prev_Status := Status;

            -- --------------------------------------------------------
            -- Step 3: Apply real stimulus
            -- Record start time for delay measurement
            -- --------------------------------------------------------
            t_start   := now;
            A         <= A_in;
            B         <= B_in;
            FuncClass <= FuncClass_in;
            LogicFN   <= LogicFN_in;
            ShiftFN   <= ShiftFN_in;
            AddnSub   <= AddnSub_in;
            ExtWord   <= ExtWord_in;

            wait for 0 ns;
			wait for 0 ns;
			
			
			t_start := now;
            -- --------------------------------------------------------
            -- Step 4: Poll Y every 1ps until stable and correct
            -- Uses same 1ps polling approach as DP2.1
            -- Timeout after MaxWaitTime to prevent infinite loop
            -- --------------------------------------------------------
			if Y /= Y_exp then
			while Y /= Y_exp loop
                wait for 1 ps; -- Only waits if the logic actually has delay (like .vho)
                if now - t_start > MaxWaitTime then
                    report "Timeout waiting for Y at index " & integer'image(index) severity error;
                    exit;
                end if;
            end loop;
			end if;

            delay_Y    := now - t_start;
            PropDelayY <= delay_Y;

            -- --------------------------------------------------------
            -- Step 5: Poll Status every 1ps until correct
            -- Status = Zero & AltB & AltBu combined
            -- --------------------------------------------------------
			if Status /= Status_exp then
            while Status /= Status_exp loop
                wait for 1 ps;
                if now - t_start > MaxWaitTime then
                    report "Timeout waiting for Status at index " &
                           integer'image(index)
                    severity error;
                    exit;
                end if;
            end loop;
			end if;

            delay_status  := now - t_start;
            PropDelayFlag <= delay_status;
            Stable        <= true;
			
			wait for STABLETIME;

  
			   -- --------------------------------------------------------
            -- Step 6: Verify outputs using assert statements
            -- Same approach as DP2.1 for clean error reporting
            -- --------------------------------------------------------
            assert Y = Y_exp
                report "Y mismatch at index " & integer'image(index)
                severity error;

            assert Zero = Zero_exp
                report "Zero mismatch at index " & integer'image(index) &
                       " Exp=" & std_logic'image(Zero_exp) &
                       " Got=" & std_logic'image(Zero)
                severity error;

            assert AltB = AltB_exp
                report "AltB mismatch at index " & integer'image(index) &
                       " Exp=" & std_logic'image(AltB_exp) &
                       " Got=" & std_logic'image(AltB)
                severity error;

            assert AltBu = AltBu_exp
                report "AltBu mismatch at index " & integer'image(index) &
                       " Exp=" & std_logic'image(AltBu_exp) &
                       " Got=" & std_logic'image(AltBu)
                severity error;

            -- count failures
            pass := (Y = Y_exp) and
                    (Zero = Zero_exp) and
                    (AltB = AltB_exp) and
                    (AltBu = AltBu_exp);

            if not pass then
                total_fail := total_fail + 1;
            end if;

            -- --------------------------------------------------------
            -- Report measurement
            -- Format matches DP2.1 style with index and delays
            -- --------------------------------------------------------
            if pass then
                report "** Note: PASS idx=" & integer'image(index) &
                       " PropDelayY="    & time'image(delay_Y) &
                       " PropDelayFlag=" & time'image(delay_status)
                severity note;
            else
                report "** Note: FAIL idx=" & integer'image(index) &
                       " PropDelayY="    & time'image(delay_Y) &
                       " PropDelayFlag=" & time'image(delay_status)
                severity note;
            end if;

            -- update worst case delays
            if delay_Y > worst_Y then
                worst_Y := delay_Y;
            end if;
            if delay_status > worst_status then
                worst_status := delay_status;
            end if;
			
			Stable <= false;
			
			Idx   <= index;
			index := index + 1;

        end loop;

        -- --------------------------------------------------------
        -- End notification with worst case summary
        -- Same format as DP2.1
        -- --------------------------------------------------------
        file_close(VectorFile);

        report "** Note: All test vectors processed"
               severity note;
        report "** Note: Total failures = " &
               integer'image(total_fail)
               severity note;
        report "** Note: Worst PropDelayY    = " &
               time'image(worst_Y)
               severity note;
        report "** Note: Worst PropDelayFlag = " &
               time'image(worst_status)
               severity note;

        wait;

    end process STIM;

End Architecture Sim;