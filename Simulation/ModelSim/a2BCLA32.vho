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

-- DATE "04/08/2026 13:25:36"

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
-- S[0]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \c_int~0_combout\ : std_logic;
SIGNAL \c_int~1_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \c_int~2_combout\ : std_logic;
SIGNAL \gen_blocks:0:c_int[3]~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:c_int[3]~1_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;
SIGNAL \G[0]~1_combout\ : std_logic;
SIGNAL \G[0]~2_combout\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \c_int~3_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \c_int~4_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:c_int[3]~0_combout\ : std_logic;
SIGNAL \c_int~5_combout\ : std_logic;
SIGNAL \gen_blocks:1:c_int[3]~1_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:p_bit[0]~combout\ : std_logic;
SIGNAL \G[1]~3_combout\ : std_logic;
SIGNAL \G[1]~5_combout\ : std_logic;
SIGNAL \G~4_combout\ : std_logic;
SIGNAL \C~1_combout\ : std_logic;
SIGNAL \C~2_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \c_int~6_combout\ : std_logic;
SIGNAL \c_int~7_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:c_int[3]~1_combout\ : std_logic;
SIGNAL \c_int~8_combout\ : std_logic;
SIGNAL \gen_blocks:2:c_int[3]~0_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:p_bit[0]~combout\ : std_logic;
SIGNAL \G~6_combout\ : std_logic;
SIGNAL \C~5_combout\ : std_logic;
SIGNAL \C~3_combout\ : std_logic;
SIGNAL \G~7_combout\ : std_logic;
SIGNAL \G~8_combout\ : std_logic;
SIGNAL \C~6_combout\ : std_logic;
SIGNAL \C~7_combout\ : std_logic;
SIGNAL \C~4_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:c_int[3]~0_combout\ : std_logic;
SIGNAL \c_int~9_combout\ : std_logic;
SIGNAL \gen_blocks:3:p_bit[1]~combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \gen_blocks:3:c_int[3]~1_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \c_int~10_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \C~8_combout\ : std_logic;
SIGNAL \C~9_combout\ : std_logic;
SIGNAL \G~9_combout\ : std_logic;
SIGNAL \G[3]~10_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \c_int~12_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:p_bit[2]~combout\ : std_logic;
SIGNAL \c_int~11_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \c_int~14_combout\ : std_logic;
SIGNAL \c_int~13_combout\ : std_logic;
SIGNAL \c_int~15_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:p_bit[3]~combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \G~11_combout\ : std_logic;
SIGNAL \G[4]~12_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \C~10_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:p_bit[2]~combout\ : std_logic;
SIGNAL \c_int~16_combout\ : std_logic;
SIGNAL \c_int~17_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:p_bit[3]~combout\ : std_logic;
SIGNAL \c_int~18_combout\ : std_logic;
SIGNAL \c_int~19_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \C~11_combout\ : std_logic;
SIGNAL \G~13_combout\ : std_logic;
SIGNAL \G[5]~14_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \c_int~20_combout\ : std_logic;
SIGNAL \c_int~21_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:p_bit[2]~combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \gen_blocks:6:c_int[3]~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:p_bit[3]~combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \C~12_combout\ : std_logic;
SIGNAL \G[6]~15_combout\ : std_logic;
SIGNAL \G[6]~17_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:p_bit[2]~combout\ : std_logic;
SIGNAL \c_int~23_combout\ : std_logic;
SIGNAL \c_int~22_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \gen_blocks:7:c_int[3]~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:p_bit[3]~combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \G~16_combout\ : std_logic;
SIGNAL \c_int~24_combout\ : std_logic;
SIGNAL \C~13_combout\ : std_logic;
SIGNAL \C~14_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_gen_blocks:6:c_int[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_G[6]~17_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:7:c_int[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_C~13_combout\ : std_logic;
SIGNAL \ALT_INV_G~16_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~24_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:7:p_bit[3]~combout\ : std_logic;
SIGNAL \ALT_INV_c_int~23_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~22_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:7:p_bit[2]~combout\ : std_logic;
SIGNAL \ALT_INV_G[6]~15_combout\ : std_logic;
SIGNAL \ALT_INV_C~12_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:6:p_bit[3]~combout\ : std_logic;
SIGNAL \ALT_INV_c_int~21_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~20_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:6:p_bit[2]~combout\ : std_logic;
SIGNAL \ALT_INV_G[5]~14_combout\ : std_logic;
SIGNAL \ALT_INV_G~13_combout\ : std_logic;
SIGNAL \ALT_INV_C~11_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~19_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~18_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:5:p_bit[3]~combout\ : std_logic;
SIGNAL \ALT_INV_c_int~17_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~16_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:5:p_bit[2]~combout\ : std_logic;
SIGNAL \ALT_INV_G[4]~12_combout\ : std_logic;
SIGNAL \ALT_INV_G~11_combout\ : std_logic;
SIGNAL \ALT_INV_C~10_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~15_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~14_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~13_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:4:p_bit[3]~combout\ : std_logic;
SIGNAL \ALT_INV_c_int~12_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~11_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:4:p_bit[2]~combout\ : std_logic;
SIGNAL \ALT_INV_G[3]~10_combout\ : std_logic;
SIGNAL \ALT_INV_G~9_combout\ : std_logic;
SIGNAL \ALT_INV_C~9_combout\ : std_logic;
SIGNAL \ALT_INV_C~8_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:3:c_int[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~10_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:3:c_int[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~9_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:3:p_bit[1]~combout\ : std_logic;
SIGNAL \ALT_INV_C~7_combout\ : std_logic;
SIGNAL \ALT_INV_C~6_combout\ : std_logic;
SIGNAL \ALT_INV_G~8_combout\ : std_logic;
SIGNAL \ALT_INV_G~7_combout\ : std_logic;
SIGNAL \ALT_INV_C~5_combout\ : std_logic;
SIGNAL \ALT_INV_C~4_combout\ : std_logic;
SIGNAL \ALT_INV_C~3_combout\ : std_logic;
SIGNAL \ALT_INV_G~6_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:3:p_bit[0]~combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:2:c_int[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:2:c_int[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~8_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~7_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~6_combout\ : std_logic;
SIGNAL \ALT_INV_C~2_combout\ : std_logic;
SIGNAL \ALT_INV_C~1_combout\ : std_logic;
SIGNAL \ALT_INV_G[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_G~4_combout\ : std_logic;
SIGNAL \ALT_INV_G[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:2:p_bit[0]~combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:1:c_int[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:1:c_int[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~5_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~4_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~3_combout\ : std_logic;
SIGNAL \ALT_INV_C~0_combout\ : std_logic;
SIGNAL \ALT_INV_G[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_G[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_G~0_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:0:c_int[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_gen_blocks:0:c_int[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~1_combout\ : std_logic;
SIGNAL \ALT_INV_c_int~0_combout\ : std_logic;
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
\ALT_INV_gen_blocks:6:c_int[3]~0_combout\ <= NOT \gen_blocks:6:c_int[3]~0_combout\;
\ALT_INV_G[6]~17_combout\ <= NOT \G[6]~17_combout\;
\ALT_INV_gen_blocks:7:c_int[3]~0_combout\ <= NOT \gen_blocks:7:c_int[3]~0_combout\;
\ALT_INV_C~13_combout\ <= NOT \C~13_combout\;
\ALT_INV_G~16_combout\ <= NOT \G~16_combout\;
\ALT_INV_c_int~24_combout\ <= NOT \c_int~24_combout\;
\ALT_INV_gen_blocks:7:p_bit[3]~combout\ <= NOT \gen_blocks:7:p_bit[3]~combout\;
\ALT_INV_c_int~23_combout\ <= NOT \c_int~23_combout\;
\ALT_INV_c_int~22_combout\ <= NOT \c_int~22_combout\;
\ALT_INV_gen_blocks:7:p_bit[2]~combout\ <= NOT \gen_blocks:7:p_bit[2]~combout\;
\ALT_INV_G[6]~15_combout\ <= NOT \G[6]~15_combout\;
\ALT_INV_C~12_combout\ <= NOT \C~12_combout\;
\ALT_INV_gen_blocks:6:p_bit[3]~combout\ <= NOT \gen_blocks:6:p_bit[3]~combout\;
\ALT_INV_c_int~21_combout\ <= NOT \c_int~21_combout\;
\ALT_INV_c_int~20_combout\ <= NOT \c_int~20_combout\;
\ALT_INV_gen_blocks:6:p_bit[2]~combout\ <= NOT \gen_blocks:6:p_bit[2]~combout\;
\ALT_INV_G[5]~14_combout\ <= NOT \G[5]~14_combout\;
\ALT_INV_G~13_combout\ <= NOT \G~13_combout\;
\ALT_INV_C~11_combout\ <= NOT \C~11_combout\;
\ALT_INV_c_int~19_combout\ <= NOT \c_int~19_combout\;
\ALT_INV_c_int~18_combout\ <= NOT \c_int~18_combout\;
\ALT_INV_gen_blocks:5:p_bit[3]~combout\ <= NOT \gen_blocks:5:p_bit[3]~combout\;
\ALT_INV_c_int~17_combout\ <= NOT \c_int~17_combout\;
\ALT_INV_c_int~16_combout\ <= NOT \c_int~16_combout\;
\ALT_INV_gen_blocks:5:p_bit[2]~combout\ <= NOT \gen_blocks:5:p_bit[2]~combout\;
\ALT_INV_G[4]~12_combout\ <= NOT \G[4]~12_combout\;
\ALT_INV_G~11_combout\ <= NOT \G~11_combout\;
\ALT_INV_C~10_combout\ <= NOT \C~10_combout\;
\ALT_INV_c_int~15_combout\ <= NOT \c_int~15_combout\;
\ALT_INV_c_int~14_combout\ <= NOT \c_int~14_combout\;
\ALT_INV_c_int~13_combout\ <= NOT \c_int~13_combout\;
\ALT_INV_gen_blocks:4:p_bit[3]~combout\ <= NOT \gen_blocks:4:p_bit[3]~combout\;
\ALT_INV_c_int~12_combout\ <= NOT \c_int~12_combout\;
\ALT_INV_c_int~11_combout\ <= NOT \c_int~11_combout\;
\ALT_INV_gen_blocks:4:p_bit[2]~combout\ <= NOT \gen_blocks:4:p_bit[2]~combout\;
\ALT_INV_G[3]~10_combout\ <= NOT \G[3]~10_combout\;
\ALT_INV_G~9_combout\ <= NOT \G~9_combout\;
\ALT_INV_C~9_combout\ <= NOT \C~9_combout\;
\ALT_INV_C~8_combout\ <= NOT \C~8_combout\;
\ALT_INV_gen_blocks:3:c_int[3]~1_combout\ <= NOT \gen_blocks:3:c_int[3]~1_combout\;
\ALT_INV_c_int~10_combout\ <= NOT \c_int~10_combout\;
\ALT_INV_gen_blocks:3:c_int[3]~0_combout\ <= NOT \gen_blocks:3:c_int[3]~0_combout\;
\ALT_INV_c_int~9_combout\ <= NOT \c_int~9_combout\;
\ALT_INV_gen_blocks:3:p_bit[1]~combout\ <= NOT \gen_blocks:3:p_bit[1]~combout\;
\ALT_INV_C~7_combout\ <= NOT \C~7_combout\;
\ALT_INV_C~6_combout\ <= NOT \C~6_combout\;
\ALT_INV_G~8_combout\ <= NOT \G~8_combout\;
\ALT_INV_G~7_combout\ <= NOT \G~7_combout\;
\ALT_INV_C~5_combout\ <= NOT \C~5_combout\;
\ALT_INV_C~4_combout\ <= NOT \C~4_combout\;
\ALT_INV_C~3_combout\ <= NOT \C~3_combout\;
\ALT_INV_G~6_combout\ <= NOT \G~6_combout\;
\ALT_INV_gen_blocks:3:p_bit[0]~combout\ <= NOT \gen_blocks:3:p_bit[0]~combout\;
\ALT_INV_gen_blocks:2:c_int[3]~1_combout\ <= NOT \gen_blocks:2:c_int[3]~1_combout\;
\ALT_INV_gen_blocks:2:c_int[3]~0_combout\ <= NOT \gen_blocks:2:c_int[3]~0_combout\;
\ALT_INV_c_int~8_combout\ <= NOT \c_int~8_combout\;
\ALT_INV_c_int~7_combout\ <= NOT \c_int~7_combout\;
\ALT_INV_c_int~6_combout\ <= NOT \c_int~6_combout\;
\ALT_INV_C~2_combout\ <= NOT \C~2_combout\;
\ALT_INV_C~1_combout\ <= NOT \C~1_combout\;
\ALT_INV_G[1]~5_combout\ <= NOT \G[1]~5_combout\;
\ALT_INV_G~4_combout\ <= NOT \G~4_combout\;
\ALT_INV_G[1]~3_combout\ <= NOT \G[1]~3_combout\;
\ALT_INV_gen_blocks:2:p_bit[0]~combout\ <= NOT \gen_blocks:2:p_bit[0]~combout\;
\ALT_INV_gen_blocks:1:c_int[3]~1_combout\ <= NOT \gen_blocks:1:c_int[3]~1_combout\;
\ALT_INV_gen_blocks:1:c_int[3]~0_combout\ <= NOT \gen_blocks:1:c_int[3]~0_combout\;
\ALT_INV_c_int~5_combout\ <= NOT \c_int~5_combout\;
\ALT_INV_c_int~4_combout\ <= NOT \c_int~4_combout\;
\ALT_INV_c_int~3_combout\ <= NOT \c_int~3_combout\;
\ALT_INV_C~0_combout\ <= NOT \C~0_combout\;
\ALT_INV_G[0]~2_combout\ <= NOT \G[0]~2_combout\;
\ALT_INV_G[0]~1_combout\ <= NOT \G[0]~1_combout\;
\ALT_INV_G~0_combout\ <= NOT \G~0_combout\;
\ALT_INV_gen_blocks:0:c_int[3]~1_combout\ <= NOT \gen_blocks:0:c_int[3]~1_combout\;
\ALT_INV_gen_blocks:0:c_int[3]~0_combout\ <= NOT \gen_blocks:0:c_int[3]~0_combout\;
\ALT_INV_c_int~2_combout\ <= NOT \c_int~2_combout\;
\ALT_INV_c_int~1_combout\ <= NOT \c_int~1_combout\;
\ALT_INV_c_int~0_combout\ <= NOT \c_int~0_combout\;
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

-- Location: IOOBUF_X43_Y0_N36
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X59_Y7_N2
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X50_Y0_N98
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N36
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

-- Location: IOOBUF_X50_Y0_N67
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N98
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X45_Y0_N98
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X41_Y0_N5
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X59_Y6_N2
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X59_Y6_N36
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

-- Location: IOOBUF_X56_Y0_N2
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X59_Y10_N98
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X59_Y12_N36
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X59_Y9_N5
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X59_Y7_N36
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X59_Y23_N36
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X59_Y30_N98
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X59_Y22_N98
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X59_Y23_N67
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X59_Y22_N36
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X59_Y31_N2
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X59_Y25_N2
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X59_Y25_N67
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X59_Y39_N98
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X59_Y37_N67
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X59_Y37_N2
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X59_Y34_N98
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X59_Y34_N36
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~14_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y34_N2
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

-- Location: IOIBUF_X47_Y0_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X47_Y0_N94
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: MLABCELL_X46_Y4_N20
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \B[0]~input_o\ & ( \Cin~input_o\ & ( \A[0]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \Cin~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\Cin~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\Cin~input_o\ & ( 
-- \A[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X45_Y0_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X47_Y0_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X46_Y4_N24
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \B[0]~input_o\ & ( \Cin~input_o\ & ( !\B[1]~input_o\ $ (\A[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \Cin~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (\A[0]~input_o\)) ) ) ) # ( \B[0]~input_o\ & ( !\Cin~input_o\ & ( 
-- !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (\A[0]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\Cin~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001101001100101100110100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X39_Y0_N63
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X45_Y0_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X46_Y4_N10
\c_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~0_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & \A[1]~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \c_int~0_combout\);

-- Location: MLABCELL_X46_Y4_N8
\c_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~1_combout\ = ( \Cin~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\)))) # (\B[1]~input_o\ & (!\A[1]~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \c_int~1_combout\);

-- Location: MLABCELL_X46_Y4_N34
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (((\c_int~1_combout\) # (\c_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_c_int~0_combout\,
	datad => \ALT_INV_c_int~1_combout\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X37_Y0_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X43_Y0_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X46_Y4_N36
\c_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~2_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (\B[2]~input_o\ & \A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[2]~input_o\ & \A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \c_int~2_combout\);

-- Location: MLABCELL_X46_Y4_N0
\gen_blocks:0:c_int[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:c_int[3]~0_combout\ = ( \B[2]~input_o\ & ( (!\A[2]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\A[2]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \gen_blocks:0:c_int[3]~0_combout\);

-- Location: MLABCELL_X46_Y4_N2
\gen_blocks:0:c_int[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:0:c_int[3]~1_combout\ = ( \A[0]~input_o\ & ( (\gen_blocks:0:c_int[3]~0_combout\ & ((\B[0]~input_o\) # (\Cin~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\Cin~input_o\ & (\B[0]~input_o\ & \gen_blocks:0:c_int[3]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_gen_blocks:0:c_int[3]~0_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \gen_blocks:0:c_int[3]~1_combout\);

-- Location: MLABCELL_X46_Y4_N38
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \gen_blocks:0:c_int[3]~1_combout\ & ( !\B[3]~input_o\ $ (\A[3]~input_o\) ) ) # ( !\gen_blocks:0:c_int[3]~1_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (\c_int~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_c_int~2_combout\,
	dataf => \ALT_INV_gen_blocks:0:c_int[3]~1_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X47_Y0_N63
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X48_Y0_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X46_Y4_N32
\G~0\ : arriaii_lcell_comb
-- Equation(s):
-- \G~0_combout\ = ( \B[3]~input_o\ & ( ((\B[2]~input_o\ & \A[2]~input_o\)) # (\A[3]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (\B[2]~input_o\ & (\A[2]~input_o\ & \A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \G~0_combout\);

-- Location: MLABCELL_X46_Y4_N6
\G[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \G[0]~1_combout\ = (!\B[2]~input_o\ & (\A[2]~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\)))) # (\B[2]~input_o\ & (!\A[2]~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000101000000101000010100000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	combout => \G[0]~1_combout\);

-- Location: MLABCELL_X46_Y4_N30
\G[0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \G[0]~2_combout\ = ( \A[1]~input_o\ & ( \G[0]~1_combout\ & ( (!\G~0_combout\ & (!\B[1]~input_o\ & ((!\B[0]~input_o\) # (!\A[0]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( \G[0]~1_combout\ & ( (!\G~0_combout\ & ((!\B[0]~input_o\) # ((!\A[0]~input_o\) # 
-- (!\B[1]~input_o\)))) ) ) ) # ( \A[1]~input_o\ & ( !\G[0]~1_combout\ & ( !\G~0_combout\ ) ) ) # ( !\A[1]~input_o\ & ( !\G[0]~1_combout\ & ( !\G~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G~0_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_G[0]~1_combout\,
	combout => \G[0]~2_combout\);

-- Location: MLABCELL_X46_Y4_N4
\C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \C~0_combout\ = ( \G[0]~1_combout\ & ( \c_int~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c_int~1_combout\,
	dataf => \ALT_INV_G[0]~1_combout\,
	combout => \C~0_combout\);

-- Location: MLABCELL_X49_Y4_N2
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((!\G[0]~2_combout\) # (\C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010011001100101101001100110010110100110011001011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_G[0]~2_combout\,
	datad => \ALT_INV_C~0_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X48_Y0_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X49_Y4_N36
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( \G[0]~2_combout\ & ( \B[5]~input_o\ & ( !\A[5]~input_o\ $ (((!\A[4]~input_o\ & (\C~0_combout\ & \B[4]~input_o\)) # (\A[4]~input_o\ & ((\B[4]~input_o\) # (\C~0_combout\))))) ) ) ) # ( !\G[0]~2_combout\ & ( \B[5]~input_o\ & ( 
-- !\A[5]~input_o\ $ (((\B[4]~input_o\) # (\A[4]~input_o\))) ) ) ) # ( \G[0]~2_combout\ & ( !\B[5]~input_o\ & ( !\A[5]~input_o\ $ (((!\A[4]~input_o\ & ((!\C~0_combout\) # (!\B[4]~input_o\))) # (\A[4]~input_o\ & (!\C~0_combout\ & !\B[4]~input_o\)))) ) ) ) # ( 
-- !\G[0]~2_combout\ & ( !\B[5]~input_o\ & ( !\A[5]~input_o\ $ (((!\A[4]~input_o\ & !\B[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011001100001101100110110010011001001100111100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_C~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_G[0]~2_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \S~31_combout\);

-- Location: MLABCELL_X49_Y4_N4
\c_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~3_combout\ = ( \B[5]~input_o\ & ( (!\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) ) # ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \c_int~3_combout\);

-- Location: IOIBUF_X52_Y0_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X49_Y4_N0
\c_int~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~4_combout\ = ( \B[5]~input_o\ & ( ((\B[4]~input_o\ & \A[4]~input_o\)) # (\A[5]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (\B[4]~input_o\ & (\A[4]~input_o\ & \A[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \c_int~4_combout\);

-- Location: IOIBUF_X59_Y4_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X49_Y4_N10
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \c_int~4_combout\ & ( \B[6]~input_o\ & ( \A[6]~input_o\ ) ) ) # ( !\c_int~4_combout\ & ( \B[6]~input_o\ & ( !\A[6]~input_o\ $ (((\c_int~3_combout\ & ((!\G[0]~2_combout\) # (\C~0_combout\))))) ) ) ) # ( \c_int~4_combout\ & ( 
-- !\B[6]~input_o\ & ( !\A[6]~input_o\ ) ) ) # ( !\c_int~4_combout\ & ( !\B[6]~input_o\ & ( !\A[6]~input_o\ $ (((!\c_int~3_combout\) # ((\G[0]~2_combout\ & !\C~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101011010111100001111000010110100101001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_int~3_combout\,
	datab => \ALT_INV_G[0]~2_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_C~0_combout\,
	datae => \ALT_INV_c_int~4_combout\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y4_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X49_Y4_N16
\gen_blocks:1:c_int[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:c_int[3]~0_combout\ = ( \A[4]~input_o\ & ( (!\B[4]~input_o\ & (!\C~0_combout\ & \G[0]~2_combout\)) ) ) # ( !\A[4]~input_o\ & ( (!\B[4]~input_o\) # ((!\C~0_combout\ & \G[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111100110011001111110000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_C~0_combout\,
	datad => \ALT_INV_G[0]~2_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \gen_blocks:1:c_int[3]~0_combout\);

-- Location: MLABCELL_X49_Y4_N12
\c_int~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~5_combout\ = ( \B[6]~input_o\ & ( ((\B[5]~input_o\ & \A[5]~input_o\)) # (\A[6]~input_o\) ) ) # ( !\B[6]~input_o\ & ( (\B[5]~input_o\ & (\A[6]~input_o\ & \A[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \c_int~5_combout\);

-- Location: MLABCELL_X49_Y4_N14
\gen_blocks:1:c_int[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:1:c_int[3]~1_combout\ = ( \B[6]~input_o\ & ( (!\A[6]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) ) # ( !\B[6]~input_o\ & ( (\A[6]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \gen_blocks:1:c_int[3]~1_combout\);

-- Location: MLABCELL_X49_Y4_N22
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \gen_blocks:1:c_int[3]~1_combout\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\ $ (((!\gen_blocks:1:c_int[3]~0_combout\) # (\c_int~5_combout\)))) ) ) # ( !\gen_blocks:1:c_int[3]~1_combout\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\ $ 
-- (\c_int~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110010110100110011001011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_gen_blocks:1:c_int[3]~0_combout\,
	datad => \ALT_INV_c_int~5_combout\,
	dataf => \ALT_INV_gen_blocks:1:c_int[3]~1_combout\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X41_Y0_N94
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X52_Y0_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X50_Y4_N22
\gen_blocks:2:p_bit[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:p_bit[0]~combout\ = ( \B[8]~input_o\ & ( !\A[8]~input_o\ ) ) # ( !\B[8]~input_o\ & ( \A[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \gen_blocks:2:p_bit[0]~combout\);

-- Location: MLABCELL_X49_Y4_N18
\G[1]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \G[1]~3_combout\ = ( \B[6]~input_o\ & ( (!\A[6]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\))) ) ) # ( !\B[6]~input_o\ & ( (\A[6]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \G[1]~3_combout\);

-- Location: MLABCELL_X49_Y4_N6
\G[1]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \G[1]~5_combout\ = ( \B[5]~input_o\ & ( ((\A[4]~input_o\ & \B[4]~input_o\)) # (\A[5]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (\A[4]~input_o\ & (\B[4]~input_o\ & \A[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \G[1]~5_combout\);

-- Location: MLABCELL_X49_Y4_N20
\G~4\ : arriaii_lcell_comb
-- Equation(s):
-- \G~4_combout\ = ( \B[6]~input_o\ & ( (!\B[7]~input_o\ & (\A[7]~input_o\ & \A[6]~input_o\)) # (\B[7]~input_o\ & ((\A[6]~input_o\) # (\A[7]~input_o\))) ) ) # ( !\B[6]~input_o\ & ( (\B[7]~input_o\ & \A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \G~4_combout\);

-- Location: LABCELL_X50_Y4_N4
\C~1\ : arriaii_lcell_comb
-- Equation(s):
-- \C~1_combout\ = ( !\G~4_combout\ & ( (!\G[1]~3_combout\) # ((!\G[1]~5_combout\ & ((!\c_int~3_combout\) # (\G[0]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111001100111011111100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_int~3_combout\,
	datab => \ALT_INV_G[1]~3_combout\,
	datac => \ALT_INV_G[0]~2_combout\,
	datad => \ALT_INV_G[1]~5_combout\,
	dataf => \ALT_INV_G~4_combout\,
	combout => \C~1_combout\);

-- Location: MLABCELL_X49_Y4_N24
\C~2\ : arriaii_lcell_comb
-- Equation(s):
-- \C~2_combout\ = (\C~0_combout\ & (\c_int~3_combout\ & \G[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~0_combout\,
	datac => \ALT_INV_c_int~3_combout\,
	datad => \ALT_INV_G[1]~3_combout\,
	combout => \C~2_combout\);

-- Location: LABCELL_X50_Y4_N10
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \C~2_combout\ & ( !\gen_blocks:2:p_bit[0]~combout\ ) ) # ( !\C~2_combout\ & ( !\gen_blocks:2:p_bit[0]~combout\ $ (\C~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_gen_blocks:2:p_bit[0]~combout\,
	datad => \ALT_INV_C~1_combout\,
	dataf => \ALT_INV_C~2_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X54_Y0_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X55_Y0_N63
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X50_Y4_N16
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = ( \C~1_combout\ & ( \A[9]~input_o\ & ( !\B[9]~input_o\ $ (((!\A[8]~input_o\ & (\B[8]~input_o\ & \C~2_combout\)) # (\A[8]~input_o\ & ((\C~2_combout\) # (\B[8]~input_o\))))) ) ) ) # ( !\C~1_combout\ & ( \A[9]~input_o\ & ( !\B[9]~input_o\ $ 
-- (((\B[8]~input_o\) # (\A[8]~input_o\))) ) ) ) # ( \C~1_combout\ & ( !\A[9]~input_o\ & ( !\B[9]~input_o\ $ (((!\A[8]~input_o\ & ((!\B[8]~input_o\) # (!\C~2_combout\))) # (\A[8]~input_o\ & (!\B[8]~input_o\ & !\C~2_combout\)))) ) ) ) # ( !\C~1_combout\ & ( 
-- !\A[9]~input_o\ & ( !\B[9]~input_o\ $ (((!\A[8]~input_o\ & !\B[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010010101100110101010010101100101011010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_C~2_combout\,
	datae => \ALT_INV_C~1_combout\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X48_Y0_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X41_Y0_N32
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X50_Y4_N12
\c_int~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~6_combout\ = ( \C~2_combout\ & ( (\gen_blocks:2:p_bit[0]~combout\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\))) ) ) # ( !\C~2_combout\ & ( (!\C~1_combout\ & (\gen_blocks:2:p_bit[0]~combout\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000000000000110000000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_C~1_combout\,
	datad => \ALT_INV_gen_blocks:2:p_bit[0]~combout\,
	dataf => \ALT_INV_C~2_combout\,
	combout => \c_int~6_combout\);

-- Location: LABCELL_X50_Y4_N14
\c_int~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~7_combout\ = ( \B[9]~input_o\ & ( ((\B[8]~input_o\ & \A[8]~input_o\)) # (\A[9]~input_o\) ) ) # ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & (\B[8]~input_o\ & \A[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \c_int~7_combout\);

-- Location: LABCELL_X50_Y4_N20
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \c_int~7_combout\ & ( !\A[10]~input_o\ $ (\B[10]~input_o\) ) ) # ( !\c_int~7_combout\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (\c_int~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_c_int~6_combout\,
	dataf => \ALT_INV_c_int~7_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X54_Y0_N94
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X50_Y0_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X50_Y4_N38
\gen_blocks:2:c_int[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:c_int[3]~1_combout\ = ( \A[9]~input_o\ & ( (!\B[9]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) ) # ( !\A[9]~input_o\ & ( (\B[9]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \gen_blocks:2:c_int[3]~1_combout\);

-- Location: LABCELL_X50_Y4_N36
\c_int~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~8_combout\ = ( \A[9]~input_o\ & ( (!\B[9]~input_o\ & (\A[10]~input_o\ & \B[10]~input_o\)) # (\B[9]~input_o\ & ((\B[10]~input_o\) # (\A[10]~input_o\))) ) ) # ( !\A[9]~input_o\ & ( (\A[10]~input_o\ & \B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \c_int~8_combout\);

-- Location: LABCELL_X50_Y4_N2
\gen_blocks:2:c_int[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:2:c_int[3]~0_combout\ = ( \C~2_combout\ & ( (!\A[8]~input_o\ & !\B[8]~input_o\) ) ) # ( !\C~2_combout\ & ( (!\A[8]~input_o\ & ((!\B[8]~input_o\) # (\C~1_combout\))) # (\A[8]~input_o\ & (!\B[8]~input_o\ & \C~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011111010101000001111101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_C~1_combout\,
	dataf => \ALT_INV_C~2_combout\,
	combout => \gen_blocks:2:c_int[3]~0_combout\);

-- Location: LABCELL_X50_Y4_N24
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \gen_blocks:2:c_int[3]~0_combout\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (\c_int~8_combout\)) ) ) # ( !\gen_blocks:2:c_int[3]~0_combout\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (((\c_int~8_combout\) # 
-- (\gen_blocks:2:c_int[3]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_gen_blocks:2:c_int[3]~1_combout\,
	datad => \ALT_INV_c_int~8_combout\,
	dataf => \ALT_INV_gen_blocks:2:c_int[3]~0_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X59_Y7_N94
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X55_Y6_N20
\gen_blocks:3:p_bit[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:p_bit[0]~combout\ = ( \B[12]~input_o\ & ( !\A[12]~input_o\ ) ) # ( !\B[12]~input_o\ & ( \A[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \gen_blocks:3:p_bit[0]~combout\);

-- Location: LABCELL_X50_Y4_N28
\G~6\ : arriaii_lcell_comb
-- Equation(s):
-- \G~6_combout\ = ( \B[10]~input_o\ & ( \A[9]~input_o\ & ( (!\A[10]~input_o\ & (!\B[9]~input_o\ & (!\A[11]~input_o\ $ (!\B[11]~input_o\)))) ) ) ) # ( !\B[10]~input_o\ & ( \A[9]~input_o\ & ( (\A[10]~input_o\ & (!\B[9]~input_o\ & (!\A[11]~input_o\ $ 
-- (!\B[11]~input_o\)))) ) ) ) # ( \B[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\A[10]~input_o\ & (\B[9]~input_o\ & (!\A[11]~input_o\ $ (!\B[11]~input_o\)))) ) ) ) # ( !\B[10]~input_o\ & ( !\A[9]~input_o\ & ( (\A[10]~input_o\ & (\B[9]~input_o\ & 
-- (!\A[11]~input_o\ $ (!\B[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000001000000100000010000001000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \G~6_combout\);

-- Location: LABCELL_X50_Y4_N8
\C~5\ : arriaii_lcell_comb
-- Equation(s):
-- \C~5_combout\ = ( \G[1]~3_combout\ & ( (\gen_blocks:2:p_bit[0]~combout\ & (\G~6_combout\ & ((\G[1]~5_combout\) # (\G~4_combout\)))) ) ) # ( !\G[1]~3_combout\ & ( (\G~4_combout\ & (\gen_blocks:2:p_bit[0]~combout\ & \G~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000110000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G~4_combout\,
	datab => \ALT_INV_gen_blocks:2:p_bit[0]~combout\,
	datac => \ALT_INV_G~6_combout\,
	datad => \ALT_INV_G[1]~5_combout\,
	dataf => \ALT_INV_G[1]~3_combout\,
	combout => \C~5_combout\);

-- Location: LABCELL_X50_Y4_N6
\C~3\ : arriaii_lcell_comb
-- Equation(s):
-- \C~3_combout\ = ( \G~6_combout\ & ( (\c_int~3_combout\ & (\G[1]~3_combout\ & \gen_blocks:2:p_bit[0]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_int~3_combout\,
	datab => \ALT_INV_G[1]~3_combout\,
	datac => \ALT_INV_gen_blocks:2:p_bit[0]~combout\,
	dataf => \ALT_INV_G~6_combout\,
	combout => \C~3_combout\);

-- Location: LABCELL_X50_Y4_N26
\G~7\ : arriaii_lcell_comb
-- Equation(s):
-- \G~7_combout\ = (!\A[11]~input_o\ & (\B[11]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\)))) # (\A[11]~input_o\ & (!\B[11]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	combout => \G~7_combout\);

-- Location: LABCELL_X50_Y4_N0
\G~8\ : arriaii_lcell_comb
-- Equation(s):
-- \G~8_combout\ = ( \A[11]~input_o\ & ( ((\A[10]~input_o\ & \B[10]~input_o\)) # (\B[11]~input_o\) ) ) # ( !\A[11]~input_o\ & ( (\A[10]~input_o\ & (\B[10]~input_o\ & \B[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \G~8_combout\);

-- Location: LABCELL_X50_Y4_N32
\C~6\ : arriaii_lcell_comb
-- Equation(s):
-- \C~6_combout\ = ( \A[8]~input_o\ & ( \A[9]~input_o\ & ( (!\G~8_combout\ & ((!\G~7_combout\) # ((!\B[8]~input_o\ & !\B[9]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( \A[9]~input_o\ & ( (!\G~8_combout\ & ((!\G~7_combout\) # (!\B[9]~input_o\))) ) ) ) # ( 
-- \A[8]~input_o\ & ( !\A[9]~input_o\ & ( (!\G~8_combout\ & ((!\B[8]~input_o\) # ((!\G~7_combout\) # (!\B[9]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( !\A[9]~input_o\ & ( !\G~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111100000000011111100000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_G~7_combout\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_G~8_combout\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \C~6_combout\);

-- Location: MLABCELL_X49_Y4_N26
\C~7\ : arriaii_lcell_comb
-- Equation(s):
-- \C~7_combout\ = ( \C~6_combout\ & ( (!\C~5_combout\ & ((!\C~3_combout\) # (\G[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_C~5_combout\,
	datac => \ALT_INV_C~3_combout\,
	datad => \ALT_INV_G[0]~2_combout\,
	dataf => \ALT_INV_C~6_combout\,
	combout => \C~7_combout\);

-- Location: MLABCELL_X49_Y4_N30
\C~4\ : arriaii_lcell_comb
-- Equation(s):
-- \C~4_combout\ = ( \C~3_combout\ & ( \C~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~0_combout\,
	dataf => \ALT_INV_C~3_combout\,
	combout => \C~4_combout\);

-- Location: MLABCELL_X49_Y4_N28
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \C~4_combout\ & ( !\gen_blocks:3:p_bit[0]~combout\ ) ) # ( !\C~4_combout\ & ( !\gen_blocks:3:p_bit[0]~combout\ $ (\C~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_gen_blocks:3:p_bit[0]~combout\,
	datad => \ALT_INV_C~7_combout\,
	dataf => \ALT_INV_C~4_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X59_Y6_N63
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X55_Y0_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LABCELL_X55_Y6_N18
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( \B[13]~input_o\ & ( \B[12]~input_o\ & ( !\A[13]~input_o\ $ (((!\C~7_combout\) # ((\A[12]~input_o\) # (\C~4_combout\)))) ) ) ) # ( !\B[13]~input_o\ & ( \B[12]~input_o\ & ( !\A[13]~input_o\ $ (((\C~7_combout\ & (!\C~4_combout\ & 
-- !\A[12]~input_o\)))) ) ) ) # ( \B[13]~input_o\ & ( !\B[12]~input_o\ & ( !\A[13]~input_o\ $ (((\A[12]~input_o\ & ((!\C~7_combout\) # (\C~4_combout\))))) ) ) ) # ( !\B[13]~input_o\ & ( !\B[12]~input_o\ & ( !\A[13]~input_o\ $ (((!\A[12]~input_o\) # 
-- ((\C~7_combout\ & !\C~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110011100110011000110001110011100110011000110001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~7_combout\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_C~4_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X59_Y4_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X49_Y4_N34
\gen_blocks:3:c_int[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[3]~0_combout\ = ( \G[0]~2_combout\ & ( \C~3_combout\ & ( (\gen_blocks:3:p_bit[0]~combout\ & ((!\C~6_combout\) # ((\C~0_combout\) # (\C~5_combout\)))) ) ) ) # ( !\G[0]~2_combout\ & ( \C~3_combout\ & ( \gen_blocks:3:p_bit[0]~combout\ ) ) 
-- ) # ( \G[0]~2_combout\ & ( !\C~3_combout\ & ( (\gen_blocks:3:p_bit[0]~combout\ & ((!\C~6_combout\) # (\C~5_combout\))) ) ) ) # ( !\G[0]~2_combout\ & ( !\C~3_combout\ & ( (\gen_blocks:3:p_bit[0]~combout\ & ((!\C~6_combout\) # (\C~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100110011001100110010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~6_combout\,
	datab => \ALT_INV_gen_blocks:3:p_bit[0]~combout\,
	datac => \ALT_INV_C~5_combout\,
	datad => \ALT_INV_C~0_combout\,
	datae => \ALT_INV_G[0]~2_combout\,
	dataf => \ALT_INV_C~3_combout\,
	combout => \gen_blocks:3:c_int[3]~0_combout\);

-- Location: LABCELL_X55_Y6_N28
\c_int~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~9_combout\ = ( \B[13]~input_o\ & ( \B[12]~input_o\ & ( (\A[13]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\B[13]~input_o\ & ( \B[12]~input_o\ & ( (\A[12]~input_o\ & \A[13]~input_o\) ) ) ) # ( \B[13]~input_o\ & ( !\B[12]~input_o\ & ( \A[13]~input_o\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \c_int~9_combout\);

-- Location: LABCELL_X55_Y6_N26
\gen_blocks:3:p_bit[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:p_bit[1]~combout\ = ( !\B[13]~input_o\ & ( \A[13]~input_o\ ) ) # ( \B[13]~input_o\ & ( !\A[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \gen_blocks:3:p_bit[1]~combout\);

-- Location: IOIBUF_X59_Y7_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X55_Y6_N12
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \gen_blocks:3:p_bit[1]~combout\ & ( \A[14]~input_o\ & ( !\B[14]~input_o\ $ (((\c_int~9_combout\) # (\gen_blocks:3:c_int[3]~0_combout\))) ) ) ) # ( !\gen_blocks:3:p_bit[1]~combout\ & ( \A[14]~input_o\ & ( !\B[14]~input_o\ $ 
-- (\c_int~9_combout\) ) ) ) # ( \gen_blocks:3:p_bit[1]~combout\ & ( !\A[14]~input_o\ & ( !\B[14]~input_o\ $ (((!\gen_blocks:3:c_int[3]~0_combout\ & !\c_int~9_combout\))) ) ) ) # ( !\gen_blocks:3:p_bit[1]~combout\ & ( !\A[14]~input_o\ & ( !\B[14]~input_o\ $ 
-- (!\c_int~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010011010100110101010100101101001011001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_gen_blocks:3:c_int[3]~0_combout\,
	datac => \ALT_INV_c_int~9_combout\,
	datae => \ALT_INV_gen_blocks:3:p_bit[1]~combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \S~11_combout\);

-- Location: LABCELL_X55_Y6_N2
\gen_blocks:3:c_int[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:3:c_int[3]~1_combout\ = ( \gen_blocks:3:p_bit[1]~combout\ & ( \B[12]~input_o\ & ( (!\gen_blocks:3:c_int[3]~0_combout\ & (\A[12]~input_o\ & (!\A[14]~input_o\ $ (!\B[14]~input_o\)))) # (\gen_blocks:3:c_int[3]~0_combout\ & (!\A[14]~input_o\ $ 
-- ((!\B[14]~input_o\)))) ) ) ) # ( \gen_blocks:3:p_bit[1]~combout\ & ( !\B[12]~input_o\ & ( (\gen_blocks:3:c_int[3]~0_combout\ & (!\A[14]~input_o\ $ (!\B[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100100001001000000000000000000001001001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_gen_blocks:3:c_int[3]~0_combout\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_gen_blocks:3:p_bit[1]~combout\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \gen_blocks:3:c_int[3]~1_combout\);

-- Location: IOIBUF_X59_Y6_N94
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X55_Y6_N36
\c_int~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~10_combout\ = ( \A[13]~input_o\ & ( (!\A[14]~input_o\ & (\B[14]~input_o\ & \B[13]~input_o\)) # (\A[14]~input_o\ & ((\B[13]~input_o\) # (\B[14]~input_o\))) ) ) # ( !\A[13]~input_o\ & ( (\A[14]~input_o\ & \B[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \c_int~10_combout\);

-- Location: IOIBUF_X59_Y4_N1
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X55_Y6_N38
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \A[15]~input_o\ & ( !\B[15]~input_o\ $ (((\c_int~10_combout\) # (\gen_blocks:3:c_int[3]~1_combout\))) ) ) # ( !\A[15]~input_o\ & ( !\B[15]~input_o\ $ (((!\gen_blocks:3:c_int[3]~1_combout\ & !\c_int~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000011000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_gen_blocks:3:c_int[3]~1_combout\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_c_int~10_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X59_Y9_N32
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LABCELL_X55_Y6_N6
\C~8\ : arriaii_lcell_comb
-- Equation(s):
-- \C~8_combout\ = ( \B[15]~input_o\ & ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & !\A[15]~input_o\) ) ) ) # ( !\B[15]~input_o\ & ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & \A[15]~input_o\) ) ) ) # ( \B[15]~input_o\ & ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & 
-- !\A[15]~input_o\) ) ) ) # ( !\B[15]~input_o\ & ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & \A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000000001010000010101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \C~8_combout\);

-- Location: LABCELL_X58_Y10_N22
\C~9\ : arriaii_lcell_comb
-- Equation(s):
-- \C~9_combout\ = ( \gen_blocks:3:c_int[3]~0_combout\ & ( \C~8_combout\ & ( \gen_blocks:3:p_bit[1]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_gen_blocks:3:p_bit[1]~combout\,
	datae => \ALT_INV_gen_blocks:3:c_int[3]~0_combout\,
	dataf => \ALT_INV_C~8_combout\,
	combout => \C~9_combout\);

-- Location: LABCELL_X55_Y6_N10
\G~9\ : arriaii_lcell_comb
-- Equation(s):
-- \G~9_combout\ = ( \B[15]~input_o\ & ( \A[14]~input_o\ & ( (\A[15]~input_o\) # (\B[14]~input_o\) ) ) ) # ( !\B[15]~input_o\ & ( \A[14]~input_o\ & ( (\B[14]~input_o\ & \A[15]~input_o\) ) ) ) # ( \B[15]~input_o\ & ( !\A[14]~input_o\ & ( \A[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000101000001010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \G~9_combout\);

-- Location: LABCELL_X55_Y6_N34
\G[3]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \G[3]~10_combout\ = ( \B[13]~input_o\ & ( \B[12]~input_o\ & ( (!\G~9_combout\ & ((!\C~8_combout\) # ((!\A[12]~input_o\ & !\A[13]~input_o\)))) ) ) ) # ( !\B[13]~input_o\ & ( \B[12]~input_o\ & ( (!\G~9_combout\ & ((!\A[12]~input_o\) # ((!\A[13]~input_o\) # 
-- (!\C~8_combout\)))) ) ) ) # ( \B[13]~input_o\ & ( !\B[12]~input_o\ & ( (!\G~9_combout\ & ((!\A[13]~input_o\) # (!\C~8_combout\))) ) ) ) # ( !\B[13]~input_o\ & ( !\B[12]~input_o\ & ( !\G~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100000011001100110010001100110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_G~9_combout\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_C~8_combout\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \G[3]~10_combout\);

-- Location: IOIBUF_X59_Y13_N1
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LABCELL_X58_Y10_N6
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \A[16]~input_o\ & ( !\B[16]~input_o\ $ (((!\G[3]~10_combout\) # (\C~9_combout\))) ) ) # ( !\A[16]~input_o\ & ( !\B[16]~input_o\ $ (((!\C~9_combout\ & \G[3]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001011010101010100101101001010101101001010101010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_C~9_combout\,
	datad => \ALT_INV_G[3]~10_combout\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X59_Y13_N94
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X58_Y10_N36
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( \G[3]~10_combout\ & ( \A[16]~input_o\ & ( !\A[17]~input_o\ $ (!\B[17]~input_o\ $ (((\B[16]~input_o\) # (\C~9_combout\)))) ) ) ) # ( !\G[3]~10_combout\ & ( \A[16]~input_o\ & ( !\A[17]~input_o\ $ (\B[17]~input_o\) ) ) ) # ( 
-- \G[3]~10_combout\ & ( !\A[16]~input_o\ & ( !\A[17]~input_o\ $ (!\B[17]~input_o\ $ (((\C~9_combout\ & \B[16]~input_o\)))) ) ) ) # ( !\G[3]~10_combout\ & ( !\A[16]~input_o\ & ( !\A[17]~input_o\ $ (!\B[17]~input_o\ $ (\B[16]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110100110100110100101101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_C~9_combout\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	datae => \ALT_INV_G[3]~10_combout\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \S~28_combout\);

-- Location: LABCELL_X58_Y10_N4
\c_int~12\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~12_combout\ = ( \A[17]~input_o\ & ( (!\B[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) ) # ( !\A[17]~input_o\ & ( (\B[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \c_int~12_combout\);

-- Location: IOIBUF_X59_Y12_N63
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X59_Y10_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LABCELL_X58_Y10_N30
\gen_blocks:4:p_bit[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:p_bit[2]~combout\ = ( \B[18]~input_o\ & ( !\A[18]~input_o\ ) ) # ( !\B[18]~input_o\ & ( \A[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \gen_blocks:4:p_bit[2]~combout\);

-- Location: LABCELL_X58_Y10_N14
\c_int~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~11_combout\ = ( \A[17]~input_o\ & ( ((\A[16]~input_o\ & \B[16]~input_o\)) # (\B[17]~input_o\) ) ) # ( !\A[17]~input_o\ & ( (\B[17]~input_o\ & (\A[16]~input_o\ & \B[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \c_int~11_combout\);

-- Location: LABCELL_X58_Y10_N28
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \c_int~11_combout\ & ( !\gen_blocks:4:p_bit[2]~combout\ ) ) # ( !\c_int~11_combout\ & ( !\gen_blocks:4:p_bit[2]~combout\ $ (((!\c_int~12_combout\) # ((\G[3]~10_combout\ & !\C~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001101100110011000110110011011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_int~12_combout\,
	datab => \ALT_INV_gen_blocks:4:p_bit[2]~combout\,
	datac => \ALT_INV_G[3]~10_combout\,
	datad => \ALT_INV_C~9_combout\,
	dataf => \ALT_INV_c_int~11_combout\,
	combout => \S~14_combout\);

-- Location: LABCELL_X58_Y10_N12
\c_int~14\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~14_combout\ = ( \A[17]~input_o\ & ( (!\B[17]~input_o\ & (\A[16]~input_o\ & \B[16]~input_o\)) ) ) # ( !\A[17]~input_o\ & ( (\B[17]~input_o\ & (\A[16]~input_o\ & \B[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \c_int~14_combout\);

-- Location: LABCELL_X58_Y10_N2
\c_int~13\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~13_combout\ = ( \A[17]~input_o\ & ( (!\B[18]~input_o\ & (\A[18]~input_o\ & \B[17]~input_o\)) # (\B[18]~input_o\ & ((\B[17]~input_o\) # (\A[18]~input_o\))) ) ) # ( !\A[17]~input_o\ & ( (\B[18]~input_o\ & \A[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \c_int~13_combout\);

-- Location: LABCELL_X58_Y10_N26
\c_int~15\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~15_combout\ = ( \gen_blocks:4:p_bit[2]~combout\ & ( \gen_blocks:3:c_int[3]~0_combout\ & ( (\c_int~12_combout\ & ((!\G[3]~10_combout\) # ((\C~8_combout\ & \gen_blocks:3:p_bit[1]~combout\)))) ) ) ) # ( \gen_blocks:4:p_bit[2]~combout\ & ( 
-- !\gen_blocks:3:c_int[3]~0_combout\ & ( (\c_int~12_combout\ & !\G[3]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000101010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_int~12_combout\,
	datab => \ALT_INV_C~8_combout\,
	datac => \ALT_INV_gen_blocks:3:p_bit[1]~combout\,
	datad => \ALT_INV_G[3]~10_combout\,
	datae => \ALT_INV_gen_blocks:4:p_bit[2]~combout\,
	dataf => \ALT_INV_gen_blocks:3:c_int[3]~0_combout\,
	combout => \c_int~15_combout\);

-- Location: IOIBUF_X59_Y10_N32
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X59_Y9_N63
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X58_Y10_N16
\gen_blocks:4:p_bit[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:4:p_bit[3]~combout\ = ( \A[19]~input_o\ & ( !\B[19]~input_o\ ) ) # ( !\A[19]~input_o\ & ( \B[19]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \gen_blocks:4:p_bit[3]~combout\);

-- Location: LABCELL_X58_Y10_N18
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \gen_blocks:4:p_bit[3]~combout\ & ( (!\c_int~13_combout\ & (!\c_int~15_combout\ & ((!\c_int~14_combout\) # (!\gen_blocks:4:p_bit[2]~combout\)))) ) ) # ( !\gen_blocks:4:p_bit[3]~combout\ & ( (((\c_int~14_combout\ & 
-- \gen_blocks:4:p_bit[2]~combout\)) # (\c_int~15_combout\)) # (\c_int~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111111001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_int~14_combout\,
	datab => \ALT_INV_c_int~13_combout\,
	datac => \ALT_INV_gen_blocks:4:p_bit[2]~combout\,
	datad => \ALT_INV_c_int~15_combout\,
	dataf => \ALT_INV_gen_blocks:4:p_bit[3]~combout\,
	combout => \S~15_combout\);

-- Location: LABCELL_X58_Y10_N0
\G~11\ : arriaii_lcell_comb
-- Equation(s):
-- \G~11_combout\ = ( \A[19]~input_o\ & ( ((\B[18]~input_o\ & \A[18]~input_o\)) # (\B[19]~input_o\) ) ) # ( !\A[19]~input_o\ & ( (\B[18]~input_o\ & (\A[18]~input_o\ & \B[19]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \G~11_combout\);

-- Location: LABCELL_X58_Y10_N34
\G[4]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \G[4]~12_combout\ = ( \c_int~14_combout\ & ( \A[17]~input_o\ & ( (!\G~11_combout\ & ((!\gen_blocks:4:p_bit[2]~combout\) # (!\gen_blocks:4:p_bit[3]~combout\))) ) ) ) # ( !\c_int~14_combout\ & ( \A[17]~input_o\ & ( (!\G~11_combout\ & ((!\B[17]~input_o\) # 
-- ((!\gen_blocks:4:p_bit[2]~combout\) # (!\gen_blocks:4:p_bit[3]~combout\)))) ) ) ) # ( \c_int~14_combout\ & ( !\A[17]~input_o\ & ( (!\G~11_combout\ & ((!\gen_blocks:4:p_bit[2]~combout\) # (!\gen_blocks:4:p_bit[3]~combout\))) ) ) ) # ( !\c_int~14_combout\ & 
-- ( !\A[17]~input_o\ & ( !\G~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111000000000011111110000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_gen_blocks:4:p_bit[2]~combout\,
	datac => \ALT_INV_gen_blocks:4:p_bit[3]~combout\,
	datad => \ALT_INV_G~11_combout\,
	datae => \ALT_INV_c_int~14_combout\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \G[4]~12_combout\);

-- Location: IOIBUF_X59_Y26_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X58_Y10_N8
\C~10\ : arriaii_lcell_comb
-- Equation(s):
-- \C~10_combout\ = ( \c_int~15_combout\ & ( \gen_blocks:4:p_bit[3]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_c_int~15_combout\,
	dataf => \ALT_INV_gen_blocks:4:p_bit[3]~combout\,
	combout => \C~10_combout\);

-- Location: IOIBUF_X59_Y26_N94
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LABCELL_X58_Y26_N2
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = ( \C~10_combout\ & ( \A[20]~input_o\ & ( \B[20]~input_o\ ) ) ) # ( !\C~10_combout\ & ( \A[20]~input_o\ & ( !\G[4]~12_combout\ $ (!\B[20]~input_o\) ) ) ) # ( \C~10_combout\ & ( !\A[20]~input_o\ & ( !\B[20]~input_o\ ) ) ) # ( 
-- !\C~10_combout\ & ( !\A[20]~input_o\ & ( !\G[4]~12_combout\ $ (\B[20]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011111111110000000000110011110011000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G[4]~12_combout\,
	datad => \ALT_INV_B[20]~input_o\,
	datae => \ALT_INV_C~10_combout\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X59_Y26_N1
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X59_Y28_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LABCELL_X58_Y26_N38
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \A[21]~input_o\ & ( \B[21]~input_o\ & ( (!\B[20]~input_o\ & (\A[20]~input_o\ & ((!\G[4]~12_combout\) # (\C~10_combout\)))) # (\B[20]~input_o\ & ((!\G[4]~12_combout\) # ((\A[20]~input_o\) # (\C~10_combout\)))) ) ) ) # ( !\A[21]~input_o\ 
-- & ( \B[21]~input_o\ & ( (!\B[20]~input_o\ & ((!\A[20]~input_o\) # ((\G[4]~12_combout\ & !\C~10_combout\)))) # (\B[20]~input_o\ & (\G[4]~12_combout\ & (!\C~10_combout\ & !\A[20]~input_o\))) ) ) ) # ( \A[21]~input_o\ & ( !\B[21]~input_o\ & ( 
-- (!\B[20]~input_o\ & ((!\A[20]~input_o\) # ((\G[4]~12_combout\ & !\C~10_combout\)))) # (\B[20]~input_o\ & (\G[4]~12_combout\ & (!\C~10_combout\ & !\A[20]~input_o\))) ) ) ) # ( !\A[21]~input_o\ & ( !\B[21]~input_o\ & ( (!\B[20]~input_o\ & (\A[20]~input_o\ & 
-- ((!\G[4]~12_combout\) # (\C~10_combout\)))) # (\B[20]~input_o\ & ((!\G[4]~12_combout\) # ((\A[20]~input_o\) # (\C~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010111011111101110100010000010111010001000000100010111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_G[4]~12_combout\,
	datac => \ALT_INV_C~10_combout\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X59_Y25_N94
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X59_Y26_N63
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LABCELL_X58_Y26_N6
\gen_blocks:5:p_bit[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:p_bit[2]~combout\ = ( \A[22]~input_o\ & ( !\B[22]~input_o\ ) ) # ( !\A[22]~input_o\ & ( \B[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \gen_blocks:5:p_bit[2]~combout\);

-- Location: LABCELL_X58_Y26_N10
\c_int~16\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~16_combout\ = ( \B[20]~input_o\ & ( \B[21]~input_o\ & ( (!\A[21]~input_o\ & !\A[20]~input_o\) ) ) ) # ( !\B[20]~input_o\ & ( \B[21]~input_o\ & ( (!\A[21]~input_o\ & \A[20]~input_o\) ) ) ) # ( \B[20]~input_o\ & ( !\B[21]~input_o\ & ( 
-- (\A[21]~input_o\ & !\A[20]~input_o\) ) ) ) # ( !\B[20]~input_o\ & ( !\B[21]~input_o\ & ( (\A[21]~input_o\ & \A[20]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101010000000000000000101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \c_int~16_combout\);

-- Location: LABCELL_X58_Y26_N12
\c_int~17\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~17_combout\ = ( \c_int~16_combout\ & ( (!\G[4]~12_combout\) # ((\gen_blocks:4:p_bit[3]~combout\ & \c_int~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_gen_blocks:4:p_bit[3]~combout\,
	datac => \ALT_INV_c_int~15_combout\,
	datad => \ALT_INV_G[4]~12_combout\,
	dataf => \ALT_INV_c_int~16_combout\,
	combout => \c_int~17_combout\);

-- Location: LABCELL_X58_Y26_N32
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \B[20]~input_o\ & ( \B[21]~input_o\ & ( !\gen_blocks:5:p_bit[2]~combout\ $ (((!\A[21]~input_o\ & (!\A[20]~input_o\ & !\c_int~17_combout\)))) ) ) ) # ( !\B[20]~input_o\ & ( \B[21]~input_o\ & ( !\gen_blocks:5:p_bit[2]~combout\ $ 
-- (((!\A[21]~input_o\ & !\c_int~17_combout\))) ) ) ) # ( \B[20]~input_o\ & ( !\B[21]~input_o\ & ( !\gen_blocks:5:p_bit[2]~combout\ $ (((!\c_int~17_combout\ & ((!\A[21]~input_o\) # (!\A[20]~input_o\))))) ) ) ) # ( !\B[20]~input_o\ & ( !\B[21]~input_o\ & ( 
-- !\gen_blocks:5:p_bit[2]~combout\ $ (!\c_int~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001101101100110001100110110011000110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_gen_blocks:5:p_bit[2]~combout\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_c_int~17_combout\,
	datae => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X59_Y25_N32
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y28_N1
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X58_Y26_N18
\gen_blocks:5:p_bit[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:5:p_bit[3]~combout\ = ( !\A[23]~input_o\ & ( \B[23]~input_o\ ) ) # ( \A[23]~input_o\ & ( !\B[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \gen_blocks:5:p_bit[3]~combout\);

-- Location: LABCELL_X58_Y26_N20
\c_int~18\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~18_combout\ = ( \B[21]~input_o\ & ( (!\A[22]~input_o\ & (\B[22]~input_o\ & \A[21]~input_o\)) # (\A[22]~input_o\ & ((\A[21]~input_o\) # (\B[22]~input_o\))) ) ) # ( !\B[21]~input_o\ & ( (\A[22]~input_o\ & \B[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \c_int~18_combout\);

-- Location: LABCELL_X58_Y26_N14
\c_int~19\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~19_combout\ = ( \A[20]~input_o\ & ( (\B[20]~input_o\ & (!\A[21]~input_o\ $ (!\B[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \c_int~19_combout\);

-- Location: LABCELL_X58_Y26_N4
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \c_int~19_combout\ & ( !\gen_blocks:5:p_bit[3]~combout\ $ (((!\gen_blocks:5:p_bit[2]~combout\ & !\c_int~18_combout\))) ) ) # ( !\c_int~19_combout\ & ( !\gen_blocks:5:p_bit[3]~combout\ $ (((!\c_int~18_combout\ & 
-- ((!\gen_blocks:5:p_bit[2]~combout\) # (!\c_int~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101010010110100110101001101010011010100110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gen_blocks:5:p_bit[3]~combout\,
	datab => \ALT_INV_gen_blocks:5:p_bit[2]~combout\,
	datac => \ALT_INV_c_int~18_combout\,
	datad => \ALT_INV_c_int~17_combout\,
	dataf => \ALT_INV_c_int~19_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X59_Y30_N63
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LABCELL_X58_Y26_N24
\C~11\ : arriaii_lcell_comb
-- Equation(s):
-- \C~11_combout\ = ( \G[4]~12_combout\ & ( \c_int~16_combout\ & ( (\gen_blocks:5:p_bit[3]~combout\ & (\gen_blocks:4:p_bit[3]~combout\ & (\c_int~15_combout\ & \gen_blocks:5:p_bit[2]~combout\))) ) ) ) # ( !\G[4]~12_combout\ & ( \c_int~16_combout\ & ( 
-- (\gen_blocks:5:p_bit[3]~combout\ & \gen_blocks:5:p_bit[2]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gen_blocks:5:p_bit[3]~combout\,
	datab => \ALT_INV_gen_blocks:4:p_bit[3]~combout\,
	datac => \ALT_INV_c_int~15_combout\,
	datad => \ALT_INV_gen_blocks:5:p_bit[2]~combout\,
	datae => \ALT_INV_G[4]~12_combout\,
	dataf => \ALT_INV_c_int~16_combout\,
	combout => \C~11_combout\);

-- Location: LABCELL_X58_Y26_N22
\G~13\ : arriaii_lcell_comb
-- Equation(s):
-- \G~13_combout\ = ( \B[23]~input_o\ & ( ((\A[22]~input_o\ & \B[22]~input_o\)) # (\A[23]~input_o\) ) ) # ( !\B[23]~input_o\ & ( (\A[22]~input_o\ & (\B[22]~input_o\ & \A[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \G~13_combout\);

-- Location: LABCELL_X58_Y26_N30
\G[5]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \G[5]~14_combout\ = ( \gen_blocks:5:p_bit[3]~combout\ & ( \gen_blocks:5:p_bit[2]~combout\ & ( (!\c_int~19_combout\ & (!\G~13_combout\ & ((!\B[21]~input_o\) # (!\A[21]~input_o\)))) ) ) ) # ( !\gen_blocks:5:p_bit[3]~combout\ & ( 
-- \gen_blocks:5:p_bit[2]~combout\ & ( !\G~13_combout\ ) ) ) # ( \gen_blocks:5:p_bit[3]~combout\ & ( !\gen_blocks:5:p_bit[2]~combout\ & ( !\G~13_combout\ ) ) ) # ( !\gen_blocks:5:p_bit[3]~combout\ & ( !\gen_blocks:5:p_bit[2]~combout\ & ( !\G~13_combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[21]~input_o\,
	datab => \ALT_INV_c_int~19_combout\,
	datac => \ALT_INV_G~13_combout\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \ALT_INV_gen_blocks:5:p_bit[3]~combout\,
	dataf => \ALT_INV_gen_blocks:5:p_bit[2]~combout\,
	combout => \G[5]~14_combout\);

-- Location: IOIBUF_X59_Y33_N94
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X58_Y33_N0
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \A[24]~input_o\ & ( !\B[24]~input_o\ $ (((!\G[5]~14_combout\) # (\C~11_combout\))) ) ) # ( !\A[24]~input_o\ & ( !\B[24]~input_o\ $ (((!\C~11_combout\ & \G[5]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011010100110101001101010011001011001010110010101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datab => \ALT_INV_C~11_combout\,
	datac => \ALT_INV_G[5]~14_combout\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X59_Y34_N63
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X59_Y33_N63
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X58_Y33_N38
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \A[25]~input_o\ & ( \G[5]~14_combout\ & ( !\B[25]~input_o\ $ (((!\B[24]~input_o\ & (\C~11_combout\ & \A[24]~input_o\)) # (\B[24]~input_o\ & ((\A[24]~input_o\) # (\C~11_combout\))))) ) ) ) # ( !\A[25]~input_o\ & ( \G[5]~14_combout\ & ( 
-- !\B[25]~input_o\ $ (((!\B[24]~input_o\ & ((!\C~11_combout\) # (!\A[24]~input_o\))) # (\B[24]~input_o\ & (!\C~11_combout\ & !\A[24]~input_o\)))) ) ) ) # ( \A[25]~input_o\ & ( !\G[5]~14_combout\ & ( !\B[25]~input_o\ $ (((\A[24]~input_o\) # 
-- (\B[24]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( !\G[5]~14_combout\ & ( !\B[25]~input_o\ $ (((!\B[24]~input_o\ & !\A[24]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000101001010000111100011110011110001110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datab => \ALT_INV_C~11_combout\,
	datac => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_G[5]~14_combout\,
	combout => \S~25_combout\);

-- Location: LABCELL_X58_Y33_N6
\c_int~20\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~20_combout\ = ( \A[25]~input_o\ & ( \B[25]~input_o\ ) ) # ( !\A[25]~input_o\ & ( \B[25]~input_o\ & ( (\A[24]~input_o\ & \B[24]~input_o\) ) ) ) # ( \A[25]~input_o\ & ( !\B[25]~input_o\ & ( (\A[24]~input_o\ & \B[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \c_int~20_combout\);

-- Location: LABCELL_X58_Y33_N10
\c_int~21\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~21_combout\ = ( !\A[25]~input_o\ & ( \B[25]~input_o\ & ( !\B[24]~input_o\ $ (!\A[24]~input_o\) ) ) ) # ( \A[25]~input_o\ & ( !\B[25]~input_o\ & ( !\B[24]~input_o\ $ (!\A[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101001010101101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \c_int~21_combout\);

-- Location: IOIBUF_X59_Y30_N1
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X59_Y33_N32
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X58_Y33_N2
\gen_blocks:6:p_bit[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:p_bit[2]~combout\ = !\B[26]~input_o\ $ (!\A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	combout => \gen_blocks:6:p_bit[2]~combout\);

-- Location: LABCELL_X58_Y33_N34
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \C~11_combout\ & ( \gen_blocks:6:p_bit[2]~combout\ & ( (!\c_int~20_combout\ & !\c_int~21_combout\) ) ) ) # ( !\C~11_combout\ & ( \gen_blocks:6:p_bit[2]~combout\ & ( (!\c_int~20_combout\ & ((!\c_int~21_combout\) # (\G[5]~14_combout\))) ) 
-- ) ) # ( \C~11_combout\ & ( !\gen_blocks:6:p_bit[2]~combout\ & ( (\c_int~21_combout\) # (\c_int~20_combout\) ) ) ) # ( !\C~11_combout\ & ( !\gen_blocks:6:p_bit[2]~combout\ & ( ((!\G[5]~14_combout\ & \c_int~21_combout\)) # (\c_int~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001111110011111111000100110001001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[5]~14_combout\,
	datab => \ALT_INV_c_int~20_combout\,
	datac => \ALT_INV_c_int~21_combout\,
	datae => \ALT_INV_C~11_combout\,
	dataf => \ALT_INV_gen_blocks:6:p_bit[2]~combout\,
	combout => \S~19_combout\);

-- Location: LABCELL_X58_Y33_N12
\gen_blocks:6:c_int[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:c_int[3]~0_combout\ = ( \A[25]~input_o\ & ( \B[25]~input_o\ & ( (\B[26]~input_o\) # (\A[26]~input_o\) ) ) ) # ( !\A[25]~input_o\ & ( \B[25]~input_o\ & ( (!\A[26]~input_o\ & (\B[26]~input_o\ & (\A[24]~input_o\ & \B[24]~input_o\))) # 
-- (\A[26]~input_o\ & (((\A[24]~input_o\ & \B[24]~input_o\)) # (\B[26]~input_o\))) ) ) ) # ( \A[25]~input_o\ & ( !\B[25]~input_o\ & ( (!\A[26]~input_o\ & (\B[26]~input_o\ & (\A[24]~input_o\ & \B[24]~input_o\))) # (\A[26]~input_o\ & (((\A[24]~input_o\ & 
-- \B[24]~input_o\)) # (\B[26]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( !\B[25]~input_o\ & ( (\A[26]~input_o\ & \B[26]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001011100010001000101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \gen_blocks:6:c_int[3]~0_combout\);

-- Location: IOIBUF_X59_Y31_N94
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X59_Y33_N1
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LABCELL_X58_Y33_N16
\gen_blocks:6:p_bit[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:6:p_bit[3]~combout\ = ( \B[27]~input_o\ & ( !\A[27]~input_o\ ) ) # ( !\B[27]~input_o\ & ( \A[27]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[27]~input_o\,
	combout => \gen_blocks:6:p_bit[3]~combout\);

-- Location: LABCELL_X58_Y33_N22
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( \C~11_combout\ & ( \gen_blocks:6:p_bit[2]~combout\ & ( !\gen_blocks:6:p_bit[3]~combout\ $ (((!\gen_blocks:6:c_int[3]~0_combout\ & !\c_int~21_combout\))) ) ) ) # ( !\C~11_combout\ & ( \gen_blocks:6:p_bit[2]~combout\ & ( 
-- !\gen_blocks:6:p_bit[3]~combout\ $ (((!\gen_blocks:6:c_int[3]~0_combout\ & ((!\c_int~21_combout\) # (\G[5]~14_combout\))))) ) ) ) # ( \C~11_combout\ & ( !\gen_blocks:6:p_bit[2]~combout\ & ( !\gen_blocks:6:c_int[3]~0_combout\ $ 
-- (!\gen_blocks:6:p_bit[3]~combout\) ) ) ) # ( !\C~11_combout\ & ( !\gen_blocks:6:p_bit[2]~combout\ & ( !\gen_blocks:6:c_int[3]~0_combout\ $ (!\gen_blocks:6:p_bit[3]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001101100011001100110110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gen_blocks:6:c_int[3]~0_combout\,
	datab => \ALT_INV_gen_blocks:6:p_bit[3]~combout\,
	datac => \ALT_INV_c_int~21_combout\,
	datad => \ALT_INV_G[5]~14_combout\,
	datae => \ALT_INV_C~11_combout\,
	dataf => \ALT_INV_gen_blocks:6:p_bit[2]~combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X59_Y37_N32
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LABCELL_X58_Y33_N18
\C~12\ : arriaii_lcell_comb
-- Equation(s):
-- \C~12_combout\ = ( \gen_blocks:6:p_bit[2]~combout\ & ( (\c_int~21_combout\ & (\gen_blocks:6:p_bit[3]~combout\ & ((!\G[5]~14_combout\) # (\C~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000110000000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[5]~14_combout\,
	datab => \ALT_INV_c_int~21_combout\,
	datac => \ALT_INV_C~11_combout\,
	datad => \ALT_INV_gen_blocks:6:p_bit[3]~combout\,
	dataf => \ALT_INV_gen_blocks:6:p_bit[2]~combout\,
	combout => \C~12_combout\);

-- Location: LABCELL_X58_Y33_N24
\G[6]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \G[6]~15_combout\ = ( \A[25]~input_o\ & ( \B[25]~input_o\ ) ) # ( !\A[25]~input_o\ & ( \B[25]~input_o\ & ( (\B[24]~input_o\ & \A[24]~input_o\) ) ) ) # ( \A[25]~input_o\ & ( !\B[25]~input_o\ & ( (\B[24]~input_o\ & \A[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000101000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \G[6]~15_combout\);

-- Location: LABCELL_X58_Y33_N30
\G[6]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \G[6]~17_combout\ = ( \A[26]~input_o\ & ( \B[27]~input_o\ & ( ((\B[26]~input_o\) # (\A[27]~input_o\)) # (\G[6]~15_combout\) ) ) ) # ( !\A[26]~input_o\ & ( \B[27]~input_o\ & ( ((\G[6]~15_combout\ & \B[26]~input_o\)) # (\A[27]~input_o\) ) ) ) # ( 
-- \A[26]~input_o\ & ( !\B[27]~input_o\ & ( (\A[27]~input_o\ & ((\B[26]~input_o\) # (\G[6]~15_combout\))) ) ) ) # ( !\A[26]~input_o\ & ( !\B[27]~input_o\ & ( (\G[6]~15_combout\ & (\A[27]~input_o\ & \B[26]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100110001001100110111001101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[6]~15_combout\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[27]~input_o\,
	combout => \G[6]~17_combout\);

-- Location: LABCELL_X58_Y35_N2
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \G[6]~17_combout\ & ( !\A[28]~input_o\ $ (\B[28]~input_o\) ) ) # ( !\G[6]~17_combout\ & ( !\A[28]~input_o\ $ (!\B[28]~input_o\ $ (\C~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_C~12_combout\,
	dataf => \ALT_INV_G[6]~17_combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X59_Y37_N94
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X59_Y31_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LABCELL_X58_Y35_N38
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( \A[29]~input_o\ & ( \B[28]~input_o\ & ( !\B[29]~input_o\ $ ((((\G[6]~17_combout\) # (\A[28]~input_o\)) # (\C~12_combout\))) ) ) ) # ( !\A[29]~input_o\ & ( \B[28]~input_o\ & ( !\B[29]~input_o\ $ (((!\C~12_combout\ & (!\A[28]~input_o\ & 
-- !\G[6]~17_combout\)))) ) ) ) # ( \A[29]~input_o\ & ( !\B[28]~input_o\ & ( !\B[29]~input_o\ $ (((\A[28]~input_o\ & ((\G[6]~17_combout\) # (\C~12_combout\))))) ) ) ) # ( !\A[29]~input_o\ & ( !\B[28]~input_o\ & ( !\B[29]~input_o\ $ (((!\A[28]~input_o\) # 
-- ((!\C~12_combout\ & !\G[6]~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001011010101010011010010101101010101010101001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_C~12_combout\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_G[6]~17_combout\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X59_Y36_N63
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LABCELL_X58_Y35_N26
\gen_blocks:7:p_bit[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:p_bit[2]~combout\ = !\A[30]~input_o\ $ (!\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	combout => \gen_blocks:7:p_bit[2]~combout\);

-- Location: LABCELL_X58_Y35_N0
\c_int~23\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~23_combout\ = ( \B[29]~input_o\ & ( (!\A[29]~input_o\ & (!\A[28]~input_o\ $ (!\B[28]~input_o\))) ) ) # ( !\B[29]~input_o\ & ( (\A[29]~input_o\ & (!\A[28]~input_o\ $ (!\B[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \c_int~23_combout\);

-- Location: LABCELL_X58_Y35_N30
\c_int~22\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~22_combout\ = ( \B[28]~input_o\ & ( (!\B[29]~input_o\ & (\A[28]~input_o\ & \A[29]~input_o\)) # (\B[29]~input_o\ & ((\A[29]~input_o\) # (\A[28]~input_o\))) ) ) # ( !\B[28]~input_o\ & ( (\B[29]~input_o\ & \A[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \c_int~22_combout\);

-- Location: LABCELL_X58_Y35_N12
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = ( \C~12_combout\ & ( !\gen_blocks:7:p_bit[2]~combout\ $ (((!\c_int~23_combout\ & !\c_int~22_combout\))) ) ) # ( !\C~12_combout\ & ( !\gen_blocks:7:p_bit[2]~combout\ $ (((!\c_int~22_combout\ & ((!\G[6]~17_combout\) # 
-- (!\c_int~23_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001100001101101100110000111100110011000011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[6]~17_combout\,
	datab => \ALT_INV_gen_blocks:7:p_bit[2]~combout\,
	datac => \ALT_INV_c_int~23_combout\,
	datad => \ALT_INV_c_int~22_combout\,
	dataf => \ALT_INV_C~12_combout\,
	combout => \S~22_combout\);

-- Location: LABCELL_X58_Y35_N32
\gen_blocks:7:c_int[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:c_int[3]~0_combout\ = ( \A[29]~input_o\ & ( \B[29]~input_o\ & ( (\B[30]~input_o\) # (\A[30]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( \B[29]~input_o\ & ( (!\A[30]~input_o\ & (\B[30]~input_o\ & (\A[28]~input_o\ & \B[28]~input_o\))) # 
-- (\A[30]~input_o\ & (((\A[28]~input_o\ & \B[28]~input_o\)) # (\B[30]~input_o\))) ) ) ) # ( \A[29]~input_o\ & ( !\B[29]~input_o\ & ( (!\A[30]~input_o\ & (\B[30]~input_o\ & (\A[28]~input_o\ & \B[28]~input_o\))) # (\A[30]~input_o\ & (((\A[28]~input_o\ & 
-- \B[28]~input_o\)) # (\B[30]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( !\B[29]~input_o\ & ( (\A[30]~input_o\ & \B[30]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001011100010001000101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \gen_blocks:7:c_int[3]~0_combout\);

-- Location: IOIBUF_X59_Y36_N32
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X59_Y36_N94
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LABCELL_X58_Y35_N14
\gen_blocks:7:p_bit[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_blocks:7:p_bit[3]~combout\ = !\B[31]~input_o\ $ (!\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	combout => \gen_blocks:7:p_bit[3]~combout\);

-- Location: LABCELL_X58_Y35_N18
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( \gen_blocks:7:p_bit[2]~combout\ & ( \G[6]~17_combout\ & ( !\gen_blocks:7:p_bit[3]~combout\ $ (((!\gen_blocks:7:c_int[3]~0_combout\ & !\c_int~23_combout\))) ) ) ) # ( !\gen_blocks:7:p_bit[2]~combout\ & ( \G[6]~17_combout\ & ( 
-- !\gen_blocks:7:c_int[3]~0_combout\ $ (!\gen_blocks:7:p_bit[3]~combout\) ) ) ) # ( \gen_blocks:7:p_bit[2]~combout\ & ( !\G[6]~17_combout\ & ( !\gen_blocks:7:p_bit[3]~combout\ $ (((!\gen_blocks:7:c_int[3]~0_combout\ & ((!\C~12_combout\) # 
-- (!\c_int~23_combout\))))) ) ) ) # ( !\gen_blocks:7:p_bit[2]~combout\ & ( !\G[6]~17_combout\ & ( !\gen_blocks:7:c_int[3]~0_combout\ $ (!\gen_blocks:7:p_bit[3]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100111100001011010010110100101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_gen_blocks:7:c_int[3]~0_combout\,
	datab => \ALT_INV_C~12_combout\,
	datac => \ALT_INV_gen_blocks:7:p_bit[3]~combout\,
	datad => \ALT_INV_c_int~23_combout\,
	datae => \ALT_INV_gen_blocks:7:p_bit[2]~combout\,
	dataf => \ALT_INV_G[6]~17_combout\,
	combout => \S~23_combout\);

-- Location: LABCELL_X58_Y35_N24
\G~16\ : arriaii_lcell_comb
-- Equation(s):
-- \G~16_combout\ = ( \B[31]~input_o\ & ( ((\A[30]~input_o\ & \B[30]~input_o\)) # (\A[31]~input_o\) ) ) # ( !\B[31]~input_o\ & ( (\A[30]~input_o\ & (\B[30]~input_o\ & \A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \G~16_combout\);

-- Location: LABCELL_X58_Y35_N28
\c_int~24\ : arriaii_lcell_comb
-- Equation(s):
-- \c_int~24_combout\ = ( \B[28]~input_o\ & ( (\A[28]~input_o\ & (\gen_blocks:7:p_bit[2]~combout\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100100000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_gen_blocks:7:p_bit[2]~combout\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \c_int~24_combout\);

-- Location: LABCELL_X58_Y35_N22
\C~13\ : arriaii_lcell_comb
-- Equation(s):
-- \C~13_combout\ = ( \A[29]~input_o\ & ( \B[29]~input_o\ & ( (!\G~16_combout\ & ((!\gen_blocks:7:p_bit[3]~combout\) # ((!\gen_blocks:7:p_bit[2]~combout\ & !\c_int~24_combout\)))) ) ) ) # ( !\A[29]~input_o\ & ( \B[29]~input_o\ & ( (!\G~16_combout\ & 
-- ((!\gen_blocks:7:p_bit[3]~combout\) # (!\c_int~24_combout\))) ) ) ) # ( \A[29]~input_o\ & ( !\B[29]~input_o\ & ( (!\G~16_combout\ & ((!\gen_blocks:7:p_bit[3]~combout\) # (!\c_int~24_combout\))) ) ) ) # ( !\A[29]~input_o\ & ( !\B[29]~input_o\ & ( 
-- (!\G~16_combout\ & ((!\gen_blocks:7:p_bit[3]~combout\) # (!\c_int~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010101000100010101010100010001010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G~16_combout\,
	datab => \ALT_INV_gen_blocks:7:p_bit[3]~combout\,
	datac => \ALT_INV_gen_blocks:7:p_bit[2]~combout\,
	datad => \ALT_INV_c_int~24_combout\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \C~13_combout\);

-- Location: LABCELL_X58_Y35_N6
\C~14\ : arriaii_lcell_comb
-- Equation(s):
-- \C~14_combout\ = ( \C~13_combout\ & ( \C~12_combout\ & ( (\gen_blocks:7:p_bit[2]~combout\ & (\gen_blocks:7:p_bit[3]~combout\ & \c_int~23_combout\)) ) ) ) # ( !\C~13_combout\ & ( \C~12_combout\ ) ) # ( \C~13_combout\ & ( !\C~12_combout\ & ( 
-- (\G[6]~17_combout\ & (\gen_blocks:7:p_bit[2]~combout\ & (\gen_blocks:7:p_bit[3]~combout\ & \c_int~23_combout\))) ) ) ) # ( !\C~13_combout\ & ( !\C~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000111111111111111110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[6]~17_combout\,
	datab => \ALT_INV_gen_blocks:7:p_bit[2]~combout\,
	datac => \ALT_INV_gen_blocks:7:p_bit[3]~combout\,
	datad => \ALT_INV_c_int~23_combout\,
	datae => \ALT_INV_C~13_combout\,
	dataf => \ALT_INV_C~12_combout\,
	combout => \C~14_combout\);

-- Location: LABCELL_X58_Y35_N10
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \C~13_combout\ & ( \C~12_combout\ & ( (!\gen_blocks:7:p_bit[2]~combout\) # ((!\gen_blocks:7:p_bit[3]~combout\) # (!\c_int~23_combout\)) ) ) ) # ( \C~13_combout\ & ( !\C~12_combout\ & ( (\G[6]~17_combout\ & 
-- ((!\gen_blocks:7:p_bit[2]~combout\) # ((!\gen_blocks:7:p_bit[3]~combout\) # (!\c_int~23_combout\)))) ) ) ) # ( !\C~13_combout\ & ( !\C~12_combout\ & ( !\G[6]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010101010101010000000000000000001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[6]~17_combout\,
	datab => \ALT_INV_gen_blocks:7:p_bit[2]~combout\,
	datac => \ALT_INV_gen_blocks:7:p_bit[3]~combout\,
	datad => \ALT_INV_c_int~23_combout\,
	datae => \ALT_INV_C~13_combout\,
	dataf => \ALT_INV_C~12_combout\,
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


