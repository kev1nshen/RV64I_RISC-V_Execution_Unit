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

-- DATE "04/08/2026 12:35:33"

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
-- S[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \blk0|S[0]~0_combout\ : std_logic;
SIGNAL \blk0|Cout~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \Csel[1]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \blk2_c1|S[1]~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Csel[2]~1_combout\ : std_logic;
SIGNAL \Csel[2]~2_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \blk3_c1|S[1]~0_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Csel[3]~3_combout\ : std_logic;
SIGNAL \Csel[3]~4_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \blk4_c1|S[1]~0_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \blk4_c1|S[2]~1_combout\ : std_logic;
SIGNAL \blk4_c1|C[2]~0_combout\ : std_logic;
SIGNAL \blk4_c0|C[2]~0_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \blk4_c1|C[3]~1_combout\ : std_logic;
SIGNAL \blk4_c1|C[3]~2_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \blk4_c0|C[3]~1_combout\ : std_logic;
SIGNAL \blk4_c0|C[3]~2_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \blk4_c1|Cout~0_combout\ : std_logic;
SIGNAL \blk4_c0|Cout~0_combout\ : std_logic;
SIGNAL \Csel[4]~5_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \blk5_c1|S[1]~0_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \blk5_c1|S[2]~1_combout\ : std_logic;
SIGNAL \blk5_c0|C[2]~0_combout\ : std_logic;
SIGNAL \blk5_c1|C[2]~0_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \blk5_c1|C[3]~2_combout\ : std_logic;
SIGNAL \blk5_c1|C[3]~1_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \blk5_c0|C[3]~2_combout\ : std_logic;
SIGNAL \blk5_c0|C[3]~1_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \blk5_c0|Cout~0_combout\ : std_logic;
SIGNAL \blk5_c1|Cout~0_combout\ : std_logic;
SIGNAL \Csel[5]~6_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \blk6_c1|S[1]~0_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \blk6_c1|Cout~0_combout\ : std_logic;
SIGNAL \blk6_c0|Cout~0_combout\ : std_logic;
SIGNAL \Csel~7_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \blk4_c0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \blk4_c1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \blk5_c0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \blk5_c1|S\ : std_logic_vector(3 DOWNTO 0);

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

-- Location: IOOBUF_X29_Y73_N9
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk0|S[0]~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Csel~7_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X40_Y0_N23
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

-- Location: IOIBUF_X25_Y73_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X30_Y72_N8
\blk0|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk0|S[0]~0_combout\ = \Cin~input_o\ $ (\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \blk0|S[0]~0_combout\);

-- Location: LCCOMB_X30_Y72_N10
\blk0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk0|Cout~0_combout\ = (\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \blk0|Cout~0_combout\);

-- Location: IOIBUF_X38_Y73_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X30_Y72_N12
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \blk0|Cout~0_combout\ $ (\B[1]~input_o\ $ (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk0|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \S~0_combout\);

-- Location: LCCOMB_X30_Y72_N30
\Csel[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[1]~0_combout\ = (\blk0|Cout~0_combout\ & ((\B[1]~input_o\) # (\A[1]~input_o\))) # (!\blk0|Cout~0_combout\ & (\B[1]~input_o\ & \A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk0|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \Csel[1]~0_combout\);

-- Location: IOIBUF_X31_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X30_Y72_N24
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \Csel[1]~0_combout\ $ (\A[2]~input_o\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Csel[1]~0_combout\,
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X29_Y73_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X30_Y72_N18
\blk2_c1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk2_c1|S[1]~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \blk2_c1|S[1]~0_combout\);

-- Location: LCCOMB_X30_Y72_N28
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \blk2_c1|S[1]~0_combout\ $ (((\Csel[1]~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) # (!\Csel[1]~0_combout\ & (\A[2]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Csel[1]~0_combout\,
	datab => \blk2_c1|S[1]~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X27_Y73_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X30_Y72_N22
\Csel[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[2]~1_combout\ = (\Csel[1]~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) # (!\Csel[1]~0_combout\ & (\A[2]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Csel[1]~0_combout\,
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Csel[2]~1_combout\);

-- Location: LCCOMB_X30_Y72_N16
\Csel[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[2]~2_combout\ = (\Csel[2]~1_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) # (!\Csel[2]~1_combout\ & (\A[3]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Csel[2]~1_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Csel[2]~2_combout\);

-- Location: LCCOMB_X30_Y72_N2
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (\Csel[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Csel[2]~2_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X35_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X30_Y72_N20
\blk3_c1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk3_c1|S[1]~0_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \blk3_c1|S[1]~0_combout\);

-- Location: LCCOMB_X30_Y72_N6
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \blk3_c1|S[1]~0_combout\ $ (((\Csel[2]~2_combout\ & ((\B[4]~input_o\) # (\A[4]~input_o\))) # (!\Csel[2]~2_combout\ & (\B[4]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk3_c1|S[1]~0_combout\,
	datab => \Csel[2]~2_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \S~4_combout\);

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

-- Location: IOIBUF_X49_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X30_Y72_N0
\Csel[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[3]~3_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # (\Csel[2]~2_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \Csel[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Csel[2]~2_combout\,
	combout => \Csel[3]~3_combout\);

-- Location: LCCOMB_X30_Y72_N26
\Csel[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[3]~4_combout\ = (\A[5]~input_o\ & ((\Csel[3]~3_combout\) # (\B[5]~input_o\))) # (!\A[5]~input_o\ & (\Csel[3]~3_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \Csel[3]~3_combout\,
	datad => \B[5]~input_o\,
	combout => \Csel[3]~4_combout\);

-- Location: LCCOMB_X46_Y72_N0
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (\Csel[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \Csel[3]~4_combout\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X42_Y73_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X46_Y72_N18
\blk4_c1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|S[1]~0_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \blk4_c1|S[1]~0_combout\);

-- Location: LCCOMB_X46_Y72_N12
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \blk4_c1|S[1]~0_combout\ $ (((\B[6]~input_o\ & ((\Csel[3]~4_combout\) # (\A[6]~input_o\))) # (!\B[6]~input_o\ & (\Csel[3]~4_combout\ & \A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \Csel[3]~4_combout\,
	datac => \A[6]~input_o\,
	datad => \blk4_c1|S[1]~0_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X49_Y73_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X46_Y72_N26
\blk4_c1|S[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|S[2]~1_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \blk4_c1|S[2]~1_combout\);

-- Location: LCCOMB_X46_Y72_N8
\blk4_c1|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[2]~0_combout\ = (\A[7]~input_o\ & ((\B[6]~input_o\) # ((\A[6]~input_o\) # (\B[7]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & ((\B[6]~input_o\) # (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[7]~input_o\,
	combout => \blk4_c1|C[2]~0_combout\);

-- Location: LCCOMB_X46_Y72_N14
\blk4_c0|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[2]~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[7]~input_o\,
	combout => \blk4_c0|C[2]~0_combout\);

-- Location: LCCOMB_X46_Y72_N20
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \blk4_c1|S[2]~1_combout\ $ (((\Csel[3]~4_combout\ & (\blk4_c1|C[2]~0_combout\)) # (!\Csel[3]~4_combout\ & ((\blk4_c0|C[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|S[2]~1_combout\,
	datab => \blk4_c1|C[2]~0_combout\,
	datac => \blk4_c0|C[2]~0_combout\,
	datad => \Csel[3]~4_combout\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X46_Y72_N6
\blk4_c1|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[3]~1_combout\ = (\blk4_c1|C[2]~0_combout\ & \B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk4_c1|C[2]~0_combout\,
	datac => \B[8]~input_o\,
	combout => \blk4_c1|C[3]~1_combout\);

-- Location: LCCOMB_X46_Y72_N16
\blk4_c1|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|C[3]~2_combout\ = (\A[8]~input_o\ & ((\blk4_c1|C[2]~0_combout\) # (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk4_c1|C[2]~0_combout\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \blk4_c1|C[3]~2_combout\);

-- Location: IOIBUF_X42_Y73_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X46_Y72_N10
\blk4_c1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|S\(3) = \A[9]~input_o\ $ (\B[9]~input_o\ $ (((\blk4_c1|C[3]~1_combout\) # (\blk4_c1|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|C[3]~1_combout\,
	datab => \blk4_c1|C[3]~2_combout\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \blk4_c1|S\(3));

-- Location: LCCOMB_X46_Y72_N28
\blk4_c0|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[3]~1_combout\ = (\blk4_c0|C[2]~0_combout\ & \B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk4_c0|C[2]~0_combout\,
	datac => \B[8]~input_o\,
	combout => \blk4_c0|C[3]~1_combout\);

-- Location: LCCOMB_X46_Y72_N30
\blk4_c0|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|C[3]~2_combout\ = (\A[8]~input_o\ & ((\blk4_c0|C[2]~0_combout\) # (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk4_c0|C[2]~0_combout\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \blk4_c0|C[3]~2_combout\);

-- Location: LCCOMB_X46_Y72_N24
\blk4_c0|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|S\(3) = \A[9]~input_o\ $ (\B[9]~input_o\ $ (((\blk4_c0|C[3]~1_combout\) # (\blk4_c0|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \blk4_c0|C[3]~1_combout\,
	datac => \blk4_c0|C[3]~2_combout\,
	datad => \B[9]~input_o\,
	combout => \blk4_c0|S\(3));

-- Location: LCCOMB_X46_Y72_N2
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = (\Csel[3]~4_combout\ & (\blk4_c1|S\(3))) # (!\Csel[3]~4_combout\ & ((\blk4_c0|S\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|S\(3),
	datab => \Csel[3]~4_combout\,
	datad => \blk4_c0|S\(3),
	combout => \S~8_combout\);

-- Location: IOIBUF_X23_Y73_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X46_Y72_N4
\blk4_c1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c1|Cout~0_combout\ = (\A[9]~input_o\ & ((\blk4_c1|C[3]~1_combout\) # ((\blk4_c1|C[3]~2_combout\) # (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & ((\blk4_c1|C[3]~1_combout\) # (\blk4_c1|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|C[3]~1_combout\,
	datab => \blk4_c1|C[3]~2_combout\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \blk4_c1|Cout~0_combout\);

-- Location: LCCOMB_X46_Y72_N22
\blk4_c0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk4_c0|Cout~0_combout\ = (\A[9]~input_o\ & ((\blk4_c0|C[3]~1_combout\) # ((\blk4_c0|C[3]~2_combout\) # (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & ((\blk4_c0|C[3]~1_combout\) # (\blk4_c0|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \blk4_c0|C[3]~1_combout\,
	datac => \blk4_c0|C[3]~2_combout\,
	datad => \B[9]~input_o\,
	combout => \blk4_c0|Cout~0_combout\);

-- Location: LCCOMB_X45_Y72_N16
\Csel[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[4]~5_combout\ = (\Csel[3]~4_combout\ & (\blk4_c1|Cout~0_combout\)) # (!\Csel[3]~4_combout\ & ((\blk4_c0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|Cout~0_combout\,
	datab => \Csel[3]~4_combout\,
	datad => \blk4_c0|Cout~0_combout\,
	combout => \Csel[4]~5_combout\);

-- Location: LCCOMB_X23_Y72_N0
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\ $ (\Csel[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \Csel[4]~5_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X20_Y73_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X20_Y72_N8
\blk5_c1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|S[1]~0_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	combout => \blk5_c1|S[1]~0_combout\);

-- Location: LCCOMB_X20_Y72_N2
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \blk5_c1|S[1]~0_combout\ $ (((\A[10]~input_o\ & ((\Csel[4]~5_combout\) # (\B[10]~input_o\))) # (!\A[10]~input_o\ & (\Csel[4]~5_combout\ & \B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|S[1]~0_combout\,
	datab => \A[10]~input_o\,
	datac => \Csel[4]~5_combout\,
	datad => \B[10]~input_o\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X20_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X20_Y72_N16
\blk5_c1|S[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|S[2]~1_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \blk5_c1|S[2]~1_combout\);

-- Location: LCCOMB_X20_Y72_N4
\blk5_c0|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[2]~0_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\A[11]~input_o\ & (\A[10]~input_o\ & (\B[11]~input_o\ & \B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \blk5_c0|C[2]~0_combout\);

-- Location: LCCOMB_X20_Y72_N6
\blk5_c1|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[2]~0_combout\ = (\A[11]~input_o\ & ((\A[10]~input_o\) # ((\B[11]~input_o\) # (\B[10]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & ((\A[10]~input_o\) # (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \blk5_c1|C[2]~0_combout\);

-- Location: LCCOMB_X20_Y72_N26
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \blk5_c1|S[2]~1_combout\ $ (((\Csel[4]~5_combout\ & ((\blk5_c1|C[2]~0_combout\))) # (!\Csel[4]~5_combout\ & (\blk5_c0|C[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Csel[4]~5_combout\,
	datab => \blk5_c1|S[2]~1_combout\,
	datac => \blk5_c0|C[2]~0_combout\,
	datad => \blk5_c1|C[2]~0_combout\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X20_Y72_N22
\blk5_c1|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[3]~2_combout\ = (\A[12]~input_o\ & ((\blk5_c1|C[2]~0_combout\) # (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|C[2]~0_combout\,
	datab => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \blk5_c1|C[3]~2_combout\);

-- Location: LCCOMB_X20_Y72_N20
\blk5_c1|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|C[3]~1_combout\ = (\blk5_c1|C[2]~0_combout\ & \B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|C[2]~0_combout\,
	datad => \B[12]~input_o\,
	combout => \blk5_c1|C[3]~1_combout\);

-- Location: IOIBUF_X18_Y73_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X20_Y72_N0
\blk5_c1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|S\(3) = \B[13]~input_o\ $ (\A[13]~input_o\ $ (((\blk5_c1|C[3]~2_combout\) # (\blk5_c1|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|C[3]~2_combout\,
	datab => \blk5_c1|C[3]~1_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \blk5_c1|S\(3));

-- Location: LCCOMB_X20_Y72_N12
\blk5_c0|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[3]~2_combout\ = (\A[12]~input_o\ & ((\blk5_c0|C[2]~0_combout\) # (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \blk5_c0|C[2]~0_combout\,
	datad => \B[12]~input_o\,
	combout => \blk5_c0|C[3]~2_combout\);

-- Location: LCCOMB_X20_Y72_N18
\blk5_c0|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|C[3]~1_combout\ = (\blk5_c0|C[2]~0_combout\ & \B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blk5_c0|C[2]~0_combout\,
	datad => \B[12]~input_o\,
	combout => \blk5_c0|C[3]~1_combout\);

-- Location: LCCOMB_X20_Y72_N14
\blk5_c0|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|S\(3) = \B[13]~input_o\ $ (\A[13]~input_o\ $ (((\blk5_c0|C[3]~2_combout\) # (\blk5_c0|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|C[3]~2_combout\,
	datab => \blk5_c0|C[3]~1_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \blk5_c0|S\(3));

-- Location: LCCOMB_X20_Y72_N24
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = (\Csel[4]~5_combout\ & (\blk5_c1|S\(3))) # (!\Csel[4]~5_combout\ & ((\blk5_c0|S\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Csel[4]~5_combout\,
	datab => \blk5_c1|S\(3),
	datac => \blk5_c0|S\(3),
	combout => \S~12_combout\);

-- Location: IOIBUF_X35_Y0_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X20_Y72_N28
\blk5_c0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c0|Cout~0_combout\ = (\B[13]~input_o\ & ((\blk5_c0|C[3]~2_combout\) # ((\blk5_c0|C[3]~1_combout\) # (\A[13]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & ((\blk5_c0|C[3]~2_combout\) # (\blk5_c0|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|C[3]~2_combout\,
	datab => \blk5_c0|C[3]~1_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \blk5_c0|Cout~0_combout\);

-- Location: LCCOMB_X20_Y72_N10
\blk5_c1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk5_c1|Cout~0_combout\ = (\B[13]~input_o\ & ((\blk5_c1|C[3]~2_combout\) # ((\blk5_c1|C[3]~1_combout\) # (\A[13]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & ((\blk5_c1|C[3]~2_combout\) # (\blk5_c1|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|C[3]~2_combout\,
	datab => \blk5_c1|C[3]~1_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \blk5_c1|Cout~0_combout\);

-- Location: LCCOMB_X20_Y72_N30
\Csel[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel[5]~6_combout\ = (\Csel[4]~5_combout\ & ((\blk5_c1|Cout~0_combout\))) # (!\Csel[4]~5_combout\ & (\blk5_c0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blk5_c0|Cout~0_combout\,
	datac => \Csel[4]~5_combout\,
	datad => \blk5_c1|Cout~0_combout\,
	combout => \Csel[5]~6_combout\);

-- Location: IOIBUF_X42_Y0_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X39_Y1_N24
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \B[14]~input_o\ $ (\Csel[5]~6_combout\ $ (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datac => \Csel[5]~6_combout\,
	datad => \A[14]~input_o\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X35_Y0_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X39_Y1_N10
\blk6_c1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c1|S[1]~0_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \blk6_c1|S[1]~0_combout\);

-- Location: LCCOMB_X39_Y1_N12
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \blk6_c1|S[1]~0_combout\ $ (((\B[14]~input_o\ & ((\Csel[5]~6_combout\) # (\A[14]~input_o\))) # (!\B[14]~input_o\ & (\Csel[5]~6_combout\ & \A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c1|S[1]~0_combout\,
	datab => \B[14]~input_o\,
	datac => \Csel[5]~6_combout\,
	datad => \A[14]~input_o\,
	combout => \S~14_combout\);

-- Location: LCCOMB_X39_Y1_N6
\blk6_c1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c1|Cout~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\B[14]~input_o\) # (\A[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & ((\B[14]~input_o\) # (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \blk6_c1|Cout~0_combout\);

-- Location: LCCOMB_X39_Y1_N16
\blk6_c0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blk6_c0|Cout~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\B[14]~input_o\ & \A[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\B[14]~input_o\ & \A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \blk6_c0|Cout~0_combout\);

-- Location: LCCOMB_X39_Y1_N2
\Csel~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Csel~7_combout\ = (\Csel[5]~6_combout\ & (\blk6_c1|Cout~0_combout\)) # (!\Csel[5]~6_combout\ & ((\blk6_c0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c1|Cout~0_combout\,
	datac => \Csel[5]~6_combout\,
	datad => \blk6_c0|Cout~0_combout\,
	combout => \Csel~7_combout\);

-- Location: LCCOMB_X39_Y1_N20
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\Csel[5]~6_combout\ & (!\blk6_c1|Cout~0_combout\)) # (!\Csel[5]~6_combout\ & ((\blk6_c0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blk6_c1|Cout~0_combout\,
	datac => \Csel[5]~6_combout\,
	datad => \blk6_c0|Cout~0_combout\,
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


