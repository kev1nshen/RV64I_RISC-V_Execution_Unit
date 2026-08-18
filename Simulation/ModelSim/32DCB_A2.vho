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

-- DATE "04/08/2026 15:07:53"

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

ENTITY 	ShiftUnit IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic;
	Y : OUT std_logic_vector(31 DOWNTO 0)
	);
END ShiftUnit;

-- Design Ports Information
-- B[6]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftUnit IS
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
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(31 DOWNTO 0);
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \s64[1][20]~6_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \s64[1][22]~7_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \s64[1][18]~1_combout\ : std_logic;
SIGNAL \s64[2][20]~8_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \s64[2][0]~5_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \s64[1][16]~0_combout\ : std_logic;
SIGNAL \s64[2][0]~3_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \s64[2][0]~2_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \s64[2][0]~4_combout\ : std_logic;
SIGNAL \s64[3][16]~9_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \s64[2][0]~10_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \s64[2][0]~11_combout\ : std_logic;
SIGNAL \s64[2][0]~12_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \s64[2][0]~13_combout\ : std_logic;
SIGNAL \s64[3][8]~14_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \s64[1][26]~16_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \s64[1][24]~15_combout\ : std_logic;
SIGNAL \s64[2][24]~17_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \s64[1][28]~18_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \s64[1][30]~19_combout\ : std_logic;
SIGNAL \s64[2][28]~20_combout\ : std_logic;
SIGNAL \s64[3][24]~21_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \s64[4][16]~22_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \s64[2][0]~25_combout\ : std_logic;
SIGNAL \s64[2][0]~24_combout\ : std_logic;
SIGNAL \s64[2][0]~23_combout\ : std_logic;
SIGNAL \s64[3][0]~26_combout\ : std_logic;
SIGNAL \Y~76_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \s64[2][0]~34_combout\ : std_logic;
SIGNAL \s64[2][0]~33_combout\ : std_logic;
SIGNAL \s64[2][0]~32_combout\ : std_logic;
SIGNAL \s64[3][1]~35_combout\ : std_logic;
SIGNAL \s64[2][0]~27_combout\ : std_logic;
SIGNAL \s64[2][0]~30_combout\ : std_logic;
SIGNAL \s64[2][0]~28_combout\ : std_logic;
SIGNAL \s64[2][0]~131_combout\ : std_logic;
SIGNAL \s32[3][9]~0_combout\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \fill32~0_combout\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \fill64~0_combout\ : std_logic;
SIGNAL \s64[2][0]~29_combout\ : std_logic;
SIGNAL \s64[3][9]~31_combout\ : std_logic;
SIGNAL \s64[1][17]~37_combout\ : std_logic;
SIGNAL \s64[1][19]~38_combout\ : std_logic;
SIGNAL \s64[2][0]~39_combout\ : std_logic;
SIGNAL \s64[1][21]~41_combout\ : std_logic;
SIGNAL \s64[1][23]~42_combout\ : std_logic;
SIGNAL \s64[2][21]~43_combout\ : std_logic;
SIGNAL \s64[2][0]~40_combout\ : std_logic;
SIGNAL \s64[3][17]~44_combout\ : std_logic;
SIGNAL \s64[1][25]~45_combout\ : std_logic;
SIGNAL \s64[1][27]~46_combout\ : std_logic;
SIGNAL \s64[2][25]~47_combout\ : std_logic;
SIGNAL \s64[1][29]~48_combout\ : std_logic;
SIGNAL \s64[1][31]~49_combout\ : std_logic;
SIGNAL \s64[2][29]~50_combout\ : std_logic;
SIGNAL \s64[3][25]~51_combout\ : std_logic;
SIGNAL \s64[4][17]~52_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \s64[4][1]~36_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \s64[2][0]~59_combout\ : std_logic;
SIGNAL \s64[2][0]~58_combout\ : std_logic;
SIGNAL \s64[2][0]~60_combout\ : std_logic;
SIGNAL \s64[3][2]~61_combout\ : std_logic;
SIGNAL \s64[2][0]~54_combout\ : std_logic;
SIGNAL \s64[2][0]~56_combout\ : std_logic;
SIGNAL \s64[2][0]~53_combout\ : std_logic;
SIGNAL \s64[2][0]~71_combout\ : std_logic;
SIGNAL \s32[3][10]~1_combout\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \s64[2][18]~63_combout\ : std_logic;
SIGNAL \s64[2][22]~65_combout\ : std_logic;
SIGNAL \s64[2][0]~64_combout\ : std_logic;
SIGNAL \s64[3][18]~66_combout\ : std_logic;
SIGNAL \s64[2][0]~55_combout\ : std_logic;
SIGNAL \s64[3][10]~57_combout\ : std_logic;
SIGNAL \s64[2][30]~68_combout\ : std_logic;
SIGNAL \s64[2][26]~67_combout\ : std_logic;
SIGNAL \s64[3][26]~69_combout\ : std_logic;
SIGNAL \s64[4][18]~70_combout\ : std_logic;
SIGNAL \s64[4][2]~62_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \s64[2][0]~73_combout\ : std_logic;
SIGNAL \s64[2][0]~72_combout\ : std_logic;
SIGNAL \s64[2][0]~75_combout\ : std_logic;
SIGNAL \s64[2][0]~74_combout\ : std_logic;
SIGNAL \s64[3][11]~76_combout\ : std_logic;
SIGNAL \s64[2][0]~83_combout\ : std_logic;
SIGNAL \s64[2][19]~82_combout\ : std_logic;
SIGNAL \s64[2][23]~84_combout\ : std_logic;
SIGNAL \s64[3][19]~85_combout\ : std_logic;
SIGNAL \s64[2][27]~86_combout\ : std_logic;
SIGNAL \s64[2][31]~87_combout\ : std_logic;
SIGNAL \s64[3][27]~88_combout\ : std_logic;
SIGNAL \s64[4][19]~89_combout\ : std_logic;
SIGNAL \s64[2][0]~77_combout\ : std_logic;
SIGNAL \s64[2][0]~79_combout\ : std_logic;
SIGNAL \s64[2][0]~78_combout\ : std_logic;
SIGNAL \s64[3][3]~80_combout\ : std_logic;
SIGNAL \s64[4][3]~81_combout\ : std_logic;
SIGNAL \s64[2][0]~90_combout\ : std_logic;
SIGNAL \s32[3][11]~2_combout\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \s32[3][12]~3_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \s64[3][4]~92_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \s64[3][12]~91_combout\ : std_logic;
SIGNAL \s64[4][4]~93_combout\ : std_logic;
SIGNAL \s64[3][20]~94_combout\ : std_logic;
SIGNAL \s64[3][28]~95_combout\ : std_logic;
SIGNAL \s64[4][20]~96_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \s64[3][13]~97_combout\ : std_logic;
SIGNAL \s64[3][5]~98_combout\ : std_logic;
SIGNAL \s64[4][5]~99_combout\ : std_logic;
SIGNAL \s64[3][21]~100_combout\ : std_logic;
SIGNAL \s64[3][29]~101_combout\ : std_logic;
SIGNAL \s64[4][21]~102_combout\ : std_logic;
SIGNAL \s32[3][13]~4_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \s64[3][6]~104_combout\ : std_logic;
SIGNAL \s64[3][14]~103_combout\ : std_logic;
SIGNAL \s64[4][6]~105_combout\ : std_logic;
SIGNAL \s32[3][14]~5_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \s64[3][30]~107_combout\ : std_logic;
SIGNAL \s64[3][22]~106_combout\ : std_logic;
SIGNAL \s64[4][22]~108_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \s64[3][7]~110_combout\ : std_logic;
SIGNAL \s64[3][15]~109_combout\ : std_logic;
SIGNAL \s64[4][7]~111_combout\ : std_logic;
SIGNAL \s32[3][15]~6_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \s64[3][23]~112_combout\ : std_logic;
SIGNAL \s64[3][31]~113_combout\ : std_logic;
SIGNAL \s64[4][23]~114_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \s64[4][24]~115_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \s64[4][8]~116_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \s64[4][9]~118_combout\ : std_logic;
SIGNAL \s64[4][25]~117_combout\ : std_logic;
SIGNAL \Y~72_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \Y~32_combout\ : std_logic;
SIGNAL \Y~33_combout\ : std_logic;
SIGNAL \s64[4][10]~120_combout\ : std_logic;
SIGNAL \s64[4][26]~119_combout\ : std_logic;
SIGNAL \Y~34_combout\ : std_logic;
SIGNAL \Y~35_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \s64[4][27]~121_combout\ : std_logic;
SIGNAL \s64[4][11]~122_combout\ : std_logic;
SIGNAL \Y~37_combout\ : std_logic;
SIGNAL \s64[4][28]~123_combout\ : std_logic;
SIGNAL \s64[4][12]~124_combout\ : std_logic;
SIGNAL \Y~38_combout\ : std_logic;
SIGNAL \Y~39_combout\ : std_logic;
SIGNAL \Y~40_combout\ : std_logic;
SIGNAL \s64[4][13]~126_combout\ : std_logic;
SIGNAL \Y~41_combout\ : std_logic;
SIGNAL \Y~42_combout\ : std_logic;
SIGNAL \s64[4][29]~125_combout\ : std_logic;
SIGNAL \Y~43_combout\ : std_logic;
SIGNAL \Y~44_combout\ : std_logic;
SIGNAL \Y~45_combout\ : std_logic;
SIGNAL \s64[4][30]~127_combout\ : std_logic;
SIGNAL \s64[4][14]~128_combout\ : std_logic;
SIGNAL \Y~46_combout\ : std_logic;
SIGNAL \Y~68_combout\ : std_logic;
SIGNAL \s64[4][31]~129_combout\ : std_logic;
SIGNAL \Y~47_combout\ : std_logic;
SIGNAL \s64[4][15]~130_combout\ : std_logic;
SIGNAL \Y~48_combout\ : std_logic;
SIGNAL \Y~50_combout\ : std_logic;
SIGNAL \Y~49_combout\ : std_logic;
SIGNAL \Y~51_combout\ : std_logic;
SIGNAL \Y~52_combout\ : std_logic;
SIGNAL \Y~53_combout\ : std_logic;
SIGNAL \Y~54_combout\ : std_logic;
SIGNAL \Y~55_combout\ : std_logic;
SIGNAL \Y~56_combout\ : std_logic;
SIGNAL \Y~57_combout\ : std_logic;
SIGNAL \Y~58_combout\ : std_logic;
SIGNAL \Y~59_combout\ : std_logic;
SIGNAL \Y~60_combout\ : std_logic;
SIGNAL \Y~61_combout\ : std_logic;
SIGNAL \Y~62_combout\ : std_logic;
SIGNAL \Y~63_combout\ : std_logic;
SIGNAL \Y~64_combout\ : std_logic;
SIGNAL \Y~65_combout\ : std_logic;
SIGNAL \Y~66_combout\ : std_logic;
SIGNAL \Y~67_combout\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_s64[3][4]~92_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][12]~91_combout\ : std_logic;
SIGNAL \ALT_INV_Y~11_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][11]~2_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~90_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][19]~89_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][27]~88_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][31]~87_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][27]~86_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][19]~85_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][23]~84_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~83_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][19]~82_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][3]~81_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][3]~80_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~79_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~78_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~77_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][11]~76_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~75_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~74_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~73_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~72_combout\ : std_logic;
SIGNAL \ALT_INV_Y~9_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][10]~1_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~71_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][18]~70_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][26]~69_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][30]~68_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][26]~67_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][18]~66_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][22]~65_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~64_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][18]~63_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][2]~62_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][2]~61_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~60_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~59_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~58_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][10]~57_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~56_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~55_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~54_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~53_combout\ : std_logic;
SIGNAL \ALT_INV_Y~7_combout\ : std_logic;
SIGNAL \ALT_INV_Y~6_combout\ : std_logic;
SIGNAL \ALT_INV_fill64~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~5_combout\ : std_logic;
SIGNAL \ALT_INV_fill32~0_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][9]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y~3_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][17]~52_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][25]~51_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][29]~50_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][31]~49_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][29]~48_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][25]~47_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][27]~46_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][25]~45_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][17]~44_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][21]~43_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][23]~42_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][21]~41_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~40_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~39_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][19]~38_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][17]~37_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][1]~36_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][1]~35_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~34_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~33_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~32_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][9]~31_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~30_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~29_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~28_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~27_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][0]~26_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~25_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~24_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~23_combout\ : std_logic;
SIGNAL \ALT_INV_Y~1_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][16]~22_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][24]~21_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][28]~20_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][30]~19_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][28]~18_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][24]~17_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][26]~16_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][24]~15_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][8]~14_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~13_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~12_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~11_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~10_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][16]~9_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][20]~8_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][22]~7_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][20]~6_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][18]~1_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][16]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~76_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~131_combout\ : std_logic;
SIGNAL \ALT_INV_Y~72_combout\ : std_logic;
SIGNAL \ALT_INV_Y~68_combout\ : std_logic;
SIGNAL \ALT_INV_Y~52_combout\ : std_logic;
SIGNAL \ALT_INV_Y~50_combout\ : std_logic;
SIGNAL \ALT_INV_Y~49_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][15]~130_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][31]~129_combout\ : std_logic;
SIGNAL \ALT_INV_Y~47_combout\ : std_logic;
SIGNAL \ALT_INV_Y~45_combout\ : std_logic;
SIGNAL \ALT_INV_Y~44_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][14]~128_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][30]~127_combout\ : std_logic;
SIGNAL \ALT_INV_Y~42_combout\ : std_logic;
SIGNAL \ALT_INV_Y~41_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][13]~126_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][29]~125_combout\ : std_logic;
SIGNAL \ALT_INV_Y~39_combout\ : std_logic;
SIGNAL \ALT_INV_Y~38_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][12]~124_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][28]~123_combout\ : std_logic;
SIGNAL \ALT_INV_Y~36_combout\ : std_logic;
SIGNAL \ALT_INV_Y~35_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][11]~122_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][27]~121_combout\ : std_logic;
SIGNAL \ALT_INV_Y~33_combout\ : std_logic;
SIGNAL \ALT_INV_Y~32_combout\ : std_logic;
SIGNAL \ALT_INV_Y~31_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][10]~120_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][26]~119_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][9]~118_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][25]~117_combout\ : std_logic;
SIGNAL \ALT_INV_Y~28_combout\ : std_logic;
SIGNAL \ALT_INV_Y~27_combout\ : std_logic;
SIGNAL \ALT_INV_Y~26_combout\ : std_logic;
SIGNAL \ALT_INV_Y~25_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][8]~116_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][24]~115_combout\ : std_logic;
SIGNAL \ALT_INV_Y~24_combout\ : std_logic;
SIGNAL \ALT_INV_Y~22_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][15]~6_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][23]~114_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][31]~113_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][23]~112_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][7]~111_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][7]~110_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][15]~109_combout\ : std_logic;
SIGNAL \ALT_INV_Y~20_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][14]~5_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][22]~108_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][30]~107_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][22]~106_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][6]~105_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][6]~104_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][14]~103_combout\ : std_logic;
SIGNAL \ALT_INV_Y~18_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][13]~4_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][21]~102_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][29]~101_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][21]~100_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][5]~99_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][5]~98_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][13]~97_combout\ : std_logic;
SIGNAL \ALT_INV_Y~16_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][12]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Y~15_combout\ : std_logic;
SIGNAL \ALT_INV_Y~14_combout\ : std_logic;
SIGNAL \ALT_INV_Y~13_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][20]~96_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][28]~95_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][20]~94_combout\ : std_logic;
SIGNAL \ALT_INV_s64[4][4]~93_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_s64[3][4]~92_combout\ <= NOT \s64[3][4]~92_combout\;
\ALT_INV_s64[3][12]~91_combout\ <= NOT \s64[3][12]~91_combout\;
\ALT_INV_Y~11_combout\ <= NOT \Y~11_combout\;
\ALT_INV_s32[3][11]~2_combout\ <= NOT \s32[3][11]~2_combout\;
\ALT_INV_s64[2][0]~90_combout\ <= NOT \s64[2][0]~90_combout\;
\ALT_INV_s64[4][19]~89_combout\ <= NOT \s64[4][19]~89_combout\;
\ALT_INV_s64[3][27]~88_combout\ <= NOT \s64[3][27]~88_combout\;
\ALT_INV_s64[2][31]~87_combout\ <= NOT \s64[2][31]~87_combout\;
\ALT_INV_s64[2][27]~86_combout\ <= NOT \s64[2][27]~86_combout\;
\ALT_INV_s64[3][19]~85_combout\ <= NOT \s64[3][19]~85_combout\;
\ALT_INV_s64[2][23]~84_combout\ <= NOT \s64[2][23]~84_combout\;
\ALT_INV_s64[2][0]~83_combout\ <= NOT \s64[2][0]~83_combout\;
\ALT_INV_s64[2][19]~82_combout\ <= NOT \s64[2][19]~82_combout\;
\ALT_INV_s64[4][3]~81_combout\ <= NOT \s64[4][3]~81_combout\;
\ALT_INV_s64[3][3]~80_combout\ <= NOT \s64[3][3]~80_combout\;
\ALT_INV_s64[2][0]~79_combout\ <= NOT \s64[2][0]~79_combout\;
\ALT_INV_s64[2][0]~78_combout\ <= NOT \s64[2][0]~78_combout\;
\ALT_INV_s64[2][0]~77_combout\ <= NOT \s64[2][0]~77_combout\;
\ALT_INV_s64[3][11]~76_combout\ <= NOT \s64[3][11]~76_combout\;
\ALT_INV_s64[2][0]~75_combout\ <= NOT \s64[2][0]~75_combout\;
\ALT_INV_s64[2][0]~74_combout\ <= NOT \s64[2][0]~74_combout\;
\ALT_INV_s64[2][0]~73_combout\ <= NOT \s64[2][0]~73_combout\;
\ALT_INV_s64[2][0]~72_combout\ <= NOT \s64[2][0]~72_combout\;
\ALT_INV_Y~9_combout\ <= NOT \Y~9_combout\;
\ALT_INV_s32[3][10]~1_combout\ <= NOT \s32[3][10]~1_combout\;
\ALT_INV_s64[2][0]~71_combout\ <= NOT \s64[2][0]~71_combout\;
\ALT_INV_s64[4][18]~70_combout\ <= NOT \s64[4][18]~70_combout\;
\ALT_INV_s64[3][26]~69_combout\ <= NOT \s64[3][26]~69_combout\;
\ALT_INV_s64[2][30]~68_combout\ <= NOT \s64[2][30]~68_combout\;
\ALT_INV_s64[2][26]~67_combout\ <= NOT \s64[2][26]~67_combout\;
\ALT_INV_s64[3][18]~66_combout\ <= NOT \s64[3][18]~66_combout\;
\ALT_INV_s64[2][22]~65_combout\ <= NOT \s64[2][22]~65_combout\;
\ALT_INV_s64[2][0]~64_combout\ <= NOT \s64[2][0]~64_combout\;
\ALT_INV_s64[2][18]~63_combout\ <= NOT \s64[2][18]~63_combout\;
\ALT_INV_s64[4][2]~62_combout\ <= NOT \s64[4][2]~62_combout\;
\ALT_INV_s64[3][2]~61_combout\ <= NOT \s64[3][2]~61_combout\;
\ALT_INV_s64[2][0]~60_combout\ <= NOT \s64[2][0]~60_combout\;
\ALT_INV_s64[2][0]~59_combout\ <= NOT \s64[2][0]~59_combout\;
\ALT_INV_s64[2][0]~58_combout\ <= NOT \s64[2][0]~58_combout\;
\ALT_INV_s64[3][10]~57_combout\ <= NOT \s64[3][10]~57_combout\;
\ALT_INV_s64[2][0]~56_combout\ <= NOT \s64[2][0]~56_combout\;
\ALT_INV_s64[2][0]~55_combout\ <= NOT \s64[2][0]~55_combout\;
\ALT_INV_s64[2][0]~54_combout\ <= NOT \s64[2][0]~54_combout\;
\ALT_INV_s64[2][0]~53_combout\ <= NOT \s64[2][0]~53_combout\;
\ALT_INV_Y~7_combout\ <= NOT \Y~7_combout\;
\ALT_INV_Y~6_combout\ <= NOT \Y~6_combout\;
\ALT_INV_fill64~0_combout\ <= NOT \fill64~0_combout\;
\ALT_INV_Y~5_combout\ <= NOT \Y~5_combout\;
\ALT_INV_fill32~0_combout\ <= NOT \fill32~0_combout\;
\ALT_INV_s32[3][9]~0_combout\ <= NOT \s32[3][9]~0_combout\;
\ALT_INV_Y~4_combout\ <= NOT \Y~4_combout\;
\ALT_INV_Y~3_combout\ <= NOT \Y~3_combout\;
\ALT_INV_s64[4][17]~52_combout\ <= NOT \s64[4][17]~52_combout\;
\ALT_INV_s64[3][25]~51_combout\ <= NOT \s64[3][25]~51_combout\;
\ALT_INV_s64[2][29]~50_combout\ <= NOT \s64[2][29]~50_combout\;
\ALT_INV_s64[1][31]~49_combout\ <= NOT \s64[1][31]~49_combout\;
\ALT_INV_s64[1][29]~48_combout\ <= NOT \s64[1][29]~48_combout\;
\ALT_INV_s64[2][25]~47_combout\ <= NOT \s64[2][25]~47_combout\;
\ALT_INV_s64[1][27]~46_combout\ <= NOT \s64[1][27]~46_combout\;
\ALT_INV_s64[1][25]~45_combout\ <= NOT \s64[1][25]~45_combout\;
\ALT_INV_s64[3][17]~44_combout\ <= NOT \s64[3][17]~44_combout\;
\ALT_INV_s64[2][21]~43_combout\ <= NOT \s64[2][21]~43_combout\;
\ALT_INV_s64[1][23]~42_combout\ <= NOT \s64[1][23]~42_combout\;
\ALT_INV_s64[1][21]~41_combout\ <= NOT \s64[1][21]~41_combout\;
\ALT_INV_s64[2][0]~40_combout\ <= NOT \s64[2][0]~40_combout\;
\ALT_INV_s64[2][0]~39_combout\ <= NOT \s64[2][0]~39_combout\;
\ALT_INV_s64[1][19]~38_combout\ <= NOT \s64[1][19]~38_combout\;
\ALT_INV_s64[1][17]~37_combout\ <= NOT \s64[1][17]~37_combout\;
\ALT_INV_s64[4][1]~36_combout\ <= NOT \s64[4][1]~36_combout\;
\ALT_INV_s64[3][1]~35_combout\ <= NOT \s64[3][1]~35_combout\;
\ALT_INV_s64[2][0]~34_combout\ <= NOT \s64[2][0]~34_combout\;
\ALT_INV_s64[2][0]~33_combout\ <= NOT \s64[2][0]~33_combout\;
\ALT_INV_s64[2][0]~32_combout\ <= NOT \s64[2][0]~32_combout\;
\ALT_INV_s64[3][9]~31_combout\ <= NOT \s64[3][9]~31_combout\;
\ALT_INV_s64[2][0]~30_combout\ <= NOT \s64[2][0]~30_combout\;
\ALT_INV_s64[2][0]~29_combout\ <= NOT \s64[2][0]~29_combout\;
\ALT_INV_s64[2][0]~28_combout\ <= NOT \s64[2][0]~28_combout\;
\ALT_INV_s64[2][0]~27_combout\ <= NOT \s64[2][0]~27_combout\;
\ALT_INV_s64[3][0]~26_combout\ <= NOT \s64[3][0]~26_combout\;
\ALT_INV_s64[2][0]~25_combout\ <= NOT \s64[2][0]~25_combout\;
\ALT_INV_s64[2][0]~24_combout\ <= NOT \s64[2][0]~24_combout\;
\ALT_INV_s64[2][0]~23_combout\ <= NOT \s64[2][0]~23_combout\;
\ALT_INV_Y~1_combout\ <= NOT \Y~1_combout\;
\ALT_INV_s64[4][16]~22_combout\ <= NOT \s64[4][16]~22_combout\;
\ALT_INV_s64[3][24]~21_combout\ <= NOT \s64[3][24]~21_combout\;
\ALT_INV_s64[2][28]~20_combout\ <= NOT \s64[2][28]~20_combout\;
\ALT_INV_s64[1][30]~19_combout\ <= NOT \s64[1][30]~19_combout\;
\ALT_INV_s64[1][28]~18_combout\ <= NOT \s64[1][28]~18_combout\;
\ALT_INV_s64[2][24]~17_combout\ <= NOT \s64[2][24]~17_combout\;
\ALT_INV_s64[1][26]~16_combout\ <= NOT \s64[1][26]~16_combout\;
\ALT_INV_s64[1][24]~15_combout\ <= NOT \s64[1][24]~15_combout\;
\ALT_INV_s64[3][8]~14_combout\ <= NOT \s64[3][8]~14_combout\;
\ALT_INV_s64[2][0]~13_combout\ <= NOT \s64[2][0]~13_combout\;
\ALT_INV_s64[2][0]~12_combout\ <= NOT \s64[2][0]~12_combout\;
\ALT_INV_s64[2][0]~11_combout\ <= NOT \s64[2][0]~11_combout\;
\ALT_INV_s64[2][0]~10_combout\ <= NOT \s64[2][0]~10_combout\;
\ALT_INV_s64[3][16]~9_combout\ <= NOT \s64[3][16]~9_combout\;
\ALT_INV_s64[2][20]~8_combout\ <= NOT \s64[2][20]~8_combout\;
\ALT_INV_s64[1][22]~7_combout\ <= NOT \s64[1][22]~7_combout\;
\ALT_INV_s64[1][20]~6_combout\ <= NOT \s64[1][20]~6_combout\;
\ALT_INV_s64[2][0]~5_combout\ <= NOT \s64[2][0]~5_combout\;
\ALT_INV_s64[2][0]~4_combout\ <= NOT \s64[2][0]~4_combout\;
\ALT_INV_s64[2][0]~3_combout\ <= NOT \s64[2][0]~3_combout\;
\ALT_INV_s64[2][0]~2_combout\ <= NOT \s64[2][0]~2_combout\;
\ALT_INV_s64[1][18]~1_combout\ <= NOT \s64[1][18]~1_combout\;
\ALT_INV_s64[1][16]~0_combout\ <= NOT \s64[1][16]~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Y~0_combout\ <= NOT \Y~0_combout\;
\ALT_INV_Y~76_combout\ <= NOT \Y~76_combout\;
\ALT_INV_s64[2][0]~131_combout\ <= NOT \s64[2][0]~131_combout\;
\ALT_INV_Y~72_combout\ <= NOT \Y~72_combout\;
\ALT_INV_Y~68_combout\ <= NOT \Y~68_combout\;
\ALT_INV_Y~52_combout\ <= NOT \Y~52_combout\;
\ALT_INV_Y~50_combout\ <= NOT \Y~50_combout\;
\ALT_INV_Y~49_combout\ <= NOT \Y~49_combout\;
\ALT_INV_s64[4][15]~130_combout\ <= NOT \s64[4][15]~130_combout\;
\ALT_INV_s64[4][31]~129_combout\ <= NOT \s64[4][31]~129_combout\;
\ALT_INV_Y~47_combout\ <= NOT \Y~47_combout\;
\ALT_INV_Y~45_combout\ <= NOT \Y~45_combout\;
\ALT_INV_Y~44_combout\ <= NOT \Y~44_combout\;
\ALT_INV_s64[4][14]~128_combout\ <= NOT \s64[4][14]~128_combout\;
\ALT_INV_s64[4][30]~127_combout\ <= NOT \s64[4][30]~127_combout\;
\ALT_INV_Y~42_combout\ <= NOT \Y~42_combout\;
\ALT_INV_Y~41_combout\ <= NOT \Y~41_combout\;
\ALT_INV_s64[4][13]~126_combout\ <= NOT \s64[4][13]~126_combout\;
\ALT_INV_s64[4][29]~125_combout\ <= NOT \s64[4][29]~125_combout\;
\ALT_INV_Y~39_combout\ <= NOT \Y~39_combout\;
\ALT_INV_Y~38_combout\ <= NOT \Y~38_combout\;
\ALT_INV_s64[4][12]~124_combout\ <= NOT \s64[4][12]~124_combout\;
\ALT_INV_s64[4][28]~123_combout\ <= NOT \s64[4][28]~123_combout\;
\ALT_INV_Y~36_combout\ <= NOT \Y~36_combout\;
\ALT_INV_Y~35_combout\ <= NOT \Y~35_combout\;
\ALT_INV_s64[4][11]~122_combout\ <= NOT \s64[4][11]~122_combout\;
\ALT_INV_s64[4][27]~121_combout\ <= NOT \s64[4][27]~121_combout\;
\ALT_INV_Y~33_combout\ <= NOT \Y~33_combout\;
\ALT_INV_Y~32_combout\ <= NOT \Y~32_combout\;
\ALT_INV_Y~31_combout\ <= NOT \Y~31_combout\;
\ALT_INV_s64[4][10]~120_combout\ <= NOT \s64[4][10]~120_combout\;
\ALT_INV_s64[4][26]~119_combout\ <= NOT \s64[4][26]~119_combout\;
\ALT_INV_s64[4][9]~118_combout\ <= NOT \s64[4][9]~118_combout\;
\ALT_INV_s64[4][25]~117_combout\ <= NOT \s64[4][25]~117_combout\;
\ALT_INV_Y~28_combout\ <= NOT \Y~28_combout\;
\ALT_INV_Y~27_combout\ <= NOT \Y~27_combout\;
\ALT_INV_Y~26_combout\ <= NOT \Y~26_combout\;
\ALT_INV_Y~25_combout\ <= NOT \Y~25_combout\;
\ALT_INV_s64[4][8]~116_combout\ <= NOT \s64[4][8]~116_combout\;
\ALT_INV_s64[4][24]~115_combout\ <= NOT \s64[4][24]~115_combout\;
\ALT_INV_Y~24_combout\ <= NOT \Y~24_combout\;
\ALT_INV_Y~22_combout\ <= NOT \Y~22_combout\;
\ALT_INV_s32[3][15]~6_combout\ <= NOT \s32[3][15]~6_combout\;
\ALT_INV_s64[4][23]~114_combout\ <= NOT \s64[4][23]~114_combout\;
\ALT_INV_s64[3][31]~113_combout\ <= NOT \s64[3][31]~113_combout\;
\ALT_INV_s64[3][23]~112_combout\ <= NOT \s64[3][23]~112_combout\;
\ALT_INV_s64[4][7]~111_combout\ <= NOT \s64[4][7]~111_combout\;
\ALT_INV_s64[3][7]~110_combout\ <= NOT \s64[3][7]~110_combout\;
\ALT_INV_s64[3][15]~109_combout\ <= NOT \s64[3][15]~109_combout\;
\ALT_INV_Y~20_combout\ <= NOT \Y~20_combout\;
\ALT_INV_s32[3][14]~5_combout\ <= NOT \s32[3][14]~5_combout\;
\ALT_INV_s64[4][22]~108_combout\ <= NOT \s64[4][22]~108_combout\;
\ALT_INV_s64[3][30]~107_combout\ <= NOT \s64[3][30]~107_combout\;
\ALT_INV_s64[3][22]~106_combout\ <= NOT \s64[3][22]~106_combout\;
\ALT_INV_s64[4][6]~105_combout\ <= NOT \s64[4][6]~105_combout\;
\ALT_INV_s64[3][6]~104_combout\ <= NOT \s64[3][6]~104_combout\;
\ALT_INV_s64[3][14]~103_combout\ <= NOT \s64[3][14]~103_combout\;
\ALT_INV_Y~18_combout\ <= NOT \Y~18_combout\;
\ALT_INV_s32[3][13]~4_combout\ <= NOT \s32[3][13]~4_combout\;
\ALT_INV_s64[4][21]~102_combout\ <= NOT \s64[4][21]~102_combout\;
\ALT_INV_s64[3][29]~101_combout\ <= NOT \s64[3][29]~101_combout\;
\ALT_INV_s64[3][21]~100_combout\ <= NOT \s64[3][21]~100_combout\;
\ALT_INV_s64[4][5]~99_combout\ <= NOT \s64[4][5]~99_combout\;
\ALT_INV_s64[3][5]~98_combout\ <= NOT \s64[3][5]~98_combout\;
\ALT_INV_s64[3][13]~97_combout\ <= NOT \s64[3][13]~97_combout\;
\ALT_INV_Y~16_combout\ <= NOT \Y~16_combout\;
\ALT_INV_s32[3][12]~3_combout\ <= NOT \s32[3][12]~3_combout\;
\ALT_INV_Y~15_combout\ <= NOT \Y~15_combout\;
\ALT_INV_Y~14_combout\ <= NOT \Y~14_combout\;
\ALT_INV_Y~13_combout\ <= NOT \Y~13_combout\;
\ALT_INV_s64[4][20]~96_combout\ <= NOT \s64[4][20]~96_combout\;
\ALT_INV_s64[3][28]~95_combout\ <= NOT \s64[3][28]~95_combout\;
\ALT_INV_s64[3][20]~94_combout\ <= NOT \s64[3][20]~94_combout\;
\ALT_INV_s64[4][4]~93_combout\ <= NOT \s64[4][4]~93_combout\;

-- Location: IOOBUF_X59_Y28_N2
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~2_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X59_Y31_N67
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~8_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X59_Y33_N98
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~10_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X59_Y13_N2
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~12_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X59_Y23_N67
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~17_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X59_Y13_N98
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~19_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X59_Y13_N67
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~21_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X59_Y25_N2
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~23_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X59_Y28_N36
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~29_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X59_Y37_N2
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~30_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X59_Y33_N33
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~34_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X59_Y39_N5
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~37_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X59_Y16_N2
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~40_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X59_Y18_N67
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~43_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X59_Y12_N2
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~46_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X59_Y15_N33
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~48_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X59_Y22_N67
\Y[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~51_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X59_Y36_N2
\Y[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~53_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X59_Y33_N5
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~54_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X59_Y21_N98
\Y[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~55_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X59_Y25_N67
\Y[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~56_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X59_Y26_N67
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~57_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X59_Y18_N98
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~58_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X59_Y21_N33
\Y[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~59_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X59_Y36_N67
\Y[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~60_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X59_Y31_N98
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~61_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X59_Y36_N98
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~62_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X59_Y33_N67
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~63_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X59_Y21_N67
\Y[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~64_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X59_Y18_N2
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~65_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X59_Y28_N98
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~66_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X59_Y21_N5
\Y[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~67_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOIBUF_X59_Y25_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X59_Y26_N32
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X59_Y28_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X55_Y28_N26
\Y~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( !\ExtWord~input_o\ & ( !\B[5]~input_o\ & ( \B[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y~0_combout\);

-- Location: IOIBUF_X59_Y15_N63
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X59_Y30_N94
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LABCELL_X53_Y29_N22
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( \ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X59_Y26_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X59_Y23_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y34_N32
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X59_Y34_N63
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X59_Y34_N94
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: MLABCELL_X54_Y30_N12
\s64[1][20]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][20]~6_combout\ = ( \Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[20]~input_o\)) # (\B[0]~input_o\ & ((\A[19]~input_o\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[20]~input_o\)) # (\B[0]~input_o\ & ((\A[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[1][20]~6_combout\);

-- Location: IOIBUF_X59_Y23_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y30_N1
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y46_N94
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: MLABCELL_X54_Y30_N16
\s64[1][22]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][22]~7_combout\ = ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[23]~input_o\))) # (\Equal0~0_combout\ & (\A[21]~input_o\)) ) ) # ( !\B[0]~input_o\ & ( \A[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[1][22]~7_combout\);

-- Location: IOIBUF_X59_Y37_N63
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X59_Y34_N1
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: MLABCELL_X54_Y30_N6
\s64[1][18]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][18]~1_combout\ = ( \Equal0~0_combout\ & ( (!\B[0]~input_o\ & ((\A[18]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\)) # (\B[0]~input_o\ & ((\A[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[1][18]~1_combout\);

-- Location: MLABCELL_X54_Y30_N20
\s64[2][20]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][20]~8_combout\ = ( \s64[1][18]~1_combout\ & ( (!\B[1]~input_o\ & (\s64[1][20]~6_combout\)) # (\B[1]~input_o\ & (((\s64[1][22]~7_combout\) # (\Equal0~0_combout\)))) ) ) # ( !\s64[1][18]~1_combout\ & ( (!\B[1]~input_o\ & (\s64[1][20]~6_combout\)) # 
-- (\B[1]~input_o\ & (((!\Equal0~0_combout\ & \s64[1][22]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000111011101110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][20]~6_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[1][22]~7_combout\,
	dataf => \ALT_INV_s64[1][18]~1_combout\,
	combout => \s64[2][20]~8_combout\);

-- Location: IOIBUF_X59_Y15_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X59_Y16_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y19_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y15_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: MLABCELL_X52_Y26_N0
\s64[2][0]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~5_combout\ = ( \A[9]~input_o\ & ( \B[0]~input_o\ & ( (\A[11]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[9]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[11]~input_o\) ) ) ) # ( \A[9]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\A[12]~input_o\))) # (\B[1]~input_o\ & (\A[10]~input_o\)) ) ) ) # ( !\A[9]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[12]~input_o\))) # (\B[1]~input_o\ & (\A[10]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~5_combout\);

-- Location: IOIBUF_X59_Y31_N1
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X59_Y16_N32
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: MLABCELL_X54_Y30_N0
\s64[1][16]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][16]~0_combout\ = ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & (((\A[16]~input_o\)))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\) # ((\A[15]~input_o\)))) ) ) # ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & (((\A[16]~input_o\)))) # (\B[0]~input_o\ & 
-- (\Equal0~0_combout\ & (\A[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111101110110000111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \s64[1][16]~0_combout\);

-- Location: MLABCELL_X54_Y30_N2
\s64[2][0]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~3_combout\ = ( \B[1]~input_o\ & ( \Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~3_combout\);

-- Location: IOIBUF_X59_Y30_N32
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X53_Y29_N26
\s64[2][0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~2_combout\ = (\B[1]~input_o\ & ((!\Equal0~0_combout\) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][0]~2_combout\);

-- Location: IOIBUF_X59_Y16_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: MLABCELL_X54_Y30_N10
\s64[2][0]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~4_combout\ = ( \A[14]~input_o\ & ( \s64[1][18]~1_combout\ & ( (!\s64[2][0]~3_combout\ & (((\s64[2][0]~2_combout\)) # (\s64[1][16]~0_combout\))) # (\s64[2][0]~3_combout\ & (((!\s64[2][0]~2_combout\) # (\A[13]~input_o\)))) ) ) ) # ( 
-- !\A[14]~input_o\ & ( \s64[1][18]~1_combout\ & ( (!\s64[2][0]~3_combout\ & (((\s64[2][0]~2_combout\)) # (\s64[1][16]~0_combout\))) # (\s64[2][0]~3_combout\ & (((\A[13]~input_o\ & \s64[2][0]~2_combout\)))) ) ) ) # ( \A[14]~input_o\ & ( 
-- !\s64[1][18]~1_combout\ & ( (!\s64[2][0]~3_combout\ & (\s64[1][16]~0_combout\ & ((!\s64[2][0]~2_combout\)))) # (\s64[2][0]~3_combout\ & (((!\s64[2][0]~2_combout\) # (\A[13]~input_o\)))) ) ) ) # ( !\A[14]~input_o\ & ( !\s64[1][18]~1_combout\ & ( 
-- (!\s64[2][0]~3_combout\ & (\s64[1][16]~0_combout\ & ((!\s64[2][0]~2_combout\)))) # (\s64[2][0]~3_combout\ & (((\A[13]~input_o\ & \s64[2][0]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][16]~0_combout\,
	datab => \ALT_INV_s64[2][0]~3_combout\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_s64[2][0]~2_combout\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_s64[1][18]~1_combout\,
	combout => \s64[2][0]~4_combout\);

-- Location: MLABCELL_X54_Y26_N22
\s64[3][16]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][16]~9_combout\ = ( \s64[2][0]~4_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & (\s64[2][20]~8_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~5_combout\)))) ) ) # ( !\s64[2][0]~4_combout\ & ( (\B[2]~input_o\ & ((!\Equal0~0_combout\ & 
-- (\s64[2][20]~8_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][20]~8_combout\,
	datad => \ALT_INV_s64[2][0]~5_combout\,
	dataf => \ALT_INV_s64[2][0]~4_combout\,
	combout => \s64[3][16]~9_combout\);

-- Location: IOIBUF_X59_Y19_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X52_Y26_N6
\s64[2][0]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~10_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[11]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[9]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[10]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ 
-- & ( \A[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~10_combout\);

-- Location: IOIBUF_X59_Y22_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y19_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y19_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X52_Y26_N10
\s64[2][0]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~11_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[5]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[7]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[6]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ & 
-- ( \A[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~11_combout\);

-- Location: LABCELL_X50_Y26_N26
\s64[2][0]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~12_combout\ = ( \A[15]~input_o\ & ( \A[14]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[15]~input_o\ & ( \A[14]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( \A[15]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[13]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( !\A[15]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \s64[2][0]~12_combout\);

-- Location: IOIBUF_X59_Y26_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y22_N1
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y22_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X57_Y26_N2
\s64[2][0]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~13_combout\ = ( \A[4]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[3]~input_o\)))) # (\B[1]~input_o\ & (((\A[2]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\B[0]~input_o\ & ((\A[3]~input_o\)))) # (\B[1]~input_o\ & (((\A[2]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( \A[4]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[3]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & 
-- (\A[2]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[3]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \s64[2][0]~13_combout\);

-- Location: MLABCELL_X54_Y26_N26
\s64[3][8]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][8]~14_combout\ = ( \s64[2][0]~13_combout\ & ( \B[2]~input_o\ & ( (\s64[2][0]~12_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\s64[2][0]~13_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & \s64[2][0]~12_combout\) ) ) ) # ( 
-- \s64[2][0]~13_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~10_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~11_combout\))) ) ) ) # ( !\s64[2][0]~13_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~10_combout\)) 
-- # (\Equal0~0_combout\ & ((\s64[2][0]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][0]~10_combout\,
	datac => \ALT_INV_s64[2][0]~11_combout\,
	datad => \ALT_INV_s64[2][0]~12_combout\,
	datae => \ALT_INV_s64[2][0]~13_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][8]~14_combout\);

-- Location: IOIBUF_X59_Y39_N63
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X59_Y37_N32
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: MLABCELL_X54_Y30_N28
\s64[1][26]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][26]~16_combout\ = ( \Equal0~0_combout\ & ( (!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[25]~input_o\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[26]~input_o\)) # (\B[0]~input_o\ & ((\A[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[1][26]~16_combout\);

-- Location: IOIBUF_X59_Y30_N63
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: MLABCELL_X54_Y30_N24
\s64[1][24]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][24]~15_combout\ = ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & (\A[24]~input_o\)) # (\B[0]~input_o\ & (((!\Equal0~0_combout\) # (\A[23]~input_o\)))) ) ) # ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & (\A[24]~input_o\)) # (\B[0]~input_o\ & 
-- (((\A[23]~input_o\ & \Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000111010001000100011101110111010001110111011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \s64[1][24]~15_combout\);

-- Location: LABCELL_X53_Y29_N30
\s64[2][24]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][24]~17_combout\ = ( \s64[1][22]~7_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][24]~15_combout\)))) # (\B[1]~input_o\ & (((\s64[1][26]~16_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[1][22]~7_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][24]~15_combout\)))) # (\B[1]~input_o\ & (!\Equal0~0_combout\ & (\s64[1][26]~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[1][26]~16_combout\,
	datad => \ALT_INV_s64[1][24]~15_combout\,
	dataf => \ALT_INV_s64[1][22]~7_combout\,
	combout => \s64[2][24]~17_combout\);

-- Location: IOIBUF_X59_Y37_N94
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X59_Y39_N94
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LABCELL_X53_Y29_N12
\s64[1][28]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][28]~18_combout\ = ( \A[29]~input_o\ & ( (!\B[0]~input_o\ & (((\A[28]~input_o\)))) # (\B[0]~input_o\ & (((!\Equal0~0_combout\)) # (\A[27]~input_o\))) ) ) # ( !\A[29]~input_o\ & ( (!\B[0]~input_o\ & (((\A[28]~input_o\)))) # (\B[0]~input_o\ & 
-- (\A[27]~input_o\ & ((\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011010100111111001101010011111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \s64[1][28]~18_combout\);

-- Location: IOIBUF_X59_Y36_N32
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y39_N32
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LABCELL_X53_Y29_N36
\s64[1][30]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][30]~19_combout\ = ( \Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[30]~input_o\)) # (\B[0]~input_o\ & ((\A[29]~input_o\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[30]~input_o\)) # (\B[0]~input_o\ & ((\A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[1][30]~19_combout\);

-- Location: LABCELL_X53_Y29_N2
\s64[2][28]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][28]~20_combout\ = ( \B[1]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[1][30]~19_combout\)) # (\Equal0~0_combout\ & ((\s64[1][26]~16_combout\))) ) ) # ( !\B[1]~input_o\ & ( \s64[1][28]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][28]~18_combout\,
	datab => \ALT_INV_s64[1][30]~19_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[1][26]~16_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][28]~20_combout\);

-- Location: MLABCELL_X54_Y26_N8
\s64[3][24]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][24]~21_combout\ = ( \s64[2][28]~20_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\) # (\s64[2][20]~8_combout\) ) ) ) # ( !\s64[2][28]~20_combout\ & ( \B[2]~input_o\ & ( (\s64[2][20]~8_combout\ & \Equal0~0_combout\) ) ) ) # ( 
-- \s64[2][28]~20_combout\ & ( !\B[2]~input_o\ & ( \s64[2][24]~17_combout\ ) ) ) # ( !\s64[2][28]~20_combout\ & ( !\B[2]~input_o\ & ( \s64[2][24]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s64[2][20]~8_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][24]~17_combout\,
	datae => \ALT_INV_s64[2][28]~20_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][24]~21_combout\);

-- Location: IOIBUF_X59_Y25_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X54_Y26_N32
\s64[4][16]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][16]~22_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[3][24]~21_combout\))) # (\Equal0~0_combout\ & (\s64[3][8]~14_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s64[3][16]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][16]~9_combout\,
	datab => \ALT_INV_s64[3][8]~14_combout\,
	datac => \ALT_INV_s64[3][24]~21_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][16]~22_combout\);

-- Location: IOIBUF_X59_Y18_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: MLABCELL_X54_Y26_N18
\s64[2][0]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~25_combout\ = ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~25_combout\);

-- Location: MLABCELL_X57_Y26_N8
\s64[2][0]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~24_combout\ = ( \B[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[0]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[0]~input_o\ & ((\A[0]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)) ) ) ) # ( \B[1]~input_o\ & 
-- ( !\A[2]~input_o\ & ( (\A[3]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & ((\A[0]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \s64[2][0]~24_combout\);

-- Location: MLABCELL_X57_Y26_N6
\s64[2][0]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~23_combout\ = ( \B[1]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[5]~input_o\ & ( (\B[0]~input_o\) # (\A[4]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[5]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[5]~input_o\ & ( (\A[4]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \s64[2][0]~23_combout\);

-- Location: MLABCELL_X54_Y26_N20
\s64[3][0]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][0]~26_combout\ = ( \s64[2][0]~23_combout\ & ( (!\Equal0~0_combout\ & (((\s64[2][0]~24_combout\)) # (\B[2]~input_o\))) # (\Equal0~0_combout\ & (!\B[2]~input_o\ & (\s64[2][0]~25_combout\))) ) ) # ( !\s64[2][0]~23_combout\ & ( (!\B[2]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[2][0]~24_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~25_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~25_combout\,
	datad => \ALT_INV_s64[2][0]~24_combout\,
	dataf => \ALT_INV_s64[2][0]~23_combout\,
	combout => \s64[3][0]~26_combout\);

-- Location: LABCELL_X55_Y28_N20
\Y~76\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~76_combout\ = ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & (\s64[3][0]~26_combout\ & (((!\B[5]~input_o\)) # (\ExtWord~input_o\)))) ) ) # ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & (!\Equal0~0_combout\ & (\s64[3][8]~14_combout\ & ((!\B[5]~input_o\) # 
-- (\ExtWord~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000000010000000000000000000001010000000101010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][8]~14_combout\,
	datag => \ALT_INV_s64[3][0]~26_combout\,
	combout => \Y~76_combout\);

-- Location: LABCELL_X55_Y28_N28
\Y~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = ( \B[5]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[31]~input_o\)))) # (\ExtWord~input_o\ & (\A[15]~input_o\ & (\B[4]~input_o\))) ) ) # ( !\B[5]~input_o\ & ( (\ExtWord~input_o\ & (\A[15]~input_o\ & \B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y~1_combout\);

-- Location: LABCELL_X55_Y28_N14
\Y~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = ( \ShiftFN[1]~input_o\ & ( \Y~1_combout\ & ( (((\Y~0_combout\ & \s64[4][16]~22_combout\)) # (\Y~76_combout\)) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Y~1_combout\ & ( ((\Y~0_combout\ & (\s64[4][16]~22_combout\ & 
-- !\ShiftFN[0]~input_o\))) # (\Y~76_combout\) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Y~1_combout\ & ( ((\Y~0_combout\ & \s64[4][16]~22_combout\)) # (\Y~76_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Y~1_combout\ & ( ((\Y~0_combout\ & 
-- (\s64[4][16]~22_combout\ & !\ShiftFN[0]~input_o\))) # (\Y~76_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111111000100011111111100010000111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~0_combout\,
	datab => \ALT_INV_s64[4][16]~22_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Y~76_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y~1_combout\,
	combout => \Y~2_combout\);

-- Location: MLABCELL_X57_Y26_N20
\s64[2][0]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~34_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\A[1]~input_o\ & (!\B[0]~input_o\ & !\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \s64[2][0]~34_combout\);

-- Location: MLABCELL_X57_Y26_N16
\s64[2][0]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~33_combout\ = ( \A[4]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[2]~input_o\)))) # (\B[1]~input_o\ & (((\A[3]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((!\B[0]~input_o\) # ((\A[2]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[3]~input_o\))) ) ) ) # ( \A[4]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[2]~input_o\)))) # (\B[1]~input_o\ & (((\A[3]~input_o\)) # 
-- (\B[0]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[2]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \s64[2][0]~33_combout\);

-- Location: MLABCELL_X52_Y26_N20
\s64[2][0]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~32_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[6]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[7]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ & 
-- ( \A[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~32_combout\);

-- Location: LABCELL_X55_Y26_N24
\s64[3][1]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][1]~35_combout\ = ( \s64[2][0]~32_combout\ & ( (!\Equal0~0_combout\ & (((\s64[2][0]~33_combout\)) # (\B[2]~input_o\))) # (\Equal0~0_combout\ & (!\B[2]~input_o\ & (\s64[2][0]~34_combout\))) ) ) # ( !\s64[2][0]~32_combout\ & ( (!\B[2]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[2][0]~33_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~34_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~34_combout\,
	datad => \ALT_INV_s64[2][0]~33_combout\,
	dataf => \ALT_INV_s64[2][0]~32_combout\,
	combout => \s64[3][1]~35_combout\);

-- Location: MLABCELL_X52_Y26_N32
\s64[2][0]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~27_combout\ = ( \A[9]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[10]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[10]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[12]~input_o\))) ) ) ) # ( \A[9]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[11]~input_o\) ) ) ) # ( !\A[9]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~27_combout\);

-- Location: MLABCELL_X57_Y26_N14
\s64[2][0]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~30_combout\ = ( \B[1]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\) # (\A[4]~input_o\) ) ) ) # ( \B[1]~input_o\ & 
-- ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[5]~input_o\ & ( (\B[0]~input_o\ & \A[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \s64[2][0]~30_combout\);

-- Location: MLABCELL_X52_Y26_N36
\s64[2][0]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~28_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[6]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[7]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ & 
-- ( \A[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~28_combout\);

-- Location: LABCELL_X50_Y26_N20
\s64[2][0]~131\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~131_combout\ = ( !\B[1]~input_o\ & ( ((!\B[0]~input_o\ & (((\A[13]~input_o\)))) # (\B[0]~input_o\ & (\A[14]~input_o\))) ) ) # ( \B[1]~input_o\ & ( (\A[15]~input_o\ & (((!\B[0]~input_o\) # ((\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011010101010000000000001111001100110101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_A[13]~input_o\,
	combout => \s64[2][0]~131_combout\);

-- Location: LABCELL_X55_Y26_N2
\s32[3][9]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][9]~0_combout\ = ( \Equal0~0_combout\ & ( \s64[2][0]~131_combout\ & ( (!\B[2]~input_o\ & ((\s64[2][0]~28_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~30_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( \s64[2][0]~131_combout\ & ( (\B[2]~input_o\) # 
-- (\s64[2][0]~27_combout\) ) ) ) # ( \Equal0~0_combout\ & ( !\s64[2][0]~131_combout\ & ( (!\B[2]~input_o\ & ((\s64[2][0]~28_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~30_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( !\s64[2][0]~131_combout\ & ( 
-- (\s64[2][0]~27_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~27_combout\,
	datab => \ALT_INV_s64[2][0]~30_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_s64[2][0]~28_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[2][0]~131_combout\,
	combout => \s32[3][9]~0_combout\);

-- Location: LABCELL_X55_Y28_N0
\Y~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = ( \B[3]~input_o\ & ( \B[5]~input_o\ & ( (\Equal0~0_combout\ & (!\B[4]~input_o\ & \ExtWord~input_o\)) ) ) ) # ( !\B[3]~input_o\ & ( \B[5]~input_o\ & ( !\B[4]~input_o\ ) ) ) # ( \B[3]~input_o\ & ( !\B[5]~input_o\ & ( (\Equal0~0_combout\ & 
-- (!\B[4]~input_o\ $ (!\ExtWord~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( !\B[5]~input_o\ & ( (!\B[4]~input_o\) # ((\Equal0~0_combout\ & !\ExtWord~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110000000001010101000011110000111100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y~4_combout\);

-- Location: LABCELL_X50_Y26_N36
\fill32~0\ : arriaii_lcell_comb
-- Equation(s):
-- \fill32~0_combout\ = ( \ShiftFN[1]~input_o\ & ( (\A[15]~input_o\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \fill32~0_combout\);

-- Location: LABCELL_X55_Y28_N16
\Y~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = ( \Equal0~0_combout\ & ( ((!\B[4]~input_o\ & \B[3]~input_o\)) # (\Y~0_combout\) ) ) # ( !\Equal0~0_combout\ & ( (!\B[4]~input_o\ & \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Y~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Y~3_combout\);

-- Location: LABCELL_X55_Y29_N24
\Y~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = ( \Y~3_combout\ & ( (\s32[3][9]~0_combout\ & !\Y~4_combout\) ) ) # ( !\Y~3_combout\ & ( (!\Y~4_combout\ & ((\fill32~0_combout\))) # (\Y~4_combout\ & (\s64[3][1]~35_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][1]~35_combout\,
	datab => \ALT_INV_s32[3][9]~0_combout\,
	datac => \ALT_INV_Y~4_combout\,
	datad => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_Y~3_combout\,
	combout => \Y~5_combout\);

-- Location: LABCELL_X53_Y29_N20
\fill64~0\ : arriaii_lcell_comb
-- Equation(s):
-- \fill64~0_combout\ = ( \ShiftFN[1]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \fill64~0_combout\);

-- Location: LABCELL_X50_Y26_N8
\s64[2][0]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~29_combout\ = ( \A[15]~input_o\ & ( \A[16]~input_o\ & ( ((!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[15]~input_o\ & ( \A[16]~input_o\ & ( (!\B[0]~input_o\ & (\A[13]~input_o\ & 
-- (!\B[1]~input_o\))) # (\B[0]~input_o\ & (((\A[14]~input_o\) # (\B[1]~input_o\)))) ) ) ) # ( \A[15]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[13]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[14]~input_o\)))) 
-- ) ) ) # ( !\A[15]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \s64[2][0]~29_combout\);

-- Location: LABCELL_X55_Y26_N0
\s64[3][9]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][9]~31_combout\ = ( \Equal0~0_combout\ & ( \s64[2][0]~29_combout\ & ( (!\B[2]~input_o\ & ((\s64[2][0]~28_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~30_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( \s64[2][0]~29_combout\ & ( (\B[2]~input_o\) # 
-- (\s64[2][0]~27_combout\) ) ) ) # ( \Equal0~0_combout\ & ( !\s64[2][0]~29_combout\ & ( (!\B[2]~input_o\ & ((\s64[2][0]~28_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~30_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( !\s64[2][0]~29_combout\ & ( 
-- (\s64[2][0]~27_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110011001101010101111111110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~27_combout\,
	datab => \ALT_INV_s64[2][0]~30_combout\,
	datac => \ALT_INV_s64[2][0]~28_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[2][0]~29_combout\,
	combout => \s64[3][9]~31_combout\);

-- Location: MLABCELL_X54_Y30_N4
\s64[1][17]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][17]~37_combout\ = ( \Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[17]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[17]~input_o\)) # (\B[0]~input_o\ & ((\A[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[1][17]~37_combout\);

-- Location: MLABCELL_X54_Y30_N14
\s64[1][19]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][19]~38_combout\ = ( \Equal0~0_combout\ & ( (!\B[0]~input_o\ & ((\A[19]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[0]~input_o\ & ((\A[19]~input_o\))) # (\B[0]~input_o\ & (\A[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[1][19]~38_combout\);

-- Location: MLABCELL_X54_Y30_N34
\s64[2][0]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~39_combout\ = ( \A[14]~input_o\ & ( \s64[2][0]~2_combout\ & ( (\s64[1][19]~38_combout\) # (\s64[2][0]~3_combout\) ) ) ) # ( !\A[14]~input_o\ & ( \s64[2][0]~2_combout\ & ( (!\s64[2][0]~3_combout\ & \s64[1][19]~38_combout\) ) ) ) # ( 
-- \A[14]~input_o\ & ( !\s64[2][0]~2_combout\ & ( (!\s64[2][0]~3_combout\ & (\s64[1][17]~37_combout\)) # (\s64[2][0]~3_combout\ & ((\A[15]~input_o\))) ) ) ) # ( !\A[14]~input_o\ & ( !\s64[2][0]~2_combout\ & ( (!\s64[2][0]~3_combout\ & 
-- (\s64[1][17]~37_combout\)) # (\s64[2][0]~3_combout\ & ((\A[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][17]~37_combout\,
	datab => \ALT_INV_s64[2][0]~3_combout\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_s64[1][19]~38_combout\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_s64[2][0]~2_combout\,
	combout => \s64[2][0]~39_combout\);

-- Location: MLABCELL_X54_Y30_N18
\s64[1][21]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][21]~41_combout\ = ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[22]~input_o\))) # (\Equal0~0_combout\ & (\A[20]~input_o\)) ) ) # ( !\B[0]~input_o\ & ( \A[21]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[1][21]~41_combout\);

-- Location: MLABCELL_X54_Y30_N26
\s64[1][23]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][23]~42_combout\ = ( \A[23]~input_o\ & ( (!\B[0]~input_o\) # ((!\Equal0~0_combout\ & (\A[24]~input_o\)) # (\Equal0~0_combout\ & ((\A[22]~input_o\)))) ) ) # ( !\A[23]~input_o\ & ( (\B[0]~input_o\ & ((!\Equal0~0_combout\ & (\A[24]~input_o\)) # 
-- (\Equal0~0_combout\ & ((\A[22]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000100000001001111011100110111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \s64[1][23]~42_combout\);

-- Location: LABCELL_X53_Y26_N20
\s64[2][21]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][21]~43_combout\ = ( \Equal0~0_combout\ & ( (!\B[1]~input_o\ & ((\s64[1][21]~41_combout\))) # (\B[1]~input_o\ & (\s64[1][19]~38_combout\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[1]~input_o\ & (\s64[1][21]~41_combout\)) # (\B[1]~input_o\ & 
-- ((\s64[1][23]~42_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][19]~38_combout\,
	datab => \ALT_INV_s64[1][21]~41_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_s64[1][23]~42_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[2][21]~43_combout\);

-- Location: LABCELL_X50_Y26_N32
\s64[2][0]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~40_combout\ = ( \A[12]~input_o\ & ( \A[10]~input_o\ & ( ((!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[11]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \s64[2][0]~40_combout\);

-- Location: LABCELL_X55_Y26_N26
\s64[3][17]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][17]~44_combout\ = ( \s64[2][0]~40_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][0]~39_combout\)))) # (\B[2]~input_o\ & (((\s64[2][21]~43_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[2][0]~40_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][0]~39_combout\)))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][21]~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~39_combout\,
	datad => \ALT_INV_s64[2][21]~43_combout\,
	dataf => \ALT_INV_s64[2][0]~40_combout\,
	combout => \s64[3][17]~44_combout\);

-- Location: MLABCELL_X54_Y30_N30
\s64[1][25]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][25]~45_combout\ = ( \Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[25]~input_o\)) # (\B[0]~input_o\ & ((\A[24]~input_o\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[25]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[1][25]~45_combout\);

-- Location: LABCELL_X53_Y29_N14
\s64[1][27]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][27]~46_combout\ = ( \Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[27]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[0]~input_o\ & (\A[27]~input_o\)) # (\B[0]~input_o\ & ((\A[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[1][27]~46_combout\);

-- Location: LABCELL_X53_Y26_N6
\s64[2][25]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][25]~47_combout\ = ( \Equal0~0_combout\ & ( (!\B[1]~input_o\ & (\s64[1][25]~45_combout\)) # (\B[1]~input_o\ & ((\s64[1][23]~42_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[1]~input_o\ & (\s64[1][25]~45_combout\)) # (\B[1]~input_o\ & 
-- ((\s64[1][27]~46_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_s64[1][25]~45_combout\,
	datac => \ALT_INV_s64[1][27]~46_combout\,
	datad => \ALT_INV_s64[1][23]~42_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[2][25]~47_combout\);

-- Location: LABCELL_X53_Y29_N38
\s64[1][29]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][29]~48_combout\ = ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & (((\A[29]~input_o\)))) # (\B[0]~input_o\ & (((\Equal0~0_combout\)) # (\A[30]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & (((\A[29]~input_o\)))) # (\B[0]~input_o\ & 
-- (\A[30]~input_o\ & ((!\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100001010000110110000101000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \s64[1][29]~48_combout\);

-- Location: LABCELL_X53_Y29_N24
\s64[1][31]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][31]~49_combout\ = ( \ShiftFN[1]~input_o\ & ( (\A[31]~input_o\ & ((!\B[0]~input_o\) # (\ShiftFN[0]~input_o\))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[31]~input_o\)))) # (\B[0]~input_o\ & (\A[30]~input_o\ & 
-- ((\ShiftFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101100001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[1][31]~49_combout\);

-- Location: LABCELL_X53_Y26_N10
\s64[2][29]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][29]~50_combout\ = ( \s64[1][31]~49_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][29]~48_combout\)))) # (\B[1]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[1][27]~46_combout\)))) ) ) # ( !\s64[1][31]~49_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][29]~48_combout\)))) # (\B[1]~input_o\ & (\Equal0~0_combout\ & ((\s64[1][27]~46_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110000010100110011101011110011001110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][29]~48_combout\,
	datac => \ALT_INV_s64[1][27]~46_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][31]~49_combout\,
	combout => \s64[2][29]~50_combout\);

-- Location: LABCELL_X55_Y26_N10
\s64[3][25]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][25]~51_combout\ = ( \s64[2][21]~43_combout\ & ( (!\B[2]~input_o\ & (\s64[2][25]~47_combout\)) # (\B[2]~input_o\ & (((\Equal0~0_combout\) # (\s64[2][29]~50_combout\)))) ) ) # ( !\s64[2][21]~43_combout\ & ( (!\B[2]~input_o\ & 
-- (\s64[2][25]~47_combout\)) # (\B[2]~input_o\ & (((\s64[2][29]~50_combout\ & !\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000100010001110100010001000111011101110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][25]~47_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][29]~50_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[2][21]~43_combout\,
	combout => \s64[3][25]~51_combout\);

-- Location: LABCELL_X55_Y29_N10
\s64[4][17]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][17]~52_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[3][25]~51_combout\))) # (\Equal0~0_combout\ & (\s64[3][9]~31_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s64[3][17]~44_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][9]~31_combout\,
	datab => \ALT_INV_s64[3][17]~44_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[3][25]~51_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][17]~52_combout\);

-- Location: LABCELL_X55_Y28_N4
\Y~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = ( !\B[5]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[4]~input_o\) # (!\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y~7_combout\);

-- Location: LABCELL_X55_Y29_N26
\s64[4][1]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][1]~36_combout\ = ( \s64[3][9]~31_combout\ & ( (!\B[3]~input_o\ & (\s64[3][1]~35_combout\)) # (\B[3]~input_o\ & ((!\Equal0~0_combout\))) ) ) # ( !\s64[3][9]~31_combout\ & ( (\s64[3][1]~35_combout\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111100000101010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][1]~35_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][9]~31_combout\,
	combout => \s64[4][1]~36_combout\);

-- Location: LABCELL_X55_Y28_N6
\Y~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = ( \B[5]~input_o\ & ( !\ExtWord~input_o\ ) ) # ( !\B[5]~input_o\ & ( (\B[4]~input_o\ & (!\ExtWord~input_o\ & !\Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y~6_combout\);

-- Location: LABCELL_X55_Y29_N34
\Y~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = ( \s64[4][1]~36_combout\ & ( \Y~6_combout\ & ( (!\Y~7_combout\ & (\fill64~0_combout\)) # (\Y~7_combout\ & ((\s64[4][17]~52_combout\))) ) ) ) # ( !\s64[4][1]~36_combout\ & ( \Y~6_combout\ & ( (!\Y~7_combout\ & (\fill64~0_combout\)) # 
-- (\Y~7_combout\ & ((\s64[4][17]~52_combout\))) ) ) ) # ( \s64[4][1]~36_combout\ & ( !\Y~6_combout\ & ( (\Y~7_combout\) # (\Y~5_combout\) ) ) ) # ( !\s64[4][1]~36_combout\ & ( !\Y~6_combout\ & ( (\Y~5_combout\ & !\Y~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~5_combout\,
	datab => \ALT_INV_fill64~0_combout\,
	datac => \ALT_INV_s64[4][17]~52_combout\,
	datad => \ALT_INV_Y~7_combout\,
	datae => \ALT_INV_s64[4][1]~36_combout\,
	dataf => \ALT_INV_Y~6_combout\,
	combout => \Y~8_combout\);

-- Location: MLABCELL_X57_Y26_N30
\s64[2][0]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~59_combout\ = ( \B[1]~input_o\ & ( \A[5]~input_o\ & ( (\A[4]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[5]~input_o\ & ( (!\B[0]~input_o\ & \A[4]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \s64[2][0]~59_combout\);

-- Location: MLABCELL_X52_Y26_N30
\s64[2][0]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~58_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[9]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[7]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ & 
-- ( \A[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~58_combout\);

-- Location: MLABCELL_X57_Y26_N22
\s64[2][0]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~60_combout\ = ( \A[2]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[0]~input_o\)))) # (\B[0]~input_o\ & (\A[1]~input_o\ & ((!\B[1]~input_o\)))) ) ) # ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & (((\A[0]~input_o\ & \B[1]~input_o\)))) # 
-- (\B[0]~input_o\ & (\A[1]~input_o\ & ((!\B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010000110011011101000011001101110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \s64[2][0]~60_combout\);

-- Location: MLABCELL_X54_Y28_N0
\s64[3][2]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][2]~61_combout\ = ( \s64[2][0]~58_combout\ & ( \s64[2][0]~60_combout\ & ( (!\B[2]~input_o\ & ((\Equal0~0_combout\) # (\s64[2][0]~59_combout\))) # (\B[2]~input_o\ & ((!\Equal0~0_combout\))) ) ) ) # ( !\s64[2][0]~58_combout\ & ( 
-- \s64[2][0]~60_combout\ & ( (!\B[2]~input_o\ & ((\Equal0~0_combout\) # (\s64[2][0]~59_combout\))) ) ) ) # ( \s64[2][0]~58_combout\ & ( !\s64[2][0]~60_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~59_combout\) # (\B[2]~input_o\))) ) ) ) # ( 
-- !\s64[2][0]~58_combout\ & ( !\s64[2][0]~60_combout\ & ( (!\B[2]~input_o\ & (\s64[2][0]~59_combout\ & !\Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000011100000111000000101010001010100111101001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_s64[2][0]~59_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_s64[2][0]~58_combout\,
	dataf => \ALT_INV_s64[2][0]~60_combout\,
	combout => \s64[3][2]~61_combout\);

-- Location: MLABCELL_X52_Y26_N26
\s64[2][0]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~54_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[7]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[9]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ & 
-- ( \A[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~54_combout\);

-- Location: MLABCELL_X57_Y26_N26
\s64[2][0]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~56_combout\ = ( \B[1]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[5]~input_o\ & ( (\B[0]~input_o\) # (\A[6]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[5]~input_o\ & ( (!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[5]~input_o\ & ( (\A[6]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \s64[2][0]~56_combout\);

-- Location: LABCELL_X50_Y26_N2
\s64[2][0]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~53_combout\ = ( \B[0]~input_o\ & ( \A[10]~input_o\ & ( (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[13]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[10]~input_o\ & ( (!\B[1]~input_o\) # (\A[12]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[13]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[10]~input_o\ & ( (\B[1]~input_o\ & \A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \s64[2][0]~53_combout\);

-- Location: LABCELL_X50_Y26_N30
\s64[2][0]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~71_combout\ = ( \A[15]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[1]~input_o\ & (((\A[14]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) ) ) ) # ( !\A[15]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A[14]~input_o\ & !\B[1]~input_o\)) ) ) ) # ( \A[15]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[1]~input_o\ & ((\A[14]~input_o\) # (\B[0]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[14]~input_o\ & 
-- !\B[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000010111110000000000001010000000000101111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[2][0]~71_combout\);

-- Location: LABCELL_X53_Y29_N4
\s32[3][10]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][10]~1_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~71_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~56_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~71_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~53_combout\))) # (\Equal0~0_combout\ & 
-- (\s64[2][0]~54_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~71_combout\ & ( (\s64[2][0]~56_combout\ & \Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~71_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~53_combout\))) # 
-- (\Equal0~0_combout\ & (\s64[2][0]~54_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~54_combout\,
	datab => \ALT_INV_s64[2][0]~56_combout\,
	datac => \ALT_INV_s64[2][0]~53_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~71_combout\,
	combout => \s32[3][10]~1_combout\);

-- Location: LABCELL_X55_Y29_N0
\Y~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = ( \Y~3_combout\ & ( (\s32[3][10]~1_combout\ & !\Y~4_combout\) ) ) # ( !\Y~3_combout\ & ( (!\Y~4_combout\ & ((\fill32~0_combout\))) # (\Y~4_combout\ & (\s64[3][2]~61_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][2]~61_combout\,
	datab => \ALT_INV_s32[3][10]~1_combout\,
	datac => \ALT_INV_Y~4_combout\,
	datad => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_Y~3_combout\,
	combout => \Y~9_combout\);

-- Location: MLABCELL_X54_Y30_N38
\s64[2][18]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][18]~63_combout\ = ( \Equal0~0_combout\ & ( (!\B[1]~input_o\ & ((\s64[1][18]~1_combout\))) # (\B[1]~input_o\ & (\s64[1][16]~0_combout\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[1]~input_o\ & (\s64[1][18]~1_combout\)) # (\B[1]~input_o\ & 
-- ((\s64[1][20]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][16]~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][18]~1_combout\,
	datad => \ALT_INV_s64[1][20]~6_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[2][18]~63_combout\);

-- Location: MLABCELL_X54_Y30_N22
\s64[2][22]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][22]~65_combout\ = ( \s64[1][24]~15_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][22]~7_combout\)))) # (\B[1]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[1][20]~6_combout\))) ) ) # ( !\s64[1][24]~15_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][22]~7_combout\)))) # (\B[1]~input_o\ & (\s64[1][20]~6_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100110001111111010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][20]~6_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[1][22]~7_combout\,
	dataf => \ALT_INV_s64[1][24]~15_combout\,
	combout => \s64[2][22]~65_combout\);

-- Location: LABCELL_X50_Y26_N6
\s64[2][0]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~64_combout\ = ( \B[0]~input_o\ & ( \A[11]~input_o\ & ( (\A[13]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & \A[13]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \s64[2][0]~64_combout\);

-- Location: LABCELL_X53_Y29_N8
\s64[3][18]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][18]~66_combout\ = ( \s64[2][0]~64_combout\ & ( (!\B[2]~input_o\ & (\s64[2][18]~63_combout\)) # (\B[2]~input_o\ & (((\Equal0~0_combout\) # (\s64[2][22]~65_combout\)))) ) ) # ( !\s64[2][0]~64_combout\ & ( (!\B[2]~input_o\ & 
-- (\s64[2][18]~63_combout\)) # (\B[2]~input_o\ & (((\s64[2][22]~65_combout\ & !\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110000010101010011000001010101001111110101010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][18]~63_combout\,
	datab => \ALT_INV_s64[2][22]~65_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~64_combout\,
	combout => \s64[3][18]~66_combout\);

-- Location: MLABCELL_X54_Y30_N36
\s64[2][0]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~55_combout\ = ( \A[14]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[15]~input_o\)))) # (\B[1]~input_o\ & (\s64[1][16]~0_combout\)) ) ) # ( !\A[14]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\ & \A[15]~input_o\)))) # 
-- (\B[1]~input_o\ & (\s64[1][16]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110111010001110111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][16]~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \s64[2][0]~55_combout\);

-- Location: LABCELL_X53_Y29_N6
\s64[3][10]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][10]~57_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~55_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~56_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~55_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~53_combout\))) # (\Equal0~0_combout\ & 
-- (\s64[2][0]~54_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~55_combout\ & ( (\s64[2][0]~56_combout\ & \Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~55_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~53_combout\))) # 
-- (\Equal0~0_combout\ & (\s64[2][0]~54_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~54_combout\,
	datab => \ALT_INV_s64[2][0]~56_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~53_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~55_combout\,
	combout => \s64[3][10]~57_combout\);

-- Location: LABCELL_X53_Y29_N0
\s64[2][30]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][30]~68_combout\ = ( \B[1]~input_o\ & ( (!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[1][28]~18_combout\)) ) ) # ( !\B[1]~input_o\ & ( \s64[1][30]~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][28]~18_combout\,
	datab => \ALT_INV_s64[1][30]~19_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \s64[2][30]~68_combout\);

-- Location: LABCELL_X53_Y29_N28
\s64[2][26]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][26]~67_combout\ = ( \s64[1][24]~15_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][26]~16_combout\)))) # (\B[1]~input_o\ & (((\s64[1][28]~18_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[1][24]~15_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][26]~16_combout\)))) # (\B[1]~input_o\ & (!\Equal0~0_combout\ & (\s64[1][28]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[1][28]~18_combout\,
	datad => \ALT_INV_s64[1][26]~16_combout\,
	dataf => \ALT_INV_s64[1][24]~15_combout\,
	combout => \s64[2][26]~67_combout\);

-- Location: LABCELL_X53_Y29_N32
\s64[3][26]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][26]~69_combout\ = ( \s64[2][22]~65_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][26]~67_combout\)))) # (\B[2]~input_o\ & (((\Equal0~0_combout\)) # (\s64[2][30]~68_combout\))) ) ) # ( !\s64[2][22]~65_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][26]~67_combout\)))) # (\B[2]~input_o\ & (\s64[2][30]~68_combout\ & ((!\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100001100000111010000110000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][30]~68_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][26]~67_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[2][22]~65_combout\,
	combout => \s64[3][26]~69_combout\);

-- Location: MLABCELL_X54_Y29_N2
\s64[4][18]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][18]~70_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][18]~66_combout\)) # (\B[3]~input_o\ & ((\s64[3][10]~57_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][18]~66_combout\)) # (\B[3]~input_o\ & 
-- ((\s64[3][26]~69_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][18]~66_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_s64[3][10]~57_combout\,
	datad => \ALT_INV_s64[3][26]~69_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][18]~70_combout\);

-- Location: LABCELL_X55_Y29_N38
\s64[4][2]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][2]~62_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & \s64[3][10]~57_combout\) ) ) # ( !\B[3]~input_o\ & ( \s64[3][2]~61_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][10]~57_combout\,
	datad => \ALT_INV_s64[3][2]~61_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][2]~62_combout\);

-- Location: LABCELL_X55_Y29_N6
\Y~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = ( \fill64~0_combout\ & ( \s64[4][2]~62_combout\ & ( (!\Y~6_combout\ & (((\Y~7_combout\)) # (\Y~9_combout\))) # (\Y~6_combout\ & (((!\Y~7_combout\) # (\s64[4][18]~70_combout\)))) ) ) ) # ( !\fill64~0_combout\ & ( \s64[4][2]~62_combout\ & ( 
-- (!\Y~6_combout\ & (((\Y~7_combout\)) # (\Y~9_combout\))) # (\Y~6_combout\ & (((\s64[4][18]~70_combout\ & \Y~7_combout\)))) ) ) ) # ( \fill64~0_combout\ & ( !\s64[4][2]~62_combout\ & ( (!\Y~6_combout\ & (\Y~9_combout\ & ((!\Y~7_combout\)))) # 
-- (\Y~6_combout\ & (((!\Y~7_combout\) # (\s64[4][18]~70_combout\)))) ) ) ) # ( !\fill64~0_combout\ & ( !\s64[4][2]~62_combout\ & ( (!\Y~6_combout\ & (\Y~9_combout\ & ((!\Y~7_combout\)))) # (\Y~6_combout\ & (((\s64[4][18]~70_combout\ & \Y~7_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~9_combout\,
	datab => \ALT_INV_s64[4][18]~70_combout\,
	datac => \ALT_INV_Y~6_combout\,
	datad => \ALT_INV_Y~7_combout\,
	datae => \ALT_INV_fill64~0_combout\,
	dataf => \ALT_INV_s64[4][2]~62_combout\,
	combout => \Y~10_combout\);

-- Location: MLABCELL_X52_Y26_N12
\s64[2][0]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~73_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[10]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[9]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ 
-- & ( \A[11]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~73_combout\);

-- Location: LABCELL_X50_Y26_N12
\s64[2][0]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~72_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)) # (\A[13]~input_o\))) # (\B[0]~input_o\ & (((\B[1]~input_o\ & \A[14]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (\A[13]~input_o\ & (\B[1]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # 
-- (\A[14]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \s64[2][0]~72_combout\);

-- Location: MLABCELL_X57_Y24_N22
\s64[2][0]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~75_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[4]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[6]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[5]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ & 
-- ( \A[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~75_combout\);

-- Location: LABCELL_X53_Y26_N14
\s64[2][0]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~74_combout\ = ( \A[16]~input_o\ & ( \A[15]~input_o\ & ( (!\B[1]~input_o\) # (\s64[1][17]~37_combout\) ) ) ) # ( !\A[16]~input_o\ & ( \A[15]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\)) # (\B[1]~input_o\ & ((\s64[1][17]~37_combout\))) ) ) 
-- ) # ( \A[16]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\)) # (\B[1]~input_o\ & ((\s64[1][17]~37_combout\))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[15]~input_o\ & ( (\s64[1][17]~37_combout\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010011001110101010001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_s64[1][17]~37_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \s64[2][0]~74_combout\);

-- Location: LABCELL_X53_Y26_N16
\s64[3][11]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][11]~76_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~74_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~75_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~74_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~72_combout\))) # (\Equal0~0_combout\ & 
-- (\s64[2][0]~73_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~74_combout\ & ( (\Equal0~0_combout\ & \s64[2][0]~75_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~74_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~72_combout\))) # 
-- (\Equal0~0_combout\ & (\s64[2][0]~73_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~73_combout\,
	datab => \ALT_INV_s64[2][0]~72_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~75_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~74_combout\,
	combout => \s64[3][11]~76_combout\);

-- Location: LABCELL_X50_Y26_N16
\s64[2][0]~83\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~83_combout\ = ( \B[0]~input_o\ & ( \A[15]~input_o\ & ( (!\B[1]~input_o\ & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[12]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[15]~input_o\ & ( (!\B[1]~input_o\) # (\A[13]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[1]~input_o\ & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[12]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[15]~input_o\ & ( (\A[13]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \s64[2][0]~83_combout\);

-- Location: LABCELL_X53_Y26_N22
\s64[2][19]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][19]~82_combout\ = ( \Equal0~0_combout\ & ( (!\B[1]~input_o\ & (\s64[1][19]~38_combout\)) # (\B[1]~input_o\ & ((\s64[1][17]~37_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[1]~input_o\ & (\s64[1][19]~38_combout\)) # (\B[1]~input_o\ & 
-- ((\s64[1][21]~41_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][19]~38_combout\,
	datab => \ALT_INV_s64[1][21]~41_combout\,
	datac => \ALT_INV_s64[1][17]~37_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[2][19]~82_combout\);

-- Location: LABCELL_X53_Y26_N4
\s64[2][23]~84\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][23]~84_combout\ = ( \Equal0~0_combout\ & ( (!\B[1]~input_o\ & ((\s64[1][23]~42_combout\))) # (\B[1]~input_o\ & (\s64[1][21]~41_combout\)) ) ) # ( !\Equal0~0_combout\ & ( (!\B[1]~input_o\ & ((\s64[1][23]~42_combout\))) # (\B[1]~input_o\ & 
-- (\s64[1][25]~45_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_s64[1][25]~45_combout\,
	datac => \ALT_INV_s64[1][21]~41_combout\,
	datad => \ALT_INV_s64[1][23]~42_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[2][23]~84_combout\);

-- Location: LABCELL_X53_Y26_N2
\s64[3][19]~85\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][19]~85_combout\ = ( \s64[2][23]~84_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][19]~82_combout\)))) # (\B[2]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[2][0]~83_combout\)))) ) ) # ( !\s64[2][23]~84_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][19]~82_combout\)))) # (\B[2]~input_o\ & (\Equal0~0_combout\ & (\s64[2][0]~83_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~83_combout\,
	datad => \ALT_INV_s64[2][19]~82_combout\,
	dataf => \ALT_INV_s64[2][23]~84_combout\,
	combout => \s64[3][19]~85_combout\);

-- Location: LABCELL_X53_Y26_N8
\s64[2][27]~86\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][27]~86_combout\ = ( \s64[1][27]~46_combout\ & ( (!\B[1]~input_o\) # ((!\Equal0~0_combout\ & (\s64[1][29]~48_combout\)) # (\Equal0~0_combout\ & ((\s64[1][25]~45_combout\)))) ) ) # ( !\s64[1][27]~46_combout\ & ( (\B[1]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[1][29]~48_combout\)) # (\Equal0~0_combout\ & ((\s64[1][25]~45_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011111110010111101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][29]~48_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_s64[1][25]~45_combout\,
	dataf => \ALT_INV_s64[1][27]~46_combout\,
	combout => \s64[2][27]~86_combout\);

-- Location: LABCELL_X53_Y26_N26
\s64[2][31]~87\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][31]~87_combout\ = ( \s64[1][31]~49_combout\ & ( (!\B[1]~input_o\) # ((!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[1][29]~48_combout\)))) ) ) # ( !\s64[1][31]~49_combout\ & ( (\B[1]~input_o\ & ((!\Equal0~0_combout\ & 
-- (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[1][29]~48_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011111111111001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_fill64~0_combout\,
	datac => \ALT_INV_s64[1][29]~48_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][31]~49_combout\,
	combout => \s64[2][31]~87_combout\);

-- Location: LABCELL_X53_Y26_N30
\s64[3][27]~88\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][27]~88_combout\ = ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[2][31]~87_combout\))) # (\Equal0~0_combout\ & (\s64[2][23]~84_combout\)) ) ) # ( !\B[2]~input_o\ & ( \s64[2][27]~86_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][23]~84_combout\,
	datac => \ALT_INV_s64[2][27]~86_combout\,
	datad => \ALT_INV_s64[2][31]~87_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][27]~88_combout\);

-- Location: MLABCELL_X54_Y29_N8
\s64[4][19]~89\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][19]~89_combout\ = ( \s64[3][27]~88_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][19]~85_combout\)))) # (\B[3]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[3][11]~76_combout\)))) ) ) # ( !\s64[3][27]~88_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][19]~85_combout\)))) # (\B[3]~input_o\ & (\Equal0~0_combout\ & (\s64[3][11]~76_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_s64[3][11]~76_combout\,
	datad => \ALT_INV_s64[3][19]~85_combout\,
	dataf => \ALT_INV_s64[3][27]~88_combout\,
	combout => \s64[4][19]~89_combout\);

-- Location: MLABCELL_X52_Y26_N16
\s64[2][0]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~77_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[10]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[9]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ 
-- & ( \A[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~77_combout\);

-- Location: MLABCELL_X57_Y26_N38
\s64[2][0]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~79_combout\ = ( \B[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[2]~input_o\ & ( (\A[3]~input_o\) # (\B[0]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[2]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & \A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \s64[2][0]~79_combout\);

-- Location: MLABCELL_X57_Y26_N34
\s64[2][0]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~78_combout\ = ( \B[1]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\) # (\A[6]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( \B[1]~input_o\ & 
-- ( !\A[5]~input_o\ & ( (\A[6]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \s64[2][0]~78_combout\);

-- Location: LABCELL_X53_Y26_N0
\s64[3][3]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][3]~80_combout\ = ( \s64[2][0]~78_combout\ & ( (!\Equal0~0_combout\ & ((!\B[2]~input_o\) # ((\s64[2][0]~77_combout\)))) # (\Equal0~0_combout\ & (!\B[2]~input_o\ & ((\s64[2][0]~79_combout\)))) ) ) # ( !\s64[2][0]~78_combout\ & ( (!\Equal0~0_combout\ 
-- & (\B[2]~input_o\ & (\s64[2][0]~77_combout\))) # (\Equal0~0_combout\ & (!\B[2]~input_o\ & ((\s64[2][0]~79_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~77_combout\,
	datad => \ALT_INV_s64[2][0]~79_combout\,
	dataf => \ALT_INV_s64[2][0]~78_combout\,
	combout => \s64[3][3]~80_combout\);

-- Location: MLABCELL_X54_Y29_N6
\s64[4][3]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][3]~81_combout\ = ( \s64[3][11]~76_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][3]~80_combout\))) # (\B[3]~input_o\ & (!\Equal0~0_combout\)) ) ) # ( !\s64[3][11]~76_combout\ & ( (\s64[3][3]~80_combout\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111010001110100011101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][3]~80_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_s64[3][11]~76_combout\,
	combout => \s64[4][3]~81_combout\);

-- Location: LABCELL_X50_Y26_N38
\s64[2][0]~90\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~90_combout\ = ( \ShiftFN[1]~input_o\ & ( (\A[15]~input_o\ & (((!\B[1]~input_o\ & !\B[0]~input_o\)) # (\ShiftFN[0]~input_o\))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[15]~input_o\ & (!\B[1]~input_o\ & !\B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010001000100010101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[2][0]~90_combout\);

-- Location: LABCELL_X53_Y26_N18
\s32[3][11]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][11]~2_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~90_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~75_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~90_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~72_combout\))) # (\Equal0~0_combout\ & 
-- (\s64[2][0]~73_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~90_combout\ & ( (\s64[2][0]~75_combout\ & \Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~90_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~72_combout\))) # 
-- (\Equal0~0_combout\ & (\s64[2][0]~73_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~73_combout\,
	datab => \ALT_INV_s64[2][0]~72_combout\,
	datac => \ALT_INV_s64[2][0]~75_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~90_combout\,
	combout => \s32[3][11]~2_combout\);

-- Location: MLABCELL_X54_Y29_N32
\Y~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = ( \s64[3][3]~80_combout\ & ( (!\Y~4_combout\ & ((!\Y~3_combout\ & (\fill32~0_combout\)) # (\Y~3_combout\ & ((\s32[3][11]~2_combout\))))) # (\Y~4_combout\ & (((!\Y~3_combout\)))) ) ) # ( !\s64[3][3]~80_combout\ & ( (!\Y~4_combout\ & 
-- ((!\Y~3_combout\ & (\fill32~0_combout\)) # (\Y~3_combout\ & ((\s32[3][11]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100000101001110111000010100111011100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~4_combout\,
	datab => \ALT_INV_fill32~0_combout\,
	datac => \ALT_INV_s32[3][11]~2_combout\,
	datad => \ALT_INV_Y~3_combout\,
	dataf => \ALT_INV_s64[3][3]~80_combout\,
	combout => \Y~11_combout\);

-- Location: LABCELL_X55_Y25_N20
\Y~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = ( \Y~7_combout\ & ( \Y~6_combout\ & ( \s64[4][19]~89_combout\ ) ) ) # ( !\Y~7_combout\ & ( \Y~6_combout\ & ( \fill64~0_combout\ ) ) ) # ( \Y~7_combout\ & ( !\Y~6_combout\ & ( \s64[4][3]~81_combout\ ) ) ) # ( !\Y~7_combout\ & ( 
-- !\Y~6_combout\ & ( \Y~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][19]~89_combout\,
	datab => \ALT_INV_s64[4][3]~81_combout\,
	datac => \ALT_INV_Y~11_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_Y~7_combout\,
	dataf => \ALT_INV_Y~6_combout\,
	combout => \Y~12_combout\);

-- Location: LABCELL_X55_Y28_N18
\Y~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = (!\B[4]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	combout => \Y~13_combout\);

-- Location: LABCELL_X55_Y29_N28
\Y~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = ( !\Y~3_combout\ & ( (!\Y~4_combout\ & \fill32~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y~4_combout\,
	datad => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_Y~3_combout\,
	combout => \Y~15_combout\);

-- Location: MLABCELL_X54_Y26_N0
\s32[3][12]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][12]~3_combout\ = ( \B[2]~input_o\ & ( \fill32~0_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~11_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \fill32~0_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~12_combout\))) # (\Equal0~0_combout\ & 
-- (\s64[2][0]~5_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\fill32~0_combout\ & ( (\Equal0~0_combout\ & \s64[2][0]~11_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\fill32~0_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~12_combout\))) # (\Equal0~0_combout\ & 
-- (\s64[2][0]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~5_combout\,
	datab => \ALT_INV_s64[2][0]~12_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~11_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \s32[3][12]~3_combout\);

-- Location: LABCELL_X55_Y28_N10
\Y~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = ( \Y~3_combout\ & ( !\Y~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~4_combout\,
	dataf => \ALT_INV_Y~3_combout\,
	combout => \Y~14_combout\);

-- Location: MLABCELL_X54_Y26_N6
\s64[3][4]~92\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][4]~92_combout\ = ( \s64[2][0]~25_combout\ & ( \B[2]~input_o\ & ( (\Equal0~0_combout\) # (\s64[2][0]~10_combout\) ) ) ) # ( !\s64[2][0]~25_combout\ & ( \B[2]~input_o\ & ( (\s64[2][0]~10_combout\ & !\Equal0~0_combout\) ) ) ) # ( 
-- \s64[2][0]~25_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~23_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~13_combout\)) ) ) ) # ( !\s64[2][0]~25_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\ & 
-- ((\s64[2][0]~23_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~13_combout\,
	datab => \ALT_INV_s64[2][0]~10_combout\,
	datac => \ALT_INV_s64[2][0]~23_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_s64[2][0]~25_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][4]~92_combout\);

-- Location: MLABCELL_X54_Y25_N24
\Y~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = ( \s64[3][4]~92_combout\ & ( (!\Y~13_combout\ & (!\Y~15_combout\ & ((!\s32[3][12]~3_combout\) # (!\Y~14_combout\)))) ) ) # ( !\s64[3][4]~92_combout\ & ( (!\Y~15_combout\ & ((!\s32[3][12]~3_combout\) # (!\Y~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~13_combout\,
	datab => \ALT_INV_Y~15_combout\,
	datac => \ALT_INV_s32[3][12]~3_combout\,
	datad => \ALT_INV_Y~14_combout\,
	dataf => \ALT_INV_s64[3][4]~92_combout\,
	combout => \Y~16_combout\);

-- Location: MLABCELL_X54_Y26_N2
\s64[3][12]~91\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][12]~91_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~4_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~11_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~4_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~12_combout\))) # (\Equal0~0_combout\ & 
-- (\s64[2][0]~5_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~4_combout\ & ( (\s64[2][0]~11_combout\ & \Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~4_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~12_combout\))) # 
-- (\Equal0~0_combout\ & (\s64[2][0]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~5_combout\,
	datab => \ALT_INV_s64[2][0]~12_combout\,
	datac => \ALT_INV_s64[2][0]~11_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~4_combout\,
	combout => \s64[3][12]~91_combout\);

-- Location: LABCELL_X55_Y25_N26
\s64[4][4]~93\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][4]~93_combout\ = ( \B[3]~input_o\ & ( (\s64[3][12]~91_combout\ & !\Equal0~0_combout\) ) ) # ( !\B[3]~input_o\ & ( \s64[3][4]~92_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][12]~91_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][4]~92_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][4]~93_combout\);

-- Location: MLABCELL_X54_Y26_N30
\s64[3][20]~94\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][20]~94_combout\ = ( \s64[2][0]~4_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][20]~8_combout\)))) # (\B[2]~input_o\ & (((\s64[2][24]~17_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[2][0]~4_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][20]~8_combout\)))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\s64[2][24]~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][24]~17_combout\,
	datad => \ALT_INV_s64[2][20]~8_combout\,
	dataf => \ALT_INV_s64[2][0]~4_combout\,
	combout => \s64[3][20]~94_combout\);

-- Location: MLABCELL_X54_Y26_N28
\s64[3][28]~95\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][28]~95_combout\ = ( \fill64~0_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][28]~20_combout\)))) # (\B[2]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[2][24]~17_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][28]~20_combout\)))) # (\B[2]~input_o\ & (\Equal0~0_combout\ & ((\s64[2][24]~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][28]~20_combout\,
	datad => \ALT_INV_s64[2][24]~17_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[3][28]~95_combout\);

-- Location: LABCELL_X55_Y25_N24
\s64[4][20]~96\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][20]~96_combout\ = ( \s64[3][28]~95_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][20]~94_combout\)))) # (\B[3]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[3][12]~91_combout\))) ) ) # ( !\s64[3][28]~95_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][20]~94_combout\)))) # (\B[3]~input_o\ & (\s64[3][12]~91_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100001101111111010000110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][12]~91_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][20]~94_combout\,
	dataf => \ALT_INV_s64[3][28]~95_combout\,
	combout => \s64[4][20]~96_combout\);

-- Location: LABCELL_X55_Y25_N10
\Y~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = ( \Y~7_combout\ & ( \Y~6_combout\ & ( \s64[4][20]~96_combout\ ) ) ) # ( !\Y~7_combout\ & ( \Y~6_combout\ & ( \fill64~0_combout\ ) ) ) # ( \Y~7_combout\ & ( !\Y~6_combout\ & ( \s64[4][4]~93_combout\ ) ) ) # ( !\Y~7_combout\ & ( 
-- !\Y~6_combout\ & ( !\Y~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~16_combout\,
	datab => \ALT_INV_fill64~0_combout\,
	datac => \ALT_INV_s64[4][4]~93_combout\,
	datad => \ALT_INV_s64[4][20]~96_combout\,
	datae => \ALT_INV_Y~7_combout\,
	dataf => \ALT_INV_Y~6_combout\,
	combout => \Y~17_combout\);

-- Location: LABCELL_X55_Y26_N14
\s64[3][13]~97\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][13]~97_combout\ = ( \s64[2][0]~39_combout\ & ( \s64[2][0]~29_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & ((\s64[2][0]~40_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~28_combout\))) ) ) ) # ( !\s64[2][0]~39_combout\ & ( 
-- \s64[2][0]~29_combout\ & ( (!\Equal0~0_combout\ & (((!\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~40_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~28_combout\)))) ) ) ) # ( \s64[2][0]~39_combout\ & ( !\s64[2][0]~29_combout\ & 
-- ( (!\Equal0~0_combout\ & (((\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~40_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~28_combout\)))) ) ) ) # ( !\s64[2][0]~39_combout\ & ( !\s64[2][0]~29_combout\ & ( (\Equal0~0_combout\ & 
-- ((!\B[2]~input_o\ & ((\s64[2][0]~40_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~28_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~28_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_s64[2][0]~40_combout\,
	datae => \ALT_INV_s64[2][0]~39_combout\,
	dataf => \ALT_INV_s64[2][0]~29_combout\,
	combout => \s64[3][13]~97_combout\);

-- Location: LABCELL_X55_Y26_N36
\s64[3][5]~98\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][5]~98_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~32_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~27_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~34_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~32_combout\ & ( (!\Equal0~0_combout\) # 
-- (\s64[2][0]~30_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~32_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~27_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~34_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~32_combout\ & ( 
-- (\Equal0~0_combout\ & \s64[2][0]~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~34_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~27_combout\,
	datad => \ALT_INV_s64[2][0]~30_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~32_combout\,
	combout => \s64[3][5]~98_combout\);

-- Location: MLABCELL_X54_Y25_N30
\s64[4][5]~99\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][5]~99_combout\ = ( \s64[3][5]~98_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & \s64[3][13]~97_combout\)) ) ) # ( !\s64[3][5]~98_combout\ & ( (!\Equal0~0_combout\ & (\B[3]~input_o\ & \s64[3][13]~97_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_s64[3][13]~97_combout\,
	dataf => \ALT_INV_s64[3][5]~98_combout\,
	combout => \s64[4][5]~99_combout\);

-- Location: LABCELL_X55_Y26_N8
\s64[3][21]~100\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][21]~100_combout\ = ( \Equal0~0_combout\ & ( (!\B[2]~input_o\ & (\s64[2][21]~43_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~39_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[2]~input_o\ & ((\s64[2][21]~43_combout\))) # (\B[2]~input_o\ & 
-- (\s64[2][25]~47_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][25]~47_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][21]~43_combout\,
	datad => \ALT_INV_s64[2][0]~39_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[3][21]~100_combout\);

-- Location: LABCELL_X55_Y26_N20
\s64[3][29]~101\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][29]~101_combout\ = ( \s64[2][29]~50_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[2][25]~47_combout\)))) ) ) # ( !\s64[2][29]~50_combout\ & ( (\B[2]~input_o\ & ((!\Equal0~0_combout\ & 
-- (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[2][25]~47_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000100011111111111010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill64~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][25]~47_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][29]~50_combout\,
	combout => \s64[3][29]~101_combout\);

-- Location: LABCELL_X55_Y26_N4
\s64[4][21]~102\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][21]~102_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\s64[3][29]~101_combout\))) # (\Equal0~0_combout\ & (\s64[3][13]~97_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s64[3][21]~100_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][21]~100_combout\,
	datab => \ALT_INV_s64[3][13]~97_combout\,
	datac => \ALT_INV_s64[3][29]~101_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][21]~102_combout\);

-- Location: LABCELL_X55_Y26_N12
\s32[3][13]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][13]~4_combout\ = ( \fill32~0_combout\ & ( \s64[2][0]~131_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & ((\s64[2][0]~40_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~28_combout\))) ) ) ) # ( !\fill32~0_combout\ & ( \s64[2][0]~131_combout\ 
-- & ( (!\Equal0~0_combout\ & (((!\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~40_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~28_combout\)))) ) ) ) # ( \fill32~0_combout\ & ( !\s64[2][0]~131_combout\ & ( (!\Equal0~0_combout\ & 
-- (((\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & ((\s64[2][0]~40_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~28_combout\)))) ) ) ) # ( !\fill32~0_combout\ & ( !\s64[2][0]~131_combout\ & ( (\Equal0~0_combout\ & ((!\B[2]~input_o\ & 
-- ((\s64[2][0]~40_combout\))) # (\B[2]~input_o\ & (\s64[2][0]~28_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~28_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~40_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_s64[2][0]~131_combout\,
	combout => \s32[3][13]~4_combout\);

-- Location: MLABCELL_X54_Y25_N32
\Y~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = ( \Y~13_combout\ & ( (!\Y~15_combout\ & (!\s64[3][5]~98_combout\ & ((!\Y~14_combout\) # (!\s32[3][13]~4_combout\)))) ) ) # ( !\Y~13_combout\ & ( (!\Y~15_combout\ & ((!\Y~14_combout\) # (!\s32[3][13]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011001000100011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~14_combout\,
	datab => \ALT_INV_Y~15_combout\,
	datac => \ALT_INV_s64[3][5]~98_combout\,
	datad => \ALT_INV_s32[3][13]~4_combout\,
	dataf => \ALT_INV_Y~13_combout\,
	combout => \Y~18_combout\);

-- Location: LABCELL_X55_Y25_N14
\Y~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = ( \Y~7_combout\ & ( \Y~6_combout\ & ( \s64[4][21]~102_combout\ ) ) ) # ( !\Y~7_combout\ & ( \Y~6_combout\ & ( \fill64~0_combout\ ) ) ) # ( \Y~7_combout\ & ( !\Y~6_combout\ & ( \s64[4][5]~99_combout\ ) ) ) # ( !\Y~7_combout\ & ( 
-- !\Y~6_combout\ & ( !\Y~18_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][5]~99_combout\,
	datab => \ALT_INV_s64[4][21]~102_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y~18_combout\,
	datae => \ALT_INV_Y~7_combout\,
	dataf => \ALT_INV_Y~6_combout\,
	combout => \Y~19_combout\);

-- Location: MLABCELL_X54_Y28_N4
\s64[3][6]~104\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][6]~104_combout\ = ( \s64[2][0]~58_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~53_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~60_combout\))) ) ) ) # ( !\s64[2][0]~58_combout\ & ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & 
-- (\s64[2][0]~53_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~60_combout\))) ) ) ) # ( \s64[2][0]~58_combout\ & ( !\B[2]~input_o\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~56_combout\) ) ) ) # ( !\s64[2][0]~58_combout\ & ( !\B[2]~input_o\ & ( 
-- (\Equal0~0_combout\ & \s64[2][0]~56_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][0]~53_combout\,
	datac => \ALT_INV_s64[2][0]~60_combout\,
	datad => \ALT_INV_s64[2][0]~56_combout\,
	datae => \ALT_INV_s64[2][0]~58_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][6]~104_combout\);

-- Location: LABCELL_X53_Y29_N18
\s64[3][14]~103\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][14]~103_combout\ = ( \s64[2][18]~63_combout\ & ( \s64[2][0]~55_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & (\s64[2][0]~64_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~54_combout\)))) ) ) ) # ( !\s64[2][18]~63_combout\ & ( 
-- \s64[2][0]~55_combout\ & ( (!\Equal0~0_combout\ & (((!\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~64_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~54_combout\))))) ) ) ) # ( \s64[2][18]~63_combout\ & ( !\s64[2][0]~55_combout\ 
-- & ( (!\Equal0~0_combout\ & (((\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~64_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~54_combout\))))) ) ) ) # ( !\s64[2][18]~63_combout\ & ( !\s64[2][0]~55_combout\ & ( (\Equal0~0_combout\ 
-- & ((!\B[2]~input_o\ & (\s64[2][0]~64_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~54_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~64_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_s64[2][0]~54_combout\,
	datae => \ALT_INV_s64[2][18]~63_combout\,
	dataf => \ALT_INV_s64[2][0]~55_combout\,
	combout => \s64[3][14]~103_combout\);

-- Location: MLABCELL_X54_Y28_N8
\s64[4][6]~105\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][6]~105_combout\ = ( \s64[3][14]~103_combout\ & ( (!\B[3]~input_o\ & ((\s64[3][6]~104_combout\))) # (\B[3]~input_o\ & (!\Equal0~0_combout\)) ) ) # ( !\s64[3][14]~103_combout\ & ( (!\B[3]~input_o\ & \s64[3][6]~104_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_s64[3][6]~104_combout\,
	dataf => \ALT_INV_s64[3][14]~103_combout\,
	combout => \s64[4][6]~105_combout\);

-- Location: LABCELL_X53_Y29_N16
\s32[3][14]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][14]~5_combout\ = ( \fill32~0_combout\ & ( \s64[2][0]~71_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & (\s64[2][0]~64_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~54_combout\)))) ) ) ) # ( !\fill32~0_combout\ & ( \s64[2][0]~71_combout\ & 
-- ( (!\Equal0~0_combout\ & (((!\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~64_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~54_combout\))))) ) ) ) # ( \fill32~0_combout\ & ( !\s64[2][0]~71_combout\ & ( (!\Equal0~0_combout\ & 
-- (((\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~64_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~54_combout\))))) ) ) ) # ( !\fill32~0_combout\ & ( !\s64[2][0]~71_combout\ & ( (\Equal0~0_combout\ & ((!\B[2]~input_o\ & 
-- (\s64[2][0]~64_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~54_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~64_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~54_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_s64[2][0]~71_combout\,
	combout => \s32[3][14]~5_combout\);

-- Location: MLABCELL_X54_Y25_N34
\Y~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = ( \s64[3][6]~104_combout\ & ( (!\Y~15_combout\ & (!\Y~13_combout\ & ((!\Y~14_combout\) # (!\s32[3][14]~5_combout\)))) ) ) # ( !\s64[3][6]~104_combout\ & ( (!\Y~15_combout\ & ((!\Y~14_combout\) # (!\s32[3][14]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~14_combout\,
	datab => \ALT_INV_Y~15_combout\,
	datac => \ALT_INV_s32[3][14]~5_combout\,
	datad => \ALT_INV_Y~13_combout\,
	dataf => \ALT_INV_s64[3][6]~104_combout\,
	combout => \Y~20_combout\);

-- Location: LABCELL_X53_Y29_N34
\s64[3][30]~107\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][30]~107_combout\ = ( \fill64~0_combout\ & ( (!\B[2]~input_o\ & (\s64[2][30]~68_combout\)) # (\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][26]~67_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[2]~input_o\ & (\s64[2][30]~68_combout\)) # 
-- (\B[2]~input_o\ & (((\Equal0~0_combout\ & \s64[2][26]~67_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000111010001000100011101110100011101110111010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][30]~68_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][26]~67_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[3][30]~107_combout\);

-- Location: LABCELL_X53_Y29_N10
\s64[3][22]~106\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][22]~106_combout\ = ( \s64[2][26]~67_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][22]~65_combout\)))) # (\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[2][18]~63_combout\))) ) ) # ( !\s64[2][26]~67_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][22]~65_combout\)))) # (\B[2]~input_o\ & (\s64[2][18]~63_combout\ & ((\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011010100111111001101010011111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][18]~63_combout\,
	datab => \ALT_INV_s64[2][22]~65_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[2][26]~67_combout\,
	combout => \s64[3][22]~106_combout\);

-- Location: MLABCELL_X54_Y28_N14
\s64[4][22]~108\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][22]~108_combout\ = ( \B[3]~input_o\ & ( \Equal0~0_combout\ & ( \s64[3][14]~103_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \Equal0~0_combout\ & ( \s64[3][22]~106_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\Equal0~0_combout\ & ( \s64[3][30]~107_combout\ ) ) 
-- ) # ( !\B[3]~input_o\ & ( !\Equal0~0_combout\ & ( \s64[3][22]~106_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s64[3][30]~107_combout\,
	datac => \ALT_INV_s64[3][14]~103_combout\,
	datad => \ALT_INV_s64[3][22]~106_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][22]~108_combout\);

-- Location: LABCELL_X55_Y25_N18
\Y~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = ( \s64[4][22]~108_combout\ & ( \Y~6_combout\ & ( (\Y~7_combout\) # (\fill64~0_combout\) ) ) ) # ( !\s64[4][22]~108_combout\ & ( \Y~6_combout\ & ( (\fill64~0_combout\ & !\Y~7_combout\) ) ) ) # ( \s64[4][22]~108_combout\ & ( !\Y~6_combout\ 
-- & ( (!\Y~7_combout\ & ((!\Y~20_combout\))) # (\Y~7_combout\ & (\s64[4][6]~105_combout\)) ) ) ) # ( !\s64[4][22]~108_combout\ & ( !\Y~6_combout\ & ( (!\Y~7_combout\ & ((!\Y~20_combout\))) # (\Y~7_combout\ & (\s64[4][6]~105_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010101111100000101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[4][6]~105_combout\,
	datab => \ALT_INV_fill64~0_combout\,
	datac => \ALT_INV_Y~20_combout\,
	datad => \ALT_INV_Y~7_combout\,
	datae => \ALT_INV_s64[4][22]~108_combout\,
	dataf => \ALT_INV_Y~6_combout\,
	combout => \Y~21_combout\);

-- Location: LABCELL_X53_Y26_N36
\s64[3][7]~110\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][7]~110_combout\ = ( \s64[2][0]~75_combout\ & ( \Equal0~0_combout\ & ( (!\B[2]~input_o\) # (\s64[2][0]~79_combout\) ) ) ) # ( !\s64[2][0]~75_combout\ & ( \Equal0~0_combout\ & ( (\s64[2][0]~79_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \s64[2][0]~75_combout\ & ( !\Equal0~0_combout\ & ( (!\B[2]~input_o\ & (\s64[2][0]~77_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~72_combout\))) ) ) ) # ( !\s64[2][0]~75_combout\ & ( !\Equal0~0_combout\ & ( (!\B[2]~input_o\ & (\s64[2][0]~77_combout\)) # 
-- (\B[2]~input_o\ & ((\s64[2][0]~72_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~77_combout\,
	datab => \ALT_INV_s64[2][0]~79_combout\,
	datac => \ALT_INV_s64[2][0]~72_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_s64[2][0]~75_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[3][7]~110_combout\);

-- Location: LABCELL_X53_Y26_N32
\s64[3][15]~109\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][15]~109_combout\ = ( \s64[2][19]~82_combout\ & ( \s64[2][0]~74_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & (\s64[2][0]~83_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~73_combout\)))) ) ) ) # ( !\s64[2][19]~82_combout\ & ( 
-- \s64[2][0]~74_combout\ & ( (!\Equal0~0_combout\ & (((!\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~83_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~73_combout\))))) ) ) ) # ( \s64[2][19]~82_combout\ & ( !\s64[2][0]~74_combout\ 
-- & ( (!\Equal0~0_combout\ & (((\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~83_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~73_combout\))))) ) ) ) # ( !\s64[2][19]~82_combout\ & ( !\s64[2][0]~74_combout\ & ( (\Equal0~0_combout\ 
-- & ((!\B[2]~input_o\ & (\s64[2][0]~83_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~73_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][0]~83_combout\,
	datac => \ALT_INV_s64[2][0]~73_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_s64[2][19]~82_combout\,
	dataf => \ALT_INV_s64[2][0]~74_combout\,
	combout => \s64[3][15]~109_combout\);

-- Location: MLABCELL_X54_Y25_N38
\s64[4][7]~111\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][7]~111_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & \s64[3][7]~110_combout\) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][7]~110_combout\)) # (\B[3]~input_o\ & ((\s64[3][15]~109_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_s64[3][7]~110_combout\,
	datad => \ALT_INV_s64[3][15]~109_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][7]~111_combout\);

-- Location: LABCELL_X53_Y26_N34
\s32[3][15]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][15]~6_combout\ = ( \fill32~0_combout\ & ( \s64[2][0]~90_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & (\s64[2][0]~83_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~73_combout\)))) ) ) ) # ( !\fill32~0_combout\ & ( \s64[2][0]~90_combout\ & 
-- ( (!\Equal0~0_combout\ & (((!\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~83_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~73_combout\))))) ) ) ) # ( \fill32~0_combout\ & ( !\s64[2][0]~90_combout\ & ( (!\Equal0~0_combout\ & 
-- (((\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~83_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~73_combout\))))) ) ) ) # ( !\fill32~0_combout\ & ( !\s64[2][0]~90_combout\ & ( (\Equal0~0_combout\ & ((!\B[2]~input_o\ & 
-- (\s64[2][0]~83_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~73_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][0]~83_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_s64[2][0]~73_combout\,
	datae => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_s64[2][0]~90_combout\,
	combout => \s32[3][15]~6_combout\);

-- Location: MLABCELL_X54_Y25_N26
\Y~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = ( \s64[3][7]~110_combout\ & ( (!\Y~13_combout\ & (!\Y~15_combout\ & ((!\Y~14_combout\) # (!\s32[3][15]~6_combout\)))) ) ) # ( !\s64[3][7]~110_combout\ & ( (!\Y~15_combout\ & ((!\Y~14_combout\) # (!\s32[3][15]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~13_combout\,
	datab => \ALT_INV_Y~15_combout\,
	datac => \ALT_INV_Y~14_combout\,
	datad => \ALT_INV_s32[3][15]~6_combout\,
	dataf => \ALT_INV_s64[3][7]~110_combout\,
	combout => \Y~22_combout\);

-- Location: LABCELL_X53_Y26_N28
\s64[3][23]~112\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][23]~112_combout\ = ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[2][27]~86_combout\)) # (\Equal0~0_combout\ & ((\s64[2][19]~82_combout\))) ) ) # ( !\B[2]~input_o\ & ( \s64[2][23]~84_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[2][23]~84_combout\,
	datac => \ALT_INV_s64[2][27]~86_combout\,
	datad => \ALT_INV_s64[2][19]~82_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][23]~112_combout\);

-- Location: LABCELL_X53_Y26_N24
\s64[3][31]~113\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][31]~113_combout\ = ( \B[2]~input_o\ & ( (!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[2][27]~86_combout\))) ) ) # ( !\B[2]~input_o\ & ( \s64[2][31]~87_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_fill64~0_combout\,
	datac => \ALT_INV_s64[2][27]~86_combout\,
	datad => \ALT_INV_s64[2][31]~87_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \s64[3][31]~113_combout\);

-- Location: MLABCELL_X54_Y25_N22
\s64[4][23]~114\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][23]~114_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[3][31]~113_combout\)) # (\Equal0~0_combout\ & ((\s64[3][15]~109_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][23]~112_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][23]~112_combout\,
	datac => \ALT_INV_s64[3][31]~113_combout\,
	datad => \ALT_INV_s64[3][15]~109_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][23]~114_combout\);

-- Location: LABCELL_X55_Y25_N0
\Y~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = ( \s64[4][23]~114_combout\ & ( \Y~6_combout\ & ( (\fill64~0_combout\) # (\Y~7_combout\) ) ) ) # ( !\s64[4][23]~114_combout\ & ( \Y~6_combout\ & ( (!\Y~7_combout\ & \fill64~0_combout\) ) ) ) # ( \s64[4][23]~114_combout\ & ( !\Y~6_combout\ 
-- & ( (!\Y~7_combout\ & ((!\Y~22_combout\))) # (\Y~7_combout\ & (\s64[4][7]~111_combout\)) ) ) ) # ( !\s64[4][23]~114_combout\ & ( !\Y~6_combout\ & ( (!\Y~7_combout\ & ((!\Y~22_combout\))) # (\Y~7_combout\ & (\s64[4][7]~111_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~7_combout\,
	datab => \ALT_INV_s64[4][7]~111_combout\,
	datac => \ALT_INV_Y~22_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_s64[4][23]~114_combout\,
	dataf => \ALT_INV_Y~6_combout\,
	combout => \Y~23_combout\);

-- Location: LABCELL_X55_Y28_N34
\Y~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = ( \Y~0_combout\ & ( (!\Equal0~0_combout\) # (\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~24_combout\);

-- Location: MLABCELL_X54_Y26_N12
\s64[4][24]~115\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][24]~115_combout\ = ( \fill64~0_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][24]~21_combout\)))) # (\B[3]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[3][16]~9_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][24]~21_combout\)))) # (\B[3]~input_o\ & (\Equal0~0_combout\ & (\s64[3][16]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][16]~9_combout\,
	datad => \ALT_INV_s64[3][24]~21_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[4][24]~115_combout\);

-- Location: MLABCELL_X54_Y26_N38
\Y~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = ( \s64[3][0]~26_combout\ & ( \B[3]~input_o\ & ( ((!\B[4]~input_o\ & \Equal0~0_combout\)) # (\fill32~0_combout\) ) ) ) # ( !\s64[3][0]~26_combout\ & ( \B[3]~input_o\ & ( (\fill32~0_combout\ & ((!\Equal0~0_combout\) # (\B[4]~input_o\))) ) ) 
-- ) # ( \s64[3][0]~26_combout\ & ( !\B[3]~input_o\ & ( (\B[4]~input_o\ & \fill32~0_combout\) ) ) ) # ( !\s64[3][0]~26_combout\ & ( !\B[3]~input_o\ & ( (\B[4]~input_o\ & \fill32~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100110011000100010011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_s64[3][0]~26_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y~26_combout\);

-- Location: MLABCELL_X54_Y29_N18
\Y~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = ( \B[5]~input_o\ & ( (\fill64~0_combout\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y~27_combout\);

-- Location: LABCELL_X55_Y28_N38
\Y~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = ( \ExtWord~input_o\ & ( !\Y~27_combout\ & ( (!\Y~26_combout\ & ((!\s64[3][8]~14_combout\) # (!\Y~13_combout\))) ) ) ) # ( !\ExtWord~input_o\ & ( !\Y~27_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][8]~14_combout\,
	datab => \ALT_INV_Y~26_combout\,
	datad => \ALT_INV_Y~13_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y~27_combout\,
	combout => \Y~28_combout\);

-- Location: MLABCELL_X54_Y26_N34
\s64[4][8]~116\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][8]~116_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[3][16]~9_combout\)) # (\Equal0~0_combout\ & ((\s64[3][0]~26_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][8]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][16]~9_combout\,
	datab => \ALT_INV_s64[3][8]~14_combout\,
	datac => \ALT_INV_s64[3][0]~26_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][8]~116_combout\);

-- Location: LABCELL_X55_Y28_N32
\Y~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = ( !\B[5]~input_o\ & ( (!\ExtWord~input_o\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y~25_combout\);

-- Location: MLABCELL_X54_Y28_N16
\Y~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = ( \s64[4][8]~116_combout\ & ( \Y~25_combout\ ) ) # ( !\s64[4][8]~116_combout\ & ( \Y~25_combout\ & ( (!\Y~28_combout\) # ((\Y~24_combout\ & \s64[4][24]~115_combout\)) ) ) ) # ( \s64[4][8]~116_combout\ & ( !\Y~25_combout\ & ( 
-- (!\Y~28_combout\) # ((\Y~24_combout\ & \s64[4][24]~115_combout\)) ) ) ) # ( !\s64[4][8]~116_combout\ & ( !\Y~25_combout\ & ( (!\Y~28_combout\) # ((\Y~24_combout\ & \s64[4][24]~115_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110001111100011111000111110001111100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~24_combout\,
	datab => \ALT_INV_s64[4][24]~115_combout\,
	datac => \ALT_INV_Y~28_combout\,
	datae => \ALT_INV_s64[4][8]~116_combout\,
	dataf => \ALT_INV_Y~25_combout\,
	combout => \Y~29_combout\);

-- Location: LABCELL_X55_Y29_N8
\s64[4][9]~118\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][9]~118_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[3][17]~44_combout\)) # (\Equal0~0_combout\ & ((\s64[3][1]~35_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][9]~31_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][9]~31_combout\,
	datab => \ALT_INV_s64[3][17]~44_combout\,
	datac => \ALT_INV_s64[3][1]~35_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][9]~118_combout\);

-- Location: LABCELL_X55_Y29_N36
\s64[4][25]~117\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][25]~117_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][17]~44_combout\)) ) ) # ( !\B[3]~input_o\ & ( \s64[3][25]~51_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][17]~44_combout\,
	datac => \ALT_INV_s64[3][25]~51_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][25]~117_combout\);

-- Location: LABCELL_X55_Y29_N20
\Y~72\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~72_combout\ = ( !\B[3]~input_o\ & ( ((\ExtWord~input_o\ & ((!\B[4]~input_o\ & ((\s32[3][9]~0_combout\))) # (\B[4]~input_o\ & (\fill32~0_combout\))))) ) ) # ( \B[3]~input_o\ & ( (\ExtWord~input_o\ & ((!\Equal0~0_combout\ & (((\fill32~0_combout\)))) # 
-- (\Equal0~0_combout\ & ((!\B[4]~input_o\ & (\s64[3][1]~35_combout\)) # (\B[4]~input_o\ & ((\fill32~0_combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001111001100110011010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][1]~35_combout\,
	datab => \ALT_INV_fill32~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	datag => \ALT_INV_s32[3][9]~0_combout\,
	combout => \Y~72_combout\);

-- Location: LABCELL_X55_Y29_N12
\Y~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = ( \s64[4][25]~117_combout\ & ( \Y~72_combout\ ) ) # ( !\s64[4][25]~117_combout\ & ( \Y~72_combout\ ) ) # ( \s64[4][25]~117_combout\ & ( !\Y~72_combout\ & ( (((\Y~25_combout\ & \s64[4][9]~118_combout\)) # (\Y~27_combout\)) # 
-- (\Y~24_combout\) ) ) ) # ( !\s64[4][25]~117_combout\ & ( !\Y~72_combout\ & ( ((\Y~25_combout\ & \s64[4][9]~118_combout\)) # (\Y~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111010101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~24_combout\,
	datab => \ALT_INV_Y~25_combout\,
	datac => \ALT_INV_s64[4][9]~118_combout\,
	datad => \ALT_INV_Y~27_combout\,
	datae => \ALT_INV_s64[4][25]~117_combout\,
	dataf => \ALT_INV_Y~72_combout\,
	combout => \Y~30_combout\);

-- Location: MLABCELL_X54_Y28_N10
\Y~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = ( !\B[4]~input_o\ & ( (!\B[3]~input_o\) # (\Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y~31_combout\);

-- Location: LABCELL_X55_Y29_N2
\Y~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & (\s64[3][2]~61_combout\)) # (\B[4]~input_o\ & ((\s32[3][10]~1_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s32[3][10]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][2]~61_combout\,
	datab => \ALT_INV_s32[3][10]~1_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y~32_combout\);

-- Location: LABCELL_X55_Y26_N30
\Y~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = ( \ExtWord~input_o\ & ( (!\Y~31_combout\ & (\fill32~0_combout\)) # (\Y~31_combout\ & ((\Y~32_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~31_combout\,
	datab => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_Y~32_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~33_combout\);

-- Location: MLABCELL_X54_Y29_N16
\s64[4][10]~120\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][10]~120_combout\ = ( \Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][10]~57_combout\)) # (\B[3]~input_o\ & ((\s64[3][2]~61_combout\))) ) ) # ( !\Equal0~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][10]~57_combout\)) # (\B[3]~input_o\ & 
-- ((\s64[3][18]~66_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][10]~57_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_s64[3][2]~61_combout\,
	datad => \ALT_INV_s64[3][18]~66_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[4][10]~120_combout\);

-- Location: MLABCELL_X54_Y29_N0
\s64[4][26]~119\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][26]~119_combout\ = ( \s64[3][26]~69_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][18]~66_combout\))) ) ) # ( !\s64[3][26]~69_combout\ & ( (\B[3]~input_o\ & ((!\Equal0~0_combout\ & 
-- ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][18]~66_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000110001000111001111110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][18]~66_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[3][26]~69_combout\,
	combout => \s64[4][26]~119_combout\);

-- Location: MLABCELL_X54_Y29_N22
\Y~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = ( \Y~25_combout\ & ( \Y~24_combout\ & ( (((\s64[4][26]~119_combout\) # (\s64[4][10]~120_combout\)) # (\Y~33_combout\)) # (\Y~27_combout\) ) ) ) # ( !\Y~25_combout\ & ( \Y~24_combout\ & ( ((\s64[4][26]~119_combout\) # (\Y~33_combout\)) # 
-- (\Y~27_combout\) ) ) ) # ( \Y~25_combout\ & ( !\Y~24_combout\ & ( ((\s64[4][10]~120_combout\) # (\Y~33_combout\)) # (\Y~27_combout\) ) ) ) # ( !\Y~25_combout\ & ( !\Y~24_combout\ & ( (\Y~33_combout\) # (\Y~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011111110111111101110111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~27_combout\,
	datab => \ALT_INV_Y~33_combout\,
	datac => \ALT_INV_s64[4][10]~120_combout\,
	datad => \ALT_INV_s64[4][26]~119_combout\,
	datae => \ALT_INV_Y~25_combout\,
	dataf => \ALT_INV_Y~24_combout\,
	combout => \Y~34_combout\);

-- Location: MLABCELL_X54_Y29_N26
\Y~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = ( \s64[3][3]~80_combout\ & ( ((\B[3]~input_o\ & !\B[4]~input_o\)) # (\s32[3][11]~2_combout\) ) ) # ( !\s64[3][3]~80_combout\ & ( (\s32[3][11]~2_combout\ & ((!\B[3]~input_o\) # (\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001111000011000000111100111111000011110011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_s32[3][11]~2_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s64[3][3]~80_combout\,
	combout => \Y~35_combout\);

-- Location: MLABCELL_X54_Y29_N34
\Y~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = ( \Y~31_combout\ & ( (\Y~35_combout\ & \ExtWord~input_o\) ) ) # ( !\Y~31_combout\ & ( (\fill32~0_combout\ & \ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_fill32~0_combout\,
	datac => \ALT_INV_Y~35_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y~31_combout\,
	combout => \Y~36_combout\);

-- Location: MLABCELL_X54_Y29_N24
\s64[4][27]~121\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][27]~121_combout\ = ( \fill64~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][27]~88_combout\)) # (\B[3]~input_o\ & (((!\Equal0~0_combout\) # (\s64[3][19]~85_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[3]~input_o\ & (\s64[3][27]~88_combout\)) # 
-- (\B[3]~input_o\ & (((\s64[3][19]~85_combout\ & \Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000111010001000100011101110111010001110111011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][27]~88_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_s64[3][19]~85_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[4][27]~121_combout\);

-- Location: MLABCELL_X54_Y29_N10
\s64[4][11]~122\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][11]~122_combout\ = ( \s64[3][11]~76_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[3][19]~85_combout\))) # (\Equal0~0_combout\ & (\s64[3][3]~80_combout\))) ) ) # ( !\s64[3][11]~76_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[3][19]~85_combout\))) # (\Equal0~0_combout\ & (\s64[3][3]~80_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_s64[3][3]~80_combout\,
	datad => \ALT_INV_s64[3][19]~85_combout\,
	dataf => \ALT_INV_s64[3][11]~76_combout\,
	combout => \s64[4][11]~122_combout\);

-- Location: MLABCELL_X54_Y29_N30
\Y~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~37_combout\ = ( \Y~25_combout\ & ( \s64[4][11]~122_combout\ ) ) # ( !\Y~25_combout\ & ( \s64[4][11]~122_combout\ & ( (((\Y~24_combout\ & \s64[4][27]~121_combout\)) # (\Y~27_combout\)) # (\Y~36_combout\) ) ) ) # ( \Y~25_combout\ & ( 
-- !\s64[4][11]~122_combout\ & ( (((\Y~24_combout\ & \s64[4][27]~121_combout\)) # (\Y~27_combout\)) # (\Y~36_combout\) ) ) ) # ( !\Y~25_combout\ & ( !\s64[4][11]~122_combout\ & ( (((\Y~24_combout\ & \s64[4][27]~121_combout\)) # (\Y~27_combout\)) # 
-- (\Y~36_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111100110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~24_combout\,
	datab => \ALT_INV_Y~36_combout\,
	datac => \ALT_INV_s64[4][27]~121_combout\,
	datad => \ALT_INV_Y~27_combout\,
	datae => \ALT_INV_Y~25_combout\,
	dataf => \ALT_INV_s64[4][11]~122_combout\,
	combout => \Y~37_combout\);

-- Location: LABCELL_X55_Y25_N4
\s64[4][28]~123\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][28]~123_combout\ = ( \s64[3][28]~95_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][20]~94_combout\))) ) ) # ( !\s64[3][28]~95_combout\ & ( (\B[3]~input_o\ & ((!\Equal0~0_combout\ & 
-- ((\fill64~0_combout\))) # (\Equal0~0_combout\ & (\s64[3][20]~94_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][20]~94_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[3][28]~95_combout\,
	combout => \s64[4][28]~123_combout\);

-- Location: LABCELL_X55_Y25_N6
\s64[4][12]~124\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][12]~124_combout\ = ( \s64[3][4]~92_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][12]~91_combout\)))) # (\B[3]~input_o\ & (((\Equal0~0_combout\)) # (\s64[3][20]~94_combout\))) ) ) # ( !\s64[3][4]~92_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][12]~91_combout\)))) # (\B[3]~input_o\ & (\s64[3][20]~94_combout\ & ((!\Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100001010000110110000101000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][20]~94_combout\,
	datac => \ALT_INV_s64[3][12]~91_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_s64[3][4]~92_combout\,
	combout => \s64[4][12]~124_combout\);

-- Location: MLABCELL_X54_Y25_N6
\Y~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~38_combout\ = ( \s64[3][4]~92_combout\ & ( ((\B[3]~input_o\ & !\B[4]~input_o\)) # (\s32[3][12]~3_combout\) ) ) # ( !\s64[3][4]~92_combout\ & ( (\s32[3][12]~3_combout\ & ((!\B[3]~input_o\) # (\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_s32[3][12]~3_combout\,
	dataf => \ALT_INV_s64[3][4]~92_combout\,
	combout => \Y~38_combout\);

-- Location: MLABCELL_X54_Y25_N10
\Y~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~39_combout\ = ( \ExtWord~input_o\ & ( (!\Y~31_combout\ & (\fill32~0_combout\)) # (\Y~31_combout\ & ((\Y~38_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~31_combout\,
	datab => \ALT_INV_fill32~0_combout\,
	datac => \ALT_INV_Y~38_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~39_combout\);

-- Location: LABCELL_X55_Y25_N28
\Y~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~40_combout\ = ( \Y~39_combout\ & ( \Y~25_combout\ ) ) # ( !\Y~39_combout\ & ( \Y~25_combout\ & ( (((\Y~24_combout\ & \s64[4][28]~123_combout\)) # (\s64[4][12]~124_combout\)) # (\Y~27_combout\) ) ) ) # ( \Y~39_combout\ & ( !\Y~25_combout\ ) ) # ( 
-- !\Y~39_combout\ & ( !\Y~25_combout\ & ( ((\Y~24_combout\ & \s64[4][28]~123_combout\)) # (\Y~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111111111111111111100110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~24_combout\,
	datab => \ALT_INV_Y~27_combout\,
	datac => \ALT_INV_s64[4][28]~123_combout\,
	datad => \ALT_INV_s64[4][12]~124_combout\,
	datae => \ALT_INV_Y~39_combout\,
	dataf => \ALT_INV_Y~25_combout\,
	combout => \Y~40_combout\);

-- Location: LABCELL_X55_Y26_N6
\s64[4][13]~126\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][13]~126_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[3][21]~100_combout\)) # (\Equal0~0_combout\ & ((\s64[3][5]~98_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][13]~97_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][21]~100_combout\,
	datab => \ALT_INV_s64[3][13]~97_combout\,
	datac => \ALT_INV_s64[3][5]~98_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][13]~126_combout\);

-- Location: MLABCELL_X54_Y25_N4
\Y~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~41_combout\ = ( \s64[3][5]~98_combout\ & ( ((\B[3]~input_o\ & !\B[4]~input_o\)) # (\s32[3][13]~4_combout\) ) ) # ( !\s64[3][5]~98_combout\ & ( (\s32[3][13]~4_combout\ & ((!\B[3]~input_o\) # (\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_s32[3][13]~4_combout\,
	dataf => \ALT_INV_s64[3][5]~98_combout\,
	combout => \Y~41_combout\);

-- Location: LABCELL_X55_Y26_N28
\Y~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~42_combout\ = ( \ExtWord~input_o\ & ( (!\Y~31_combout\ & (\fill32~0_combout\)) # (\Y~31_combout\ & ((\Y~41_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~31_combout\,
	datab => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_Y~41_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~42_combout\);

-- Location: LABCELL_X55_Y26_N22
\s64[4][29]~125\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][29]~125_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[3][21]~100_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][29]~101_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill64~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[3][21]~100_combout\,
	datad => \ALT_INV_s64[3][29]~101_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][29]~125_combout\);

-- Location: LABCELL_X55_Y26_N32
\Y~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~43_combout\ = ( \s64[4][29]~125_combout\ & ( \Y~27_combout\ ) ) # ( !\s64[4][29]~125_combout\ & ( \Y~27_combout\ ) ) # ( \s64[4][29]~125_combout\ & ( !\Y~27_combout\ & ( (((\Y~25_combout\ & \s64[4][13]~126_combout\)) # (\Y~24_combout\)) # 
-- (\Y~42_combout\) ) ) ) # ( !\s64[4][29]~125_combout\ & ( !\Y~27_combout\ & ( ((\Y~25_combout\ & \s64[4][13]~126_combout\)) # (\Y~42_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~25_combout\,
	datab => \ALT_INV_s64[4][13]~126_combout\,
	datac => \ALT_INV_Y~42_combout\,
	datad => \ALT_INV_Y~24_combout\,
	datae => \ALT_INV_s64[4][29]~125_combout\,
	dataf => \ALT_INV_Y~27_combout\,
	combout => \Y~43_combout\);

-- Location: MLABCELL_X54_Y25_N36
\Y~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~44_combout\ = ( \s32[3][14]~5_combout\ & ( (!\B[3]~input_o\) # ((\B[4]~input_o\) # (\s64[3][6]~104_combout\)) ) ) # ( !\s32[3][14]~5_combout\ & ( (\B[3]~input_o\ & (\s64[3][6]~104_combout\ & !\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000010111011111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_s64[3][6]~104_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_s32[3][14]~5_combout\,
	combout => \Y~44_combout\);

-- Location: MLABCELL_X54_Y25_N8
\Y~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~45_combout\ = (\ExtWord~input_o\ & ((!\Y~31_combout\ & (\fill32~0_combout\)) # (\Y~31_combout\ & ((\Y~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011100000010000001110000001000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~31_combout\,
	datab => \ALT_INV_fill32~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Y~44_combout\,
	combout => \Y~45_combout\);

-- Location: MLABCELL_X54_Y28_N22
\s64[4][30]~127\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][30]~127_combout\ = ( \s64[3][22]~106_combout\ & ( (!\B[3]~input_o\ & (((\s64[3][30]~107_combout\)))) # (\B[3]~input_o\ & (((\fill64~0_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[3][22]~106_combout\ & ( (!\B[3]~input_o\ & 
-- (((\s64[3][30]~107_combout\)))) # (\B[3]~input_o\ & (!\Equal0~0_combout\ & (\fill64~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_s64[3][30]~107_combout\,
	dataf => \ALT_INV_s64[3][22]~106_combout\,
	combout => \s64[4][30]~127_combout\);

-- Location: MLABCELL_X54_Y28_N20
\s64[4][14]~128\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][14]~128_combout\ = ( \s64[3][14]~103_combout\ & ( (!\B[3]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[3][22]~106_combout\))) # (\Equal0~0_combout\ & (\s64[3][6]~104_combout\))) ) ) # ( !\s64[3][14]~103_combout\ & ( (\B[3]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[3][22]~106_combout\))) # (\Equal0~0_combout\ & (\s64[3][6]~104_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_s64[3][6]~104_combout\,
	datad => \ALT_INV_s64[3][22]~106_combout\,
	dataf => \ALT_INV_s64[3][14]~103_combout\,
	combout => \s64[4][14]~128_combout\);

-- Location: MLABCELL_X54_Y28_N26
\Y~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~46_combout\ = ( \Y~27_combout\ & ( \Y~25_combout\ ) ) # ( !\Y~27_combout\ & ( \Y~25_combout\ & ( (((\Y~24_combout\ & \s64[4][30]~127_combout\)) # (\s64[4][14]~128_combout\)) # (\Y~45_combout\) ) ) ) # ( \Y~27_combout\ & ( !\Y~25_combout\ ) ) # ( 
-- !\Y~27_combout\ & ( !\Y~25_combout\ & ( ((\Y~24_combout\ & \s64[4][30]~127_combout\)) # (\Y~45_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111111111111111111100110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~24_combout\,
	datab => \ALT_INV_Y~45_combout\,
	datac => \ALT_INV_s64[4][30]~127_combout\,
	datad => \ALT_INV_s64[4][14]~128_combout\,
	datae => \ALT_INV_Y~27_combout\,
	dataf => \ALT_INV_Y~25_combout\,
	combout => \Y~46_combout\);

-- Location: MLABCELL_X54_Y25_N0
\Y~68\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~68_combout\ = ( !\B[3]~input_o\ & ( ((\ExtWord~input_o\ & ((!\B[4]~input_o\ & ((\s32[3][15]~6_combout\))) # (\B[4]~input_o\ & (\fill32~0_combout\))))) ) ) # ( \B[3]~input_o\ & ( (\ExtWord~input_o\ & ((!\Equal0~0_combout\ & (((\fill32~0_combout\)))) # 
-- (\Equal0~0_combout\ & ((!\B[4]~input_o\ & (\s64[3][7]~110_combout\)) # (\B[4]~input_o\ & ((\fill32~0_combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001111001100110011010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][7]~110_combout\,
	datab => \ALT_INV_fill32~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	datag => \ALT_INV_s32[3][15]~6_combout\,
	combout => \Y~68_combout\);

-- Location: MLABCELL_X54_Y25_N28
\s64[4][31]~129\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][31]~129_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\fill64~0_combout\)) # (\Equal0~0_combout\ & ((\s64[3][23]~112_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][31]~113_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][31]~113_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_s64[3][23]~112_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][31]~129_combout\);

-- Location: LABCELL_X55_Y28_N8
\Y~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~47_combout\ = ( !\Equal0~0_combout\ & ( \Y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Y~47_combout\);

-- Location: MLABCELL_X54_Y25_N20
\s64[4][15]~130\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[4][15]~130_combout\ = ( \B[3]~input_o\ & ( (!\Equal0~0_combout\ & (\s64[3][23]~112_combout\)) # (\Equal0~0_combout\ & ((\s64[3][7]~110_combout\))) ) ) # ( !\B[3]~input_o\ & ( \s64[3][15]~109_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[3][23]~112_combout\,
	datac => \ALT_INV_s64[3][7]~110_combout\,
	datad => \ALT_INV_s64[3][15]~109_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \s64[4][15]~130_combout\);

-- Location: MLABCELL_X54_Y25_N14
\Y~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~48_combout\ = ( \Y~47_combout\ & ( \s64[4][15]~130_combout\ & ( (((\s64[4][31]~129_combout\) # (\Y~27_combout\)) # (\Y~25_combout\)) # (\Y~68_combout\) ) ) ) # ( !\Y~47_combout\ & ( \s64[4][15]~130_combout\ & ( ((\Y~27_combout\) # (\Y~25_combout\)) # 
-- (\Y~68_combout\) ) ) ) # ( \Y~47_combout\ & ( !\s64[4][15]~130_combout\ & ( ((\s64[4][31]~129_combout\) # (\Y~27_combout\)) # (\Y~68_combout\) ) ) ) # ( !\Y~47_combout\ & ( !\s64[4][15]~130_combout\ & ( (\Y~27_combout\) # (\Y~68_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111111111111101111111011111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~68_combout\,
	datab => \ALT_INV_Y~25_combout\,
	datac => \ALT_INV_Y~27_combout\,
	datad => \ALT_INV_s64[4][31]~129_combout\,
	datae => \ALT_INV_Y~47_combout\,
	dataf => \ALT_INV_s64[4][15]~130_combout\,
	combout => \Y~48_combout\);

-- Location: MLABCELL_X54_Y29_N14
\Y~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~50_combout\ = ( \fill64~0_combout\ & ( \B[5]~input_o\ & ( (\ExtWord~input_o\ & !\Y~68_combout\) ) ) ) # ( !\fill64~0_combout\ & ( \B[5]~input_o\ & ( !\Y~68_combout\ ) ) ) # ( \fill64~0_combout\ & ( !\B[5]~input_o\ & ( (!\Y~68_combout\ & 
-- (((!\B[4]~input_o\) # (\Equal0~0_combout\)) # (\ExtWord~input_o\))) ) ) ) # ( !\fill64~0_combout\ & ( !\B[5]~input_o\ & ( !\Y~68_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110001001100110011001100110011000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Y~68_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_fill64~0_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y~50_combout\);

-- Location: MLABCELL_X54_Y26_N14
\Y~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~49_combout\ = ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Equal0~0_combout\ & (\Y~0_combout\ & \s64[2][0]~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_s64[2][0]~25_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Y~49_combout\);

-- Location: MLABCELL_X54_Y26_N16
\Y~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~51_combout\ = ( \Y~25_combout\ & ( (!\Y~50_combout\) # ((\s64[4][16]~22_combout\) # (\Y~49_combout\)) ) ) # ( !\Y~25_combout\ & ( (!\Y~50_combout\) # (\Y~49_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~50_combout\,
	datab => \ALT_INV_Y~49_combout\,
	datac => \ALT_INV_s64[4][16]~22_combout\,
	dataf => \ALT_INV_Y~25_combout\,
	combout => \Y~51_combout\);

-- Location: MLABCELL_X54_Y29_N4
\Y~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~52_combout\ = ( !\B[5]~input_o\ & ( (\Equal0~0_combout\ & (!\ExtWord~input_o\ & \B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y~52_combout\);

-- Location: LABCELL_X55_Y29_N16
\Y~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~53_combout\ = ( \s64[4][17]~52_combout\ & ( (!\Y~50_combout\) # (((\Y~52_combout\ & \s64[4][1]~36_combout\)) # (\Y~25_combout\)) ) ) # ( !\s64[4][17]~52_combout\ & ( (!\Y~50_combout\) # ((\Y~52_combout\ & \s64[4][1]~36_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101110011011100110111001101111111111100110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~52_combout\,
	datab => \ALT_INV_Y~50_combout\,
	datac => \ALT_INV_s64[4][1]~36_combout\,
	datad => \ALT_INV_Y~25_combout\,
	dataf => \ALT_INV_s64[4][17]~52_combout\,
	combout => \Y~53_combout\);

-- Location: LABCELL_X55_Y29_N30
\Y~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~54_combout\ = ( \s64[4][2]~62_combout\ & ( ((!\Y~50_combout\) # ((\s64[4][18]~70_combout\ & \Y~25_combout\))) # (\Y~52_combout\) ) ) # ( !\s64[4][2]~62_combout\ & ( (!\Y~50_combout\) # ((\s64[4][18]~70_combout\ & \Y~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110011111100001111001111110101111101111111010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~52_combout\,
	datab => \ALT_INV_s64[4][18]~70_combout\,
	datac => \ALT_INV_Y~50_combout\,
	datad => \ALT_INV_Y~25_combout\,
	dataf => \ALT_INV_s64[4][2]~62_combout\,
	combout => \Y~54_combout\);

-- Location: LABCELL_X55_Y25_N32
\Y~55\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~55_combout\ = ( \s64[4][3]~81_combout\ & ( (!\Y~50_combout\) # (((\Y~25_combout\ & \s64[4][19]~89_combout\)) # (\Y~52_combout\)) ) ) # ( !\s64[4][3]~81_combout\ & ( (!\Y~50_combout\) # ((\Y~25_combout\ & \s64[4][19]~89_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011101110011001101110111001111110111111100111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~25_combout\,
	datab => \ALT_INV_Y~50_combout\,
	datac => \ALT_INV_Y~52_combout\,
	datad => \ALT_INV_s64[4][19]~89_combout\,
	dataf => \ALT_INV_s64[4][3]~81_combout\,
	combout => \Y~55_combout\);

-- Location: LABCELL_X55_Y25_N34
\Y~56\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~56_combout\ = ( \s64[4][20]~96_combout\ & ( ((!\Y~50_combout\) # ((\s64[4][4]~93_combout\ & \Y~52_combout\))) # (\Y~25_combout\) ) ) # ( !\s64[4][20]~96_combout\ & ( (!\Y~50_combout\) # ((\s64[4][4]~93_combout\ & \Y~52_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111110011001100111111011101110111111101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~25_combout\,
	datab => \ALT_INV_Y~50_combout\,
	datac => \ALT_INV_s64[4][4]~93_combout\,
	datad => \ALT_INV_Y~52_combout\,
	dataf => \ALT_INV_s64[4][20]~96_combout\,
	combout => \Y~56_combout\);

-- Location: LABCELL_X55_Y26_N18
\Y~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~57_combout\ = ( \s64[4][21]~102_combout\ & ( ((!\Y~50_combout\) # ((\Y~52_combout\ & \s64[4][5]~99_combout\))) # (\Y~25_combout\) ) ) # ( !\s64[4][21]~102_combout\ & ( (!\Y~50_combout\) # ((\Y~52_combout\ & \s64[4][5]~99_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000011111111110000001111111111010101111111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~25_combout\,
	datab => \ALT_INV_Y~52_combout\,
	datac => \ALT_INV_s64[4][5]~99_combout\,
	datad => \ALT_INV_Y~50_combout\,
	dataf => \ALT_INV_s64[4][21]~102_combout\,
	combout => \Y~57_combout\);

-- Location: LABCELL_X55_Y25_N38
\Y~58\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~58_combout\ = ( \s64[4][6]~105_combout\ & ( (!\Y~50_combout\) # (((\Y~25_combout\ & \s64[4][22]~108_combout\)) # (\Y~52_combout\)) ) ) # ( !\s64[4][6]~105_combout\ & ( (!\Y~50_combout\) # ((\Y~25_combout\ & \s64[4][22]~108_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011101110011001101110111001111110111111100111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~25_combout\,
	datab => \ALT_INV_Y~50_combout\,
	datac => \ALT_INV_Y~52_combout\,
	datad => \ALT_INV_s64[4][22]~108_combout\,
	dataf => \ALT_INV_s64[4][6]~105_combout\,
	combout => \Y~58_combout\);

-- Location: MLABCELL_X54_Y25_N16
\Y~59\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~59_combout\ = ( \s64[4][23]~114_combout\ & ( (!\Y~50_combout\) # (((\Y~52_combout\ & \s64[4][7]~111_combout\)) # (\Y~25_combout\)) ) ) # ( !\s64[4][23]~114_combout\ & ( (!\Y~50_combout\) # ((\Y~52_combout\ & \s64[4][7]~111_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011111111111010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~50_combout\,
	datab => \ALT_INV_Y~52_combout\,
	datac => \ALT_INV_s64[4][7]~111_combout\,
	datad => \ALT_INV_Y~25_combout\,
	dataf => \ALT_INV_s64[4][23]~114_combout\,
	combout => \Y~59_combout\);

-- Location: MLABCELL_X54_Y28_N28
\Y~60\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~60_combout\ = ( \s64[4][8]~116_combout\ & ( \Y~25_combout\ & ( (!\Y~50_combout\) # ((\s64[4][24]~115_combout\) # (\Y~52_combout\)) ) ) ) # ( !\s64[4][8]~116_combout\ & ( \Y~25_combout\ & ( (!\Y~50_combout\) # (\s64[4][24]~115_combout\) ) ) ) # ( 
-- \s64[4][8]~116_combout\ & ( !\Y~25_combout\ & ( (!\Y~50_combout\) # (\Y~52_combout\) ) ) ) # ( !\s64[4][8]~116_combout\ & ( !\Y~25_combout\ & ( !\Y~50_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101110111011101110101010111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~50_combout\,
	datab => \ALT_INV_Y~52_combout\,
	datad => \ALT_INV_s64[4][24]~115_combout\,
	datae => \ALT_INV_s64[4][8]~116_combout\,
	dataf => \ALT_INV_Y~25_combout\,
	combout => \Y~60_combout\);

-- Location: LABCELL_X55_Y29_N18
\Y~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~61_combout\ = ( \s64[4][9]~118_combout\ & ( ((!\Y~50_combout\) # ((\Y~25_combout\ & \s64[4][25]~117_combout\))) # (\Y~52_combout\) ) ) # ( !\s64[4][9]~118_combout\ & ( (!\Y~50_combout\) # ((\Y~25_combout\ & \s64[4][25]~117_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111110011001100111111011101110111111101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~52_combout\,
	datab => \ALT_INV_Y~50_combout\,
	datac => \ALT_INV_Y~25_combout\,
	datad => \ALT_INV_s64[4][25]~117_combout\,
	dataf => \ALT_INV_s64[4][9]~118_combout\,
	combout => \Y~61_combout\);

-- Location: MLABCELL_X54_Y29_N36
\Y~62\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~62_combout\ = ( \s64[4][10]~120_combout\ & ( ((!\Y~50_combout\) # ((\s64[4][26]~119_combout\ & \Y~25_combout\))) # (\Y~52_combout\) ) ) # ( !\s64[4][10]~120_combout\ & ( (!\Y~50_combout\) # ((\s64[4][26]~119_combout\ & \Y~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111110011001100111111011101110111111101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~52_combout\,
	datab => \ALT_INV_Y~50_combout\,
	datac => \ALT_INV_s64[4][26]~119_combout\,
	datad => \ALT_INV_Y~25_combout\,
	dataf => \ALT_INV_s64[4][10]~120_combout\,
	combout => \Y~62_combout\);

-- Location: MLABCELL_X54_Y29_N38
\Y~63\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~63_combout\ = ( \s64[4][27]~121_combout\ & ( (!\Y~50_combout\) # (((\Y~52_combout\ & \s64[4][11]~122_combout\)) # (\Y~25_combout\)) ) ) # ( !\s64[4][27]~121_combout\ & ( (!\Y~50_combout\) # ((\Y~52_combout\ & \s64[4][11]~122_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101110011011100110111001101111111111100110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~52_combout\,
	datab => \ALT_INV_Y~50_combout\,
	datac => \ALT_INV_s64[4][11]~122_combout\,
	datad => \ALT_INV_Y~25_combout\,
	dataf => \ALT_INV_s64[4][27]~121_combout\,
	combout => \Y~63_combout\);

-- Location: LABCELL_X55_Y25_N36
\Y~64\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~64_combout\ = ( \s64[4][12]~124_combout\ & ( (!\Y~50_combout\) # (((\Y~25_combout\ & \s64[4][28]~123_combout\)) # (\Y~52_combout\)) ) ) # ( !\s64[4][12]~124_combout\ & ( (!\Y~50_combout\) # ((\Y~25_combout\ & \s64[4][28]~123_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101110011011100110111001101111111111100110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~25_combout\,
	datab => \ALT_INV_Y~50_combout\,
	datac => \ALT_INV_s64[4][28]~123_combout\,
	datad => \ALT_INV_Y~52_combout\,
	dataf => \ALT_INV_s64[4][12]~124_combout\,
	combout => \Y~64_combout\);

-- Location: LABCELL_X55_Y26_N16
\Y~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~65_combout\ = ( \s64[4][13]~126_combout\ & ( ((!\Y~50_combout\) # ((\Y~25_combout\ & \s64[4][29]~125_combout\))) # (\Y~52_combout\) ) ) # ( !\s64[4][13]~126_combout\ & ( (!\Y~50_combout\) # ((\Y~25_combout\ & \s64[4][29]~125_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110101111100001111010111110011111101111111001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~25_combout\,
	datab => \ALT_INV_Y~52_combout\,
	datac => \ALT_INV_Y~50_combout\,
	datad => \ALT_INV_s64[4][29]~125_combout\,
	dataf => \ALT_INV_s64[4][13]~126_combout\,
	combout => \Y~65_combout\);

-- Location: MLABCELL_X54_Y28_N34
\Y~66\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~66_combout\ = ( \Y~50_combout\ & ( \Y~25_combout\ & ( ((\Y~52_combout\ & \s64[4][14]~128_combout\)) # (\s64[4][30]~127_combout\) ) ) ) # ( !\Y~50_combout\ & ( \Y~25_combout\ ) ) # ( \Y~50_combout\ & ( !\Y~25_combout\ & ( (\Y~52_combout\ & 
-- \s64[4][14]~128_combout\) ) ) ) # ( !\Y~50_combout\ & ( !\Y~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000111111111111111111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s64[4][30]~127_combout\,
	datac => \ALT_INV_Y~52_combout\,
	datad => \ALT_INV_s64[4][14]~128_combout\,
	datae => \ALT_INV_Y~50_combout\,
	dataf => \ALT_INV_Y~25_combout\,
	combout => \Y~66_combout\);

-- Location: MLABCELL_X54_Y25_N18
\Y~67\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~67_combout\ = ( \s64[4][15]~130_combout\ & ( (!\Y~50_combout\) # (((\s64[4][31]~129_combout\ & \Y~25_combout\)) # (\Y~52_combout\)) ) ) # ( !\s64[4][15]~130_combout\ & ( (!\Y~50_combout\) # ((\s64[4][31]~129_combout\ & \Y~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101010101010111110111011101111111011101110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~50_combout\,
	datab => \ALT_INV_Y~52_combout\,
	datac => \ALT_INV_s64[4][31]~129_combout\,
	datad => \ALT_INV_Y~25_combout\,
	dataf => \ALT_INV_s64[4][15]~130_combout\,
	combout => \Y~67_combout\);

-- Location: IOIBUF_X38_Y56_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X56_Y56_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X3_Y56_N32
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X36_Y56_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y7_N1
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X12_Y56_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X17_Y56_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X41_Y0_N94
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X52_Y0_N63
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X42_Y56_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X59_Y10_N32
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X49_Y56_N63
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X54_Y0_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X3_Y56_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X32_Y0_N63
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X59_Y7_N63
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X7_Y56_N32
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X52_Y0_N94
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X12_Y56_N1
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X33_Y0_N94
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X23_Y56_N32
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X35_Y56_N63
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X13_Y0_N32
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;
END structure;


