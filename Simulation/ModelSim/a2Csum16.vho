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

-- DATE "04/08/2026 13:29:47"

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
-- S[0]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[4]~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[5]~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[6]~2_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[7]~3_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|Cout~combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|base_case:base|C~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \S_int~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~1_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \S_int~2_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~3_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|S[4]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper0|S[4]~0_combout\ : std_logic;
SIGNAL \S_int~4_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \S_int~5_combout\ : std_logic;
SIGNAL \S_int~6_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ : std_logic;
SIGNAL \S_int~7_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~8_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ : std_logic;
SIGNAL \cout_int~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S\ : std_logic_vector(0 DOWNTO 0);
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
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~5_combout\ : std_logic;
SIGNAL \ALT_INV_S_int~8_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~4_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~3_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_S_int~5_combout\ : std_logic;
SIGNAL \recursive_case:upper0|ALT_INV_S[4]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|ALT_INV_S[4]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|ALT_INV_S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|ALT_INV_S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|base_case:base|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;

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
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
\recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~5_combout\ <= NOT \recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\;
\ALT_INV_S_int~8_combout\ <= NOT \S_int~8_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[1]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[1]~0_combout\;
\recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~4_combout\ <= NOT \recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\;
\recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~3_combout\ <= NOT \recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\;
\recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~2_combout\ <= NOT \recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\;
\recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~1_combout\ <= NOT \recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\;
\recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[1]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\;
\recursive_case:upper1|recursive_case:upper1|ALT_INV_S[2]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\;
\ALT_INV_S_int~5_combout\ <= NOT \S_int~5_combout\;
\recursive_case:upper0|ALT_INV_S[4]~0_combout\ <= NOT \recursive_case:upper0|S[4]~0_combout\;
\recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~1_combout\ <= NOT \recursive_case:upper0|recursive_case:lower|Cout~1_combout\;
\recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper0|recursive_case:lower|Cout~0_combout\;
\recursive_case:upper1|ALT_INV_S[4]~0_combout\ <= NOT \recursive_case:upper1|S[4]~0_combout\;
\recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~1_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|Cout~1_combout\;
\recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|Cout~0_combout\;
\recursive_case:upper0|recursive_case:lower|ALT_INV_S[3]~1_combout\ <= NOT \recursive_case:upper0|recursive_case:lower|S[3]~1_combout\;
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|ALT_INV_S[1]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\;
\recursive_case:upper0|recursive_case:lower|ALT_INV_S[2]~0_combout\ <= NOT \recursive_case:upper0|recursive_case:lower|S[2]~0_combout\;
\recursive_case:upper1|recursive_case:lower|ALT_INV_S[2]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|S[2]~0_combout\;
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_S[1]~0_combout\ <= NOT \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[1]~0_combout\;
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_S[1]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~1_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|base_case:base|ALT_INV_C~0_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|base_case:base|C~0_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|ALT_INV_Cout~combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|Cout~combout\;
\recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~0_combout\ <= NOT \recursive_case:lower|recursive_case:upper0|S[3]~0_combout\;
\recursive_case:lower|recursive_case:upper1|ALT_INV_S[2]~0_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|S[2]~0_combout\;
\recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:lower|recursive_case:lower|Cout~0_combout\;
\recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\;

-- Location: IOOBUF_X59_Y4_N2
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S\(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X59_Y4_N98
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N33
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X59_Y10_N2
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[3]~1_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X59_Y10_N98
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[4]~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X59_Y9_N67
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[5]~1_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X59_Y4_N67
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[6]~2_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X59_Y12_N2
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[7]~3_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X59_Y46_N98
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~0_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X59_Y39_N33
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~1_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~2_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X59_Y46_N2
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~3_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X59_Y51_N5
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~4_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X59_Y48_N2
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~6_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X53_Y56_N36
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~7_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X55_Y56_N67
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~8_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X56_Y56_N95
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cout_int~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X56_Y56_N64
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X59_Y9_N1
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y6_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X58_Y7_N2
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S\(0) = ( \A[0]~input_o\ & ( !\Cin~input_o\ $ (\B[0]~input_o\) ) ) # ( !\A[0]~input_o\ & ( !\Cin~input_o\ $ (!\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S\(0));

-- Location: IOIBUF_X59_Y10_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y7_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X58_Y7_N0
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (((\B[0]~input_o\) # (\Cin~input_o\)))) ) ) # ( !\A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ 
-- (((\Cin~input_o\ & \B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: IOIBUF_X55_Y0_N32
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X58_Y7_N6
\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\) # (\Cin~input_o\)) # 
-- (\A[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & (\Cin~input_o\ & \B[0]~input_o\))) # (\B[1]~input_o\ & (((\Cin~input_o\ & \B[0]~input_o\)) # (\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LABCELL_X58_Y7_N4
\recursive_case:lower|recursive_case:lower|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[2]~0_combout\ = ( \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\A[2]~input_o\ $ (\B[2]~input_o\) ) ) # ( 
-- !\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[2]~0_combout\);

-- Location: IOIBUF_X59_Y4_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y7_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X58_Y7_N28
\recursive_case:lower|recursive_case:lower|S[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[3]~1_combout\ = ( \B[3]~input_o\ & ( !\A[3]~input_o\ $ (((!\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[2]~input_o\ & \A[2]~input_o\)) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))))) ) ) # ( !\B[3]~input_o\ & ( !\A[3]~input_o\ $ (((!\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((!\B[2]~input_o\) # (!\A[2]~input_o\))) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (!\B[2]~input_o\ & !\A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X59_Y7_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X58_Y7_N30
\recursive_case:lower|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|Cout~0_combout\ = ( \A[2]~input_o\ & ( (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\B[2]~input_o\) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))) # (\A[3]~input_o\ & 
-- (((\B[3]~input_o\) # (\B[2]~input_o\)) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) ) ) # ( !\A[2]~input_o\ & ( (!\A[3]~input_o\ & (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- (\B[2]~input_o\ & \B[3]~input_o\))) # (\A[3]~input_o\ & (((\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \B[2]~input_o\)) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X59_Y6_N63
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X58_Y7_N12
\recursive_case:lower|S[4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[4]~0_combout\ = !\A[4]~input_o\ $ (!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	combout => \recursive_case:lower|S[4]~0_combout\);

-- Location: IOIBUF_X59_Y9_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X59_Y10_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X58_Y7_N14
\recursive_case:lower|S[5]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[5]~1_combout\ = ( \B[5]~input_o\ & ( !\A[5]~input_o\ $ (((!\A[4]~input_o\ & (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \B[4]~input_o\)) # (\A[4]~input_o\ & ((\B[4]~input_o\) # 
-- (\recursive_case:lower|recursive_case:lower|Cout~0_combout\))))) ) ) # ( !\B[5]~input_o\ & ( !\A[5]~input_o\ $ (((!\A[4]~input_o\ & ((!\recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (!\B[4]~input_o\))) # (\A[4]~input_o\ & 
-- (!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & !\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \recursive_case:lower|S[5]~1_combout\);

-- Location: IOIBUF_X59_Y6_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X59_Y7_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X58_Y7_N38
\recursive_case:lower|recursive_case:upper1|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ = ( \A[6]~input_o\ & ( !\B[6]~input_o\ ) ) # ( !\A[6]~input_o\ & ( \B[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|S[2]~0_combout\);

-- Location: LABCELL_X58_Y7_N20
\recursive_case:lower|S[6]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[6]~2_combout\ = ( \A[4]~input_o\ & ( \B[5]~input_o\ & ( !\recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ $ (((!\B[4]~input_o\ & (!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & !\A[5]~input_o\)))) ) ) ) # 
-- ( !\A[4]~input_o\ & ( \B[5]~input_o\ & ( !\recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ $ (((!\A[5]~input_o\ & ((!\B[4]~input_o\) # (!\recursive_case:lower|recursive_case:lower|Cout~0_combout\))))) ) ) ) # ( \A[4]~input_o\ & ( 
-- !\B[5]~input_o\ & ( !\recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ $ (((!\A[5]~input_o\) # ((!\B[4]~input_o\ & !\recursive_case:lower|recursive_case:lower|Cout~0_combout\)))) ) ) ) # ( !\A[4]~input_o\ & ( !\B[5]~input_o\ & ( 
-- !\recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ $ (((!\B[4]~input_o\) # ((!\recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (!\A[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000011110111100000011110111100000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|ALT_INV_S[2]~0_combout\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \recursive_case:lower|S[6]~2_combout\);

-- Location: IOIBUF_X59_Y36_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X58_Y7_N36
\recursive_case:lower|recursive_case:upper0|S[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ = ( \B[5]~input_o\ & ( ((!\A[4]~input_o\ & (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \B[4]~input_o\)) # (\A[4]~input_o\ & ((\B[4]~input_o\) # 
-- (\recursive_case:lower|recursive_case:lower|Cout~0_combout\)))) # (\A[5]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & ((!\A[4]~input_o\ & (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \B[4]~input_o\)) # (\A[4]~input_o\ & 
-- ((\B[4]~input_o\) # (\recursive_case:lower|recursive_case:lower|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|S[3]~0_combout\);

-- Location: IOIBUF_X59_Y37_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X58_Y7_N26
\recursive_case:lower|S[7]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[7]~3_combout\ = ( \recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & ( \A[7]~input_o\ & ( !\B[7]~input_o\ $ (((\A[6]~input_o\) # (\B[6]~input_o\))) ) ) ) # ( !\recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & 
-- ( \A[7]~input_o\ & ( !\B[7]~input_o\ $ (((\B[6]~input_o\ & \A[6]~input_o\))) ) ) ) # ( \recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & ( !\A[7]~input_o\ & ( !\B[7]~input_o\ $ (((!\B[6]~input_o\ & !\A[6]~input_o\))) ) ) ) # ( 
-- !\recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & ( !\A[7]~input_o\ & ( !\B[7]~input_o\ $ (((!\B[6]~input_o\) # (!\A[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110011001101010101010101010100110011001100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~0_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \recursive_case:lower|S[7]~3_combout\);

-- Location: IOIBUF_X59_Y48_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X58_Y7_N8
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|Cout\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|Cout~combout\ = (!\A[6]~input_o\ & !\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|Cout~combout\);

-- Location: LABCELL_X58_Y7_N34
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ = ( \A[4]~input_o\ & ( \B[5]~input_o\ & ( (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|Cout~combout\ & 
-- (((\A[5]~input_o\) # (\recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (\B[4]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( \B[5]~input_o\ & ( 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|Cout~combout\ & (((\B[4]~input_o\ & \recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (\A[5]~input_o\))) ) ) ) # ( \A[4]~input_o\ & ( 
-- !\B[5]~input_o\ & ( (\A[5]~input_o\ & (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|Cout~combout\ & ((\recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (\B[4]~input_o\)))) ) ) ) # ( 
-- !\A[4]~input_o\ & ( !\B[5]~input_o\ & ( (\B[4]~input_o\ & (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\A[5]~input_o\ & 
-- !\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|Cout~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000001110000000000011111000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|base_case:base|ALT_INV_Cout~combout\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\);

-- Location: LABCELL_X58_Y7_N10
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|base_case:base|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|base_case:base|C~0_combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|base_case:base|C~0_combout\);

-- Location: LABCELL_X58_Y7_N18
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\ = ( !\A[5]~input_o\ & ( \B[5]~input_o\ & ( (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|base_case:base|C~0_combout\ & 
-- ((!\A[4]~input_o\ & ((!\recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (!\B[4]~input_o\))) # (\A[4]~input_o\ & (!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & !\B[4]~input_o\)))) ) ) ) # ( \A[5]~input_o\ & ( !\B[5]~input_o\ & 
-- ( (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|base_case:base|C~0_combout\ & ((!\A[4]~input_o\ & ((!\recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (!\B[4]~input_o\))) # (\A[4]~input_o\ & 
-- (!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & !\B[4]~input_o\)))) ) ) ) # ( !\A[5]~input_o\ & ( !\B[5]~input_o\ & ( \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|base_case:base|C~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011100000100000001110000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|recursive_case:lower|base_case:base|ALT_INV_C~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\);

-- Location: IOIBUF_X59_Y49_N94
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X58_Y46_N0
\S_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~0_combout\ = ( \A[7]~input_o\ & ( \A[8]~input_o\ & ( !\B[8]~input_o\ $ ((((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\) # (\B[7]~input_o\)) # 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\))) ) ) ) # ( !\A[7]~input_o\ & ( \A[8]~input_o\ & ( !\B[8]~input_o\ $ (((\B[7]~input_o\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\) # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\))))) ) ) ) # ( \A[7]~input_o\ & ( !\A[8]~input_o\ & ( !\B[8]~input_o\ $ 
-- (((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & (!\B[7]~input_o\ & !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[8]~input_o\ & ( 
-- !\B[8]~input_o\ $ (((!\B[7]~input_o\) # ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001011010011010101010101010101001101001011001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~1_combout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \S_int~0_combout\);

-- Location: IOIBUF_X59_Y46_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X59_Y49_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X58_Y46_N4
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = ( \A[8]~input_o\ & ( !\A[9]~input_o\ $ (\B[9]~input_o\) ) ) # ( !\A[8]~input_o\ & ( !\B[8]~input_o\ $ (!\A[9]~input_o\ $ (\B[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LABCELL_X58_Y46_N6
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = ( \A[8]~input_o\ & ( !\B[8]~input_o\ $ (!\A[9]~input_o\ $ (\B[9]~input_o\)) ) ) # ( !\A[8]~input_o\ & ( !\A[9]~input_o\ $ (!\B[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LABCELL_X58_Y46_N30
\S_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~1_combout\ = ( \A[7]~input_o\ & ( \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ & ( ((!\B[7]~input_o\ & (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & 
-- !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\))) # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\) ) ) ) # ( !\A[7]~input_o\ & ( 
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ & ( (!\B[7]~input_o\) # (((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & 
-- !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\)) # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\)) ) ) ) # ( \A[7]~input_o\ & ( 
-- !\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ & ( (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ & (((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\) 
-- # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\)) # (\B[7]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ & ( (\B[7]~input_o\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\) # 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000111111111101010111111111000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~1_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_S[1]~0_combout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_S[1]~0_combout\,
	combout => \S_int~1_combout\);

-- Location: IOIBUF_X59_Y49_N1
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X58_Y46_N12
\recursive_case:upper1|recursive_case:lower|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ = ( \B[9]~input_o\ & ( \A[8]~input_o\ & ( !\A[10]~input_o\ $ (\B[10]~input_o\) ) ) ) # ( !\B[9]~input_o\ & ( \A[8]~input_o\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (\A[9]~input_o\)) ) ) ) # ( 
-- \B[9]~input_o\ & ( !\A[8]~input_o\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (((\A[9]~input_o\) # (\B[8]~input_o\)))) ) ) ) # ( !\B[9]~input_o\ & ( !\A[8]~input_o\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (((\B[8]~input_o\ & \A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100101100110100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|S[2]~0_combout\);

-- Location: LABCELL_X58_Y46_N38
\recursive_case:upper0|recursive_case:lower|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|S[2]~0_combout\ = ( \B[9]~input_o\ & ( \A[8]~input_o\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (((\B[8]~input_o\) # (\A[9]~input_o\)))) ) ) ) # ( !\B[9]~input_o\ & ( \A[8]~input_o\ & ( !\A[10]~input_o\ $ 
-- (!\B[10]~input_o\ $ (((\A[9]~input_o\ & \B[8]~input_o\)))) ) ) ) # ( \B[9]~input_o\ & ( !\A[8]~input_o\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (\A[9]~input_o\)) ) ) ) # ( !\B[9]~input_o\ & ( !\A[8]~input_o\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011010010110100101100110011010010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|S[2]~0_combout\);

-- Location: LABCELL_X58_Y46_N22
\S_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~2_combout\ = ( \A[7]~input_o\ & ( \B[7]~input_o\ & ( \recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ ) ) ) # ( !\A[7]~input_o\ & ( \B[7]~input_o\ & ( (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\ & 
-- ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ((\recursive_case:upper0|recursive_case:lower|S[2]~0_combout\))) # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & 
-- (\recursive_case:upper1|recursive_case:lower|S[2]~0_combout\)))) # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\ & (\recursive_case:upper1|recursive_case:lower|S[2]~0_combout\)) ) ) ) # ( \A[7]~input_o\ & ( 
-- !\B[7]~input_o\ & ( (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\ & ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & 
-- ((\recursive_case:upper0|recursive_case:lower|S[2]~0_combout\))) # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|S[2]~0_combout\)))) # 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\ & (\recursive_case:upper1|recursive_case:lower|S[2]~0_combout\)) ) ) ) # ( !\A[7]~input_o\ & ( !\B[7]~input_o\ & ( 
-- \recursive_case:upper0|recursive_case:lower|S[2]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000101011101010100010101110101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|ALT_INV_S[2]~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~1_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	datad => \recursive_case:upper0|recursive_case:lower|ALT_INV_S[2]~0_combout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \S_int~2_combout\);

-- Location: LABCELL_X58_Y46_N26
\recursive_case:upper0|recursive_case:lower|S[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ = ( \A[7]~input_o\ & ( \A[8]~input_o\ & ( (!\B[8]~input_o\ & (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\ & !\B[7]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \A[8]~input_o\ & ( (!\B[8]~input_o\ & ((!\B[7]~input_o\) # 
-- ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[8]~input_o\) # 
-- ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\ & !\B[7]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[8]~input_o\ & ( 
-- (!\B[8]~input_o\) # ((!\B[7]~input_o\) # ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101010111010101010101010101010100000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~1_combout\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X59_Y48_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y48_N94
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X58_Y48_N2
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = ( !\B[11]~input_o\ & ( \A[11]~input_o\ ) ) # ( \B[11]~input_o\ & ( !\A[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LABCELL_X58_Y46_N10
\S_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~3_combout\ = ( \A[9]~input_o\ & ( \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ & ( (!\B[10]~input_o\ & ((!\A[10]~input_o\) # ((!\B[9]~input_o\ & \recursive_case:upper0|recursive_case:lower|S[3]~1_combout\)))) # 
-- (\B[10]~input_o\ & (!\B[9]~input_o\ & (\recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ & !\A[10]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ & ( (!\B[10]~input_o\ 
-- & ((!\B[9]~input_o\) # ((!\A[10]~input_o\) # (\recursive_case:upper0|recursive_case:lower|S[3]~1_combout\)))) # (\B[10]~input_o\ & (!\A[10]~input_o\ & ((!\B[9]~input_o\) # (\recursive_case:upper0|recursive_case:lower|S[3]~1_combout\)))) ) ) ) # ( 
-- \A[9]~input_o\ & ( !\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ & ( (!\B[10]~input_o\ & (\A[10]~input_o\ & ((!\recursive_case:upper0|recursive_case:lower|S[3]~1_combout\) # (\B[9]~input_o\)))) # (\B[10]~input_o\ & 
-- (((!\recursive_case:upper0|recursive_case:lower|S[3]~1_combout\) # (\A[10]~input_o\)) # (\B[9]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( !\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ & ( (!\B[10]~input_o\ & 
-- (\B[9]~input_o\ & (!\recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ & \A[10]~input_o\))) # (\B[10]~input_o\ & (((\B[9]~input_o\ & !\recursive_case:upper0|recursive_case:lower|S[3]~1_combout\)) # (\A[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001111000011011101111111111011101100001111001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \recursive_case:upper0|recursive_case:lower|ALT_INV_S[3]~1_combout\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|ALT_INV_S[1]~0_combout\,
	combout => \S_int~3_combout\);

-- Location: IOIBUF_X59_Y51_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X58_Y46_N34
\recursive_case:upper1|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = ( \B[9]~input_o\ & ( \A[8]~input_o\ & ( (!\A[10]~input_o\ & !\B[10]~input_o\) ) ) ) # ( !\B[9]~input_o\ & ( \A[8]~input_o\ & ( (!\A[10]~input_o\ & ((!\B[10]~input_o\) # (!\A[9]~input_o\))) # 
-- (\A[10]~input_o\ & (!\B[10]~input_o\ & !\A[9]~input_o\)) ) ) ) # ( \B[9]~input_o\ & ( !\A[8]~input_o\ & ( (!\A[10]~input_o\ & ((!\B[10]~input_o\) # ((!\A[9]~input_o\ & !\B[8]~input_o\)))) # (\A[10]~input_o\ & (!\B[10]~input_o\ & (!\A[9]~input_o\ & 
-- !\B[8]~input_o\))) ) ) ) # ( !\B[9]~input_o\ & ( !\A[8]~input_o\ & ( (!\A[10]~input_o\ & ((!\B[10]~input_o\) # ((!\A[9]~input_o\) # (!\B[8]~input_o\)))) # (\A[10]~input_o\ & (!\B[10]~input_o\ & ((!\A[9]~input_o\) # (!\B[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000111010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LABCELL_X58_Y48_N4
\recursive_case:upper1|recursive_case:lower|Cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = ( \A[11]~input_o\ & ( (!\recursive_case:upper1|recursive_case:lower|Cout~0_combout\) # (\B[11]~input_o\) ) ) # ( !\A[11]~input_o\ & ( 
-- (!\recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & \B[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: LABCELL_X58_Y48_N30
\recursive_case:upper1|S[4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|S[4]~0_combout\ = !\B[12]~input_o\ $ (!\A[12]~input_o\ $ (\recursive_case:upper1|recursive_case:lower|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~1_combout\,
	combout => \recursive_case:upper1|S[4]~0_combout\);

-- Location: LABCELL_X58_Y46_N18
\recursive_case:upper0|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = ( \B[9]~input_o\ & ( \A[8]~input_o\ & ( (!\A[10]~input_o\ & (\B[10]~input_o\ & ((\B[8]~input_o\) # (\A[9]~input_o\)))) # (\A[10]~input_o\ & (((\B[8]~input_o\) # (\A[9]~input_o\)) # 
-- (\B[10]~input_o\))) ) ) ) # ( !\B[9]~input_o\ & ( \A[8]~input_o\ & ( (!\A[10]~input_o\ & (\B[10]~input_o\ & (\A[9]~input_o\ & \B[8]~input_o\))) # (\A[10]~input_o\ & (((\A[9]~input_o\ & \B[8]~input_o\)) # (\B[10]~input_o\))) ) ) ) # ( \B[9]~input_o\ & ( 
-- !\A[8]~input_o\ & ( (!\A[10]~input_o\ & (\B[10]~input_o\ & \A[9]~input_o\)) # (\A[10]~input_o\ & ((\A[9]~input_o\) # (\B[10]~input_o\))) ) ) ) # ( !\B[9]~input_o\ & ( !\A[8]~input_o\ & ( (\A[10]~input_o\ & \B[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101110001011100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LABCELL_X58_Y48_N12
\recursive_case:upper0|recursive_case:lower|Cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = ( \B[11]~input_o\ & ( \A[11]~input_o\ ) ) # ( !\B[11]~input_o\ & ( \A[11]~input_o\ & ( \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ ) ) ) # ( \B[11]~input_o\ & ( !\A[11]~input_o\ 
-- & ( \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datae => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LABCELL_X58_Y48_N28
\recursive_case:upper0|S[4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|S[4]~0_combout\ = ( \recursive_case:upper0|recursive_case:lower|Cout~1_combout\ & ( !\B[12]~input_o\ $ (\A[12]~input_o\) ) ) # ( !\recursive_case:upper0|recursive_case:lower|Cout~1_combout\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	dataf => \recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~1_combout\,
	combout => \recursive_case:upper0|S[4]~0_combout\);

-- Location: LABCELL_X58_Y48_N38
\S_int~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~4_combout\ = ( \recursive_case:upper1|S[4]~0_combout\ & ( \recursive_case:upper0|S[4]~0_combout\ ) ) # ( !\recursive_case:upper1|S[4]~0_combout\ & ( \recursive_case:upper0|S[4]~0_combout\ & ( (!\B[7]~input_o\ & ((!\A[7]~input_o\) # 
-- ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\)))) # (\B[7]~input_o\ & 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\ & !\A[7]~input_o\))) ) ) ) # ( \recursive_case:upper1|S[4]~0_combout\ & ( 
-- !\recursive_case:upper0|S[4]~0_combout\ & ( (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\) # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\)))) 
-- # (\B[7]~input_o\ & (((\A[7]~input_o\) # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\)) # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101010111111111101010100000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~1_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \recursive_case:upper1|ALT_INV_S[4]~0_combout\,
	dataf => \recursive_case:upper0|ALT_INV_S[4]~0_combout\,
	combout => \S_int~4_combout\);

-- Location: IOIBUF_X59_Y51_N94
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y51_N63
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X58_Y48_N36
\S_int~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~5_combout\ = ( \recursive_case:upper1|recursive_case:lower|Cout~1_combout\ & ( \recursive_case:upper0|recursive_case:lower|Cout~1_combout\ ) ) # ( !\recursive_case:upper1|recursive_case:lower|Cout~1_combout\ & ( 
-- \recursive_case:upper0|recursive_case:lower|Cout~1_combout\ & ( (!\B[7]~input_o\ & ((!\A[7]~input_o\) # ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & 
-- !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\)))) # (\B[7]~input_o\ & (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & (!\A[7]~input_o\ & 
-- !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\))) ) ) ) # ( \recursive_case:upper1|recursive_case:lower|Cout~1_combout\ & ( !\recursive_case:upper0|recursive_case:lower|Cout~1_combout\ & ( (!\B[7]~input_o\ & 
-- (\A[7]~input_o\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\) # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\)))) # (\B[7]~input_o\ & 
-- (((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\) # (\A[7]~input_o\)) # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110101111111101000101000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~1_combout\,
	datae => \recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~1_combout\,
	dataf => \recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~1_combout\,
	combout => \S_int~5_combout\);

-- Location: LABCELL_X58_Y48_N6
\S_int~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~6_combout\ = ( \S_int~5_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\A[12]~input_o\) # (\B[12]~input_o\)))) ) ) # ( !\S_int~5_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\B[12]~input_o\ & \A[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_S_int~5_combout\,
	combout => \S_int~6_combout\);

-- Location: IOIBUF_X55_Y56_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X55_Y56_N94
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X55_Y52_N20
\recursive_case:upper1|recursive_case:upper1|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ = ( \A[14]~input_o\ & ( !\B[14]~input_o\ ) ) # ( !\A[14]~input_o\ & ( \B[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\);

-- Location: LABCELL_X55_Y52_N24
\S_int~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~7_combout\ = ( \S_int~5_combout\ & ( \B[13]~input_o\ & ( !\recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ $ (((!\B[12]~input_o\ & (!\A[12]~input_o\ & !\A[13]~input_o\)))) ) ) ) # ( !\S_int~5_combout\ & ( \B[13]~input_o\ & ( 
-- !\recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ $ (((!\A[13]~input_o\ & ((!\B[12]~input_o\) # (!\A[12]~input_o\))))) ) ) ) # ( \S_int~5_combout\ & ( !\B[13]~input_o\ & ( !\recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ $ 
-- (((!\A[13]~input_o\) # ((!\B[12]~input_o\ & !\A[12]~input_o\)))) ) ) ) # ( !\S_int~5_combout\ & ( !\B[13]~input_o\ & ( !\recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ $ (((!\B[12]~input_o\) # ((!\A[12]~input_o\) # (!\A[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000011110111100000011110111100000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \recursive_case:upper1|recursive_case:upper1|ALT_INV_S[2]~0_combout\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_S_int~5_combout\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \S_int~7_combout\);

-- Location: LABCELL_X58_Y48_N20
\recursive_case:upper1|recursive_case:upper0|S[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ = ( \B[12]~input_o\ & ( \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ( (\B[11]~input_o\) # (\A[11]~input_o\) ) ) ) # ( !\B[12]~input_o\ & ( 
-- \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ( (\A[12]~input_o\ & ((\B[11]~input_o\) # (\A[11]~input_o\))) ) ) ) # ( \B[12]~input_o\ & ( !\recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ( (\A[12]~input_o\ & 
-- ((!\A[11]~input_o\) # (!\B[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000101000000101000011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\);

-- Location: LABCELL_X58_Y48_N26
\recursive_case:upper1|recursive_case:upper0|S[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ = ( !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\ & \recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\)) ) ) ) # ( \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( 
-- !\B[7]~input_o\ & ( (!\A[7]~input_o\ & \recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\) ) ) ) # ( !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( !\B[7]~input_o\ & ( 
-- (\recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ & ((!\A[7]~input_o\) # (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001010101000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~1_combout\,
	datad => \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~0_combout\,
	datae => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\);

-- Location: IOIBUF_X51_Y56_N94
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X55_Y56_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X55_Y52_N10
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[1]~0_combout\ = ( \B[15]~input_o\ & ( !\A[15]~input_o\ $ (((\A[14]~input_o\ & \B[14]~input_o\))) ) ) # ( !\B[15]~input_o\ & ( !\A[15]~input_o\ $ (((!\A[14]~input_o\) # 
-- (!\B[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111011101110000100011110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[1]~0_combout\);

-- Location: LABCELL_X58_Y48_N10
\recursive_case:upper1|recursive_case:upper0|S[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ = ( \A[11]~input_o\ & ( (!\B[12]~input_o\ & (\B[11]~input_o\ & \A[12]~input_o\)) # (\B[12]~input_o\ & ((\A[12]~input_o\) # (\B[11]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[12]~input_o\ & 
-- \A[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\);

-- Location: LABCELL_X58_Y48_N8
\recursive_case:upper1|recursive_case:upper0|S[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ = ( \A[11]~input_o\ & ( (!\B[12]~input_o\ & (((!\recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & \A[12]~input_o\)))) # (\B[12]~input_o\ & 
-- ((!\recursive_case:upper1|recursive_case:lower|Cout~0_combout\) # ((!\B[11]~input_o\ & \A[12]~input_o\)))) ) ) # ( !\A[11]~input_o\ & ( (!\recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & (\B[11]~input_o\ & ((\A[12]~input_o\) # 
-- (\B[12]~input_o\)))) # (\recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & (\B[12]~input_o\ & ((\A[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110101000100000011010101010000111101000101000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\);

-- Location: LABCELL_X58_Y48_N34
\recursive_case:upper1|recursive_case:upper0|S[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ = ( \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( \A[7]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ & 
-- !\recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\) ) ) ) # ( !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( \A[7]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ & 
-- ((!\recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\) # ((!\B[7]~input_o\ & !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\)))) ) ) ) # ( 
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( !\A[7]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ & ((!\B[7]~input_o\) # 
-- (!\recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\))) ) ) ) # ( !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( !\A[7]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ & 
-- ((!\B[7]~input_o\) # ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~1_combout\) # (!\recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001010000011110000100000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~1_combout\,
	datac => \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~3_combout\,
	datad => \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~2_combout\,
	datae => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\);

-- Location: LABCELL_X55_Y52_N8
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ = ( \B[15]~input_o\ & ( !\A[15]~input_o\ $ (((\B[14]~input_o\) # (\A[14]~input_o\))) ) ) # ( !\B[15]~input_o\ & ( !\A[15]~input_o\ $ (((!\A[14]~input_o\ & 
-- !\B[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100010000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\);

-- Location: LABCELL_X55_Y52_N12
\S_int~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~8_combout\ = ( \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ & ( \B[13]~input_o\ & ( (((!\recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\) # (\A[13]~input_o\)) # 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[1]~0_combout\)) # (\recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\) ) ) ) # ( !\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ & ( 
-- \B[13]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[1]~0_combout\ & (\recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ & !\A[13]~input_o\))) 
-- ) ) ) # ( \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ & ( !\B[13]~input_o\ & ( ((\A[13]~input_o\ & ((!\recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\) # 
-- (\recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\)))) # (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[1]~0_combout\) ) ) ) # ( !\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ & ( 
-- !\B[13]~input_o\ & ( (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[1]~0_combout\ & ((!\A[13]~input_o\) # ((!\recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & 
-- \recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000010001100111111011100000010000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~1_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[1]~0_combout\,
	datac => \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~4_combout\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[1]~0_combout\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \S_int~8_combout\);

-- Location: LABCELL_X55_Y52_N16
\recursive_case:upper1|recursive_case:upper0|S[3]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ = ( !\recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & ( \B[13]~input_o\ & ( (\recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ & !\A[13]~input_o\) ) ) ) # ( 
-- \recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & ( !\B[13]~input_o\ & ( !\A[13]~input_o\ ) ) ) # ( !\recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & ( !\B[13]~input_o\ & ( (!\A[13]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~4_combout\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~1_combout\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\);

-- Location: LABCELL_X55_Y52_N2
\cout_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \cout_int~0_combout\ = ( \A[15]~input_o\ & ( \B[14]~input_o\ & ( ((!\recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\) # (\B[15]~input_o\)) # (\A[14]~input_o\) ) ) ) # ( !\A[15]~input_o\ & ( \B[14]~input_o\ & ( (\B[15]~input_o\ & 
-- ((!\recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\) # (\A[14]~input_o\))) ) ) ) # ( \A[15]~input_o\ & ( !\B[14]~input_o\ & ( ((\A[14]~input_o\ & !\recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\)) # (\B[15]~input_o\) ) ) ) # ( 
-- !\A[15]~input_o\ & ( !\B[14]~input_o\ & ( (\A[14]~input_o\ & (\B[15]~input_o\ & !\recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000011100110111001100110001001100011111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~5_combout\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \cout_int~0_combout\);

-- Location: LABCELL_X55_Y52_N4
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \A[15]~input_o\ & ( \B[15]~input_o\ & ( \S_int~8_combout\ ) ) ) # ( !\A[15]~input_o\ & ( \B[15]~input_o\ ) ) # ( \A[15]~input_o\ & ( !\B[15]~input_o\ ) ) # ( !\A[15]~input_o\ & ( !\B[15]~input_o\ & ( !\S_int~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_S_int~8_combout\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
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


