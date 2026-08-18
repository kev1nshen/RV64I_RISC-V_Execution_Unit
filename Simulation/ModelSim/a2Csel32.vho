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

-- DATE "04/08/2026 12:31:53"

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
	S : BUFFER std_logic_vector(31 DOWNTO 0);
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \blk0|C[1]~0_combout\ : std_logic;
SIGNAL \blk0|C[1]~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \blk0|Cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \Csel[1]~10_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \blk2_c1|C[2]~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \blk2_c0|C[2]~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \Csel[2]~6_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \blk3_c1|C[2]~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \blk3_c0|C[2]~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \Csel[3]~2_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \blk4_c1|C[2]~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \blk4_c0|C[2]~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \blk4_c0|C[4]~2_combout\ : std_logic;
SIGNAL \blk4_c1|C[4]~2_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \blk4_c0|C[6]~1_combout\ : std_logic;
SIGNAL \blk4_c1|C[6]~1_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \blk4_c0|Cout~0_combout\ : std_logic;
SIGNAL \blk4_c1|Cout~0_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \blk5_c0|C[2]~0_combout\ : std_logic;
SIGNAL \blk5_c1|C[2]~0_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \blk5_c1|C[3]~2_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \blk5_c1|C[3]~1_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \blk5_c0|C[3]~1_combout\ : std_logic;
SIGNAL \blk5_c0|C[3]~2_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \blk5_c1|C[4]~3_combout\ : std_logic;
SIGNAL \blk5_c0|C[4]~3_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \blk5_c0|C[5]~5_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \blk5_c0|C[5]~4_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \blk5_c1|C[5]~5_combout\ : std_logic;
SIGNAL \blk5_c1|C[5]~4_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \blk5_c0|C[6]~6_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \blk5_c1|C[6]~6_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \blk5_c1|Cout~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \blk5_c0|Cout~0_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \Csel[5]~0_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \blk6_c0|C[2]~0_combout\ : std_logic;
SIGNAL \blk6_c1|C[2]~0_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \blk6_c1|Cout~0_combout\ : std_logic;
SIGNAL \blk6_c0|Cout~0_combout\ : std_logic;
SIGNAL \Csel~1_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \blk5_c1|S\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \blk0|S\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \blk5_c0|S\ : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \ALT_INV_Csel[1]~10_combout\ : std_logic;
SIGNAL \blk4_c1|ALT_INV_C[4]~2_combout\ : std_logic;
SIGNAL \blk4_c0|ALT_INV_C[4]~2_combout\ : std_logic;
SIGNAL \blk4_c1|ALT_INV_C[6]~1_combout\ : std_logic;
SIGNAL \blk4_c0|ALT_INV_C[6]~1_combout\ : std_logic;
SIGNAL \blk4_c1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk4_c0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk5_c1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk5_c0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk6_c1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk6_c0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk6_c0|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \blk6_c1|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Csel[5]~0_combout\ : std_logic;
SIGNAL \blk5_c0|ALT_INV_S\ : std_logic_vector(7 DOWNTO 3);
SIGNAL \blk5_c1|ALT_INV_S\ : std_logic_vector(7 DOWNTO 3);
SIGNAL \blk5_c0|ALT_INV_C[6]~6_combout\ : std_logic;
SIGNAL \blk5_c1|ALT_INV_C[6]~6_combout\ : std_logic;
SIGNAL \blk5_c0|ALT_INV_C[5]~5_combout\ : std_logic;
SIGNAL \blk5_c0|ALT_INV_C[5]~4_combout\ : std_logic;
SIGNAL \blk5_c1|ALT_INV_C[5]~5_combout\ : std_logic;
SIGNAL \blk5_c1|ALT_INV_C[5]~4_combout\ : std_logic;
SIGNAL \blk5_c0|ALT_INV_C[4]~3_combout\ : std_logic;
SIGNAL \blk5_c1|ALT_INV_C[4]~3_combout\ : std_logic;
SIGNAL \blk5_c0|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \blk5_c0|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \blk5_c1|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \blk5_c1|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \blk5_c0|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \blk5_c1|ALT_INV_C[2]~0_combout\ : std_logic;
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
SIGNAL \blk4_c0|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \blk4_c1|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \blk3_c0|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \blk3_c1|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \blk2_c0|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \blk2_c1|ALT_INV_C[2]~0_combout\ : std_logic;
SIGNAL \blk0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \blk0|ALT_INV_C[1]~1_combout\ : std_logic;
SIGNAL \blk0|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Csel[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Csel[3]~2_combout\ : std_logic;

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
\ALT_INV_Csel[1]~10_combout\ <= NOT \Csel[1]~10_combout\;
\blk4_c1|ALT_INV_C[4]~2_combout\ <= NOT \blk4_c1|C[4]~2_combout\;
\blk4_c0|ALT_INV_C[4]~2_combout\ <= NOT \blk4_c0|C[4]~2_combout\;
\blk4_c1|ALT_INV_C[6]~1_combout\ <= NOT \blk4_c1|C[6]~1_combout\;
\blk4_c0|ALT_INV_C[6]~1_combout\ <= NOT \blk4_c0|C[6]~1_combout\;
\blk4_c1|ALT_INV_Cout~0_combout\ <= NOT \blk4_c1|Cout~0_combout\;
\blk4_c0|ALT_INV_Cout~0_combout\ <= NOT \blk4_c0|Cout~0_combout\;
\blk5_c1|ALT_INV_Cout~0_combout\ <= NOT \blk5_c1|Cout~0_combout\;
\blk5_c0|ALT_INV_Cout~0_combout\ <= NOT \blk5_c0|Cout~0_combout\;
\blk6_c1|ALT_INV_Cout~0_combout\ <= NOT \blk6_c1|Cout~0_combout\;
\blk6_c0|ALT_INV_Cout~0_combout\ <= NOT \blk6_c0|Cout~0_combout\;
\blk6_c0|ALT_INV_C[2]~0_combout\ <= NOT \blk6_c0|C[2]~0_combout\;
\blk6_c1|ALT_INV_C[2]~0_combout\ <= NOT \blk6_c1|C[2]~0_combout\;
\ALT_INV_Csel[5]~0_combout\ <= NOT \Csel[5]~0_combout\;
\blk5_c0|ALT_INV_S\(7) <= NOT \blk5_c0|S\(7);
\blk5_c1|ALT_INV_S\(7) <= NOT \blk5_c1|S\(7);
\blk5_c0|ALT_INV_C[6]~6_combout\ <= NOT \blk5_c0|C[6]~6_combout\;
\blk5_c1|ALT_INV_C[6]~6_combout\ <= NOT \blk5_c1|C[6]~6_combout\;
\blk5_c0|ALT_INV_S\(5) <= NOT \blk5_c0|S\(5);
\blk5_c0|ALT_INV_C[5]~5_combout\ <= NOT \blk5_c0|C[5]~5_combout\;
\blk5_c0|ALT_INV_C[5]~4_combout\ <= NOT \blk5_c0|C[5]~4_combout\;
\blk5_c1|ALT_INV_S\(5) <= NOT \blk5_c1|S\(5);
\blk5_c1|ALT_INV_C[5]~5_combout\ <= NOT \blk5_c1|C[5]~5_combout\;
\blk5_c1|ALT_INV_C[5]~4_combout\ <= NOT \blk5_c1|C[5]~4_combout\;
\blk5_c0|ALT_INV_C[4]~3_combout\ <= NOT \blk5_c0|C[4]~3_combout\;
\blk5_c1|ALT_INV_C[4]~3_combout\ <= NOT \blk5_c1|C[4]~3_combout\;
\blk5_c0|ALT_INV_S\(3) <= NOT \blk5_c0|S\(3);
\blk5_c0|ALT_INV_C[3]~2_combout\ <= NOT \blk5_c0|C[3]~2_combout\;
\blk5_c0|ALT_INV_C[3]~1_combout\ <= NOT \blk5_c0|C[3]~1_combout\;
\blk5_c1|ALT_INV_S\(3) <= NOT \blk5_c1|S\(3);
\blk5_c1|ALT_INV_C[3]~2_combout\ <= NOT \blk5_c1|C[3]~2_combout\;
\blk5_c1|ALT_INV_C[3]~1_combout\ <= NOT \blk5_c1|C[3]~1_combout\;
\blk5_c0|ALT_INV_C[2]~0_combout\ <= NOT \blk5_c0|C[2]~0_combout\;
\blk5_c1|ALT_INV_C[2]~0_combout\ <= NOT \blk5_c1|C[2]~0_combout\;
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
\blk4_c0|ALT_INV_C[2]~0_combout\ <= NOT \blk4_c0|C[2]~0_combout\;
\blk4_c1|ALT_INV_C[2]~0_combout\ <= NOT \blk4_c1|C[2]~0_combout\;
\blk3_c0|ALT_INV_C[2]~0_combout\ <= NOT \blk3_c0|C[2]~0_combout\;
\blk3_c1|ALT_INV_C[2]~0_combout\ <= NOT \blk3_c1|C[2]~0_combout\;
\blk2_c0|ALT_INV_C[2]~0_combout\ <= NOT \blk2_c0|C[2]~0_combout\;
\blk2_c1|ALT_INV_C[2]~0_combout\ <= NOT \blk2_c1|C[2]~0_combout\;
\blk0|ALT_INV_Cout~0_combout\ <= NOT \blk0|Cout~0_combout\;
\blk0|ALT_INV_C[1]~1_combout\ <= NOT \blk0|C[1]~1_combout\;
\blk0|ALT_INV_C[1]~0_combout\ <= NOT \blk0|C[1]~0_combout\;
\ALT_INV_Csel[2]~6_combout\ <= NOT \Csel[2]~6_combout\;
\ALT_INV_Csel[3]~2_combout\ <= NOT \Csel[3]~2_combout\;

-- Location: IOOBUF_X59_Y48_N98
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

-- Location: IOOBUF_X59_Y37_N2
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blk0|S\(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X59_Y49_N98
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X59_Y36_N2
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X59_Y37_N36
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X59_Y48_N67
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X59_Y30_N67
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X59_Y48_N2
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~59_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X59_Y26_N98
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X59_Y33_N5
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X59_Y31_N67
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X59_Y25_N36
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X59_Y15_N67
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X59_Y15_N98
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

-- Location: IOOBUF_X59_Y46_N67
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X59_Y26_N33
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X59_Y28_N2
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X59_Y46_N36
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X59_Y13_N67
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X59_Y9_N98
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X59_Y10_N2
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X59_Y13_N2
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X50_Y0_N36
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X48_Y0_N67
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X47_Y0_N67
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X50_Y0_N98
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X59_Y15_N33
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X41_Y0_N33
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X37_Y0_N67
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X39_Y0_N36
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X41_Y0_N98
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Csel~1_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X41_Y0_N67
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

-- Location: IOIBUF_X59_Y36_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y36_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X59_Y34_N63
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X58_Y33_N8
\blk0|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \blk0|S\(0) = !\B[0]~input_o\ $ (!\Cin~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	combout => \blk0|S\(0));

-- Location: IOIBUF_X59_Y37_N63
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X59_Y48_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X58_Y33_N32
\blk0|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk0|C[1]~0_combout\ = (\B[0]~input_o\ & \Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	combout => \blk0|C[1]~0_combout\);

-- Location: LABCELL_X58_Y33_N10
\blk0|C[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \blk0|C[1]~1_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	combout => \blk0|C[1]~1_combout\);

-- Location: LABCELL_X58_Y33_N34
\blk0|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \blk0|S\(1) = ( \blk0|C[1]~1_combout\ & ( !\A[1]~input_o\ $ (\B[1]~input_o\) ) ) # ( !\blk0|C[1]~1_combout\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (\blk0|C[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \blk0|ALT_INV_C[1]~0_combout\,
	dataf => \blk0|ALT_INV_C[1]~1_combout\,
	combout => \blk0|S\(1));

-- Location: IOIBUF_X59_Y36_N94
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X58_Y33_N18
\blk0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk0|Cout~0_combout\ = ( \blk0|C[1]~0_combout\ & ( (!\A[1]~input_o\ & !\B[1]~input_o\) ) ) # ( !\blk0|C[1]~0_combout\ & ( (!\A[1]~input_o\ & ((!\blk0|C[1]~1_combout\) # (!\B[1]~input_o\))) # (\A[1]~input_o\ & (!\blk0|C[1]~1_combout\ & !\B[1]~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \blk0|ALT_INV_C[1]~1_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \blk0|ALT_INV_C[1]~0_combout\,
	combout => \blk0|Cout~0_combout\);

-- Location: IOIBUF_X59_Y39_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X58_Y33_N16
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = !\A[2]~input_o\ $ (!\blk0|Cout~0_combout\ $ (!\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \blk0|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X59_Y33_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X59_Y39_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X58_Y33_N0
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \A[3]~input_o\ & ( !\B[3]~input_o\ $ (((!\B[2]~input_o\ & (!\blk0|Cout~0_combout\ & \A[2]~input_o\)) # (\B[2]~input_o\ & ((!\blk0|Cout~0_combout\) # (\A[2]~input_o\))))) ) ) # ( !\A[3]~input_o\ & ( !\B[3]~input_o\ $ (((!\B[2]~input_o\ & 
-- ((!\A[2]~input_o\) # (\blk0|Cout~0_combout\))) # (\B[2]~input_o\ & (\blk0|Cout~0_combout\ & !\A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010110100110011001011010011010011010010110011001101001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \blk0|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \S~1_combout\);

-- Location: LABCELL_X58_Y33_N2
\Csel[1]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Csel[1]~10_combout\ = ( \A[3]~input_o\ & ( ((!\B[2]~input_o\ & (\A[2]~input_o\ & !\blk0|Cout~0_combout\)) # (\B[2]~input_o\ & ((!\blk0|Cout~0_combout\) # (\A[2]~input_o\)))) # (\B[3]~input_o\) ) ) # ( !\A[3]~input_o\ & ( (\B[3]~input_o\ & 
-- ((!\B[2]~input_o\ & (\A[2]~input_o\ & !\blk0|Cout~0_combout\)) # (\B[2]~input_o\ & ((!\blk0|Cout~0_combout\) # (\A[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000001000101010000000101111111010101110111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \blk0|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Csel[1]~10_combout\);

-- Location: IOIBUF_X59_Y33_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X58_Y33_N24
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \B[4]~input_o\ & ( !\Csel[1]~10_combout\ $ (\A[4]~input_o\) ) ) # ( !\B[4]~input_o\ & ( !\Csel[1]~10_combout\ $ (!\A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Csel[1]~10_combout\,
	datac => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X59_Y30_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X59_Y49_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X58_Y33_N30
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \A[4]~input_o\ & ( \B[4]~input_o\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \B[4]~input_o\ & ( !\Csel[1]~10_combout\ $ (!\A[5]~input_o\ $ (\B[5]~input_o\)) ) ) ) # ( \A[4]~input_o\ & ( !\B[4]~input_o\ & ( 
-- !\Csel[1]~10_combout\ $ (!\A[5]~input_o\ $ (\B[5]~input_o\)) ) ) ) # ( !\A[4]~input_o\ & ( !\B[4]~input_o\ & ( !\A[5]~input_o\ $ (!\B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000001111001100001100111100110000111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Csel[1]~10_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \S~3_combout\);

-- Location: LABCELL_X58_Y33_N12
\blk2_c1|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk2_c1|C[2]~0_combout\ = ( \A[5]~input_o\ & ( ((\A[4]~input_o\) # (\B[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & ((\A[4]~input_o\) # (\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \blk2_c1|C[2]~0_combout\);

-- Location: IOIBUF_X59_Y30_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X58_Y33_N14
\blk2_c0|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk2_c0|C[2]~0_combout\ = ( \A[5]~input_o\ & ( ((\B[4]~input_o\ & \A[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & (\B[4]~input_o\ & \A[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \blk2_c0|C[2]~0_combout\);

-- Location: IOIBUF_X59_Y26_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X58_Y33_N26
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \B[6]~input_o\ & ( !\A[6]~input_o\ $ (((!\Csel[1]~10_combout\ & ((\blk2_c0|C[2]~0_combout\))) # (\Csel[1]~10_combout\ & (\blk2_c1|C[2]~0_combout\)))) ) ) # ( !\B[6]~input_o\ & ( !\A[6]~input_o\ $ (((!\Csel[1]~10_combout\ & 
-- ((!\blk2_c0|C[2]~0_combout\))) # (\Csel[1]~10_combout\ & (!\blk2_c1|C[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011010010000111101101001011100001001011011110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk2_c1|ALT_INV_C[2]~0_combout\,
	datab => \ALT_INV_Csel[1]~10_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \blk2_c0|ALT_INV_C[2]~0_combout\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X59_Y30_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y33_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X58_Y33_N4
\S~59\ : arriaii_lcell_comb
-- Equation(s):
-- \S~59_combout\ = ( !\Csel[1]~10_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((!\B[6]~input_o\ & (\blk2_c0|C[2]~0_combout\ & \A[6]~input_o\)) # (\B[6]~input_o\ & ((\A[6]~input_o\) # (\blk2_c0|C[2]~0_combout\)))))) ) ) # ( \Csel[1]~10_combout\ & ( 
-- !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((!\B[6]~input_o\ & (\blk2_c1|C[2]~0_combout\ & \A[6]~input_o\)) # (\B[6]~input_o\ & ((\A[6]~input_o\) # (\blk2_c1|C[2]~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011001101010010101100110101010101001100101011010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \blk2_c1|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_Csel[1]~10_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	datag => \blk2_c0|ALT_INV_C[2]~0_combout\,
	combout => \S~59_combout\);

-- Location: LABCELL_X58_Y33_N20
\Csel[2]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Csel[2]~6_combout\ = ( !\Csel[1]~10_combout\ & ( (!\A[7]~input_o\ & (\B[7]~input_o\ & ((!\B[6]~input_o\ & (\blk2_c0|C[2]~0_combout\ & \A[6]~input_o\)) # (\B[6]~input_o\ & ((\A[6]~input_o\) # (\blk2_c0|C[2]~0_combout\)))))) # (\A[7]~input_o\ & 
-- (((!\B[6]~input_o\ & (\blk2_c0|C[2]~0_combout\ & \A[6]~input_o\)) # (\B[6]~input_o\ & ((\A[6]~input_o\) # (\blk2_c0|C[2]~0_combout\)))) # (\B[7]~input_o\))) ) ) # ( \Csel[1]~10_combout\ & ( (!\A[7]~input_o\ & (\B[7]~input_o\ & ((!\B[6]~input_o\ & 
-- (\blk2_c1|C[2]~0_combout\ & \A[6]~input_o\)) # (\B[6]~input_o\ & ((\A[6]~input_o\) # (\blk2_c1|C[2]~0_combout\)))))) # (\A[7]~input_o\ & (((!\B[6]~input_o\ & (\blk2_c1|C[2]~0_combout\ & \A[6]~input_o\)) # (\B[6]~input_o\ & ((\A[6]~input_o\) # 
-- (\blk2_c1|C[2]~0_combout\)))) # (\B[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \blk2_c1|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_Csel[1]~10_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	datag => \blk2_c0|ALT_INV_C[2]~0_combout\,
	combout => \Csel[2]~6_combout\);

-- Location: IOIBUF_X59_Y34_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X59_Y34_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X58_Y34_N2
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \A[8]~input_o\ & ( \B[8]~input_o\ & ( \Csel[2]~6_combout\ ) ) ) # ( !\A[8]~input_o\ & ( \B[8]~input_o\ & ( !\Csel[2]~6_combout\ ) ) ) # ( \A[8]~input_o\ & ( !\B[8]~input_o\ & ( !\Csel[2]~6_combout\ ) ) ) # ( !\A[8]~input_o\ & ( 
-- !\B[8]~input_o\ & ( \Csel[2]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Csel[2]~6_combout\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y37_N94
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y34_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X58_Y33_N38
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \B[8]~input_o\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (((\Csel[2]~6_combout\) # (\A[8]~input_o\)))) ) ) # ( !\B[8]~input_o\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (((\A[8]~input_o\ & \Csel[2]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_Csel[2]~6_combout\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \S~6_combout\);

-- Location: LABCELL_X58_Y33_N36
\blk3_c1|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk3_c1|C[2]~0_combout\ = ( \B[8]~input_o\ & ( (\A[9]~input_o\) # (\B[9]~input_o\) ) ) # ( !\B[8]~input_o\ & ( (!\A[8]~input_o\ & (\B[9]~input_o\ & \A[9]~input_o\)) # (\A[8]~input_o\ & ((\A[9]~input_o\) # (\B[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \blk3_c1|C[2]~0_combout\);

-- Location: IOIBUF_X59_Y28_N63
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X58_Y34_N4
\blk3_c0|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk3_c0|C[2]~0_combout\ = ( \A[8]~input_o\ & ( \B[9]~input_o\ & ( (\A[9]~input_o\) # (\B[8]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \B[9]~input_o\ & ( \A[9]~input_o\ ) ) ) # ( \A[8]~input_o\ & ( !\B[9]~input_o\ & ( (\B[8]~input_o\ & \A[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \blk3_c0|C[2]~0_combout\);

-- Location: IOIBUF_X59_Y39_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X58_Y31_N38
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \blk3_c0|C[2]~0_combout\ & ( \A[10]~input_o\ & ( !\B[10]~input_o\ $ (((!\Csel[2]~6_combout\) # (\blk3_c1|C[2]~0_combout\))) ) ) ) # ( !\blk3_c0|C[2]~0_combout\ & ( \A[10]~input_o\ & ( !\B[10]~input_o\ $ (((\Csel[2]~6_combout\ & 
-- \blk3_c1|C[2]~0_combout\))) ) ) ) # ( \blk3_c0|C[2]~0_combout\ & ( !\A[10]~input_o\ & ( !\B[10]~input_o\ $ (((\Csel[2]~6_combout\ & !\blk3_c1|C[2]~0_combout\))) ) ) ) # ( !\blk3_c0|C[2]~0_combout\ & ( !\A[10]~input_o\ & ( !\B[10]~input_o\ $ 
-- (((!\Csel[2]~6_combout\) # (!\blk3_c1|C[2]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110101110110100010011101110000100010100010010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Csel[2]~6_combout\,
	datab => \blk3_c1|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \blk3_c0|ALT_INV_C[2]~0_combout\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X59_Y25_N63
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y46_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X58_Y31_N32
\S~55\ : arriaii_lcell_comb
-- Equation(s):
-- \S~55_combout\ = ( !\Csel[2]~6_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (((!\B[10]~input_o\ & (\blk3_c0|C[2]~0_combout\ & \A[10]~input_o\)) # (\B[10]~input_o\ & ((\A[10]~input_o\) # (\blk3_c0|C[2]~0_combout\)))))) ) ) # ( \Csel[2]~6_combout\ & 
-- ( !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (((!\B[10]~input_o\ & (\blk3_c1|C[2]~0_combout\ & \A[10]~input_o\)) # (\B[10]~input_o\ & ((\A[10]~input_o\) # (\blk3_c1|C[2]~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \blk3_c1|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_Csel[2]~6_combout\,
	dataf => \ALT_INV_A[10]~input_o\,
	datag => \blk3_c0|ALT_INV_C[2]~0_combout\,
	combout => \S~55_combout\);

-- Location: LABCELL_X58_Y31_N8
\Csel[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Csel[3]~2_combout\ = ( !\Csel[2]~6_combout\ & ( (!\B[11]~input_o\ & (\A[11]~input_o\ & ((!\B[10]~input_o\ & (\blk3_c0|C[2]~0_combout\ & \A[10]~input_o\)) # (\B[10]~input_o\ & ((\A[10]~input_o\) # (\blk3_c0|C[2]~0_combout\)))))) # (\B[11]~input_o\ & 
-- (((!\B[10]~input_o\ & (\blk3_c0|C[2]~0_combout\ & \A[10]~input_o\)) # (\B[10]~input_o\ & ((\A[10]~input_o\) # (\blk3_c0|C[2]~0_combout\)))) # (\A[11]~input_o\))) ) ) # ( \Csel[2]~6_combout\ & ( (!\B[11]~input_o\ & (\A[11]~input_o\ & ((!\B[10]~input_o\ & 
-- (\blk3_c1|C[2]~0_combout\ & \A[10]~input_o\)) # (\B[10]~input_o\ & ((\A[10]~input_o\) # (\blk3_c1|C[2]~0_combout\)))))) # (\B[11]~input_o\ & (((!\B[10]~input_o\ & (\blk3_c1|C[2]~0_combout\ & \A[10]~input_o\)) # (\B[10]~input_o\ & ((\A[10]~input_o\) # 
-- (\blk3_c1|C[2]~0_combout\)))) # (\A[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100110111000000010011011100010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \blk3_c1|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_Csel[2]~6_combout\,
	dataf => \ALT_INV_A[10]~input_o\,
	datag => \blk3_c0|ALT_INV_C[2]~0_combout\,
	combout => \Csel[3]~2_combout\);

-- Location: IOIBUF_X59_Y12_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X59_Y10_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X58_Y12_N8
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \B[12]~input_o\ & ( \A[12]~input_o\ & ( \Csel[3]~2_combout\ ) ) ) # ( !\B[12]~input_o\ & ( \A[12]~input_o\ & ( !\Csel[3]~2_combout\ ) ) ) # ( \B[12]~input_o\ & ( !\A[12]~input_o\ & ( !\Csel[3]~2_combout\ ) ) ) # ( !\B[12]~input_o\ & ( 
-- !\A[12]~input_o\ & ( \Csel[3]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Csel[3]~2_combout\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X59_Y9_N32
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y15_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X58_Y12_N34
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \B[12]~input_o\ & ( \A[13]~input_o\ & ( !\B[13]~input_o\ $ (((\A[12]~input_o\) # (\Csel[3]~2_combout\))) ) ) ) # ( !\B[12]~input_o\ & ( \A[13]~input_o\ & ( !\B[13]~input_o\ $ (((\Csel[3]~2_combout\ & \A[12]~input_o\))) ) ) ) # ( 
-- \B[12]~input_o\ & ( !\A[13]~input_o\ & ( !\B[13]~input_o\ $ (((!\Csel[3]~2_combout\ & !\A[12]~input_o\))) ) ) ) # ( !\B[12]~input_o\ & ( !\A[13]~input_o\ & ( !\B[13]~input_o\ $ (((!\Csel[3]~2_combout\) # (!\A[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100001111111100000011111100000000111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Csel[3]~2_combout\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \S~9_combout\);

-- Location: LABCELL_X58_Y12_N18
\blk4_c1|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c1|C[2]~0_combout\ = ( \B[13]~input_o\ & ( \A[13]~input_o\ ) ) # ( !\B[13]~input_o\ & ( \A[13]~input_o\ & ( (\A[12]~input_o\) # (\B[12]~input_o\) ) ) ) # ( \B[13]~input_o\ & ( !\A[13]~input_o\ & ( (\A[12]~input_o\) # (\B[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111101011111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \blk4_c1|C[2]~0_combout\);

-- Location: IOIBUF_X59_Y26_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X58_Y12_N20
\blk4_c0|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c0|C[2]~0_combout\ = ( \A[13]~input_o\ & ( ((\A[12]~input_o\ & \B[12]~input_o\)) # (\B[13]~input_o\) ) ) # ( !\A[13]~input_o\ & ( (\A[12]~input_o\ & (\B[13]~input_o\ & \B[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \blk4_c0|C[2]~0_combout\);

-- Location: IOIBUF_X59_Y46_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LABCELL_X58_Y31_N2
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \blk4_c0|C[2]~0_combout\ & ( \B[14]~input_o\ & ( !\A[14]~input_o\ $ (((!\Csel[3]~2_combout\) # (\blk4_c1|C[2]~0_combout\))) ) ) ) # ( !\blk4_c0|C[2]~0_combout\ & ( \B[14]~input_o\ & ( !\A[14]~input_o\ $ (((\Csel[3]~2_combout\ & 
-- \blk4_c1|C[2]~0_combout\))) ) ) ) # ( \blk4_c0|C[2]~0_combout\ & ( !\B[14]~input_o\ & ( !\A[14]~input_o\ $ (((\Csel[3]~2_combout\ & !\blk4_c1|C[2]~0_combout\))) ) ) ) # ( !\blk4_c0|C[2]~0_combout\ & ( !\B[14]~input_o\ & ( !\A[14]~input_o\ $ 
-- (((!\Csel[3]~2_combout\) # (!\blk4_c1|C[2]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110101101001011010011100001111000010100101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Csel[3]~2_combout\,
	datab => \blk4_c1|ALT_INV_C[2]~0_combout\,
	datac => \ALT_INV_A[14]~input_o\,
	datae => \blk4_c0|ALT_INV_C[2]~0_combout\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X59_Y31_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X58_Y31_N4
\S~51\ : arriaii_lcell_comb
-- Equation(s):
-- \S~51_combout\ = ( !\Csel[3]~2_combout\ & ( !\B[15]~input_o\ $ (!\A[15]~input_o\ $ (((!\B[14]~input_o\ & (\blk4_c0|C[2]~0_combout\ & \A[14]~input_o\)) # (\B[14]~input_o\ & ((\A[14]~input_o\) # (\blk4_c0|C[2]~0_combout\)))))) ) ) # ( \Csel[3]~2_combout\ & 
-- ( !\B[15]~input_o\ $ (!\A[15]~input_o\ $ (((!\B[14]~input_o\ & (\blk4_c1|C[2]~0_combout\ & \A[14]~input_o\)) # (\B[14]~input_o\ & ((\A[14]~input_o\) # (\blk4_c1|C[2]~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011001101100001101100110110011001001100100111100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \blk4_c1|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	datag => \blk4_c0|ALT_INV_C[2]~0_combout\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X59_Y28_N94
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LABCELL_X58_Y31_N14
\blk4_c0|C[4]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c0|C[4]~2_combout\ = ( \B[14]~input_o\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\A[14]~input_o\) # (\blk4_c0|C[2]~0_combout\)))) # (\A[15]~input_o\ & (((\A[14]~input_o\) # (\blk4_c0|C[2]~0_combout\)) # (\B[15]~input_o\))) ) ) # ( 
-- !\B[14]~input_o\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & (\blk4_c0|C[2]~0_combout\ & \A[14]~input_o\))) # (\A[15]~input_o\ & (((\blk4_c0|C[2]~0_combout\ & \A[14]~input_o\)) # (\B[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \blk4_c0|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \blk4_c0|C[4]~2_combout\);

-- Location: LABCELL_X58_Y31_N12
\blk4_c1|C[4]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c1|C[4]~2_combout\ = ( \blk4_c1|C[2]~0_combout\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\A[14]~input_o\) # (\B[14]~input_o\)))) # (\A[15]~input_o\ & (((\A[14]~input_o\) # (\B[14]~input_o\)) # (\B[15]~input_o\))) ) ) # ( 
-- !\blk4_c1|C[2]~0_combout\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & (\B[14]~input_o\ & \A[14]~input_o\))) # (\A[15]~input_o\ & (((\B[14]~input_o\ & \A[14]~input_o\)) # (\B[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \blk4_c1|ALT_INV_C[2]~0_combout\,
	combout => \blk4_c1|C[4]~2_combout\);

-- Location: IOIBUF_X59_Y31_N94
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LABCELL_X58_Y31_N24
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \blk4_c1|C[4]~2_combout\ & ( \A[16]~input_o\ & ( !\B[16]~input_o\ $ (((\Csel[3]~2_combout\) # (\blk4_c0|C[4]~2_combout\))) ) ) ) # ( !\blk4_c1|C[4]~2_combout\ & ( \A[16]~input_o\ & ( !\B[16]~input_o\ $ (((\blk4_c0|C[4]~2_combout\ & 
-- !\Csel[3]~2_combout\))) ) ) ) # ( \blk4_c1|C[4]~2_combout\ & ( !\A[16]~input_o\ & ( !\B[16]~input_o\ $ (((!\blk4_c0|C[4]~2_combout\ & !\Csel[3]~2_combout\))) ) ) ) # ( !\blk4_c1|C[4]~2_combout\ & ( !\A[16]~input_o\ & ( !\B[16]~input_o\ $ 
-- (((!\blk4_c0|C[4]~2_combout\) # (\Csel[3]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011010100110101010011010100110101001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \blk4_c0|ALT_INV_C[4]~2_combout\,
	datac => \ALT_INV_Csel[3]~2_combout\,
	datae => \blk4_c1|ALT_INV_C[4]~2_combout\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X59_Y31_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X59_Y28_N32
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LABCELL_X58_Y31_N20
\S~47\ : arriaii_lcell_comb
-- Equation(s):
-- \S~47_combout\ = ( !\Csel[3]~2_combout\ & ( !\B[17]~input_o\ $ (!\A[17]~input_o\ $ (((!\B[16]~input_o\ & (\blk4_c0|C[4]~2_combout\ & \A[16]~input_o\)) # (\B[16]~input_o\ & ((\A[16]~input_o\) # (\blk4_c0|C[4]~2_combout\)))))) ) ) # ( \Csel[3]~2_combout\ & 
-- ( !\B[17]~input_o\ $ (!\A[17]~input_o\ $ (((!\B[16]~input_o\ & (\blk4_c1|C[4]~2_combout\ & \A[16]~input_o\)) # (\B[16]~input_o\ & ((\A[16]~input_o\) # (\blk4_c1|C[4]~2_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datac => \blk4_c1|ALT_INV_C[4]~2_combout\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \ALT_INV_A[16]~input_o\,
	datag => \blk4_c0|ALT_INV_C[4]~2_combout\,
	combout => \S~47_combout\);

-- Location: LABCELL_X58_Y31_N28
\blk4_c0|C[6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c0|C[6]~1_combout\ = ( \A[16]~input_o\ & ( (!\B[17]~input_o\ & (\A[17]~input_o\ & ((\blk4_c0|C[4]~2_combout\) # (\B[16]~input_o\)))) # (\B[17]~input_o\ & (((\A[17]~input_o\) # (\blk4_c0|C[4]~2_combout\)) # (\B[16]~input_o\))) ) ) # ( 
-- !\A[16]~input_o\ & ( (!\B[17]~input_o\ & (\B[16]~input_o\ & (\blk4_c0|C[4]~2_combout\ & \A[17]~input_o\))) # (\B[17]~input_o\ & (((\B[16]~input_o\ & \blk4_c0|C[4]~2_combout\)) # (\A[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datac => \blk4_c0|ALT_INV_C[4]~2_combout\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \blk4_c0|C[6]~1_combout\);

-- Location: LABCELL_X58_Y31_N30
\blk4_c1|C[6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c1|C[6]~1_combout\ = ( \A[16]~input_o\ & ( (!\B[17]~input_o\ & (\A[17]~input_o\ & ((\blk4_c1|C[4]~2_combout\) # (\B[16]~input_o\)))) # (\B[17]~input_o\ & (((\blk4_c1|C[4]~2_combout\) # (\A[17]~input_o\)) # (\B[16]~input_o\))) ) ) # ( 
-- !\A[16]~input_o\ & ( (!\B[17]~input_o\ & (\B[16]~input_o\ & (\A[17]~input_o\ & \blk4_c1|C[4]~2_combout\))) # (\B[17]~input_o\ & (((\B[16]~input_o\ & \blk4_c1|C[4]~2_combout\)) # (\A[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \blk4_c1|ALT_INV_C[4]~2_combout\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \blk4_c1|C[6]~1_combout\);

-- Location: IOIBUF_X59_Y10_N94
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X59_Y12_N94
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X58_Y12_N26
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \B[18]~input_o\ & ( \A[18]~input_o\ & ( (!\Csel[3]~2_combout\ & (\blk4_c0|C[6]~1_combout\)) # (\Csel[3]~2_combout\ & ((\blk4_c1|C[6]~1_combout\))) ) ) ) # ( !\B[18]~input_o\ & ( \A[18]~input_o\ & ( (!\Csel[3]~2_combout\ & 
-- (!\blk4_c0|C[6]~1_combout\)) # (\Csel[3]~2_combout\ & ((!\blk4_c1|C[6]~1_combout\))) ) ) ) # ( \B[18]~input_o\ & ( !\A[18]~input_o\ & ( (!\Csel[3]~2_combout\ & (!\blk4_c0|C[6]~1_combout\)) # (\Csel[3]~2_combout\ & ((!\blk4_c1|C[6]~1_combout\))) ) ) ) # ( 
-- !\B[18]~input_o\ & ( !\A[18]~input_o\ & ( (!\Csel[3]~2_combout\ & (\blk4_c0|C[6]~1_combout\)) # (\Csel[3]~2_combout\ & ((\blk4_c1|C[6]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111111100111100000011110011110000000000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Csel[3]~2_combout\,
	datac => \blk4_c0|ALT_INV_C[6]~1_combout\,
	datad => \blk4_c1|ALT_INV_C[6]~1_combout\,
	datae => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X59_Y9_N63
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X59_Y12_N1
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X58_Y12_N4
\S~43\ : arriaii_lcell_comb
-- Equation(s):
-- \S~43_combout\ = ( !\Csel[3]~2_combout\ & ( !\B[19]~input_o\ $ (!\A[19]~input_o\ $ (((!\B[18]~input_o\ & (\blk4_c0|C[6]~1_combout\ & \A[18]~input_o\)) # (\B[18]~input_o\ & ((\A[18]~input_o\) # (\blk4_c0|C[6]~1_combout\)))))) ) ) # ( \Csel[3]~2_combout\ & 
-- ( !\B[19]~input_o\ $ (!\A[19]~input_o\ $ (((!\B[18]~input_o\ & (\blk4_c1|C[6]~1_combout\ & \A[18]~input_o\)) # (\B[18]~input_o\ & ((\A[18]~input_o\) # (\blk4_c1|C[6]~1_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_B[18]~input_o\,
	datac => \blk4_c1|ALT_INV_C[6]~1_combout\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \ALT_INV_A[18]~input_o\,
	datag => \blk4_c0|ALT_INV_C[6]~1_combout\,
	combout => \S~43_combout\);

-- Location: IOIBUF_X59_Y9_N1
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X59_Y13_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X58_Y12_N36
\blk4_c0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c0|Cout~0_combout\ = ( \A[19]~input_o\ & ( ((!\A[18]~input_o\ & (\B[18]~input_o\ & \blk4_c0|C[6]~1_combout\)) # (\A[18]~input_o\ & ((\blk4_c0|C[6]~1_combout\) # (\B[18]~input_o\)))) # (\B[19]~input_o\) ) ) # ( !\A[19]~input_o\ & ( (\B[19]~input_o\ & 
-- ((!\A[18]~input_o\ & (\B[18]~input_o\ & \blk4_c0|C[6]~1_combout\)) # (\A[18]~input_o\ & ((\blk4_c0|C[6]~1_combout\) # (\B[18]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \blk4_c0|ALT_INV_C[6]~1_combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \blk4_c0|Cout~0_combout\);

-- Location: LABCELL_X58_Y12_N38
\blk4_c1|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk4_c1|Cout~0_combout\ = ( \B[19]~input_o\ & ( ((!\A[18]~input_o\ & (\B[18]~input_o\ & \blk4_c1|C[6]~1_combout\)) # (\A[18]~input_o\ & ((\blk4_c1|C[6]~1_combout\) # (\B[18]~input_o\)))) # (\A[19]~input_o\) ) ) # ( !\B[19]~input_o\ & ( (\A[19]~input_o\ & 
-- ((!\A[18]~input_o\ & (\B[18]~input_o\ & \blk4_c1|C[6]~1_combout\)) # (\A[18]~input_o\ & ((\blk4_c1|C[6]~1_combout\) # (\B[18]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \blk4_c1|ALT_INV_C[6]~1_combout\,
	dataf => \ALT_INV_B[19]~input_o\,
	combout => \blk4_c1|Cout~0_combout\);

-- Location: LABCELL_X58_Y12_N30
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \blk4_c1|Cout~0_combout\ & ( !\A[20]~input_o\ $ (!\B[20]~input_o\ $ (((\blk4_c0|Cout~0_combout\) # (\Csel[3]~2_combout\)))) ) ) # ( !\blk4_c1|Cout~0_combout\ & ( !\A[20]~input_o\ $ (!\B[20]~input_o\ $ (((!\Csel[3]~2_combout\ & 
-- \blk4_c0|Cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010010110011001101001011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_Csel[3]~2_combout\,
	datad => \blk4_c0|ALT_INV_Cout~0_combout\,
	dataf => \blk4_c1|ALT_INV_Cout~0_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X59_Y12_N63
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X59_Y10_N32
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LABCELL_X58_Y12_N0
\S~39\ : arriaii_lcell_comb
-- Equation(s):
-- \S~39_combout\ = ( !\Csel[3]~2_combout\ & ( !\A[21]~input_o\ $ (!\B[21]~input_o\ $ (((!\B[20]~input_o\ & (\blk4_c0|Cout~0_combout\ & \A[20]~input_o\)) # (\B[20]~input_o\ & ((\A[20]~input_o\) # (\blk4_c0|Cout~0_combout\)))))) ) ) # ( \Csel[3]~2_combout\ & 
-- ( !\A[21]~input_o\ $ (!\B[21]~input_o\ $ (((!\B[20]~input_o\ & (\blk4_c1|Cout~0_combout\ & \A[20]~input_o\)) # (\B[20]~input_o\ & ((\A[20]~input_o\) # (\blk4_c1|Cout~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \blk4_c1|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_B[21]~input_o\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \ALT_INV_A[20]~input_o\,
	datag => \blk4_c0|ALT_INV_Cout~0_combout\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X48_Y0_N32
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X59_Y4_N63
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LABCELL_X58_Y12_N28
\blk5_c0|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|C[2]~0_combout\ = (!\A[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \B[21]~input_o\))) # (\A[21]~input_o\ & (((\A[20]~input_o\ & \B[20]~input_o\)) # (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	combout => \blk5_c0|C[2]~0_combout\);

-- Location: LABCELL_X58_Y12_N22
\blk5_c1|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|C[2]~0_combout\ = ( \A[21]~input_o\ & ( ((\B[20]~input_o\) # (\B[21]~input_o\)) # (\A[20]~input_o\) ) ) # ( !\A[21]~input_o\ & ( (\B[21]~input_o\ & ((\B[20]~input_o\) # (\A[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \blk5_c1|C[2]~0_combout\);

-- Location: LABCELL_X47_Y4_N24
\S~35\ : arriaii_lcell_comb
-- Equation(s):
-- \S~35_combout\ = ( !\Csel[3]~2_combout\ & ( !\A[22]~input_o\ $ (!\B[22]~input_o\ $ (((!\blk4_c0|Cout~0_combout\ & (\blk5_c0|C[2]~0_combout\)) # (\blk4_c0|Cout~0_combout\ & ((\blk5_c1|C[2]~0_combout\)))))) ) ) # ( \Csel[3]~2_combout\ & ( !\A[22]~input_o\ $ 
-- (!\B[22]~input_o\ $ (((!\blk4_c1|Cout~0_combout\ & (\blk5_c0|C[2]~0_combout\)) # (\blk4_c1|Cout~0_combout\ & ((\blk5_c1|C[2]~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110011010010110011001101001011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	datac => \blk4_c1|ALT_INV_Cout~0_combout\,
	datad => \blk5_c0|ALT_INV_C[2]~0_combout\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \blk5_c1|ALT_INV_C[2]~0_combout\,
	datag => \blk4_c0|ALT_INV_Cout~0_combout\,
	combout => \S~35_combout\);

-- Location: LABCELL_X47_Y4_N32
\blk5_c1|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|C[3]~2_combout\ = ( \blk5_c1|C[2]~0_combout\ & ( \A[22]~input_o\ ) ) # ( !\blk5_c1|C[2]~0_combout\ & ( (\A[22]~input_o\ & \B[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \blk5_c1|ALT_INV_C[2]~0_combout\,
	combout => \blk5_c1|C[3]~2_combout\);

-- Location: IOIBUF_X50_Y0_N63
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X47_Y4_N8
\blk5_c1|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|C[3]~1_combout\ = ( \blk5_c1|C[2]~0_combout\ & ( \B[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[22]~input_o\,
	dataf => \blk5_c1|ALT_INV_C[2]~0_combout\,
	combout => \blk5_c1|C[3]~1_combout\);

-- Location: IOIBUF_X48_Y0_N1
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LABCELL_X47_Y4_N34
\blk5_c1|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|S\(3) = ( \A[23]~input_o\ & ( !\B[23]~input_o\ $ (((\blk5_c1|C[3]~1_combout\) # (\blk5_c1|C[3]~2_combout\))) ) ) # ( !\A[23]~input_o\ & ( !\B[23]~input_o\ $ (((!\blk5_c1|C[3]~2_combout\ & !\blk5_c1|C[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011001100011001101100110010011001001100111001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|ALT_INV_C[3]~2_combout\,
	datab => \ALT_INV_B[23]~input_o\,
	datad => \blk5_c1|ALT_INV_C[3]~1_combout\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \blk5_c1|S\(3));

-- Location: MLABCELL_X54_Y30_N22
\blk5_c0|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|C[3]~1_combout\ = ( \B[22]~input_o\ & ( \blk5_c0|C[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c0|ALT_INV_C[2]~0_combout\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \blk5_c0|C[3]~1_combout\);

-- Location: LABCELL_X47_Y4_N10
\blk5_c0|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|C[3]~2_combout\ = (\A[22]~input_o\ & ((\blk5_c0|C[2]~0_combout\) # (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[22]~input_o\,
	datac => \blk5_c0|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_A[22]~input_o\,
	combout => \blk5_c0|C[3]~2_combout\);

-- Location: LABCELL_X47_Y4_N38
\blk5_c0|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|S\(3) = ( \blk5_c0|C[3]~2_combout\ & ( !\A[23]~input_o\ $ (\B[23]~input_o\) ) ) # ( !\blk5_c0|C[3]~2_combout\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\ $ (\blk5_c0|C[3]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \blk5_c0|ALT_INV_C[3]~1_combout\,
	dataf => \blk5_c0|ALT_INV_C[3]~2_combout\,
	combout => \blk5_c0|S\(3));

-- Location: LABCELL_X47_Y4_N22
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \blk5_c0|S\(3) & ( ((!\Csel[3]~2_combout\ & ((!\blk4_c0|Cout~0_combout\))) # (\Csel[3]~2_combout\ & (!\blk4_c1|Cout~0_combout\))) # (\blk5_c1|S\(3)) ) ) # ( !\blk5_c0|S\(3) & ( (\blk5_c1|S\(3) & ((!\Csel[3]~2_combout\ & 
-- ((\blk4_c0|Cout~0_combout\))) # (\Csel[3]~2_combout\ & (\blk4_c1|Cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110111101111001011111110111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_Csel[3]~2_combout\,
	datac => \blk5_c1|ALT_INV_S\(3),
	datad => \blk4_c0|ALT_INV_Cout~0_combout\,
	dataf => \blk5_c0|ALT_INV_S\(3),
	combout => \S~14_combout\);

-- Location: IOIBUF_X47_Y0_N94
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LABCELL_X47_Y4_N36
\blk5_c1|C[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|C[4]~3_combout\ = ( \blk5_c1|C[3]~2_combout\ & ( (\B[23]~input_o\) # (\A[23]~input_o\) ) ) # ( !\blk5_c1|C[3]~2_combout\ & ( (!\A[23]~input_o\ & (\B[23]~input_o\ & \blk5_c1|C[3]~1_combout\)) # (\A[23]~input_o\ & ((\blk5_c1|C[3]~1_combout\) # 
-- (\B[23]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \blk5_c1|ALT_INV_C[3]~1_combout\,
	dataf => \blk5_c1|ALT_INV_C[3]~2_combout\,
	combout => \blk5_c1|C[4]~3_combout\);

-- Location: LABCELL_X47_Y4_N6
\blk5_c0|C[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|C[4]~3_combout\ = ( \blk5_c0|C[3]~2_combout\ & ( (\B[23]~input_o\) # (\A[23]~input_o\) ) ) # ( !\blk5_c0|C[3]~2_combout\ & ( (!\A[23]~input_o\ & (\blk5_c0|C[3]~1_combout\ & \B[23]~input_o\)) # (\A[23]~input_o\ & ((\B[23]~input_o\) # 
-- (\blk5_c0|C[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datac => \blk5_c0|ALT_INV_C[3]~1_combout\,
	datad => \ALT_INV_B[23]~input_o\,
	dataf => \blk5_c0|ALT_INV_C[3]~2_combout\,
	combout => \blk5_c0|C[4]~3_combout\);

-- Location: LABCELL_X47_Y4_N0
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( !\Csel[3]~2_combout\ & ( !\A[24]~input_o\ $ (!\B[24]~input_o\ $ (((!\blk4_c0|Cout~0_combout\ & ((\blk5_c0|C[4]~3_combout\))) # (\blk4_c0|Cout~0_combout\ & (\blk5_c1|C[4]~3_combout\))))) ) ) # ( \Csel[3]~2_combout\ & ( !\A[24]~input_o\ $ 
-- (!\B[24]~input_o\ $ (((!\blk4_c1|Cout~0_combout\ & ((\blk5_c0|C[4]~3_combout\))) # (\blk4_c1|Cout~0_combout\ & (\blk5_c1|C[4]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110011001101001011001100110100110010110100110011001011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \blk4_c1|ALT_INV_Cout~0_combout\,
	datad => \blk5_c1|ALT_INV_C[4]~3_combout\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \blk5_c0|ALT_INV_C[4]~3_combout\,
	datag => \blk4_c0|ALT_INV_Cout~0_combout\,
	combout => \S~31_combout\);

-- Location: LABCELL_X47_Y4_N16
\blk5_c0|C[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|C[5]~5_combout\ = ( \blk5_c0|C[4]~3_combout\ & ( \A[24]~input_o\ ) ) # ( !\blk5_c0|C[4]~3_combout\ & ( (\B[24]~input_o\ & \A[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	dataf => \blk5_c0|ALT_INV_C[4]~3_combout\,
	combout => \blk5_c0|C[5]~5_combout\);

-- Location: IOIBUF_X45_Y0_N32
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X47_Y4_N18
\blk5_c0|C[5]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|C[5]~4_combout\ = ( \blk5_c0|C[4]~3_combout\ & ( \B[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[24]~input_o\,
	dataf => \blk5_c0|ALT_INV_C[4]~3_combout\,
	combout => \blk5_c0|C[5]~4_combout\);

-- Location: IOIBUF_X48_Y0_N94
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LABCELL_X47_Y4_N4
\blk5_c0|S[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|S\(5) = ( \B[25]~input_o\ & ( !\A[25]~input_o\ $ (((\blk5_c0|C[5]~4_combout\) # (\blk5_c0|C[5]~5_combout\))) ) ) # ( !\B[25]~input_o\ & ( !\A[25]~input_o\ $ (((!\blk5_c0|C[5]~5_combout\ & !\blk5_c0|C[5]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000011000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \blk5_c0|ALT_INV_C[5]~5_combout\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \blk5_c0|ALT_INV_C[5]~4_combout\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \blk5_c0|S\(5));

-- Location: LABCELL_X47_Y4_N28
\blk5_c1|C[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|C[5]~5_combout\ = ( \A[24]~input_o\ & ( (\B[24]~input_o\) # (\blk5_c1|C[4]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \blk5_c1|ALT_INV_C[4]~3_combout\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \blk5_c1|C[5]~5_combout\);

-- Location: LABCELL_X47_Y4_N30
\blk5_c1|C[5]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|C[5]~4_combout\ = (\blk5_c1|C[4]~3_combout\ & \B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \blk5_c1|ALT_INV_C[4]~3_combout\,
	datad => \ALT_INV_B[24]~input_o\,
	combout => \blk5_c1|C[5]~4_combout\);

-- Location: LABCELL_X47_Y4_N12
\blk5_c1|S[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|S\(5) = ( \B[25]~input_o\ & ( !\A[25]~input_o\ $ (((\blk5_c1|C[5]~4_combout\) # (\blk5_c1|C[5]~5_combout\))) ) ) # ( !\B[25]~input_o\ & ( !\A[25]~input_o\ $ (((!\blk5_c1|C[5]~5_combout\ & !\blk5_c1|C[5]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100010000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|ALT_INV_C[5]~5_combout\,
	datab => \blk5_c1|ALT_INV_C[5]~4_combout\,
	datac => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \blk5_c1|S\(5));

-- Location: LABCELL_X47_Y4_N20
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \blk4_c0|Cout~0_combout\ & ( (!\blk4_c1|Cout~0_combout\ & ((!\Csel[3]~2_combout\ & ((\blk5_c1|S\(5)))) # (\Csel[3]~2_combout\ & (\blk5_c0|S\(5))))) # (\blk4_c1|Cout~0_combout\ & (((\blk5_c1|S\(5))))) ) ) # ( !\blk4_c0|Cout~0_combout\ & 
-- ( (!\blk4_c1|Cout~0_combout\ & (((\blk5_c0|S\(5))))) # (\blk4_c1|Cout~0_combout\ & ((!\Csel[3]~2_combout\ & (\blk5_c0|S\(5))) # (\Csel[3]~2_combout\ & ((\blk5_c1|S\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_Csel[3]~2_combout\,
	datac => \blk5_c0|ALT_INV_S\(5),
	datad => \blk5_c1|ALT_INV_S\(5),
	dataf => \blk4_c0|ALT_INV_Cout~0_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X39_Y0_N1
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: MLABCELL_X44_Y4_N14
\blk5_c0|C[6]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|C[6]~6_combout\ = ( \B[25]~input_o\ & ( ((\blk5_c0|C[5]~4_combout\) # (\blk5_c0|C[5]~5_combout\)) # (\A[25]~input_o\) ) ) # ( !\B[25]~input_o\ & ( (\A[25]~input_o\ & ((\blk5_c0|C[5]~4_combout\) # (\blk5_c0|C[5]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datac => \blk5_c0|ALT_INV_C[5]~5_combout\,
	datad => \blk5_c0|ALT_INV_C[5]~4_combout\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \blk5_c0|C[6]~6_combout\);

-- Location: IOIBUF_X45_Y0_N94
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LABCELL_X47_Y4_N14
\blk5_c1|C[6]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|C[6]~6_combout\ = ( \A[25]~input_o\ & ( ((\B[25]~input_o\) # (\blk5_c1|C[5]~4_combout\)) # (\blk5_c1|C[5]~5_combout\) ) ) # ( !\A[25]~input_o\ & ( (\B[25]~input_o\ & ((\blk5_c1|C[5]~4_combout\) # (\blk5_c1|C[5]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|ALT_INV_C[5]~5_combout\,
	datab => \blk5_c1|ALT_INV_C[5]~4_combout\,
	datac => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \blk5_c1|C[6]~6_combout\);

-- Location: MLABCELL_X44_Y4_N8
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( !\Csel[3]~2_combout\ & ( !\A[26]~input_o\ $ (!\B[26]~input_o\ $ (((!\blk4_c0|Cout~0_combout\ & (\blk5_c0|C[6]~6_combout\)) # (\blk4_c0|Cout~0_combout\ & ((\blk5_c1|C[6]~6_combout\)))))) ) ) # ( \Csel[3]~2_combout\ & ( !\A[26]~input_o\ $ 
-- (!\B[26]~input_o\ $ (((!\blk4_c1|Cout~0_combout\ & (\blk5_c0|C[6]~6_combout\)) # (\blk4_c1|Cout~0_combout\ & ((\blk5_c1|C[6]~6_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110010110011010011001011001101001101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \blk5_c0|ALT_INV_C[6]~6_combout\,
	datac => \blk4_c1|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_B[26]~input_o\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \blk5_c1|ALT_INV_C[6]~6_combout\,
	datag => \blk4_c0|ALT_INV_Cout~0_combout\,
	combout => \S~27_combout\);

-- Location: IOIBUF_X45_Y0_N63
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X43_Y0_N94
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: MLABCELL_X44_Y4_N38
\blk5_c0|S[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|S\(7) = ( \blk5_c0|C[6]~6_combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\ $ (((\A[26]~input_o\) # (\B[26]~input_o\)))) ) ) # ( !\blk5_c0|C[6]~6_combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\ $ (((\B[26]~input_o\ & \A[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \blk5_c0|ALT_INV_C[6]~6_combout\,
	combout => \blk5_c0|S\(7));

-- Location: MLABCELL_X44_Y4_N36
\blk5_c1|S[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|S\(7) = ( \blk5_c1|C[6]~6_combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\ $ (((\A[26]~input_o\) # (\B[26]~input_o\)))) ) ) # ( !\blk5_c1|C[6]~6_combout\ & ( !\A[27]~input_o\ $ (!\B[27]~input_o\ $ (((\B[26]~input_o\ & \A[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \blk5_c1|ALT_INV_C[6]~6_combout\,
	combout => \blk5_c1|S\(7));

-- Location: LABCELL_X58_Y12_N14
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = ( \blk4_c0|Cout~0_combout\ & ( \Csel[3]~2_combout\ & ( (!\blk4_c1|Cout~0_combout\ & (\blk5_c0|S\(7))) # (\blk4_c1|Cout~0_combout\ & ((\blk5_c1|S\(7)))) ) ) ) # ( !\blk4_c0|Cout~0_combout\ & ( \Csel[3]~2_combout\ & ( 
-- (!\blk4_c1|Cout~0_combout\ & (\blk5_c0|S\(7))) # (\blk4_c1|Cout~0_combout\ & ((\blk5_c1|S\(7)))) ) ) ) # ( \blk4_c0|Cout~0_combout\ & ( !\Csel[3]~2_combout\ & ( \blk5_c1|S\(7) ) ) ) # ( !\blk4_c0|Cout~0_combout\ & ( !\Csel[3]~2_combout\ & ( \blk5_c0|S\(7) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|ALT_INV_Cout~0_combout\,
	datab => \blk5_c0|ALT_INV_S\(7),
	datad => \blk5_c1|ALT_INV_S\(7),
	datae => \blk4_c0|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_Csel[3]~2_combout\,
	combout => \S~16_combout\);

-- Location: MLABCELL_X44_Y4_N18
\blk5_c1|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c1|Cout~0_combout\ = ( \blk5_c1|C[6]~6_combout\ & ( (!\A[27]~input_o\ & (\B[27]~input_o\ & ((\A[26]~input_o\) # (\B[26]~input_o\)))) # (\A[27]~input_o\ & (((\A[26]~input_o\) # (\B[27]~input_o\)) # (\B[26]~input_o\))) ) ) # ( 
-- !\blk5_c1|C[6]~6_combout\ & ( (!\A[27]~input_o\ & (\B[26]~input_o\ & (\B[27]~input_o\ & \A[26]~input_o\))) # (\A[27]~input_o\ & (((\B[26]~input_o\ & \A[26]~input_o\)) # (\B[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \blk5_c1|ALT_INV_C[6]~6_combout\,
	combout => \blk5_c1|Cout~0_combout\);

-- Location: IOIBUF_X39_Y0_N94
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X43_Y0_N32
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: MLABCELL_X44_Y4_N16
\blk5_c0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk5_c0|Cout~0_combout\ = ( \blk5_c0|C[6]~6_combout\ & ( (!\A[27]~input_o\ & (\B[27]~input_o\ & ((\A[26]~input_o\) # (\B[26]~input_o\)))) # (\A[27]~input_o\ & (((\A[26]~input_o\) # (\B[27]~input_o\)) # (\B[26]~input_o\))) ) ) # ( 
-- !\blk5_c0|C[6]~6_combout\ & ( (!\A[27]~input_o\ & (\B[26]~input_o\ & (\B[27]~input_o\ & \A[26]~input_o\))) # (\A[27]~input_o\ & (((\B[26]~input_o\ & \A[26]~input_o\)) # (\B[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \blk5_c0|ALT_INV_C[6]~6_combout\,
	combout => \blk5_c0|Cout~0_combout\);

-- Location: MLABCELL_X44_Y4_N24
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( !\Csel[3]~2_combout\ & ( !\B[28]~input_o\ $ (!\A[28]~input_o\ $ (((!\blk4_c0|Cout~0_combout\ & ((\blk5_c0|Cout~0_combout\))) # (\blk4_c0|Cout~0_combout\ & (\blk5_c1|Cout~0_combout\))))) ) ) # ( \Csel[3]~2_combout\ & ( !\B[28]~input_o\ $ 
-- (!\A[28]~input_o\ $ (((!\blk4_c1|Cout~0_combout\ & ((\blk5_c0|Cout~0_combout\))) # (\blk4_c1|Cout~0_combout\ & (\blk5_c1|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011011001001001101101100100111000110001110011100011000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk5_c1|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_B[28]~input_o\,
	datac => \blk4_c1|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_Csel[3]~2_combout\,
	dataf => \blk5_c0|ALT_INV_Cout~0_combout\,
	datag => \blk4_c0|ALT_INV_Cout~0_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X35_Y0_N32
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X43_Y0_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: MLABCELL_X44_Y4_N0
\Csel[5]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Csel[5]~0_combout\ = ( \blk5_c0|Cout~0_combout\ & ( ((!\Csel[3]~2_combout\ & ((!\blk4_c0|Cout~0_combout\))) # (\Csel[3]~2_combout\ & (!\blk4_c1|Cout~0_combout\))) # (\blk5_c1|Cout~0_combout\) ) ) # ( !\blk5_c0|Cout~0_combout\ & ( 
-- (\blk5_c1|Cout~0_combout\ & ((!\Csel[3]~2_combout\ & ((\blk4_c0|Cout~0_combout\))) # (\Csel[3]~2_combout\ & (\blk4_c1|Cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010111001010111111111100101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk4_c1|ALT_INV_Cout~0_combout\,
	datab => \blk4_c0|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_Csel[3]~2_combout\,
	datad => \blk5_c1|ALT_INV_Cout~0_combout\,
	dataf => \blk5_c0|ALT_INV_Cout~0_combout\,
	combout => \Csel[5]~0_combout\);

-- Location: MLABCELL_X44_Y4_N4
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \B[28]~input_o\ & ( !\B[29]~input_o\ $ (!\A[29]~input_o\ $ (((\Csel[5]~0_combout\) # (\A[28]~input_o\)))) ) ) # ( !\B[28]~input_o\ & ( !\B[29]~input_o\ $ (!\A[29]~input_o\ $ (((\A[28]~input_o\ & \Csel[5]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_Csel[5]~0_combout\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X39_Y0_N63
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X37_Y0_N94
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: MLABCELL_X44_Y4_N12
\blk6_c0|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk6_c0|C[2]~0_combout\ = ( \A[29]~input_o\ & ( ((\B[28]~input_o\ & \A[28]~input_o\)) # (\B[29]~input_o\) ) ) # ( !\A[29]~input_o\ & ( (\B[28]~input_o\ & (\B[29]~input_o\ & \A[28]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \blk6_c0|C[2]~0_combout\);

-- Location: MLABCELL_X44_Y4_N6
\blk6_c1|C[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk6_c1|C[2]~0_combout\ = ( \B[28]~input_o\ & ( (\A[29]~input_o\) # (\B[29]~input_o\) ) ) # ( !\B[28]~input_o\ & ( (!\B[29]~input_o\ & (\A[28]~input_o\ & \A[29]~input_o\)) # (\B[29]~input_o\ & ((\A[29]~input_o\) # (\A[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \blk6_c1|C[2]~0_combout\);

-- Location: MLABCELL_X44_Y4_N30
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \blk6_c1|C[2]~0_combout\ & ( !\B[30]~input_o\ $ (!\A[30]~input_o\ $ (((\blk6_c0|C[2]~0_combout\) # (\Csel[5]~0_combout\)))) ) ) # ( !\blk6_c1|C[2]~0_combout\ & ( !\B[30]~input_o\ $ (!\A[30]~input_o\ $ (((!\Csel[5]~0_combout\ & 
-- \blk6_c0|C[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110010010110001111001001011001101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Csel[5]~0_combout\,
	datab => \ALT_INV_B[30]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \blk6_c0|ALT_INV_C[2]~0_combout\,
	dataf => \blk6_c1|ALT_INV_C[2]~0_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X41_Y0_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: MLABCELL_X44_Y4_N20
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( !\Csel[5]~0_combout\ & ( !\A[31]~input_o\ $ (!\B[31]~input_o\ $ (((!\B[30]~input_o\ & (\A[30]~input_o\ & \blk6_c0|C[2]~0_combout\)) # (\B[30]~input_o\ & ((\blk6_c0|C[2]~0_combout\) # (\A[30]~input_o\)))))) ) ) # ( \Csel[5]~0_combout\ & 
-- ( !\A[31]~input_o\ $ (!\B[31]~input_o\ $ (((!\B[30]~input_o\ & (\A[30]~input_o\ & \blk6_c1|C[2]~0_combout\)) # (\B[30]~input_o\ & ((\blk6_c1|C[2]~0_combout\) # (\A[30]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \blk6_c1|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_Csel[5]~0_combout\,
	dataf => \ALT_INV_B[31]~input_o\,
	datag => \blk6_c0|ALT_INV_C[2]~0_combout\,
	combout => \S~19_combout\);

-- Location: MLABCELL_X44_Y4_N34
\blk6_c1|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk6_c1|Cout~0_combout\ = ( \B[31]~input_o\ & ( ((!\A[30]~input_o\ & (\blk6_c1|C[2]~0_combout\ & \B[30]~input_o\)) # (\A[30]~input_o\ & ((\B[30]~input_o\) # (\blk6_c1|C[2]~0_combout\)))) # (\A[31]~input_o\) ) ) # ( !\B[31]~input_o\ & ( (\A[31]~input_o\ & 
-- ((!\A[30]~input_o\ & (\blk6_c1|C[2]~0_combout\ & \B[30]~input_o\)) # (\A[30]~input_o\ & ((\B[30]~input_o\) # (\blk6_c1|C[2]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \blk6_c1|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \blk6_c1|Cout~0_combout\);

-- Location: MLABCELL_X44_Y4_N32
\blk6_c0|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \blk6_c0|Cout~0_combout\ = ( \B[31]~input_o\ & ( ((!\A[30]~input_o\ & (\blk6_c0|C[2]~0_combout\ & \B[30]~input_o\)) # (\A[30]~input_o\ & ((\B[30]~input_o\) # (\blk6_c0|C[2]~0_combout\)))) # (\A[31]~input_o\) ) ) # ( !\B[31]~input_o\ & ( (\A[31]~input_o\ & 
-- ((!\A[30]~input_o\ & (\blk6_c0|C[2]~0_combout\ & \B[30]~input_o\)) # (\A[30]~input_o\ & ((\B[30]~input_o\) # (\blk6_c0|C[2]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \blk6_c0|ALT_INV_C[2]~0_combout\,
	datad => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \blk6_c0|Cout~0_combout\);

-- Location: MLABCELL_X44_Y4_N28
\Csel~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Csel~1_combout\ = ( \blk6_c0|Cout~0_combout\ & ( (!\Csel[5]~0_combout\) # (\blk6_c1|Cout~0_combout\) ) ) # ( !\blk6_c0|Cout~0_combout\ & ( (\Csel[5]~0_combout\ & \blk6_c1|Cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Csel[5]~0_combout\,
	datad => \blk6_c1|ALT_INV_Cout~0_combout\,
	dataf => \blk6_c0|ALT_INV_Cout~0_combout\,
	combout => \Csel~1_combout\);

-- Location: MLABCELL_X44_Y4_N2
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \blk6_c0|Cout~0_combout\ & ( (!\Csel[5]~0_combout\) # (!\blk6_c1|Cout~0_combout\) ) ) # ( !\blk6_c0|Cout~0_combout\ & ( (\Csel[5]~0_combout\ & !\blk6_c1|Cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Csel[5]~0_combout\,
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


