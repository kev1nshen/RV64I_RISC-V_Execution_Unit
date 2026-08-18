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

-- DATE "04/08/2026 12:36:27"

-- 
-- Device: Altera EP2AGX45DF29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
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
-- S[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \Csel[1]~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \blk2_c0|Cout~0_combout\ : std_logic;
SIGNAL \blk2_c1|Cout~0_combout\ : std_logic;
SIGNAL \Csel[2]~1_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \blk3_c1|Cout~0_combout\ : std_logic;
SIGNAL \blk3_c0|Cout~0_combout\ : std_logic;
SIGNAL \Csel[3]~2_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \blk4_c1|C[2]~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \blk4_c0|C[2]~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \blk4_c0|Cout~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \blk4_c1|Cout~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \blk5_c1|C[2]~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \blk5_c0|C[2]~0_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \blk5_c1|Cout~0_combout\ : std_logic;
SIGNAL \blk5_c0|Cout~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \Csel[5]~3_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \blk6_c0|Cout~0_combout\ : std_logic;
SIGNAL \blk6_c1|Cout~0_combout\ : std_logic;
SIGNAL \Csel~4_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \blk0|S\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \blk5_c1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \blk5_c0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \blk4_c1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk4_c0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk5_c1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk5_c0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk6_c0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk6_c1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Csel[5]~3_combout\ : std_logic;
SIGNAL \blk5_c0|ALT_INV_S\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \blk5_c1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \blk5_c0|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \blk5_c1|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \blk4_c0|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \blk4_c1|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Csel[3]~2_combout\ : std_logic;
SIGNAL \blk3_c0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk3_c1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Csel[2]~1_combout\ : std_logic;
SIGNAL \blk2_c0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk2_c1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Csel[1]~0_combout\ : std_logic;

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
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\blk4_c1|ALT_INV_Cout~0_combout\ <= NOT \blk4_c1|Cout~0_combout\;
\blk4_c0|ALT_INV_Cout~0_combout\ <= NOT \blk4_c0|Cout~0_combout\;
\blk5_c1|ALT_INV_Cout~0_combout\ <= NOT \blk5_c1|Cout~0_combout\;
\blk5_c0|ALT_INV_Cout~0_combout\ <= NOT \blk5_c0|Cout~0_combout\;
\blk6_c0|ALT_INV_Cout~0_combout\ <= NOT \blk6_c0|Cout~0_combout\;
\blk6_c1|ALT_INV_Cout~0_combout\ <= NOT \blk6_c1|Cout~0_combout\;
\ALT_INV_Csel[5]~3_combout\ <= NOT \Csel[5]~3_combout\;
\blk5_c0|ALT_INV_S\(3) <= NOT \blk5_c0|S\(3);
\blk5_c1|ALT_INV_S\(3) <= NOT \blk5_c1|S\(3);
\blk5_c0|ALT_INV_C[2]~0_combout\ <= NOT \blk5_c0|C[2]~0_combout\;
\blk5_c1|ALT_INV_C[2]~0_combout\ <= NOT \blk5_c1|C[2]~0_combout\;
\blk4_c0|ALT_INV_C[2]~0_combout\ <= NOT \blk4_c0|C[2]~0_combout\;
\blk4_c1|ALT_INV_C[2]~0_combout\ <= NOT \blk4_c1|C[2]~0_combout\;
\ALT_INV_Csel[3]~2_combout\ <= NOT \Csel[3]~2_combout\;
\blk3_c0|ALT_INV_Cout~0_combout\ <= NOT \blk3_c0|Cout~0_combout\;
\blk3_c1|ALT_INV_Cout~0_combout\ <= NOT \blk3_c1|Cout~0_combout\;
\ALT_INV_Csel[2]~1_combout\ <= NOT \Csel[2]~1_combout\;
\blk2_c0|ALT_INV_Cout~0_combout\ <= NOT \blk2_c0|Cout~0_combout\;
\blk2_c1|ALT_INV_Cout~0_combout\ <= NOT \blk2_c1|Cout~0_combout\;
\ALT_INV_Csel[1]~0_combout\ <= NOT \Csel[1]~0_combout\;

-- Location: IOOBUF_X55_Y0_N5
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk0|S\(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X48_Y0_N5
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N36
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X41_Y0_N5
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X47_Y0_N67
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X43_Y0_N67
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X59_Y7_N36
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X59_Y10_N98
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X59_Y13_N67
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X59_Y12_N98
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X59_Y12_N36
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X59_Y13_N36
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X59_Y13_N98
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Csel~4_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y12_N67
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X54_Y0_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X54_Y0_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X55_Y0_N63
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: MLABCELL_X54_Y1_N20
\blk0|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \blk0|S\(0) = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( \Cin~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( !\Cin~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( !\Cin~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( 
-- \Cin~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \blk0|S\(0));

-- Location: IOIBUF_X54_Y0_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X55_Y0_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X54_Y1_N26
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (\A[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\Cin~input_o\ $ (\A[1]~input_o\)) ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( 
-- !\B[1]~input_o\ $ (!\Cin~input_o\ $ (\A[1]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010110101010010101011010101001011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S~0_combout\);

-- Location: MLABCELL_X54_Y1_N30
\Csel[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Csel[1]~0_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( (\B[1]~input_o\) # (\A[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & (\Cin~input_o\ & \B[1]~input_o\)) # (\A[1]~input_o\ & ((\B[1]~input_o\) # 
-- (\Cin~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\A[1]~input_o\ & (\Cin~input_o\ & \B[1]~input_o\)) # (\A[1]~input_o\ & ((\B[1]~input_o\) # (\Cin~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( (\A[1]~input_o\ & 
-- \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000100010111011100010001011101110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Csel[1]~0_combout\);

-- Location: IOIBUF_X45_Y0_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N94
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X49_Y4_N4
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \A[2]~input_o\ & ( !\Csel[1]~0_combout\ $ (\B[2]~input_o\) ) ) # ( !\A[2]~input_o\ & ( !\Csel[1]~0_combout\ $ (!\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Csel[1]~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X52_Y0_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X49_Y4_N28
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \B[2]~input_o\ & ( \Csel[1]~0_combout\ & ( !\B[3]~input_o\ $ (\A[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \Csel[1]~0_combout\ & ( !\B[3]~input_o\ $ (!\A[2]~input_o\ $ (\A[3]~input_o\)) ) ) ) # ( \B[2]~input_o\ & ( !\Csel[1]~0_combout\ 
-- & ( !\B[3]~input_o\ $ (!\A[2]~input_o\ $ (\A[3]~input_o\)) ) ) ) # ( !\B[2]~input_o\ & ( !\Csel[1]~0_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010011010010110100101101001011010011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_Csel[1]~0_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X50_Y0_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X50_Y0_N63
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X49_Y4_N34
\blk2_c0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk2_c0|Cout~0_combout\ = ( \B[3]~input_o\ & ( ((\A[2]~input_o\ & \B[2]~input_o\)) # (\A[3]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (\A[3]~input_o\ & (\A[2]~input_o\ & \B[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \blk2_c0|Cout~0_combout\);

-- Location: MLABCELL_X49_Y4_N32
\blk2_c1|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk2_c1|Cout~0_combout\ = ( \B[3]~input_o\ & ( (!\A[3]~input_o\ & (!\A[2]~input_o\ & !\B[2]~input_o\)) ) ) # ( !\B[3]~input_o\ & ( (!\A[3]~input_o\) # ((!\A[2]~input_o\ & !\B[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010101010111011101010101010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \blk2_c1|Cout~0_combout\);

-- Location: MLABCELL_X49_Y4_N38
\Csel[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Csel[2]~1_combout\ = ( \Csel[1]~0_combout\ & ( !\blk2_c1|Cout~0_combout\ ) ) # ( !\Csel[1]~0_combout\ & ( \blk2_c0|Cout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \blk2_c0|ALT_INV_Cout~0_combout\,
	datad => \blk2_c1|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_Csel[1]~0_combout\,
	combout => \Csel[2]~1_combout\);

-- Location: MLABCELL_X49_Y4_N2
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \Csel[2]~1_combout\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) ) # ( !\Csel[2]~1_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Csel[2]~1_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X43_Y0_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X48_Y0_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X49_Y4_N0
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \Csel[2]~1_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\B[4]~input_o\) # (\A[4]~input_o\)))) ) ) # ( !\Csel[2]~1_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\A[4]~input_o\ & \B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_Csel[2]~1_combout\,
	combout => \S~4_combout\);

-- Location: MLABCELL_X49_Y4_N24
\blk3_c1|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk3_c1|Cout~0_combout\ = ( \B[4]~input_o\ & ( (!\A[5]~input_o\ & !\B[5]~input_o\) ) ) # ( !\B[4]~input_o\ & ( (!\A[5]~input_o\ & ((!\A[4]~input_o\) # (!\B[5]~input_o\))) # (\A[5]~input_o\ & (!\A[4]~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \blk3_c1|Cout~0_combout\);

-- Location: MLABCELL_X49_Y4_N26
\blk3_c0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk3_c0|Cout~0_combout\ = ( \B[4]~input_o\ & ( (!\A[4]~input_o\ & (\A[5]~input_o\ & \B[5]~input_o\)) # (\A[4]~input_o\ & ((\B[5]~input_o\) # (\A[5]~input_o\))) ) ) # ( !\B[4]~input_o\ & ( (\A[5]~input_o\ & \B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \blk3_c0|Cout~0_combout\);

-- Location: MLABCELL_X49_Y4_N10
\Csel[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Csel[3]~2_combout\ = ( \Csel[1]~0_combout\ & ( (!\blk2_c1|Cout~0_combout\ & (!\blk3_c1|Cout~0_combout\)) # (\blk2_c1|Cout~0_combout\ & ((\blk3_c0|Cout~0_combout\))) ) ) # ( !\Csel[1]~0_combout\ & ( (!\blk2_c0|Cout~0_combout\ & 
-- ((\blk3_c0|Cout~0_combout\))) # (\blk2_c0|Cout~0_combout\ & (!\blk3_c1|Cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000011111010101010001011100010111000101110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk3_c1|ALT_INV_Cout~0_combout\,
	datab => \blk2_c1|ALT_INV_Cout~0_combout\,
	datac => \blk3_c0|ALT_INV_Cout~0_combout\,
	datad => \blk2_c0|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_Csel[1]~0_combout\,
	combout => \Csel[3]~2_combout\);

-- Location: IOIBUF_X47_Y0_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X55_Y0_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X49_Y4_N8
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \B[6]~input_o\ & ( !\Csel[3]~2_combout\ $ (\A[6]~input_o\) ) ) # ( !\B[6]~input_o\ & ( !\Csel[3]~2_combout\ $ (!\A[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Csel[3]~2_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X52_Y0_N63
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X49_Y4_N6
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \B[6]~input_o\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\A[6]~input_o\) # (\Csel[3]~2_combout\)))) ) ) # ( !\B[6]~input_o\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\Csel[3]~2_combout\ & \A[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Csel[3]~2_combout\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \S~6_combout\);

-- Location: MLABCELL_X49_Y4_N14
\blk4_c1|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c1|C[2]~0_combout\ = ( \B[6]~input_o\ & ( (\A[7]~input_o\) # (\B[7]~input_o\) ) ) # ( !\B[6]~input_o\ & ( (!\B[7]~input_o\ & (\A[6]~input_o\ & \A[7]~input_o\)) # (\B[7]~input_o\ & ((\A[7]~input_o\) # (\A[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \blk4_c1|C[2]~0_combout\);

-- Location: IOIBUF_X48_Y0_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: MLABCELL_X49_Y4_N12
\blk4_c0|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c0|C[2]~0_combout\ = ( \B[6]~input_o\ & ( (!\B[7]~input_o\ & (\A[6]~input_o\ & \A[7]~input_o\)) # (\B[7]~input_o\ & ((\A[7]~input_o\) # (\A[6]~input_o\))) ) ) # ( !\B[6]~input_o\ & ( (\B[7]~input_o\ & \A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \blk4_c0|C[2]~0_combout\);

-- Location: IOIBUF_X50_Y0_N1
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X49_Y4_N36
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \A[8]~input_o\ & ( !\B[8]~input_o\ $ (((!\Csel[3]~2_combout\ & ((\blk4_c0|C[2]~0_combout\))) # (\Csel[3]~2_combout\ & (\blk4_c1|C[2]~0_combout\)))) ) ) # ( !\A[8]~input_o\ & ( !\B[8]~input_o\ $ (((!\Csel[3]~2_combout\ & 
-- ((!\blk4_c0|C[2]~0_combout\))) # (\Csel[3]~2_combout\ & (!\blk4_c1|C[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011000110001101101100011011001001001110011100100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|ALT_INV_C[2]~0_combout\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_Csel[3]~2_combout\,
	datad => \blk4_c0|ALT_INV_C[2]~0_combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X48_Y0_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X52_Y0_N94
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: MLABCELL_X49_Y4_N20
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( !\Csel[3]~2_combout\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (((!\B[8]~input_o\ & (\blk4_c0|C[2]~0_combout\ & \A[8]~input_o\)) # (\B[8]~input_o\ & ((\A[8]~input_o\) # (\blk4_c0|C[2]~0_combout\)))))) ) ) # ( \Csel[3]~2_combout\ & ( 
-- !\A[9]~input_o\ $ (!\B[9]~input_o\ $ (((!\B[8]~input_o\ & (\blk4_c1|C[2]~0_combout\ & \A[8]~input_o\)) # (\B[8]~input_o\ & ((\A[8]~input_o\) # (\blk4_c1|C[2]~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \blk4_c1|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_B[9]~input_o\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	datag => \blk4_c0|ALT_INV_C[2]~0_combout\,
	combout => \S~23_combout\);

-- Location: MLABCELL_X49_Y4_N18
\blk4_c0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c0|Cout~0_combout\ = ( \B[9]~input_o\ & ( ((!\A[8]~input_o\ & (\B[8]~input_o\ & \blk4_c0|C[2]~0_combout\)) # (\A[8]~input_o\ & ((\blk4_c0|C[2]~0_combout\) # (\B[8]~input_o\)))) # (\A[9]~input_o\) ) ) # ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & 
-- ((!\A[8]~input_o\ & (\B[8]~input_o\ & \blk4_c0|C[2]~0_combout\)) # (\A[8]~input_o\ & ((\blk4_c0|C[2]~0_combout\) # (\B[8]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \blk4_c0|ALT_INV_C[2]~0_combout\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \blk4_c0|Cout~0_combout\);

-- Location: IOIBUF_X59_Y7_N94
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X49_Y4_N16
\blk4_c1|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c1|Cout~0_combout\ = ( \B[9]~input_o\ & ( ((!\A[8]~input_o\ & (\B[8]~input_o\ & \blk4_c1|C[2]~0_combout\)) # (\A[8]~input_o\ & ((\blk4_c1|C[2]~0_combout\) # (\B[8]~input_o\)))) # (\A[9]~input_o\) ) ) # ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & 
-- ((!\A[8]~input_o\ & (\B[8]~input_o\ & \blk4_c1|C[2]~0_combout\)) # (\A[8]~input_o\ & ((\blk4_c1|C[2]~0_combout\) # (\B[8]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \blk4_c1|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \blk4_c1|Cout~0_combout\);

-- Location: IOIBUF_X59_Y9_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X58_Y9_N34
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \A[10]~input_o\ & ( !\B[10]~input_o\ $ (((!\Csel[3]~2_combout\ & (\blk4_c0|Cout~0_combout\)) # (\Csel[3]~2_combout\ & ((\blk4_c1|Cout~0_combout\))))) ) ) # ( !\A[10]~input_o\ & ( !\B[10]~input_o\ $ (((!\Csel[3]~2_combout\ & 
-- (!\blk4_c0|Cout~0_combout\)) # (\Csel[3]~2_combout\ & ((!\blk4_c1|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110101111000001011010111100011010010100001111101001010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Csel[3]~2_combout\,
	datab => \blk4_c0|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \blk4_c1|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X59_Y6_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y6_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X58_Y9_N8
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( !\Csel[3]~2_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (((!\A[10]~input_o\ & (\blk4_c0|Cout~0_combout\ & \B[10]~input_o\)) # (\A[10]~input_o\ & ((\B[10]~input_o\) # (\blk4_c0|Cout~0_combout\)))))) ) ) # ( \Csel[3]~2_combout\ & 
-- ( !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (((!\A[10]~input_o\ & (\blk4_c1|Cout~0_combout\ & \B[10]~input_o\)) # (\A[10]~input_o\ & ((\B[10]~input_o\) # (\blk4_c1|Cout~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011001101100001101100110110011001001100100111100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \blk4_c1|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	datag => \blk4_c0|ALT_INV_Cout~0_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X59_Y6_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X58_Y9_N36
\blk5_c1|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|C[2]~0_combout\ = ( \A[11]~input_o\ & ( ((\B[11]~input_o\) # (\B[10]~input_o\)) # (\A[10]~input_o\) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & ((\B[10]~input_o\) # (\A[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011101110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \blk5_c1|C[2]~0_combout\);

-- Location: IOIBUF_X59_Y6_N1
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X58_Y9_N38
\blk5_c0|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|C[2]~0_combout\ = ( \A[11]~input_o\ & ( ((\A[10]~input_o\ & \B[10]~input_o\)) # (\B[11]~input_o\) ) ) # ( !\A[11]~input_o\ & ( (\A[10]~input_o\ & (\B[10]~input_o\ & \B[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \blk5_c0|C[2]~0_combout\);

-- Location: LABCELL_X58_Y9_N4
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( !\Csel[3]~2_combout\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\ $ (((!\blk4_c0|Cout~0_combout\ & ((\blk5_c0|C[2]~0_combout\))) # (\blk4_c0|Cout~0_combout\ & (\blk5_c1|C[2]~0_combout\))))) ) ) # ( \Csel[3]~2_combout\ & ( !\B[12]~input_o\ $ 
-- (!\A[12]~input_o\ $ (((!\blk4_c1|Cout~0_combout\ & ((\blk5_c0|C[2]~0_combout\))) # (\blk4_c1|Cout~0_combout\ & (\blk5_c1|C[2]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011010101001010101101010100110100110010110011010011001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \blk5_c1|ALT_INV_C[2]~0_combout\,
	datac => \blk4_c1|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \blk5_c0|ALT_INV_C[2]~0_combout\,
	datag => \blk4_c0|ALT_INV_Cout~0_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X59_Y9_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LABCELL_X58_Y9_N22
\blk5_c0|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|S\(3) = ( \B[13]~input_o\ & ( !\A[13]~input_o\ $ (((!\B[12]~input_o\ & (\A[12]~input_o\ & \blk5_c0|C[2]~0_combout\)) # (\B[12]~input_o\ & ((\blk5_c0|C[2]~0_combout\) # (\A[12]~input_o\))))) ) ) # ( !\B[13]~input_o\ & ( !\A[13]~input_o\ $ 
-- (((!\B[12]~input_o\ & ((!\A[12]~input_o\) # (!\blk5_c0|C[2]~0_combout\))) # (\B[12]~input_o\ & (!\A[12]~input_o\ & !\blk5_c0|C[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100001101100110110011001001100100111100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \blk5_c0|ALT_INV_C[2]~0_combout\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \blk5_c0|S\(3));

-- Location: LABCELL_X58_Y9_N20
\blk5_c1|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|S\(3) = ( \B[13]~input_o\ & ( !\A[13]~input_o\ $ (((!\B[12]~input_o\ & (\A[12]~input_o\ & \blk5_c1|C[2]~0_combout\)) # (\B[12]~input_o\ & ((\blk5_c1|C[2]~0_combout\) # (\A[12]~input_o\))))) ) ) # ( !\B[13]~input_o\ & ( !\A[13]~input_o\ $ 
-- (((!\B[12]~input_o\ & ((!\A[12]~input_o\) # (!\blk5_c1|C[2]~0_combout\))) # (\B[12]~input_o\ & (!\A[12]~input_o\ & !\blk5_c1|C[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100001101100110110011001001100100111100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \blk5_c1|ALT_INV_C[2]~0_combout\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \blk5_c1|S\(3));

-- Location: LABCELL_X58_Y9_N32
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \blk5_c1|S\(3) & ( ((!\Csel[3]~2_combout\ & (\blk4_c0|Cout~0_combout\)) # (\Csel[3]~2_combout\ & ((\blk4_c1|Cout~0_combout\)))) # (\blk5_c0|S\(3)) ) ) # ( !\blk5_c1|S\(3) & ( (\blk5_c0|S\(3) & ((!\Csel[3]~2_combout\ & 
-- (!\blk4_c0|Cout~0_combout\)) # (\Csel[3]~2_combout\ & ((!\blk4_c1|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011000000000001101100000100111111111110010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Csel[3]~2_combout\,
	datab => \blk4_c0|ALT_INV_Cout~0_combout\,
	datac => \blk4_c1|ALT_INV_Cout~0_combout\,
	datad => \blk5_c0|ALT_INV_S\(3),
	dataf => \blk5_c1|ALT_INV_S\(3),
	combout => \S~9_combout\);

-- Location: LABCELL_X58_Y9_N18
\blk5_c1|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|Cout~0_combout\ = ( \B[13]~input_o\ & ( ((!\B[12]~input_o\ & (\blk5_c1|C[2]~0_combout\ & \A[12]~input_o\)) # (\B[12]~input_o\ & ((\A[12]~input_o\) # (\blk5_c1|C[2]~0_combout\)))) # (\A[13]~input_o\) ) ) # ( !\B[13]~input_o\ & ( (\A[13]~input_o\ & 
-- ((!\B[12]~input_o\ & (\blk5_c1|C[2]~0_combout\ & \A[12]~input_o\)) # (\B[12]~input_o\ & ((\A[12]~input_o\) # (\blk5_c1|C[2]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100110111011111110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \blk5_c1|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \blk5_c1|Cout~0_combout\);

-- Location: LABCELL_X58_Y9_N16
\blk5_c0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|Cout~0_combout\ = ( \B[13]~input_o\ & ( ((!\B[12]~input_o\ & (\blk5_c0|C[2]~0_combout\ & \A[12]~input_o\)) # (\B[12]~input_o\ & ((\A[12]~input_o\) # (\blk5_c0|C[2]~0_combout\)))) # (\A[13]~input_o\) ) ) # ( !\B[13]~input_o\ & ( (\A[13]~input_o\ & 
-- ((!\B[12]~input_o\ & (\blk5_c0|C[2]~0_combout\ & \A[12]~input_o\)) # (\B[12]~input_o\ & ((\A[12]~input_o\) # (\blk5_c0|C[2]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100110111011111110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \blk5_c0|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \blk5_c0|Cout~0_combout\);

-- Location: IOIBUF_X59_Y10_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X58_Y9_N0
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( !\Csel[3]~2_combout\ & ( !\B[14]~input_o\ $ (!\A[14]~input_o\ $ (((!\blk4_c0|Cout~0_combout\ & ((\blk5_c0|Cout~0_combout\))) # (\blk4_c0|Cout~0_combout\ & (\blk5_c1|Cout~0_combout\))))) ) ) # ( \Csel[3]~2_combout\ & ( !\B[14]~input_o\ $ 
-- (!\A[14]~input_o\ $ (((!\blk4_c1|Cout~0_combout\ & ((\blk5_c0|Cout~0_combout\))) # (\blk4_c1|Cout~0_combout\ & (\blk5_c1|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011010111001010001101011100101011001010001101011100101000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|ALT_INV_Cout~0_combout\,
	datab => \blk5_c0|ALT_INV_Cout~0_combout\,
	datac => \blk4_c1|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	datag => \blk4_c0|ALT_INV_Cout~0_combout\,
	combout => \S~11_combout\);

-- Location: LABCELL_X58_Y9_N24
\Csel[5]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Csel[5]~3_combout\ = ( \blk5_c0|Cout~0_combout\ & ( ((!\Csel[3]~2_combout\ & (!\blk4_c0|Cout~0_combout\)) # (\Csel[3]~2_combout\ & ((!\blk4_c1|Cout~0_combout\)))) # (\blk5_c1|Cout~0_combout\) ) ) # ( !\blk5_c0|Cout~0_combout\ & ( 
-- (\blk5_c1|Cout~0_combout\ & ((!\Csel[3]~2_combout\ & (\blk4_c0|Cout~0_combout\)) # (\Csel[3]~2_combout\ & ((\blk4_c1|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010111011101111101011101110111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|ALT_INV_Cout~0_combout\,
	datab => \blk4_c0|ALT_INV_Cout~0_combout\,
	datac => \blk4_c1|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_Csel[3]~2_combout\,
	dataf => \blk5_c0|ALT_INV_Cout~0_combout\,
	combout => \Csel[5]~3_combout\);

-- Location: IOIBUF_X59_Y9_N32
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X59_Y10_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X58_Y9_N28
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \A[14]~input_o\ & ( !\B[15]~input_o\ $ (!\A[15]~input_o\ $ (((\B[14]~input_o\) # (\Csel[5]~3_combout\)))) ) ) # ( !\A[14]~input_o\ & ( !\B[15]~input_o\ $ (!\A[15]~input_o\ $ (((\Csel[5]~3_combout\ & \B[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Csel[5]~3_combout\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \S~10_combout\);

-- Location: LABCELL_X58_Y9_N14
\blk6_c0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk6_c0|Cout~0_combout\ = (!\B[15]~input_o\ & (\A[14]~input_o\ & (\B[14]~input_o\ & \A[15]~input_o\))) # (\B[15]~input_o\ & (((\A[14]~input_o\ & \B[14]~input_o\)) # (\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	combout => \blk6_c0|Cout~0_combout\);

-- Location: LABCELL_X58_Y9_N12
\blk6_c1|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk6_c1|Cout~0_combout\ = ( \B[15]~input_o\ & ( (!\B[14]~input_o\ & (!\A[14]~input_o\ & !\A[15]~input_o\)) ) ) # ( !\B[15]~input_o\ & ( (!\A[15]~input_o\) # ((!\B[14]~input_o\ & !\A[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \blk6_c1|Cout~0_combout\);

-- Location: LABCELL_X58_Y9_N26
\Csel~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Csel~4_combout\ = ( \Csel[5]~3_combout\ & ( !\blk6_c1|Cout~0_combout\ ) ) # ( !\Csel[5]~3_combout\ & ( \blk6_c0|Cout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \blk6_c0|ALT_INV_Cout~0_combout\,
	datad => \blk6_c1|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_Csel[5]~3_combout\,
	combout => \Csel~4_combout\);

-- Location: LABCELL_X58_Y9_N30
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \blk6_c0|Cout~0_combout\ & ( (!\Csel[5]~3_combout\) # (\blk6_c1|Cout~0_combout\) ) ) # ( !\blk6_c0|Cout~0_combout\ & ( (\Csel[5]~3_combout\ & \blk6_c1|Cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Csel[5]~3_combout\,
	datad => \blk6_c1|ALT_INV_Cout~0_combout\,
	dataf => \blk6_c0|ALT_INV_Cout~0_combout\,
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


