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

-- DATE "04/08/2026 12:42:47"

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
-- S[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \block_prop~0_combout\ : std_logic;
SIGNAL \c_chain~4_combout\ : std_logic;
SIGNAL \c_chain~5_combout\ : std_logic;
SIGNAL \c_chain~6_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|Cout~0_combout\ : std_logic;
SIGNAL \c_chain~12_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \block_prop~1_combout\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:block_prop~combout\ : std_logic;
SIGNAL \c_chain~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|Cout~1_combout\ : std_logic;
SIGNAL \c_chain~13_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \block_prop~2_combout\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:2:block_prop~combout\ : std_logic;
SIGNAL \c_chain~8_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \c_chain~9_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \block_prop~3_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:block_prop~combout\ : std_logic;
SIGNAL \c_chain~10_combout\ : std_logic;
SIGNAL \c_chain~11_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:3:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:2:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:1:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;

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
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y30_N9
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_chain~11_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X115_Y34_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y33_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X114_Y32_N8
\gen_blocks:0:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(0) = \A[0]~input_o\ $ (\B[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(0));

-- Location: LCCOMB_X114_Y32_N12
\gen_blocks:0:RCA_BLOCK|C[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\);

-- Location: IOIBUF_X115_Y32_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X114_Y32_N26
\gen_blocks:0:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ = (\Cin~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \B[0]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\);

-- Location: IOIBUF_X115_Y34_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X114_Y32_N6
\gen_blocks:0:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(1) = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\) # (\gen_blocks:0:RCA_BLOCK|C[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\,
	datab => \B[1]~input_o\,
	datac => \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\,
	datad => \A[1]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X115_Y31_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X114_Y32_N0
\gen_blocks:0:RCA_BLOCK|C[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ = (\B[1]~input_o\ & ((\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\) # ((\gen_blocks:0:RCA_BLOCK|C[1]~0_combout\) # (\A[1]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\) # 
-- (\gen_blocks:0:RCA_BLOCK|C[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\,
	datab => \B[1]~input_o\,
	datac => \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\,
	datad => \A[1]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\);

-- Location: IOIBUF_X115_Y32_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X114_Y32_N10
\gen_blocks:0:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(2) = \A[2]~input_o\ $ (\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\,
	datac => \B[2]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X115_Y31_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X114_Y32_N28
\block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \block_prop~0_combout\);

-- Location: LCCOMB_X114_Y32_N14
\gen_blocks:0:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(3) = \block_prop~0_combout\ $ (((\A[2]~input_o\ & ((\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\) # (\B[2]~input_o\))) # (!\A[2]~input_o\ & (\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\,
	datac => \B[2]~input_o\,
	datad => \block_prop~0_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(3));

-- Location: LCCOMB_X114_Y32_N16
\c_chain~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~4_combout\ = (\A[1]~input_o\ & (!\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \c_chain~4_combout\);

-- Location: LCCOMB_X114_Y32_N2
\c_chain~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~5_combout\ = (\c_chain~4_combout\ & (\block_prop~0_combout\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \c_chain~4_combout\,
	datac => \B[2]~input_o\,
	datad => \block_prop~0_combout\,
	combout => \c_chain~5_combout\);

-- Location: LCCOMB_X114_Y32_N4
\c_chain~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~6_combout\ = (\c_chain~5_combout\ & \Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_chain~5_combout\,
	datac => \Cin~input_o\,
	combout => \c_chain~6_combout\);

-- Location: IOIBUF_X83_Y73_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X114_Y32_N30
\gen_blocks:0:RCA_BLOCK|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|Cout~0_combout\ = (\A[2]~input_o\ & ((\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\) # (\B[2]~input_o\))) # (!\A[2]~input_o\ & (\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\,
	datac => \B[2]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|Cout~0_combout\);

-- Location: LCCOMB_X114_Y32_N18
\c_chain~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~12_combout\ = (!\c_chain~5_combout\ & ((\gen_blocks:0:RCA_BLOCK|Cout~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) # (!\gen_blocks:0:RCA_BLOCK|Cout~0_combout\ & (\B[3]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:RCA_BLOCK|Cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \c_chain~5_combout\,
	combout => \c_chain~12_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X86_Y72_N24
\gen_blocks:1:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(0) = \B[4]~input_o\ $ (\A[4]~input_o\ $ (((\c_chain~6_combout\) # (\c_chain~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~6_combout\,
	datab => \B[4]~input_o\,
	datac => \c_chain~12_combout\,
	datad => \A[4]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X85_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X86_Y72_N18
\gen_blocks:1:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ = (\B[4]~input_o\ & ((\c_chain~6_combout\) # ((\c_chain~12_combout\) # (\A[4]~input_o\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\c_chain~6_combout\) # (\c_chain~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~6_combout\,
	datab => \B[4]~input_o\,
	datac => \c_chain~12_combout\,
	datad => \A[4]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\);

-- Location: LCCOMB_X86_Y72_N12
\gen_blocks:1:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(1) = \A[5]~input_o\ $ (\B[5]~input_o\ $ (\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X83_Y73_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X86_Y72_N22
\block_prop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~1_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \block_prop~1_combout\);

-- Location: LCCOMB_X86_Y72_N0
\gen_blocks:1:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(2) = \block_prop~1_combout\ $ (((\A[5]~input_o\ & ((\B[5]~input_o\) # (\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_prop~1_combout\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(2));

-- Location: LCCOMB_X86_Y72_N10
\gen_blocks:1:RCA_BLOCK|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[3]~1_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # (\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:1:RCA_BLOCK|C[3]~1_combout\);

-- Location: LCCOMB_X86_Y72_N28
\gen_blocks:1:RCA_BLOCK|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\ = (\gen_blocks:1:RCA_BLOCK|C[3]~1_combout\ & ((\B[6]~input_o\) # (\A[6]~input_o\))) # (!\gen_blocks:1:RCA_BLOCK|C[3]~1_combout\ & (\B[6]~input_o\ & \A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:RCA_BLOCK|C[3]~1_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X86_Y72_N6
\gen_blocks:1:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(3) = \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\ $ (\A[7]~input_o\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(3));

-- Location: LCCOMB_X86_Y72_N16
\gen_blocks:1:block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:block_prop~0_combout\ = (\B[4]~input_o\ & (!\A[4]~input_o\ & (\A[5]~input_o\ $ (\B[5]~input_o\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & (\A[5]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \gen_blocks:1:block_prop~0_combout\);

-- Location: LCCOMB_X86_Y72_N2
\gen_blocks:1:block_prop\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:block_prop~combout\ = (\block_prop~1_combout\ & (\gen_blocks:1:block_prop~0_combout\ & (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_prop~1_combout\,
	datab => \gen_blocks:1:block_prop~0_combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \gen_blocks:1:block_prop~combout\);

-- Location: LCCOMB_X86_Y72_N20
\c_chain~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~7_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\gen_blocks:1:RCA_BLOCK|C[3]~2_combout\ & !\gen_blocks:1:block_prop~combout\)))) # (!\B[7]~input_o\ & (\gen_blocks:1:RCA_BLOCK|C[3]~2_combout\ & (\A[7]~input_o\ & 
-- !\gen_blocks:1:block_prop~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\,
	datac => \A[7]~input_o\,
	datad => \gen_blocks:1:block_prop~combout\,
	combout => \c_chain~7_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X114_Y32_N24
\gen_blocks:0:RCA_BLOCK|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|Cout~1_combout\ = (\gen_blocks:0:RCA_BLOCK|Cout~0_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) # (!\gen_blocks:0:RCA_BLOCK|Cout~0_combout\ & (\A[3]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:RCA_BLOCK|Cout~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|Cout~1_combout\);

-- Location: LCCOMB_X114_Y32_N20
\c_chain~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~13_combout\ = (\gen_blocks:1:block_prop~combout\ & ((\c_chain~5_combout\ & (\Cin~input_o\)) # (!\c_chain~5_combout\ & ((\gen_blocks:0:RCA_BLOCK|Cout~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:block_prop~combout\,
	datab => \c_chain~5_combout\,
	datac => \Cin~input_o\,
	datad => \gen_blocks:0:RCA_BLOCK|Cout~1_combout\,
	combout => \c_chain~13_combout\);

-- Location: LCCOMB_X69_Y72_N0
\gen_blocks:2:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(0) = \A[8]~input_o\ $ (\B[8]~input_o\ $ (((\c_chain~7_combout\) # (\c_chain~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~7_combout\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \c_chain~13_combout\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X69_Y73_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X69_Y72_N26
\gen_blocks:2:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ = (\A[8]~input_o\ & ((\c_chain~7_combout\) # ((\B[8]~input_o\) # (\c_chain~13_combout\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & ((\c_chain~7_combout\) # (\c_chain~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~7_combout\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \c_chain~13_combout\,
	combout => \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\);

-- Location: IOIBUF_X69_Y73_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X69_Y72_N4
\gen_blocks:2:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(1) = \B[9]~input_o\ $ (\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ $ (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\,
	datad => \A[9]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X67_Y73_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X69_Y72_N30
\block_prop~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~2_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \block_prop~2_combout\);

-- Location: LCCOMB_X69_Y72_N24
\gen_blocks:2:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(2) = \block_prop~2_combout\ $ (((\B[9]~input_o\ & ((\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\) # (\A[9]~input_o\))) # (!\B[9]~input_o\ & (\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ & \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_prop~2_combout\,
	datab => \B[9]~input_o\,
	datac => \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\,
	datad => \A[9]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(2));

-- Location: LCCOMB_X69_Y72_N10
\gen_blocks:2:RCA_BLOCK|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[3]~1_combout\ = (\B[9]~input_o\ & ((\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\) # (\A[9]~input_o\))) # (!\B[9]~input_o\ & (\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ & \A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\,
	datad => \A[9]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|C[3]~1_combout\);

-- Location: LCCOMB_X69_Y72_N12
\gen_blocks:2:RCA_BLOCK|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\ = (\gen_blocks:2:RCA_BLOCK|C[3]~1_combout\ & ((\A[10]~input_o\) # (\B[10]~input_o\))) # (!\gen_blocks:2:RCA_BLOCK|C[3]~1_combout\ & (\A[10]~input_o\ & \B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|C[3]~1_combout\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\);

-- Location: IOIBUF_X72_Y73_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X69_Y72_N6
\gen_blocks:2:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(3) = \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\ $ (\B[11]~input_o\ $ (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\,
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(3));

-- Location: LCCOMB_X69_Y72_N16
\gen_blocks:2:block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:block_prop~0_combout\ = (\B[9]~input_o\ & (!\A[9]~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \gen_blocks:2:block_prop~0_combout\);

-- Location: LCCOMB_X69_Y72_N18
\gen_blocks:2:block_prop\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:block_prop~combout\ = (\block_prop~2_combout\ & (\gen_blocks:2:block_prop~0_combout\ & (\B[11]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_prop~2_combout\,
	datab => \gen_blocks:2:block_prop~0_combout\,
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \gen_blocks:2:block_prop~combout\);

-- Location: LCCOMB_X69_Y72_N20
\c_chain~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~8_combout\ = (\gen_blocks:2:block_prop~combout\ & ((\c_chain~7_combout\) # (\c_chain~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:2:block_prop~combout\,
	datac => \c_chain~7_combout\,
	datad => \c_chain~13_combout\,
	combout => \c_chain~8_combout\);

-- Location: IOIBUF_X58_Y73_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X69_Y72_N22
\c_chain~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~9_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\gen_blocks:2:RCA_BLOCK|C[3]~2_combout\ & !\gen_blocks:2:block_prop~combout\)))) # (!\B[11]~input_o\ & (\gen_blocks:2:RCA_BLOCK|C[3]~2_combout\ & (!\gen_blocks:2:block_prop~combout\ & 
-- \A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\,
	datab => \gen_blocks:2:block_prop~combout\,
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \c_chain~9_combout\);

-- Location: LCCOMB_X61_Y72_N8
\gen_blocks:3:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(0) = \B[12]~input_o\ $ (\A[12]~input_o\ $ (((\c_chain~8_combout\) # (\c_chain~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~8_combout\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \c_chain~9_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X60_Y73_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X61_Y72_N10
\gen_blocks:3:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ = (\B[12]~input_o\ & ((\c_chain~8_combout\) # ((\A[12]~input_o\) # (\c_chain~9_combout\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & ((\c_chain~8_combout\) # (\c_chain~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~8_combout\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \c_chain~9_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\);

-- Location: LCCOMB_X61_Y72_N12
\gen_blocks:3:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(1) = \A[13]~input_o\ $ (\B[13]~input_o\ $ (\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X62_Y73_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X61_Y72_N22
\block_prop~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~3_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \block_prop~3_combout\);

-- Location: LCCOMB_X61_Y72_N24
\gen_blocks:3:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(2) = \block_prop~3_combout\ $ (((\A[13]~input_o\ & ((\B[13]~input_o\) # (\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \block_prop~3_combout\,
	datac => \B[13]~input_o\,
	datad => \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X58_Y73_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X61_Y72_N18
\gen_blocks:3:RCA_BLOCK|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # (\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\);

-- Location: LCCOMB_X61_Y72_N28
\gen_blocks:3:RCA_BLOCK|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\ = (\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ & ((\A[14]~input_o\) # (\B[14]~input_o\))) # (!\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ & (\A[14]~input_o\ & \B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\);

-- Location: IOIBUF_X65_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X61_Y72_N30
\gen_blocks:3:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(3) = \A[15]~input_o\ $ (\gen_blocks:3:RCA_BLOCK|C[3]~2_combout\ $ (\B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\,
	datad => \B[15]~input_o\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(3));

-- Location: LCCOMB_X61_Y72_N16
\gen_blocks:3:block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:block_prop~0_combout\ = (\A[13]~input_o\ & (!\B[13]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \gen_blocks:3:block_prop~0_combout\);

-- Location: LCCOMB_X61_Y72_N26
\gen_blocks:3:block_prop\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:block_prop~combout\ = (\gen_blocks:3:block_prop~0_combout\ & (\block_prop~3_combout\ & (\A[15]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \gen_blocks:3:block_prop~0_combout\,
	datac => \block_prop~3_combout\,
	datad => \B[15]~input_o\,
	combout => \gen_blocks:3:block_prop~combout\);

-- Location: LCCOMB_X61_Y72_N20
\c_chain~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~10_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\gen_blocks:3:RCA_BLOCK|C[3]~2_combout\ & !\gen_blocks:3:block_prop~combout\)))) # (!\A[15]~input_o\ & (\gen_blocks:3:RCA_BLOCK|C[3]~2_combout\ & (!\gen_blocks:3:block_prop~combout\ & 
-- \B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\,
	datac => \gen_blocks:3:block_prop~combout\,
	datad => \B[15]~input_o\,
	combout => \c_chain~10_combout\);

-- Location: LCCOMB_X61_Y72_N6
\c_chain~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~11_combout\ = (\c_chain~10_combout\) # ((\gen_blocks:3:block_prop~combout\ & ((\c_chain~8_combout\) # (\c_chain~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~8_combout\,
	datab => \c_chain~10_combout\,
	datac => \gen_blocks:3:block_prop~combout\,
	datad => \c_chain~9_combout\,
	combout => \c_chain~11_combout\);

-- Location: LCCOMB_X61_Y72_N0
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\A[15]~input_o\ & ((\gen_blocks:3:RCA_BLOCK|C[3]~2_combout\) # (!\B[15]~input_o\))) # (!\A[15]~input_o\ & ((\B[15]~input_o\) # (!\gen_blocks:3:RCA_BLOCK|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\,
	datad => \B[15]~input_o\,
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


