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

-- DATE "04/08/2026 13:26:50"

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
-- S[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:p_bit[1]~combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \c_int~0_combout\ : std_logic;
SIGNAL \c_int~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:p_bit[3]~combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \C~20_combout\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:p_bit[2]~combout\ : std_logic;
SIGNAL \G[0]~1_combout\ : std_logic;
SIGNAL \G[0]~2_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:c_int[1]~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \c_int~2_combout\ : std_logic;
SIGNAL \c_int~3_combout\ : std_logic;
SIGNAL \c_int~4_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \c_int~6_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \c_int~5_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \G[1]~4_combout\ : std_logic;
SIGNAL \C~12_combout\ : std_logic;
SIGNAL \C~13_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \G[1]~5_combout\ : std_logic;
SIGNAL \G~3_combout\ : std_logic;
SIGNAL \G[1]~6_combout\ : std_logic;
SIGNAL \C~21_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:c_int[1]~0_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \c_int~8_combout\ : std_logic;
SIGNAL \c_int~7_combout\ : std_logic;
SIGNAL \gen_blocks:2:c_int[2]~combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \c_int~10_combout\ : std_logic;
SIGNAL \gen_blocks:2:p_bit[2]~combout\ : std_logic;
SIGNAL \gen_blocks:2:p_bit[1]~combout\ : std_logic;
SIGNAL \c_int~11_combout\ : std_logic;
SIGNAL \c_int~9_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:p_bit[3]~combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \C~22_combout\ : std_logic;
SIGNAL \C~23_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \C~14_combout\ : std_logic;
SIGNAL \G~7_combout\ : std_logic;
SIGNAL \G~8_combout\ : std_logic;
SIGNAL \C~15_combout\ : std_logic;
SIGNAL \C~16_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \gen_blocks:3:c_int[1]~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \c_int~13_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:p_bit[2]~combout\ : std_logic;
SIGNAL \c_int~12_combout\ : std_logic;
SIGNAL \C~17_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \gen_blocks:3:p_bit[1]~combout\ : std_logic;
SIGNAL \c_int~16_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:p_bit[3]~combout\ : std_logic;
SIGNAL \c_int~15_combout\ : std_logic;
SIGNAL \c_int~14_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \c_int~17_combout\ : std_logic;
SIGNAL \G~9_combout\ : std_logic;
SIGNAL \G~10_combout\ : std_logic;
SIGNAL \C~18_combout\ : std_logic;
SIGNAL \C~19_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL C : std_logic_vector(4 DOWNTO 0);

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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X65_Y73_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~19_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X58_Y73_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X58_Y69_N0
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X58_Y73_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X58_Y69_N18
\gen_blocks:0:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:p_bit[1]~combout\ = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \gen_blocks:0:p_bit[1]~combout\);

-- Location: LCCOMB_X58_Y69_N4
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \gen_blocks:0:p_bit[1]~combout\ $ (((\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \gen_blocks:0:p_bit[1]~combout\,
	datac => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X58_Y69_N30
\c_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \c_int~0_combout\);

-- Location: LCCOMB_X58_Y69_N16
\c_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~1_combout\ = (\gen_blocks:0:p_bit[1]~combout\ & (\Cin~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \gen_blocks:0:p_bit[1]~combout\,
	datac => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \c_int~1_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X58_Y69_N28
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (((\c_int~0_combout\) # (\c_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~0_combout\,
	datab => \c_int~1_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X58_Y69_N20
\gen_blocks:0:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:p_bit[3]~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \gen_blocks:0:p_bit[3]~combout\);

-- Location: LCCOMB_X58_Y69_N14
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~12_combout\);

-- Location: LCCOMB_X58_Y69_N24
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # (\S~12_combout\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & \S~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \S~12_combout\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X58_Y69_N2
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \gen_blocks:0:p_bit[3]~combout\ $ (((\B[2]~input_o\ & ((\A[2]~input_o\) # (\S~13_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \S~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \gen_blocks:0:p_bit[3]~combout\,
	datac => \A[2]~input_o\,
	datad => \S~13_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X47_Y73_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X58_Y69_N22
\C~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~20_combout\ = (\gen_blocks:0:p_bit[3]~combout\ & (\c_int~1_combout\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \gen_blocks:0:p_bit[3]~combout\,
	datac => \A[2]~input_o\,
	datad => \c_int~1_combout\,
	combout => \C~20_combout\);

-- Location: LCCOMB_X58_Y69_N12
\G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\A[2]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \G~0_combout\);

-- Location: LCCOMB_X58_Y69_N26
\gen_blocks:0:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:p_bit[2]~combout\ = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \gen_blocks:0:p_bit[2]~combout\);

-- Location: LCCOMB_X58_Y69_N6
\G[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[0]~1_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \G[0]~1_combout\);

-- Location: LCCOMB_X58_Y69_N8
\G[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[0]~2_combout\ = (\G~0_combout\) # ((\gen_blocks:0:p_bit[3]~combout\ & (\gen_blocks:0:p_bit[2]~combout\ & \G[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G~0_combout\,
	datab => \gen_blocks:0:p_bit[3]~combout\,
	datac => \gen_blocks:0:p_bit[2]~combout\,
	datad => \G[0]~1_combout\,
	combout => \G[0]~2_combout\);

-- Location: LCCOMB_X43_Y69_N0
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (((\C~20_combout\) # (\G[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \C~20_combout\,
	datad => \G[0]~2_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X45_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X43_Y69_N26
\gen_blocks:1:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:c_int[1]~0_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\) # ((\C~20_combout\) # (\G[0]~2_combout\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\C~20_combout\) # (\G[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \C~20_combout\,
	datad => \G[0]~2_combout\,
	combout => \gen_blocks:1:c_int[1]~0_combout\);

-- Location: IOIBUF_X49_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X43_Y69_N4
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \B[5]~input_o\ $ (\gen_blocks:1:c_int[1]~0_combout\ $ (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \gen_blocks:1:c_int[1]~0_combout\,
	datad => \A[5]~input_o\,
	combout => \S~16_combout\);

-- Location: LCCOMB_X43_Y69_N30
\c_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~2_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\A[4]~input_o\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \c_int~2_combout\);

-- Location: LCCOMB_X43_Y69_N24
\c_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~3_combout\ = (\B[4]~input_o\ & (!\A[4]~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \c_int~3_combout\);

-- Location: LCCOMB_X43_Y69_N2
\c_int~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~4_combout\ = (\c_int~3_combout\ & ((\C~20_combout\) # (\G[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~3_combout\,
	datac => \C~20_combout\,
	datad => \G[0]~2_combout\,
	combout => \c_int~4_combout\);

-- Location: IOIBUF_X45_Y73_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X43_Y69_N16
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (((\c_int~2_combout\) # (\c_int~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~2_combout\,
	datab => \c_int~4_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X38_Y73_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X43_Y69_N14
\c_int~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~6_combout\ = (\B[4]~input_o\ & (\A[4]~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \c_int~6_combout\);

-- Location: LCCOMB_X43_Y69_N28
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = (\c_int~4_combout\ & (\A[6]~input_o\ $ (((\B[6]~input_o\))))) # (!\c_int~4_combout\ & (\c_int~6_combout\ & (\A[6]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \c_int~4_combout\,
	datac => \c_int~6_combout\,
	datad => \B[6]~input_o\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X43_Y69_N12
\c_int~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~5_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # ((\A[5]~input_o\ & \B[5]~input_o\)))) # (!\A[6]~input_o\ & (\A[5]~input_o\ & (\B[5]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \c_int~5_combout\);

-- Location: LCCOMB_X43_Y69_N6
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (((\S~27_combout\) # (\c_int~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \S~27_combout\,
	datac => \A[7]~input_o\,
	datad => \c_int~5_combout\,
	combout => \S~28_combout\);

-- Location: LCCOMB_X43_Y69_N18
\G[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[1]~4_combout\ = (\B[7]~input_o\ & (!\A[7]~input_o\ & (\A[6]~input_o\ $ (\B[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\A[6]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \G[1]~4_combout\);

-- Location: LCCOMB_X42_Y69_N16
\C~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~12_combout\ = (\G[1]~4_combout\ & \c_int~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G[1]~4_combout\,
	datad => \c_int~3_combout\,
	combout => \C~12_combout\);

-- Location: LCCOMB_X58_Y69_N10
\C~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~13_combout\ = (\C~12_combout\ & (\gen_blocks:0:p_bit[3]~combout\ & (\gen_blocks:0:p_bit[2]~combout\ & \c_int~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~12_combout\,
	datab => \gen_blocks:0:p_bit[3]~combout\,
	datac => \gen_blocks:0:p_bit[2]~combout\,
	datad => \c_int~1_combout\,
	combout => \C~13_combout\);

-- Location: IOIBUF_X27_Y73_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X43_Y69_N20
\G[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[1]~5_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\A[4]~input_o\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \G[1]~5_combout\);

-- Location: LCCOMB_X43_Y69_N8
\G~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~3_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\A[6]~input_o\ & \B[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\A[6]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \G~3_combout\);

-- Location: LCCOMB_X43_Y69_N22
\G[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[1]~6_combout\ = (\G~3_combout\) # ((\G[1]~5_combout\ & \G[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G[1]~5_combout\,
	datac => \G~3_combout\,
	datad => \G[1]~4_combout\,
	combout => \G[1]~6_combout\);

-- Location: LCCOMB_X43_Y69_N10
\C~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~21_combout\ = (\G[1]~6_combout\) # ((\G[1]~4_combout\ & (\c_int~3_combout\ & \G[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[1]~6_combout\,
	datab => \G[1]~4_combout\,
	datac => \c_int~3_combout\,
	datad => \G[0]~2_combout\,
	combout => \C~21_combout\);

-- Location: LCCOMB_X55_Y69_N0
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((\C~13_combout\) # (\C~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~13_combout\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \C~21_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X55_Y69_N20
\gen_blocks:2:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:c_int[1]~0_combout\ = (\B[8]~input_o\ & ((\C~13_combout\) # ((\A[8]~input_o\) # (\C~21_combout\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & ((\C~13_combout\) # (\C~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~13_combout\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \C~21_combout\,
	combout => \gen_blocks:2:c_int[1]~0_combout\);

-- Location: LCCOMB_X55_Y69_N26
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (\gen_blocks:2:c_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \gen_blocks:2:c_int[1]~0_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X55_Y69_N10
\c_int~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~8_combout\ = (\A[9]~input_o\ & (!\B[9]~input_o\ & (\A[8]~input_o\ $ (\B[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \c_int~8_combout\);

-- Location: LCCOMB_X55_Y69_N24
\c_int~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~7_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\A[8]~input_o\ & \B[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & (\A[8]~input_o\ & \B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \c_int~7_combout\);

-- Location: LCCOMB_X55_Y69_N28
\gen_blocks:2:c_int[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:c_int[2]~combout\ = (\c_int~7_combout\) # ((\c_int~8_combout\ & ((\C~13_combout\) # (\C~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~8_combout\,
	datab => \c_int~7_combout\,
	datac => \C~13_combout\,
	datad => \C~21_combout\,
	combout => \gen_blocks:2:c_int[2]~combout\);

-- Location: LCCOMB_X55_Y69_N12
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\ $ (\gen_blocks:2:c_int[2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \gen_blocks:2:c_int[2]~combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X55_Y69_N16
\c_int~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~10_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\) # ((\A[9]~input_o\ & \B[9]~input_o\)))) # (!\B[10]~input_o\ & (\A[9]~input_o\ & (\B[9]~input_o\ & \A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[10]~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[10]~input_o\,
	combout => \c_int~10_combout\);

-- Location: LCCOMB_X55_Y69_N22
\gen_blocks:2:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:p_bit[2]~combout\ = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \gen_blocks:2:p_bit[2]~combout\);

-- Location: LCCOMB_X55_Y69_N18
\gen_blocks:2:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:p_bit[1]~combout\ = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	combout => \gen_blocks:2:p_bit[1]~combout\);

-- Location: LCCOMB_X55_Y69_N2
\c_int~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~11_combout\ = (\A[8]~input_o\ & (\B[8]~input_o\ & (\gen_blocks:2:p_bit[2]~combout\ & \gen_blocks:2:p_bit[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \gen_blocks:2:p_bit[2]~combout\,
	datad => \gen_blocks:2:p_bit[1]~combout\,
	combout => \c_int~11_combout\);

-- Location: LCCOMB_X55_Y69_N30
\c_int~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~9_combout\ = (\c_int~8_combout\ & (\gen_blocks:2:p_bit[2]~combout\ & ((\C~13_combout\) # (\C~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~8_combout\,
	datab => \C~13_combout\,
	datac => \gen_blocks:2:p_bit[2]~combout\,
	datad => \C~21_combout\,
	combout => \c_int~9_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X56_Y69_N24
\gen_blocks:2:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:p_bit[3]~combout\ = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \gen_blocks:2:p_bit[3]~combout\);

-- Location: LCCOMB_X55_Y69_N4
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \gen_blocks:2:p_bit[3]~combout\ $ (((\c_int~10_combout\) # ((\c_int~11_combout\) # (\c_int~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~10_combout\,
	datab => \c_int~11_combout\,
	datac => \c_int~9_combout\,
	datad => \gen_blocks:2:p_bit[3]~combout\,
	combout => \S~18_combout\);

-- Location: LCCOMB_X55_Y69_N6
\C~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~22_combout\ = (\gen_blocks:2:p_bit[3]~combout\ & (\c_int~8_combout\ & (\A[10]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \gen_blocks:2:p_bit[3]~combout\,
	datac => \B[10]~input_o\,
	datad => \c_int~8_combout\,
	combout => \C~22_combout\);

-- Location: LCCOMB_X42_Y69_N12
\C~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~23_combout\ = (\C~20_combout\ & (\G[1]~4_combout\ & (\C~22_combout\ & \c_int~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~20_combout\,
	datab => \G[1]~4_combout\,
	datac => \C~22_combout\,
	datad => \c_int~3_combout\,
	combout => \C~23_combout\);

-- Location: IOIBUF_X35_Y73_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X42_Y69_N10
\C~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~14_combout\ = (\C~22_combout\ & ((\G[1]~6_combout\) # ((\G[0]~2_combout\ & \C~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[0]~2_combout\,
	datab => \C~12_combout\,
	datac => \C~22_combout\,
	datad => \G[1]~6_combout\,
	combout => \C~14_combout\);

-- Location: LCCOMB_X55_Y69_N14
\G~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~7_combout\ = (\A[9]~input_o\ & (\B[9]~input_o\ & (\gen_blocks:2:p_bit[2]~combout\ & \gen_blocks:2:p_bit[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \gen_blocks:2:p_bit[2]~combout\,
	datad => \gen_blocks:2:p_bit[3]~combout\,
	combout => \G~7_combout\);

-- Location: LCCOMB_X56_Y69_N10
\G~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~8_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\B[11]~input_o\ & (\B[10]~input_o\ & (\A[11]~input_o\ & \A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[10]~input_o\,
	combout => \G~8_combout\);

-- Location: LCCOMB_X56_Y69_N28
\C~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~15_combout\ = (\G~7_combout\) # ((\G~8_combout\) # ((\c_int~11_combout\ & \gen_blocks:2:p_bit[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~11_combout\,
	datab => \gen_blocks:2:p_bit[3]~combout\,
	datac => \G~7_combout\,
	datad => \G~8_combout\,
	combout => \C~15_combout\);

-- Location: LCCOMB_X42_Y69_N28
\C~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~16_combout\ = (\C~14_combout\) # (\C~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~14_combout\,
	datad => \C~15_combout\,
	combout => \C~16_combout\);

-- Location: LCCOMB_X42_Y69_N6
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (((\C~23_combout\) # (\C~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~23_combout\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \C~16_combout\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X42_Y69_N0
\gen_blocks:3:c_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[1]~0_combout\ = (\A[12]~input_o\ & ((\C~23_combout\) # ((\B[12]~input_o\) # (\C~16_combout\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & ((\C~23_combout\) # (\C~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~23_combout\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \C~16_combout\,
	combout => \gen_blocks:3:c_int[1]~0_combout\);

-- Location: IOIBUF_X31_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X34_Y72_N0
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \gen_blocks:3:c_int[1]~0_combout\ $ (\B[13]~input_o\ $ (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:c_int[1]~0_combout\,
	datab => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \S~26_combout\);

-- Location: LCCOMB_X31_Y72_N12
\c_int~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~13_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[12]~input_o\ & (\B[13]~input_o\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \c_int~13_combout\);

-- Location: IOIBUF_X25_Y73_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X31_Y72_N14
\gen_blocks:3:p_bit[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:p_bit[2]~combout\ = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \gen_blocks:3:p_bit[2]~combout\);

-- Location: LCCOMB_X31_Y72_N26
\c_int~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~12_combout\ = (\B[12]~input_o\ & (!\A[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \c_int~12_combout\);

-- Location: LCCOMB_X55_Y69_N8
\C~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~17_combout\ = (\c_int~8_combout\ & (\C~12_combout\ & (\gen_blocks:2:p_bit[2]~combout\ & \gen_blocks:2:p_bit[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~8_combout\,
	datab => \C~12_combout\,
	datac => \gen_blocks:2:p_bit[2]~combout\,
	datad => \gen_blocks:2:p_bit[3]~combout\,
	combout => \C~17_combout\);

-- Location: LCCOMB_X42_Y69_N2
\C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- C(3) = (\C~14_combout\) # ((\C~15_combout\) # ((\C~17_combout\ & \C~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~14_combout\,
	datab => \C~15_combout\,
	datac => \C~17_combout\,
	datad => \C~20_combout\,
	combout => C(3));

-- Location: LCCOMB_X31_Y72_N0
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \gen_blocks:3:p_bit[2]~combout\ $ (((\c_int~13_combout\) # ((\c_int~12_combout\ & C(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~13_combout\,
	datab => \gen_blocks:3:p_bit[2]~combout\,
	datac => \c_int~12_combout\,
	datad => C(3),
	combout => \S~20_combout\);

-- Location: LCCOMB_X31_Y72_N16
\gen_blocks:3:p_bit[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:p_bit[1]~combout\ = \B[13]~input_o\ $ (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \gen_blocks:3:p_bit[1]~combout\);

-- Location: LCCOMB_X31_Y72_N22
\c_int~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~16_combout\ = (\B[12]~input_o\ & (\gen_blocks:3:p_bit[1]~combout\ & (\gen_blocks:3:p_bit[2]~combout\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \gen_blocks:3:p_bit[1]~combout\,
	datac => \gen_blocks:3:p_bit[2]~combout\,
	datad => \A[12]~input_o\,
	combout => \c_int~16_combout\);

-- Location: IOIBUF_X25_Y73_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X31_Y72_N8
\gen_blocks:3:p_bit[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:p_bit[3]~combout\ = \B[15]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	combout => \gen_blocks:3:p_bit[3]~combout\);

-- Location: LCCOMB_X31_Y72_N4
\c_int~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~15_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # ((\B[13]~input_o\ & \A[13]~input_o\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & (\B[13]~input_o\ & \A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \c_int~15_combout\);

-- Location: LCCOMB_X31_Y72_N18
\c_int~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~14_combout\ = (\c_int~12_combout\ & (C(3) & (\A[14]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \c_int~12_combout\,
	datad => C(3),
	combout => \c_int~14_combout\);

-- Location: LCCOMB_X31_Y72_N2
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \gen_blocks:3:p_bit[3]~combout\ $ (((\c_int~16_combout\) # ((\c_int~15_combout\) # (\c_int~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~16_combout\,
	datab => \gen_blocks:3:p_bit[3]~combout\,
	datac => \c_int~15_combout\,
	datad => \c_int~14_combout\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X31_Y72_N10
\c_int~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_int~17_combout\ = (C(3) & (\gen_blocks:3:p_bit[1]~combout\ & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => C(3),
	datab => \gen_blocks:3:p_bit[1]~combout\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \c_int~17_combout\);

-- Location: LCCOMB_X31_Y72_N20
\G~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~9_combout\ = (\B[13]~input_o\ & (\gen_blocks:3:p_bit[2]~combout\ & (\gen_blocks:3:p_bit[3]~combout\ & \A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \gen_blocks:3:p_bit[2]~combout\,
	datac => \gen_blocks:3:p_bit[3]~combout\,
	datad => \A[13]~input_o\,
	combout => \G~9_combout\);

-- Location: LCCOMB_X31_Y72_N6
\G~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~10_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[14]~input_o\ & (\A[15]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \G~10_combout\);

-- Location: LCCOMB_X31_Y72_N24
\C~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~18_combout\ = (\G~9_combout\) # ((\G~10_combout\) # ((\c_int~16_combout\ & \gen_blocks:3:p_bit[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~16_combout\,
	datab => \G~9_combout\,
	datac => \gen_blocks:3:p_bit[3]~combout\,
	datad => \G~10_combout\,
	combout => \C~18_combout\);

-- Location: LCCOMB_X31_Y72_N28
\C~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~19_combout\ = (\C~18_combout\) # ((\c_int~17_combout\ & (\gen_blocks:3:p_bit[3]~combout\ & \gen_blocks:3:p_bit[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_int~17_combout\,
	datab => \gen_blocks:3:p_bit[3]~combout\,
	datac => \gen_blocks:3:p_bit[2]~combout\,
	datad => \C~18_combout\,
	combout => \C~19_combout\);

-- Location: LCCOMB_X31_Y72_N30
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = C(3) $ (((\C~18_combout\) # ((\c_int~14_combout\ & \gen_blocks:3:p_bit[3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => C(3),
	datab => \c_int~14_combout\,
	datac => \gen_blocks:3:p_bit[3]~combout\,
	datad => \C~18_combout\,
	combout => \Ovfl~0_combout\);

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


