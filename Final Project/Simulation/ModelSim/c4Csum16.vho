-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/08/2026 13:30:30"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Adder IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(15 DOWNTO 0);
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[4]~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[5]~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[6]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[6]~3_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[6]~4_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[7]~5_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \S_int~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \S_int~2_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~3_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \S_int~4_combout\ : std_logic;
SIGNAL \S_int~5_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~6_combout\ : std_logic;
SIGNAL \S_int~7_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \S_int~8_combout\ : std_logic;
SIGNAL \S_int~9_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \S_int~10_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Ovfl~2_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ : std_logic;
SIGNAL \S_int~11_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \cout_int~0_combout\ : std_logic;
SIGNAL \Ovfl~3_combout\ : std_logic;
SIGNAL \ALT_INV_Ovfl~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Ovfl~3_combout\ <= NOT \Ovfl~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N9
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[3]~1_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[4]~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[5]~1_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[6]~4_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[7]~5_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~0_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~1_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~2_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~3_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~5_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~7_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~10_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~11_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cout_int~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~3_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X18_Y0_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X19_Y1_N24
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\ = \Cin~input_o\ $ (\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X19_Y1_N10
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\ = (\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\);

-- Location: LCCOMB_X19_Y1_N28
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: IOIBUF_X20_Y0_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X19_Y1_N22
\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\))) # 
-- (!\A[1]~input_o\ & (\B[1]~input_o\ & \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X19_Y1_N8
\recursive_case:lower|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[2]~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[2]~0_combout\);

-- Location: IOIBUF_X20_Y0_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X19_Y1_N26
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X19_Y1_N4
\recursive_case:lower|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[3]~1_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((\B[2]~input_o\ & ((\A[2]~input_o\) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X13_Y73_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X19_Y1_N6
\recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & 
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X19_Y1_N16
\recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) # (!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[3]~input_o\ & 
-- \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X12_Y72_N0
\recursive_case:lower|S[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[4]~0_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (\recursive_case:lower|recursive_case:lower|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|S[4]~0_combout\);

-- Location: IOIBUF_X11_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X12_Y72_N10
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X12_Y72_N12
\recursive_case:lower|S[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[5]~1_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\A[4]~input_o\ & ((\B[4]~input_o\) # (\recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # (!\A[4]~input_o\ & 
-- (\B[4]~input_o\ & \recursive_case:lower|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|S[5]~1_combout\);

-- Location: IOIBUF_X13_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X12_Y72_N30
\recursive_case:lower|S[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[6]~2_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # (\recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \recursive_case:lower|recursive_case:lower|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|S[6]~2_combout\);

-- Location: LCCOMB_X12_Y72_N16
\recursive_case:lower|S[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[6]~3_combout\ = (\recursive_case:lower|S[6]~2_combout\ & ((\B[5]~input_o\) # (\A[5]~input_o\))) # (!\recursive_case:lower|S[6]~2_combout\ & (\B[5]~input_o\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|S[6]~2_combout\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	combout => \recursive_case:lower|S[6]~3_combout\);

-- Location: IOIBUF_X13_Y73_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X12_Y72_N2
\recursive_case:lower|S[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[6]~4_combout\ = \B[6]~input_o\ $ (\recursive_case:lower|S[6]~3_combout\ $ (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \recursive_case:lower|S[6]~3_combout\,
	datac => \A[6]~input_o\,
	combout => \recursive_case:lower|S[6]~4_combout\);

-- Location: IOIBUF_X13_Y73_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X12_Y72_N24
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X12_Y72_N28
\recursive_case:lower|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # (\recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & 
-- \recursive_case:lower|recursive_case:lower|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X12_Y72_N22
\recursive_case:lower|recursive_case:upper0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # (\recursive_case:lower|recursive_case:upper0|S[3]~0_combout\))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & 
-- \recursive_case:lower|recursive_case:upper0|S[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \recursive_case:lower|recursive_case:upper0|S[3]~0_combout\,
	combout => \recursive_case:lower|recursive_case:upper0|S[3]~1_combout\);

-- Location: LCCOMB_X12_Y72_N26
\recursive_case:lower|S[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[7]~5_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ (((\B[6]~input_o\ & ((\A[6]~input_o\) # (\recursive_case:lower|recursive_case:upper0|S[3]~1_combout\))) # (!\B[6]~input_o\ & 
-- (\A[6]~input_o\ & \recursive_case:lower|recursive_case:upper0|S[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\,
	datac => \A[6]~input_o\,
	datad => \recursive_case:lower|recursive_case:upper0|S[3]~1_combout\,
	combout => \recursive_case:lower|S[7]~5_combout\);

-- Location: LCCOMB_X12_Y72_N20
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # (\recursive_case:lower|recursive_case:upper0|S[3]~1_combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & 
-- \recursive_case:lower|recursive_case:upper0|S[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper0|S[3]~1_combout\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\);

-- Location: LCCOMB_X12_Y72_N6
\recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|Cout~0_combout\ = (\B[7]~input_o\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\) # (\A[7]~input_o\))) # (!\B[7]~input_o\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & \A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\,
	datad => \A[7]~input_o\,
	combout => \recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X20_Y73_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X23_Y72_N0
\S_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~0_combout\ = \recursive_case:lower|Cout~0_combout\ $ (\B[8]~input_o\ $ (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|Cout~0_combout\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \S_int~0_combout\);

-- Location: IOIBUF_X23_Y73_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X23_Y72_N10
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X23_Y72_N12
\S_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~1_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ $ (((\recursive_case:lower|Cout~0_combout\ & ((\A[8]~input_o\) # (\B[8]~input_o\))) # (!\recursive_case:lower|Cout~0_combout\ & (\A[8]~input_o\ & 
-- \B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|Cout~0_combout\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	combout => \S_int~1_combout\);

-- Location: LCCOMB_X23_Y72_N8
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\B[8]~input_o\) # (\A[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & ((\B[8]~input_o\) # (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X27_Y73_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X23_Y72_N26
\recursive_case:upper1|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|S[2]~0_combout\);

-- Location: LCCOMB_X23_Y72_N6
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & (\B[8]~input_o\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X23_Y72_N20
\S_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~2_combout\ = \recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ $ (((\recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (!\recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|S[2]~0_combout\,
	datad => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \S_int~2_combout\);

-- Location: LCCOMB_X23_Y72_N14
\recursive_case:upper0|recursive_case:lower|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ = (\recursive_case:lower|Cout~0_combout\ & ((\B[8]~input_o\) # (\A[8]~input_o\))) # (!\recursive_case:lower|Cout~0_combout\ & (\B[8]~input_o\ & \A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|Cout~0_combout\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|S[3]~0_combout\);

-- Location: LCCOMB_X23_Y72_N24
\recursive_case:upper0|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ = (\A[9]~input_o\ & ((\recursive_case:upper0|recursive_case:lower|S[3]~0_combout\) # (\B[9]~input_o\))) # (!\A[9]~input_o\ & (\recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ & 
-- \B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|S[3]~0_combout\,
	datad => \B[9]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X25_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X24_Y72_N0
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X23_Y72_N18
\S_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~3_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((\B[10]~input_o\ & ((\recursive_case:upper0|recursive_case:lower|S[3]~1_combout\) # (\A[10]~input_o\))) # (!\B[10]~input_o\ & 
-- (\recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ & \A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \recursive_case:upper0|recursive_case:lower|S[3]~1_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	datad => \A[10]~input_o\,
	combout => \S_int~3_combout\);

-- Location: IOIBUF_X18_Y73_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X24_Y72_N26
\recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\A[11]~input_o\ & \B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X24_Y72_N12
\recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\A[11]~input_o\) # (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X24_Y72_N30
\recursive_case:upper1|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (\recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ((\A[10]~input_o\ & ((\B[10]~input_o\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # 
-- (!\A[10]~input_o\ & (\B[10]~input_o\ & \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X24_Y72_N24
\recursive_case:upper0|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = (\recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\))) # 
-- (!\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[10]~input_o\ & \A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X24_Y72_N2
\S_int~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~4_combout\ = (\recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|Cout~1_combout\)) # (!\recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~4_combout\);

-- Location: LCCOMB_X24_Y72_N28
\S_int~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~5_combout\ = \B[12]~input_o\ $ (\A[12]~input_o\ $ (((\recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # (\S_int~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datad => \S_int~4_combout\,
	combout => \S_int~5_combout\);

-- Location: IOIBUF_X0_Y52_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X1_Y52_N0
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \B[13]~input_o\ $ (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X24_Y72_N14
\S_int~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~6_combout\ = (\recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # ((\recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:lower|Cout~0_combout\,
	combout => \S_int~6_combout\);

-- Location: LCCOMB_X1_Y52_N18
\S_int~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~7_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\B[12]~input_o\ & ((\S_int~6_combout\) # (\A[12]~input_o\))) # (!\B[12]~input_o\ & (\S_int~6_combout\ & \A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datac => \S_int~6_combout\,
	datad => \A[12]~input_o\,
	combout => \S_int~7_combout\);

-- Location: IOIBUF_X0_Y53_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X1_Y52_N12
\S_int~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~8_combout\ = (\A[12]~input_o\ & ((\S_int~6_combout\) # (\B[12]~input_o\))) # (!\A[12]~input_o\ & (\S_int~6_combout\ & \B[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \S_int~6_combout\,
	datac => \B[12]~input_o\,
	combout => \S_int~8_combout\);

-- Location: LCCOMB_X1_Y52_N22
\S_int~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~9_combout\ = (\S_int~8_combout\ & ((\B[13]~input_o\) # (\A[13]~input_o\))) # (!\S_int~8_combout\ & (\B[13]~input_o\ & \A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_int~8_combout\,
	datab => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \S_int~9_combout\);

-- Location: IOIBUF_X0_Y53_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X1_Y52_N8
\S_int~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~10_combout\ = \B[14]~input_o\ $ (\S_int~9_combout\ $ (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \S_int~9_combout\,
	datad => \A[14]~input_o\,
	combout => \S_int~10_combout\);

-- Location: IOIBUF_X0_Y52_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X1_Y52_N20
\Ovfl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~2_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Ovfl~2_combout\);

-- Location: LCCOMB_X24_Y72_N16
\recursive_case:upper1|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # ((\A[11]~input_o\ & \B[11]~input_o\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\A[11]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X24_Y72_N18
\recursive_case:upper1|recursive_case:upper0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ = (\B[12]~input_o\ & (\A[12]~input_o\ & ((!\B[11]~input_o\) # (!\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\);

-- Location: LCCOMB_X24_Y72_N20
\recursive_case:upper1|recursive_case:upper0|S[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ = (\recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (!\B[10]~input_o\ & !\A[10]~input_o\)) # 
-- (!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((!\A[10]~input_o\) # (!\B[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\);

-- Location: LCCOMB_X24_Y72_N22
\recursive_case:upper1|recursive_case:upper0|S[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ = (\recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\) # ((\recursive_case:upper1|recursive_case:lower|Cout~1_combout\ & ((\B[12]~input_o\) # (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\);

-- Location: LCCOMB_X24_Y72_N8
\recursive_case:upper1|recursive_case:upper0|S[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ = (\recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & ((\B[10]~input_o\ & (!\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & !\A[10]~input_o\)) # 
-- (!\B[10]~input_o\ & ((!\A[10]~input_o\) # (!\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\,
	datac => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \A[10]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\);

-- Location: LCCOMB_X24_Y72_N10
\recursive_case:upper1|recursive_case:upper0|S[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ = (\recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\) # ((\recursive_case:upper0|recursive_case:lower|Cout~1_combout\ & ((\B[12]~input_o\) # (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\,
	datad => \recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\);

-- Location: LCCOMB_X24_Y72_N4
\recursive_case:upper1|recursive_case:upper0|S[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ = (\recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\) # ((\recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\)) # 
-- (!\recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\,
	datac => \recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\,
	datad => \recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\);

-- Location: LCCOMB_X1_Y52_N10
\recursive_case:upper1|recursive_case:upper0|S[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ = (\B[13]~input_o\ & ((\recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\) # (\A[13]~input_o\))) # (!\B[13]~input_o\ & (\recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ & 
-- \A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datac => \recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\,
	datad => \A[13]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\);

-- Location: LCCOMB_X1_Y52_N6
\S_int~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~11_combout\ = \Ovfl~2_combout\ $ (((\B[14]~input_o\ & ((\A[14]~input_o\) # (\recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & \recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \Ovfl~2_combout\,
	datac => \A[14]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\,
	combout => \S_int~11_combout\);

-- Location: LCCOMB_X1_Y52_N24
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ = (\B[14]~input_o\ & ((\A[14]~input_o\) # (\recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & 
-- \recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\);

-- Location: LCCOMB_X1_Y52_N26
\cout_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cout_int~0_combout\ = (\B[15]~input_o\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\) # (\A[15]~input_o\))) # (!\B[15]~input_o\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ 
-- & \A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\,
	datad => \A[15]~input_o\,
	combout => \cout_int~0_combout\);

-- Location: LCCOMB_X1_Y52_N28
\Ovfl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~3_combout\ = (\B[15]~input_o\ & ((\S_int~11_combout\) # (!\A[15]~input_o\))) # (!\B[15]~input_o\ & ((\A[15]~input_o\) # (!\S_int~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datac => \S_int~11_combout\,
	datad => \A[15]~input_o\,
	combout => \Ovfl~3_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


