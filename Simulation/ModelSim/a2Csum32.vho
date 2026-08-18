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

-- DATE "04/08/2026 13:29:05"

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
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(31 DOWNTO 0);
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(31 DOWNTO 0);
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
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[24]~output_o\ : std_logic;
SIGNAL \S[25]~output_o\ : std_logic;
SIGNAL \S[26]~output_o\ : std_logic;
SIGNAL \S[27]~output_o\ : std_logic;
SIGNAL \S[28]~output_o\ : std_logic;
SIGNAL \S[29]~output_o\ : std_logic;
SIGNAL \S[30]~output_o\ : std_logic;
SIGNAL \S[31]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[4]~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[5]~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[6]~2_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|C~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|Cout~combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[7]~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[8]~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[9]~1_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[10]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[11]~3_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[12]~8_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[13]~4_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[13]~5_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[14]~6_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[15]~7_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|Cout~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|Cout~3_combout\ : std_logic;
SIGNAL \S_int~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \S_int~1_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \S_int~2_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \S_int~3_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \S_int~4_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \S_int~5_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \S_int~6_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \S_int~7_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \S_int~8_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \S_int~9_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \S_int~10_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \S_int~11_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \S_int~12_combout\ : std_logic;
SIGNAL \recursive_case:upper0|S[11]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~13_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \S_int~14_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \S_int~15_combout\ : std_logic;
SIGNAL \S_int~16_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ : std_logic;
SIGNAL \S_int~17_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \S_int~18_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ : std_logic;
SIGNAL \cout_int~0_combout\ : std_logic;
SIGNAL \Ovfl~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
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
SIGNAL \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_Ovfl~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_S_int~18_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~3_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_S_int~15_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|ALT_INV_S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|ALT_INV_S[11]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|ALT_INV_S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_S_int~10_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|ALT_INV_S[7]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_S_int~5_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|ALT_INV_Cout~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|ALT_INV_Cout~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~4_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|ALT_INV_S[13]~4_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_S[2]~0_combout\ : std_logic;

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
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
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
\recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:lower|recursive_case:lower|Cout~0_combout\;
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\;
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~2_combout\ <= NOT \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~2_combout\;
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~1_combout\ <= NOT \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\;
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|ALT_INV_C~0_combout\ <= NOT \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|C~0_combout\;
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~0_combout\ <= NOT \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\;
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|ALT_INV_Cout~combout\ <= NOT \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|Cout~combout\;
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|ALT_INV_S[2]~0_combout\ <= NOT \recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\;
\recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\;
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\;
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
\ALT_INV_Ovfl~1_combout\ <= NOT \Ovfl~1_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~4_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\;
\ALT_INV_S_int~18_combout\ <= NOT \S_int~18_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~3_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~2_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~1_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\;
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[2]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\;
\ALT_INV_S_int~15_combout\ <= NOT \S_int~15_combout\;
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~1_combout\ <= NOT \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\;
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~1_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\;
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|ALT_INV_S[3]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\;
\recursive_case:upper0|ALT_INV_S[11]~0_combout\ <= NOT \recursive_case:upper0|S[11]~0_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|ALT_INV_S[1]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\;
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\;
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\;
\ALT_INV_S_int~10_combout\ <= NOT \S_int~10_combout\;
\recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper0|recursive_case:lower|Cout~0_combout\;
\recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|Cout~0_combout\;
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\;
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\;
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\;
\recursive_case:upper0|recursive_case:lower|ALT_INV_S[7]~0_combout\ <= NOT \recursive_case:upper0|recursive_case:lower|S[7]~0_combout\;
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[1]~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\;
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\;
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\;
\ALT_INV_S_int~5_combout\ <= NOT \S_int~5_combout\;
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\;
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\;
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_S[3]~0_combout\ <= NOT \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\;
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\;
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\;
\recursive_case:lower|ALT_INV_Cout~3_combout\ <= NOT \recursive_case:lower|Cout~3_combout\;
\recursive_case:lower|ALT_INV_Cout~2_combout\ <= NOT \recursive_case:lower|Cout~2_combout\;
\recursive_case:lower|ALT_INV_Cout~1_combout\ <= NOT \recursive_case:lower|Cout~1_combout\;
\recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:lower|Cout~0_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~4_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~3_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~2_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~1_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~0_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[2]~0_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\;
\recursive_case:lower|ALT_INV_S[13]~4_combout\ <= NOT \recursive_case:lower|S[13]~4_combout\;
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\;
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_S[3]~0_combout\ <= NOT \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\;
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_S[2]~0_combout\ <= NOT \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\;

-- Location: IOOBUF_X59_Y4_N98
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S\(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X59_Y4_N2
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X50_Y0_N67
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X59_Y4_N67
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[4]~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X48_Y0_N5
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[5]~1_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N67
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[6]~2_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X50_Y0_N98
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[7]~3_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X41_Y0_N33
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[8]~0_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[9]~1_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X41_Y0_N5
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[10]~2_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X41_Y0_N67
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[11]~3_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X37_Y0_N98
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[12]~8_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X40_Y56_N5
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[13]~5_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X36_Y56_N36
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[14]~6_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X40_Y56_N33
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[15]~7_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~0_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X51_Y56_N2
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~1_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X46_Y56_N67
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~2_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X49_Y56_N2
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~3_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X49_Y56_N36
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~4_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X56_Y56_N95
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~6_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X48_Y56_N5
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~7_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X59_Y51_N98
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~8_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~9_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X59_Y51_N33
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~11_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X59_Y36_N98
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~12_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X55_Y56_N33
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~13_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X53_Y56_N36
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~14_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~16_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X59_Y39_N67
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~17_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X59_Y39_N98
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~18_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X59_Y46_N98
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

-- Location: IOOBUF_X59_Y48_N2
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~1_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X56_Y0_N94
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

-- Location: IOIBUF_X55_Y0_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: MLABCELL_X52_Y4_N0
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S\(0) = !\B[0]~input_o\ $ (!\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S\(0));

-- Location: IOIBUF_X54_Y0_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X48_Y0_N94
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: MLABCELL_X52_Y4_N2
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # 
-- (\A[0]~input_o\))))) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\B[0]~input_o\ & ((!\A[0]~input_o\) # (!\Cin~input_o\))) # (\B[0]~input_o\ & (!\A[0]~input_o\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: IOIBUF_X52_Y0_N32
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X52_Y4_N24
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\Cin~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\Cin~input_o\) # 
-- (\B[0]~input_o\)) # (\A[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ & \Cin~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \Cin~input_o\)) # (\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X55_Y0_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: MLABCELL_X52_Y4_N26
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ = ( \B[2]~input_o\ & ( !\A[2]~input_o\ $ (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\) ) ) # ( !\B[2]~input_o\ & ( 
-- !\A[2]~input_o\ $ (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\);

-- Location: IOIBUF_X54_Y0_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X52_Y4_N28
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ = ( \B[2]~input_o\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\A[2]~input_o\) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))) ) ) # ( !\B[2]~input_o\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ 
-- (((\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X50_Y0_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X52_Y4_N30
\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = ( \B[2]~input_o\ & ( (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\A[2]~input_o\) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))) # (\A[3]~input_o\ & (((\A[2]~input_o\) # (\B[3]~input_o\)) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) ) ) # ( !\B[2]~input_o\ & ( (!\A[3]~input_o\ & (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- (\B[3]~input_o\ & \A[2]~input_o\))) # (\A[3]~input_o\ & (((\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \A[2]~input_o\)) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X55_Y0_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: MLABCELL_X52_Y4_N12
\recursive_case:lower|recursive_case:lower|S[4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[4]~0_combout\ = !\B[4]~input_o\ $ (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ $ (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[4]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[4]~0_combout\);

-- Location: IOIBUF_X56_Y0_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X59_Y4_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X52_Y4_N14
\recursive_case:lower|recursive_case:lower|S[5]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[5]~1_combout\ = ( \A[5]~input_o\ & ( !\B[5]~input_o\ $ (((!\B[4]~input_o\ & (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \A[4]~input_o\)) # (\B[4]~input_o\ & 
-- ((\A[4]~input_o\) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))) ) ) # ( !\A[5]~input_o\ & ( !\B[5]~input_o\ $ (((!\B[4]~input_o\ & 
-- ((!\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (!\A[4]~input_o\))) # (\B[4]~input_o\ & (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & !\A[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[5]~1_combout\);

-- Location: IOIBUF_X50_Y0_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X52_Y4_N16
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ = ( \A[6]~input_o\ & ( !\B[6]~input_o\ ) ) # ( !\A[6]~input_o\ & ( \B[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\);

-- Location: MLABCELL_X52_Y4_N22
\recursive_case:lower|recursive_case:lower|S[6]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[6]~2_combout\ = ( \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( \A[5]~input_o\ & ( !\recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ $ 
-- (((!\B[5]~input_o\ & (!\A[4]~input_o\ & !\B[4]~input_o\)))) ) ) ) # ( !\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( \A[5]~input_o\ & ( !\recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ 
-- $ (((!\B[5]~input_o\ & ((!\A[4]~input_o\) # (!\B[4]~input_o\))))) ) ) ) # ( \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\A[5]~input_o\ & ( 
-- !\recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ $ (((!\B[5]~input_o\) # ((!\A[4]~input_o\ & !\B[4]~input_o\)))) ) ) ) # ( !\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( 
-- !\A[5]~input_o\ & ( !\recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ $ (((!\B[5]~input_o\) # ((!\A[4]~input_o\) # (!\B[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001101100110011001100110011011000110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|ALT_INV_S[2]~0_combout\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[6]~2_combout\);

-- Location: IOIBUF_X48_Y0_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X43_Y0_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X52_Y4_N6
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|C~0_combout\ = (\B[4]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|C~0_combout\);

-- Location: MLABCELL_X52_Y4_N32
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|C~0_combout\ & (!\B[3]~input_o\ & !\A[3]~input_o\)) ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|C~0_combout\ & ((!\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((!\B[3]~input_o\) # (!\A[3]~input_o\))) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (!\B[3]~input_o\ & !\A[3]~input_o\)))) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|C~0_combout\ & ((!\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((!\B[3]~input_o\) # (!\A[3]~input_o\))) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (!\B[3]~input_o\ & !\A[3]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|C~0_combout\ & ((!\B[3]~input_o\) # (!\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100100010000000110010001000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|base_case:base|ALT_INV_C~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\);

-- Location: MLABCELL_X52_Y4_N4
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|Cout\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|Cout~combout\ = (!\B[4]~input_o\ & !\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|Cout~combout\);

-- Location: MLABCELL_X52_Y4_N10
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|Cout~combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|Cout~combout\ & ((!\B[3]~input_o\ & (\A[3]~input_o\ & 
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (\B[3]~input_o\ & ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (\A[3]~input_o\))))) ) ) ) 
-- # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|Cout~combout\ & ((!\B[3]~input_o\ & (\A[3]~input_o\ & 
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (\B[3]~input_o\ & ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (\A[3]~input_o\))))) ) ) ) 
-- # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\ & (\A[3]~input_o\ & !\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|Cout~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000111000000010000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|base_case:base|ALT_INV_Cout~combout\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\);

-- Location: MLABCELL_X52_Y4_N18
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~2_combout\ = ( \A[5]~input_o\ & ( (!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ & 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & !\B[5]~input_o\)) ) ) # ( !\A[5]~input_o\ & ( (!\B[5]~input_o\) # ((!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ & 
-- !\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111111111010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~1_combout\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~0_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~2_combout\);

-- Location: MLABCELL_X49_Y3_N2
\recursive_case:lower|recursive_case:lower|S[7]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[7]~3_combout\ = ( \A[6]~input_o\ & ( \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~2_combout\ & ( !\B[6]~input_o\ $ (!\B[7]~input_o\ $ (\A[7]~input_o\)) ) ) ) # ( !\A[6]~input_o\ & ( 
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~2_combout\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\) ) ) ) # ( \A[6]~input_o\ & ( !\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~2_combout\ & ( !\B[7]~input_o\ $ 
-- (\A[7]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( !\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~2_combout\ & ( !\B[6]~input_o\ $ (!\B[7]~input_o\ $ (\A[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001110011000011001100110011110011000110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~2_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[7]~3_combout\);

-- Location: MLABCELL_X52_Y4_N36
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ = ( \B[5]~input_o\ & ( \A[5]~input_o\ & ( (!\A[6]~input_o\ & !\B[6]~input_o\) ) ) ) # ( !\B[5]~input_o\ & ( \A[5]~input_o\ & ( (!\A[6]~input_o\ & 
-- ((!\B[6]~input_o\) # ((!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & !\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\)))) # (\A[6]~input_o\ & 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & (!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ & !\B[6]~input_o\))) ) ) ) # ( \B[5]~input_o\ & ( !\A[5]~input_o\ & ( (!\A[6]~input_o\ 
-- & ((!\B[6]~input_o\) # ((!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & !\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\)))) # (\A[6]~input_o\ & 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & (!\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ & !\B[6]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( !\A[5]~input_o\ & ( 
-- (!\A[6]~input_o\) # (!\B[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111010101000000011101010100000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~0_combout\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~1_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\);

-- Location: MLABCELL_X39_Y4_N26
\recursive_case:lower|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|Cout~0_combout\ = ( \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( (\A[7]~input_o\ & \B[7]~input_o\) ) ) # ( 
-- !\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( (\B[7]~input_o\) # (\A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X39_Y0_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X39_Y0_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X39_Y4_N8
\recursive_case:lower|S[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[8]~0_combout\ = !\recursive_case:lower|recursive_case:lower|Cout~0_combout\ $ (!\B[8]~input_o\ $ (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	combout => \recursive_case:lower|S[8]~0_combout\);

-- Location: IOIBUF_X35_Y0_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X41_Y0_N94
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: MLABCELL_X39_Y4_N34
\recursive_case:lower|S[9]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[9]~1_combout\ = ( \B[9]~input_o\ & ( !\A[9]~input_o\ $ (((!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\A[8]~input_o\ & \B[8]~input_o\)) # (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((\B[8]~input_o\) # (\A[8]~input_o\))))) ) ) # ( !\B[9]~input_o\ & ( !\A[9]~input_o\ $ (((!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((!\A[8]~input_o\) # (!\B[8]~input_o\))) # (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ 
-- & (!\A[8]~input_o\ & !\B[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101010101001100101011010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \recursive_case:lower|S[9]~1_combout\);

-- Location: IOIBUF_X33_Y0_N32
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X39_Y0_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: MLABCELL_X39_Y4_N10
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ = !\B[10]~input_o\ $ (!\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\);

-- Location: MLABCELL_X39_Y4_N16
\recursive_case:lower|S[10]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[10]~2_combout\ = ( \recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( \B[9]~input_o\ & ( !\recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ $ (((!\B[8]~input_o\ & (!\A[8]~input_o\ & 
-- !\A[9]~input_o\)))) ) ) ) # ( !\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( \B[9]~input_o\ & ( !\recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ $ (((!\A[9]~input_o\ & ((!\B[8]~input_o\) # 
-- (!\A[8]~input_o\))))) ) ) ) # ( \recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\B[9]~input_o\ & ( !\recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ $ (((!\A[9]~input_o\) # ((!\B[8]~input_o\ & 
-- !\A[8]~input_o\)))) ) ) ) # ( !\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\B[9]~input_o\ & ( !\recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ $ (((!\B[8]~input_o\) # ((!\A[8]~input_o\) # 
-- (!\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000001111111100000011111111000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_S[2]~0_combout\,
	datae => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \recursive_case:lower|S[10]~2_combout\);

-- Location: MLABCELL_X39_Y4_N32
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ = ( \B[9]~input_o\ & ( ((!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\A[8]~input_o\ & \B[8]~input_o\)) # 
-- (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[8]~input_o\) # (\A[8]~input_o\)))) # (\A[9]~input_o\) ) ) # ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & ((!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\A[8]~input_o\ & 
-- \B[8]~input_o\)) # (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[8]~input_o\) # (\A[8]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\);

-- Location: IOIBUF_X35_Y0_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X39_Y0_N94
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X39_Y4_N24
\recursive_case:lower|S[11]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[11]~3_combout\ = ( \A[11]~input_o\ & ( !\B[11]~input_o\ $ (((!\B[10]~input_o\ & (\A[10]~input_o\ & \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\)) # (\B[10]~input_o\ & 
-- ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\) # (\A[10]~input_o\))))) ) ) # ( !\A[11]~input_o\ & ( !\B[11]~input_o\ $ (((!\B[10]~input_o\ & ((!\A[10]~input_o\) # 
-- (!\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\))) # (\B[10]~input_o\ & (!\A[10]~input_o\ & !\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_S[3]~0_combout\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \recursive_case:lower|S[11]~3_combout\);

-- Location: IOIBUF_X38_Y56_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: MLABCELL_X39_Y4_N20
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = ( \B[8]~input_o\ & ( \B[9]~input_o\ & ( (\A[10]~input_o\) # (\B[10]~input_o\) ) ) ) # ( !\B[8]~input_o\ & ( \B[9]~input_o\ & ( (!\B[10]~input_o\ & (\A[10]~input_o\ & 
-- ((\A[8]~input_o\) # (\A[9]~input_o\)))) # (\B[10]~input_o\ & (((\A[10]~input_o\) # (\A[8]~input_o\)) # (\A[9]~input_o\))) ) ) ) # ( \B[8]~input_o\ & ( !\B[9]~input_o\ & ( (!\A[9]~input_o\ & (\B[10]~input_o\ & \A[10]~input_o\)) # (\A[9]~input_o\ & 
-- ((\A[10]~input_o\) # (\B[10]~input_o\))) ) ) ) # ( !\B[8]~input_o\ & ( !\B[9]~input_o\ & ( (!\B[10]~input_o\ & (\A[9]~input_o\ & (\A[8]~input_o\ & \A[10]~input_o\))) # (\B[10]~input_o\ & (((\A[9]~input_o\ & \A[8]~input_o\)) # (\A[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000001010101111100000111011111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X40_Y56_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: MLABCELL_X39_Y4_N4
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = ( \B[8]~input_o\ & ( \B[9]~input_o\ & ( (!\B[10]~input_o\ & (\A[10]~input_o\ & ((\A[8]~input_o\) # (\A[9]~input_o\)))) # (\B[10]~input_o\ & (((\A[10]~input_o\) # 
-- (\A[8]~input_o\)) # (\A[9]~input_o\))) ) ) ) # ( !\B[8]~input_o\ & ( \B[9]~input_o\ & ( (!\A[9]~input_o\ & (\B[10]~input_o\ & \A[10]~input_o\)) # (\A[9]~input_o\ & ((\A[10]~input_o\) # (\B[10]~input_o\))) ) ) ) # ( \B[8]~input_o\ & ( !\B[9]~input_o\ & ( 
-- (!\B[10]~input_o\ & (\A[9]~input_o\ & (\A[8]~input_o\ & \A[10]~input_o\))) # (\B[10]~input_o\ & (((\A[9]~input_o\ & \A[8]~input_o\)) # (\A[10]~input_o\))) ) ) ) # ( !\B[8]~input_o\ & ( !\B[9]~input_o\ & ( (\B[10]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000010001111100000101010111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: MLABCELL_X39_Y4_N0
\recursive_case:lower|S[12]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[12]~8_combout\ = ( !\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\ $ (((!\B[11]~input_o\ & (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & 
-- \A[11]~input_o\)) # (\B[11]~input_o\ & ((\A[11]~input_o\) # (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\)))))) ) ) # ( \recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\B[12]~input_o\ $ (!\A[12]~input_o\ 
-- $ (((!\B[11]~input_o\ & (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & \A[11]~input_o\)) # (\B[11]~input_o\ & ((\A[11]~input_o\) # (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\)))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	datag => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:lower|S[12]~8_combout\);

-- Location: IOIBUF_X38_Y56_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X38_Y56_N32
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: MLABCELL_X39_Y4_N28
\recursive_case:lower|S[13]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[13]~4_combout\ = ( \A[11]~input_o\ & ( ((!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\)) # 
-- (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\)))) # (\B[11]~input_o\) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & 
-- ((!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\)) # (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001101110111001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datad => \recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \recursive_case:lower|S[13]~4_combout\);

-- Location: MLABCELL_X39_Y52_N22
\recursive_case:lower|S[13]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[13]~5_combout\ = ( \A[12]~input_o\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\recursive_case:lower|S[13]~4_combout\) # (\B[12]~input_o\)))) ) ) # ( !\A[12]~input_o\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\B[12]~input_o\ 
-- & \recursive_case:lower|S[13]~4_combout\)))) ) )

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
	datad => \recursive_case:lower|ALT_INV_S[13]~4_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \recursive_case:lower|S[13]~5_combout\);

-- Location: IOIBUF_X40_Y56_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X42_Y56_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: MLABCELL_X39_Y52_N26
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ = ( !\B[14]~input_o\ & ( \A[14]~input_o\ ) ) # ( \B[14]~input_o\ & ( !\A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\);

-- Location: MLABCELL_X39_Y52_N8
\recursive_case:lower|S[14]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[14]~6_combout\ = ( \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ & ( \A[12]~input_o\ & ( (!\A[13]~input_o\ & ((!\B[13]~input_o\) # ((!\recursive_case:lower|S[13]~4_combout\ & !\B[12]~input_o\)))) 
-- # (\A[13]~input_o\ & (!\recursive_case:lower|S[13]~4_combout\ & (!\B[12]~input_o\ & !\B[13]~input_o\))) ) ) ) # ( !\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ & ( \A[12]~input_o\ & ( (!\A[13]~input_o\ & 
-- (\B[13]~input_o\ & ((\B[12]~input_o\) # (\recursive_case:lower|S[13]~4_combout\)))) # (\A[13]~input_o\ & (((\B[13]~input_o\) # (\B[12]~input_o\)) # (\recursive_case:lower|S[13]~4_combout\))) ) ) ) # ( 
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ & ( !\A[12]~input_o\ & ( (!\A[13]~input_o\ & ((!\recursive_case:lower|S[13]~4_combout\) # ((!\B[12]~input_o\) # (!\B[13]~input_o\)))) # (\A[13]~input_o\ & (!\B[13]~input_o\ 
-- & ((!\recursive_case:lower|S[13]~4_combout\) # (!\B[12]~input_o\)))) ) ) ) # ( !\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ & ( !\A[12]~input_o\ & ( (!\A[13]~input_o\ & (\recursive_case:lower|S[13]~4_combout\ & 
-- (\B[12]~input_o\ & \B[13]~input_o\))) # (\A[13]~input_o\ & (((\recursive_case:lower|S[13]~4_combout\ & \B[12]~input_o\)) # (\B[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111111111101100100000010011011111111110110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|ALT_INV_S[13]~4_combout\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[2]~0_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \recursive_case:lower|S[14]~6_combout\);

-- Location: MLABCELL_X39_Y4_N30
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ = ( \A[11]~input_o\ & ( (!\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & (!\B[11]~input_o\ & (\A[12]~input_o\ & \B[12]~input_o\))) # 
-- (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & (((\B[12]~input_o\) # (\A[12]~input_o\)))) ) ) # ( !\A[11]~input_o\ & ( (!\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & 
-- (((\A[12]~input_o\ & \B[12]~input_o\)))) # (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & (\B[11]~input_o\ & ((\B[12]~input_o\) # (\A[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011011000000010001101100000101010111010000010101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\);

-- Location: MLABCELL_X39_Y4_N14
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ = ( \A[12]~input_o\ & ( ((\A[11]~input_o\ & \B[11]~input_o\)) # (\B[12]~input_o\) ) ) # ( !\A[12]~input_o\ & ( (\A[11]~input_o\ & (\B[11]~input_o\ & \B[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\);

-- Location: MLABCELL_X39_Y4_N12
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ = ( \A[12]~input_o\ & ( (!\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & (\B[12]~input_o\ & ((!\A[11]~input_o\) # (!\B[11]~input_o\)))) # 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & (((\B[11]~input_o\)) # (\A[11]~input_o\))) ) ) # ( !\A[12]~input_o\ & ( (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & 
-- (\B[12]~input_o\ & ((\B[11]~input_o\) # (\A[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000111111001110000011111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\);

-- Location: MLABCELL_X39_Y4_N38
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ = ( \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ & ( 
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ & ((!\B[7]~input_o\) # (!\A[7]~input_o\)))) ) ) ) # ( !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ & ( 
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ & 
-- ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\) # ((\B[7]~input_o\ & \A[7]~input_o\)))) ) ) ) # ( \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ & ( 
-- !\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( (!\B[7]~input_o\ & (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ & !\A[7]~input_o\))) ) ) ) # ( !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ & ( 
-- !\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ & ( (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ & 
-- (((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\) # (\A[7]~input_o\)) # (\B[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011110000100000000000000011000000110100001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~1_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~2_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~0_combout\,
	dataf => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\);

-- Location: MLABCELL_X39_Y52_N32
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ = ( \B[13]~input_o\ & ( (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\) # (\A[13]~input_o\) ) ) # ( !\B[13]~input_o\ & ( 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ & \A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~3_combout\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\);

-- Location: IOIBUF_X36_Y56_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X44_Y56_N63
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X39_Y52_N34
\recursive_case:lower|S[15]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[15]~7_combout\ = ( \A[14]~input_o\ & ( !\A[15]~input_o\ $ (!\B[15]~input_o\ $ (((\B[14]~input_o\) # (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\)))) ) ) # ( !\A[14]~input_o\ & ( 
-- !\A[15]~input_o\ $ (!\B[15]~input_o\ $ (((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ & \B[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~4_combout\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \recursive_case:lower|S[15]~7_combout\);

-- Location: IOIBUF_X55_Y56_N94
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X48_Y56_N32
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: MLABCELL_X39_Y52_N0
\recursive_case:lower|Cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|Cout~1_combout\ = ( !\B[15]~input_o\ & ( !\A[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[15]~input_o\,
	combout => \recursive_case:lower|Cout~1_combout\);

-- Location: MLABCELL_X39_Y52_N6
\recursive_case:lower|Cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|Cout~2_combout\ = ( \B[14]~input_o\ & ( \A[14]~input_o\ & ( !\recursive_case:lower|Cout~1_combout\ ) ) ) # ( !\B[14]~input_o\ & ( \A[14]~input_o\ & ( (!\recursive_case:lower|Cout~1_combout\ & ((!\A[13]~input_o\ & (\B[13]~input_o\ & 
-- !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\)) # (\A[13]~input_o\ & ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\) # (\B[13]~input_o\))))) ) ) ) # ( \B[14]~input_o\ & ( 
-- !\A[14]~input_o\ & ( (!\recursive_case:lower|Cout~1_combout\ & ((!\A[13]~input_o\ & (\B[13]~input_o\ & !\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\)) # (\A[13]~input_o\ & 
-- ((!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\) # (\B[13]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010100000001000101010000000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|ALT_INV_Cout~1_combout\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~3_combout\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \recursive_case:lower|Cout~2_combout\);

-- Location: MLABCELL_X39_Y52_N16
\recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|Cout~0_combout\ = ( \B[15]~input_o\ & ( \A[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[15]~input_o\,
	combout => \recursive_case:lower|Cout~0_combout\);

-- Location: MLABCELL_X39_Y52_N28
\recursive_case:lower|Cout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:lower|Cout~3_combout\ = ( !\recursive_case:lower|Cout~0_combout\ & ( !\recursive_case:lower|Cout~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|ALT_INV_Cout~2_combout\,
	dataf => \recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:lower|Cout~3_combout\);

-- Location: LABCELL_X50_Y52_N20
\S_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~0_combout\ = ( \recursive_case:lower|Cout~3_combout\ & ( !\A[16]~input_o\ $ (!\B[16]~input_o\) ) ) # ( !\recursive_case:lower|Cout~3_combout\ & ( !\A[16]~input_o\ $ (\B[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	dataf => \recursive_case:lower|ALT_INV_Cout~3_combout\,
	combout => \S_int~0_combout\);

-- Location: IOIBUF_X49_Y56_N94
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X59_Y51_N1
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X50_Y52_N22
\S_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~1_combout\ = ( \B[17]~input_o\ & ( !\A[17]~input_o\ $ (((!\A[16]~input_o\ & (!\recursive_case:lower|Cout~3_combout\ & \B[16]~input_o\)) # (\A[16]~input_o\ & ((!\recursive_case:lower|Cout~3_combout\) # (\B[16]~input_o\))))) ) ) # ( !\B[17]~input_o\ 
-- & ( !\A[17]~input_o\ $ (((!\A[16]~input_o\ & ((!\B[16]~input_o\) # (\recursive_case:lower|Cout~3_combout\))) # (\A[16]~input_o\ & (\recursive_case:lower|Cout~3_combout\ & !\B[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110110110010010011011011001010110010010011011011001001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \recursive_case:lower|ALT_INV_Cout~3_combout\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \S_int~1_combout\);

-- Location: IOIBUF_X46_Y56_N94
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X46_Y56_N1
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X50_Y52_N4
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = ( \B[17]~input_o\ & ( (!\B[16]~input_o\ & (!\A[16]~input_o\ & !\A[17]~input_o\)) ) ) # ( !\B[17]~input_o\ & ( (!\A[17]~input_o\) # ((!\B[16]~input_o\ & 
-- !\A[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LABCELL_X50_Y52_N6
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = ( \B[17]~input_o\ & ( ((\A[16]~input_o\ & \B[16]~input_o\)) # (\A[17]~input_o\) ) ) # ( !\B[17]~input_o\ & ( (\A[16]~input_o\ & (\B[16]~input_o\ & 
-- \A[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LABCELL_X50_Y52_N8
\S_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~2_combout\ = ( \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\B[18]~input_o\ $ (!\A[18]~input_o\ $ 
-- (((!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (\recursive_case:lower|Cout~3_combout\)))) ) ) # ( 
-- !\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\B[18]~input_o\ $ (!\A[18]~input_o\ $ (((!\recursive_case:lower|Cout~3_combout\ & 
-- !\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001100110100101100110011010011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \recursive_case:lower|ALT_INV_Cout~3_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \S_int~2_combout\);

-- Location: IOIBUF_X51_Y56_N32
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X50_Y52_N34
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ = ( \recursive_case:lower|Cout~2_combout\ & ( \B[17]~input_o\ & ( (!\A[16]~input_o\ & (!\B[16]~input_o\ & !\A[17]~input_o\)) ) ) ) # ( !\recursive_case:lower|Cout~2_combout\ 
-- & ( \B[17]~input_o\ & ( (!\A[17]~input_o\ & ((!\A[16]~input_o\ & ((!\recursive_case:lower|Cout~0_combout\) # (!\B[16]~input_o\))) # (\A[16]~input_o\ & (!\recursive_case:lower|Cout~0_combout\ & !\B[16]~input_o\)))) ) ) ) # ( 
-- \recursive_case:lower|Cout~2_combout\ & ( !\B[17]~input_o\ & ( (!\A[17]~input_o\) # ((!\A[16]~input_o\ & !\B[16]~input_o\)) ) ) ) # ( !\recursive_case:lower|Cout~2_combout\ & ( !\B[17]~input_o\ & ( (!\A[17]~input_o\) # ((!\A[16]~input_o\ & 
-- ((!\recursive_case:lower|Cout~0_combout\) # (!\B[16]~input_o\))) # (\A[16]~input_o\ & (!\recursive_case:lower|Cout~0_combout\ & !\B[16]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111111111010000011101000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \recursive_case:lower|ALT_INV_Cout~2_combout\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\);

-- Location: IOIBUF_X51_Y56_N94
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LABCELL_X50_Y52_N38
\S_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~3_combout\ = ( \A[18]~input_o\ & ( !\A[19]~input_o\ $ (!\B[19]~input_o\ $ (((!\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\) # (\B[18]~input_o\)))) ) ) # ( !\A[18]~input_o\ & ( !\A[19]~input_o\ $ (!\B[19]~input_o\ 
-- $ (((\B[18]~input_o\ & !\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001110011100011000111001110011000110001110011100011000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_S[3]~0_combout\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \S_int~3_combout\);

-- Location: LABCELL_X50_Y52_N10
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = ( \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( (!\A[19]~input_o\ & (\B[18]~input_o\ & (\A[18]~input_o\ & 
-- \B[19]~input_o\))) # (\A[19]~input_o\ & (((\B[18]~input_o\ & \A[18]~input_o\)) # (\B[19]~input_o\))) ) ) # ( !\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( (!\A[19]~input_o\ & (\B[19]~input_o\ & 
-- ((\A[18]~input_o\) # (\B[18]~input_o\)))) # (\A[19]~input_o\ & (((\B[19]~input_o\) # (\A[18]~input_o\)) # (\B[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000001110111111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X55_Y56_N63
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X50_Y52_N36
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = ( \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( (!\A[19]~input_o\ & (\B[19]~input_o\ & ((\A[18]~input_o\) # 
-- (\B[18]~input_o\)))) # (\A[19]~input_o\ & (((\A[18]~input_o\) # (\B[19]~input_o\)) # (\B[18]~input_o\))) ) ) # ( !\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( (!\A[19]~input_o\ & 
-- (\B[18]~input_o\ & (\B[19]~input_o\ & \A[18]~input_o\))) # (\A[19]~input_o\ & (((\B[18]~input_o\ & \A[18]~input_o\)) # (\B[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X49_Y56_N63
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LABCELL_X50_Y52_N2
\S_int~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~4_combout\ = ( \A[20]~input_o\ & ( !\B[20]~input_o\ $ (((!\recursive_case:lower|Cout~3_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (\recursive_case:lower|Cout~3_combout\ & 
-- ((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))) ) ) # ( !\A[20]~input_o\ & ( !\B[20]~input_o\ $ (((!\recursive_case:lower|Cout~3_combout\ & 
-- (!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (\recursive_case:lower|Cout~3_combout\ & ((!\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110101111000001011010111100011010010100001111101001010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|ALT_INV_Cout~3_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \S_int~4_combout\);

-- Location: IOIBUF_X56_Y56_N1
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LABCELL_X50_Y52_N0
\S_int~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~5_combout\ = ( \recursive_case:lower|Cout~0_combout\ & ( \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ ) ) # ( !\recursive_case:lower|Cout~0_combout\ & ( (!\recursive_case:lower|Cout~2_combout\ & 
-- ((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (\recursive_case:lower|Cout~2_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \recursive_case:lower|ALT_INV_Cout~2_combout\,
	datad => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \S_int~5_combout\);

-- Location: IOIBUF_X56_Y56_N63
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X53_Y52_N2
\S_int~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~6_combout\ = ( \S_int~5_combout\ & ( \A[21]~input_o\ & ( !\B[21]~input_o\ $ (((\A[20]~input_o\) # (\B[20]~input_o\))) ) ) ) # ( !\S_int~5_combout\ & ( \A[21]~input_o\ & ( !\B[21]~input_o\ $ (((\B[20]~input_o\ & \A[20]~input_o\))) ) ) ) # ( 
-- \S_int~5_combout\ & ( !\A[21]~input_o\ & ( !\B[21]~input_o\ $ (((!\B[20]~input_o\ & !\A[20]~input_o\))) ) ) ) # ( !\S_int~5_combout\ & ( !\A[21]~input_o\ & ( !\B[21]~input_o\ $ (((!\B[20]~input_o\) # (!\A[20]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110011110000111100011100001111000011000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datae => \ALT_INV_S_int~5_combout\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \S_int~6_combout\);

-- Location: LABCELL_X53_Y52_N24
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = ( \A[20]~input_o\ & ( (!\B[20]~input_o\ & (\B[21]~input_o\ & \A[21]~input_o\)) # (\B[20]~input_o\ & ((\A[21]~input_o\) # (\B[21]~input_o\))) ) ) # ( 
-- !\A[20]~input_o\ & ( (\B[21]~input_o\ & \A[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X51_Y56_N63
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X53_Y56_N94
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LABCELL_X53_Y52_N26
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = ( \A[21]~input_o\ & ( (!\B[20]~input_o\ & (!\B[21]~input_o\ & !\A[20]~input_o\)) ) ) # ( !\A[21]~input_o\ & ( (!\B[21]~input_o\) # ((!\B[20]~input_o\ 
-- & !\A[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101100111011001110110010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LABCELL_X53_Y52_N8
\S_int~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~7_combout\ = ( \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ( !\A[22]~input_o\ $ (!\B[22]~input_o\ $ 
-- (((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & !\S_int~5_combout\)))) ) ) # ( !\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ( 
-- !\A[22]~input_o\ $ (!\B[22]~input_o\ $ (((\S_int~5_combout\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010010011011011001001001101100011100111000110001110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_S_int~5_combout\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \S_int~7_combout\);

-- Location: IOIBUF_X44_Y56_N1
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y49_N1
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: MLABCELL_X52_Y52_N20
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ = ( \B[23]~input_o\ & ( !\A[23]~input_o\ ) ) # ( !\B[23]~input_o\ & ( \A[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\);

-- Location: LABCELL_X50_Y52_N26
\recursive_case:upper0|recursive_case:lower|S[7]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ = ( \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( 
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( (!\B[18]~input_o\ & (!\recursive_case:lower|Cout~0_combout\ & (!\recursive_case:lower|Cout~2_combout\ & \A[18]~input_o\))) # (\B[18]~input_o\ & 
-- (((!\recursive_case:lower|Cout~0_combout\ & !\recursive_case:lower|Cout~2_combout\)) # (\A[18]~input_o\))) ) ) ) # ( !\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( 
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( (\A[18]~input_o\) # (\B[18]~input_o\) ) ) ) # ( \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ 
-- & ( !\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( (\B[18]~input_o\ & \A[18]~input_o\) ) ) ) # ( 
-- !\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( (!\B[18]~input_o\ & (\A[18]~input_o\ & 
-- ((\recursive_case:lower|Cout~2_combout\) # (\recursive_case:lower|Cout~0_combout\)))) # (\B[18]~input_o\ & (((\A[18]~input_o\) # (\recursive_case:lower|Cout~2_combout\)) # (\recursive_case:lower|Cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101111111000000000101010101010101111111110100000011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datab => \recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \recursive_case:lower|ALT_INV_Cout~2_combout\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|S[7]~0_combout\);

-- Location: LABCELL_X53_Y52_N12
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ = ( \B[20]~input_o\ & ( ((!\B[19]~input_o\ & (\recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ & \A[19]~input_o\)) # (\B[19]~input_o\ & ((\A[19]~input_o\) # 
-- (\recursive_case:upper0|recursive_case:lower|S[7]~0_combout\)))) # (\A[20]~input_o\) ) ) # ( !\B[20]~input_o\ & ( (\A[20]~input_o\ & ((!\B[19]~input_o\ & (\recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ & \A[19]~input_o\)) # (\B[19]~input_o\ & 
-- ((\A[19]~input_o\) # (\recursive_case:upper0|recursive_case:lower|S[7]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100110111011111110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|ALT_INV_S[7]~0_combout\,
	datad => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\);

-- Location: LABCELL_X53_Y52_N36
\S_int~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~8_combout\ = ( \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & ( \A[21]~input_o\ & ( !\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ (((!\B[22]~input_o\ 
-- & !\A[22]~input_o\))) ) ) ) # ( !\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & ( \A[21]~input_o\ & ( !\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ 
-- (((!\B[22]~input_o\ & ((!\A[22]~input_o\) # (!\B[21]~input_o\))) # (\B[22]~input_o\ & (!\A[22]~input_o\ & !\B[21]~input_o\)))) ) ) ) # ( \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & ( !\A[21]~input_o\ & ( 
-- !\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ (((!\B[22]~input_o\ & ((!\A[22]~input_o\) # (!\B[21]~input_o\))) # (\B[22]~input_o\ & (!\A[22]~input_o\ & !\B[21]~input_o\)))) ) ) ) # ( 
-- !\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ & ( !\A[21]~input_o\ & ( !\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ (((!\B[22]~input_o\) # 
-- (!\A[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100111100000011110011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[1]~0_combout\,
	datad => \ALT_INV_B[21]~input_o\,
	datae => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|ALT_INV_S[3]~0_combout\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \S_int~8_combout\);

-- Location: LABCELL_X53_Y52_N10
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\ = (!\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & (\A[22]~input_o\ & \B[22]~input_o\)) # 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ((\B[22]~input_o\) # (\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\);

-- Location: LABCELL_X53_Y52_N20
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\ = ( \B[22]~input_o\ & ( \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ( \A[22]~input_o\ ) ) ) # ( \B[22]~input_o\ 
-- & ( !\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ ) ) # ( !\B[22]~input_o\ & ( !\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ( 
-- \A[22]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_B[22]~input_o\,
	dataf => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\);

-- Location: LABCELL_X50_Y52_N28
\recursive_case:upper0|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = ( \B[23]~input_o\ & ( ((!\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\)) 
-- # (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)))) # (\A[23]~input_o\) ) ) # ( !\B[23]~input_o\ & ( (\A[23]~input_o\ & 
-- ((!\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\)) # (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ 
-- & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001101010011111111110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|ALT_INV_Cout~0_combout\,
	datac => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LABCELL_X50_Y52_N30
\recursive_case:upper1|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = ( \B[23]~input_o\ & ( ((!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\)) 
-- # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)))) # (\A[23]~input_o\) ) ) # ( !\B[23]~input_o\ & ( (\A[23]~input_o\ & 
-- ((!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\)) # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ 
-- & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001101010011111111110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|ALT_INV_Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X55_Y56_N1
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X59_Y46_N1
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X50_Y52_N12
\S_int~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~9_combout\ = ( \recursive_case:lower|Cout~3_combout\ & ( !\recursive_case:upper0|recursive_case:lower|Cout~0_combout\ $ (!\B[24]~input_o\ $ (\A[24]~input_o\)) ) ) # ( !\recursive_case:lower|Cout~3_combout\ & ( 
-- !\recursive_case:upper1|recursive_case:lower|Cout~0_combout\ $ (!\B[24]~input_o\ $ (\A[24]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	dataf => \recursive_case:lower|ALT_INV_Cout~3_combout\,
	combout => \S_int~9_combout\);

-- Location: IOIBUF_X48_Y56_N94
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X50_Y52_N14
\S_int~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~10_combout\ = ( \recursive_case:lower|Cout~0_combout\ & ( \recursive_case:upper1|recursive_case:lower|Cout~0_combout\ ) ) # ( !\recursive_case:lower|Cout~0_combout\ & ( (!\recursive_case:lower|Cout~2_combout\ & 
-- (\recursive_case:upper0|recursive_case:lower|Cout~0_combout\)) # (\recursive_case:lower|Cout~2_combout\ & ((\recursive_case:upper1|recursive_case:lower|Cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \recursive_case:lower|ALT_INV_Cout~2_combout\,
	dataf => \recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \S_int~10_combout\);

-- Location: IOIBUF_X48_Y56_N63
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: MLABCELL_X52_Y52_N6
\S_int~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~11_combout\ = ( \A[24]~input_o\ & ( !\A[25]~input_o\ $ (!\B[25]~input_o\ $ (((\S_int~10_combout\) # (\B[24]~input_o\)))) ) ) # ( !\A[24]~input_o\ & ( !\A[25]~input_o\ $ (!\B[25]~input_o\ $ (((\B[24]~input_o\ & \S_int~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_S_int~10_combout\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \S_int~11_combout\);

-- Location: MLABCELL_X52_Y52_N28
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = ( \A[24]~input_o\ & ( (!\A[25]~input_o\ & (\B[24]~input_o\ & \B[25]~input_o\)) # (\A[25]~input_o\ & ((\B[25]~input_o\) # (\B[24]~input_o\))) ) ) # ( 
-- !\A[24]~input_o\ & ( (\A[25]~input_o\ & \B[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X53_Y56_N63
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: MLABCELL_X52_Y52_N4
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = ( \A[24]~input_o\ & ( (!\A[25]~input_o\ & !\B[25]~input_o\) ) ) # ( !\A[24]~input_o\ & ( (!\A[25]~input_o\ & ((!\B[24]~input_o\) # 
-- (!\B[25]~input_o\))) # (\A[25]~input_o\ & (!\B[24]~input_o\ & !\B[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X59_Y49_N94
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: MLABCELL_X52_Y52_N34
\S_int~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~12_combout\ = ( \A[26]~input_o\ & ( !\B[26]~input_o\ $ (((!\S_int~10_combout\ & (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (\S_int~10_combout\ & 
-- ((!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))) ) ) # ( !\A[26]~input_o\ & ( !\B[26]~input_o\ $ (((!\S_int~10_combout\ & 
-- (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (\S_int~10_combout\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110001100011011011000110001110010011100111001001001110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_S_int~10_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \S_int~12_combout\);

-- Location: LABCELL_X50_Y52_N16
\recursive_case:upper0|S[11]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|S[11]~0_combout\ = ( \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( \recursive_case:lower|Cout~2_combout\ & ( (!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\))) # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)) ) ) ) # ( !\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( \recursive_case:lower|Cout~2_combout\ & ( 
-- (!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\))) # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ 
-- & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)) ) ) ) # ( \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\recursive_case:lower|Cout~2_combout\ & ( 
-- (!\recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)) # (\recursive_case:lower|Cout~0_combout\ & ((!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\))) # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)))) ) ) ) # ( !\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ( !\recursive_case:lower|Cout~2_combout\ & ( 
-- (!\recursive_case:lower|Cout~0_combout\ & (((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\)))) # (\recursive_case:lower|Cout~0_combout\ & 
-- ((!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\))) # 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011101010001110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|ALT_INV_Cout~0_combout\,
	datab => \recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|ALT_INV_Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datae => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \recursive_case:lower|ALT_INV_Cout~2_combout\,
	combout => \recursive_case:upper0|S[11]~0_combout\);

-- Location: MLABCELL_X52_Y52_N36
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ = ( \B[23]~input_o\ & ( (!\A[24]~input_o\ & (\B[24]~input_o\ & ((\recursive_case:upper0|S[11]~0_combout\) # (\A[23]~input_o\)))) # (\A[24]~input_o\ & 
-- (((\recursive_case:upper0|S[11]~0_combout\) # (\B[24]~input_o\)) # (\A[23]~input_o\))) ) ) # ( !\B[23]~input_o\ & ( (!\A[24]~input_o\ & (\A[23]~input_o\ & (\B[24]~input_o\ & \recursive_case:upper0|S[11]~0_combout\))) # (\A[24]~input_o\ & 
-- (((\A[23]~input_o\ & \recursive_case:upper0|S[11]~0_combout\)) # (\B[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \recursive_case:upper0|ALT_INV_S[11]~0_combout\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\);

-- Location: IOIBUF_X59_Y49_N32
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X53_Y56_N1
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: MLABCELL_X52_Y52_N38
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = ( \A[27]~input_o\ & ( !\B[27]~input_o\ ) ) # ( !\A[27]~input_o\ & ( \B[27]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: MLABCELL_X52_Y52_N2
\S_int~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~13_combout\ = ( \B[26]~input_o\ & ( \A[26]~input_o\ & ( !\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ ) ) ) # ( !\B[26]~input_o\ & ( \A[26]~input_o\ & ( 
-- !\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((!\B[25]~input_o\ & ((!\A[25]~input_o\) # (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\))) # 
-- (\B[25]~input_o\ & (!\A[25]~input_o\ & !\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\)))) ) ) ) # ( \B[26]~input_o\ & ( !\A[26]~input_o\ & ( 
-- !\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((!\B[25]~input_o\ & ((!\A[25]~input_o\) # (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\))) # 
-- (\B[25]~input_o\ & (!\A[25]~input_o\ & !\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\)))) ) ) ) # ( !\B[26]~input_o\ & ( !\A[26]~input_o\ & ( 
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000101111110100000010111111010001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|ALT_INV_S[3]~0_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|ALT_INV_S[1]~0_combout\,
	datae => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \S_int~13_combout\);

-- Location: MLABCELL_X52_Y52_N32
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = ( \A[26]~input_o\ & ( (\B[26]~input_o\) # (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\) ) ) # ( !\A[26]~input_o\ 
-- & ( (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \B[26]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: MLABCELL_X52_Y52_N8
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = ( \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ( (\A[27]~input_o\) # (\B[27]~input_o\) ) ) # ( 
-- !\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ( (\B[27]~input_o\ & \A[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: MLABCELL_X52_Y52_N30
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = ( \A[26]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (\B[26]~input_o\) ) ) # ( 
-- !\A[26]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \B[26]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: MLABCELL_X52_Y52_N26
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (!\B[27]~input_o\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & \A[27]~input_o\)) # (\B[27]~input_o\ & ((\A[27]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[27]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: IOIBUF_X59_Y51_N63
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: MLABCELL_X52_Y52_N22
\S_int~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~14_combout\ = ( \A[28]~input_o\ & ( !\B[28]~input_o\ $ (((!\S_int~10_combout\ & (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)) # (\S_int~10_combout\ & 
-- ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\))))) ) ) # ( !\A[28]~input_o\ & ( !\B[28]~input_o\ $ (((!\S_int~10_combout\ & (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)) # 
-- (\S_int~10_combout\ & ((!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011110111000010001111011100010111000010001111011100001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~1_combout\,
	datab => \ALT_INV_S_int~10_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~1_combout\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \S_int~14_combout\);

-- Location: IOIBUF_X59_Y39_N1
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X59_Y48_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: MLABCELL_X52_Y52_N10
\S_int~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~15_combout\ = ( \B[23]~input_o\ & ( (!\recursive_case:upper0|S[11]~0_combout\ & ((!\A[23]~input_o\ & ((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\))) # (\A[23]~input_o\ & 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)))) # (\recursive_case:upper0|S[11]~0_combout\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)) ) ) # ( !\B[23]~input_o\ & ( 
-- (!\recursive_case:upper0|S[11]~0_combout\ & (((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))) # (\recursive_case:upper0|S[11]~0_combout\ & ((!\A[23]~input_o\ & 
-- ((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\))) # (\A[23]~input_o\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111011000000011111101100010011101100110001001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|ALT_INV_S[11]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~1_combout\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~1_combout\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \S_int~15_combout\);

-- Location: LABCELL_X58_Y48_N22
\S_int~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~16_combout\ = ( \B[28]~input_o\ & ( \S_int~15_combout\ & ( !\B[29]~input_o\ $ (\A[29]~input_o\) ) ) ) # ( !\B[28]~input_o\ & ( \S_int~15_combout\ & ( !\A[28]~input_o\ $ (!\B[29]~input_o\ $ (\A[29]~input_o\)) ) ) ) # ( \B[28]~input_o\ & ( 
-- !\S_int~15_combout\ & ( !\A[28]~input_o\ $ (!\B[29]~input_o\ $ (\A[29]~input_o\)) ) ) ) # ( !\B[28]~input_o\ & ( !\S_int~15_combout\ & ( !\B[29]~input_o\ $ (!\A[29]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100011001101001100101100110100110011100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_S_int~15_combout\,
	combout => \S_int~16_combout\);

-- Location: IOIBUF_X59_Y46_N32
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y48_N94
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LABCELL_X58_Y48_N6
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ = ( !\A[30]~input_o\ & ( \B[30]~input_o\ ) ) # ( \A[30]~input_o\ & ( !\B[30]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\);

-- Location: LABCELL_X58_Y48_N30
\S_int~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~17_combout\ = ( \B[28]~input_o\ & ( \S_int~15_combout\ & ( !\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ $ (((!\B[29]~input_o\ & !\A[29]~input_o\))) ) ) ) # ( !\B[28]~input_o\ & ( \S_int~15_combout\ & ( 
-- !\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ $ (((!\A[28]~input_o\ & ((!\B[29]~input_o\) # (!\A[29]~input_o\))) # (\A[28]~input_o\ & (!\B[29]~input_o\ & !\A[29]~input_o\)))) ) ) ) # ( \B[28]~input_o\ & ( 
-- !\S_int~15_combout\ & ( !\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ $ (((!\A[28]~input_o\ & ((!\B[29]~input_o\) # (!\A[29]~input_o\))) # (\A[28]~input_o\ & (!\B[29]~input_o\ & !\A[29]~input_o\)))) ) ) ) # ( 
-- !\B[28]~input_o\ & ( !\S_int~15_combout\ & ( !\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[2]~0_combout\ $ (((!\B[29]~input_o\) # (!\A[29]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001101100110110000110110011011000011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|ALT_INV_S[2]~0_combout\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_S_int~15_combout\,
	combout => \S_int~17_combout\);

-- Location: MLABCELL_X52_Y52_N24
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ = ( \A[28]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & (\B[28]~input_o\ & ((!\B[27]~input_o\) # (!\A[27]~input_o\)))) 
-- # (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & (((\A[27]~input_o\)) # (\B[27]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\B[28]~input_o\ & 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ((\A[27]~input_o\) # (\B[27]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100001110011101110000111001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\);

-- Location: MLABCELL_X52_Y52_N14
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ = ( \A[27]~input_o\ & ( (!\B[28]~input_o\ & (\A[28]~input_o\ & \B[27]~input_o\)) # (\B[28]~input_o\ & ((\B[27]~input_o\) # (\A[28]~input_o\))) ) ) # ( !\A[27]~input_o\ & ( 
-- (\B[28]~input_o\ & \A[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\);

-- Location: MLABCELL_X52_Y52_N12
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ = ( \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ( (!\B[28]~input_o\ & (\A[28]~input_o\ & ((\A[27]~input_o\) # (\B[27]~input_o\)))) # 
-- (\B[28]~input_o\ & (((\A[27]~input_o\) # (\B[27]~input_o\)))) ) ) # ( !\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ( (\B[28]~input_o\ & (\A[28]~input_o\ & ((!\B[27]~input_o\) # (!\A[27]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000000100010001000000000111011101110000011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|ALT_INV_Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\);

-- Location: MLABCELL_X52_Y52_N18
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ = ( \recursive_case:upper0|S[11]~0_combout\ & ( \B[23]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ & 
-- !\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\) ) ) ) # ( !\recursive_case:upper0|S[11]~0_combout\ & ( \B[23]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ & 
-- ((!\A[23]~input_o\ & ((!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\))) # (\A[23]~input_o\ & (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\)))) ) ) ) # ( 
-- \recursive_case:upper0|S[11]~0_combout\ & ( !\B[23]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ & ((!\A[23]~input_o\ & 
-- ((!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\))) # (\A[23]~input_o\ & (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\)))) ) ) ) # ( !\recursive_case:upper0|S[11]~0_combout\ & ( 
-- !\B[23]~input_o\ & ( (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ & !\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111000000010000011100000001000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~0_combout\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~2_combout\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~1_combout\,
	datae => \recursive_case:upper0|ALT_INV_S[11]~0_combout\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\);

-- Location: IOIBUF_X59_Y48_N32
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X56_Y56_N32
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X58_Y48_N12
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = !\A[31]~input_o\ $ (!\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	combout => \Ovfl~0_combout\);

-- Location: LABCELL_X58_Y48_N18
\S_int~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S_int~18_combout\ = ( \A[30]~input_o\ & ( \B[30]~input_o\ & ( !\Ovfl~0_combout\ ) ) ) # ( !\A[30]~input_o\ & ( \B[30]~input_o\ & ( !\Ovfl~0_combout\ $ (((!\A[29]~input_o\ & ((!\B[29]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\))) # (\A[29]~input_o\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ & !\B[29]~input_o\)))) ) ) ) # ( \A[30]~input_o\ & ( 
-- !\B[30]~input_o\ & ( !\Ovfl~0_combout\ $ (((!\A[29]~input_o\ & ((!\B[29]~input_o\) # (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\))) # (\A[29]~input_o\ & 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ & !\B[29]~input_o\)))) ) ) ) # ( !\A[30]~input_o\ & ( !\B[30]~input_o\ & ( \Ovfl~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010011011011001001001101101100101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~3_combout\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_Ovfl~0_combout\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \S_int~18_combout\);

-- Location: LABCELL_X58_Y48_N0
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ = ( \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ & ( (\A[29]~input_o\ & \B[29]~input_o\) ) ) # ( 
-- !\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ & ( (\B[29]~input_o\) # (\A[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	dataf => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~3_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\);

-- Location: LABCELL_X58_Y48_N2
\cout_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \cout_int~0_combout\ = ( \B[30]~input_o\ & ( (!\A[31]~input_o\ & (\B[31]~input_o\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\) # (\A[30]~input_o\)))) # (\A[31]~input_o\ & 
-- (((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\) # (\B[31]~input_o\)) # (\A[30]~input_o\))) ) ) # ( !\B[30]~input_o\ & ( (!\A[31]~input_o\ & (\A[30]~input_o\ & (\B[31]~input_o\ & 
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\))) # (\A[31]~input_o\ & (((\A[30]~input_o\ & \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\)) # (\B[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[31]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|ALT_INV_S[3]~4_combout\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \cout_int~0_combout\);

-- Location: LABCELL_X58_Y48_N14
\Ovfl~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~1_combout\ = (!\A[31]~input_o\ & ((!\S_int~18_combout\) # (\B[31]~input_o\))) # (\A[31]~input_o\ & ((!\B[31]~input_o\) # (\S_int~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001110111111011100111011111101110011101111110111001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_S_int~18_combout\,
	combout => \Ovfl~1_combout\);

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

ww_S(16) <= \S[16]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(23) <= \S[23]~output_o\;

ww_S(24) <= \S[24]~output_o\;

ww_S(25) <= \S[25]~output_o\;

ww_S(26) <= \S[26]~output_o\;

ww_S(27) <= \S[27]~output_o\;

ww_S(28) <= \S[28]~output_o\;

ww_S(29) <= \S[29]~output_o\;

ww_S(30) <= \S[30]~output_o\;

ww_S(31) <= \S[31]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


