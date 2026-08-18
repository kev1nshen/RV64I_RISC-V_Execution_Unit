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

-- DATE "04/08/2026 16:14:13"

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
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic;
	Y : OUT std_logic_vector(15 DOWNTO 0)
	);
END ShiftUnit;

-- Design Ports Information
-- B[6]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \s64[2][0]~5_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \s64[1][10]~1_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \s64[1][12]~6_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \s64[1][14]~7_combout\ : std_logic;
SIGNAL \s64[2][12]~8_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \s64[1][8]~0_combout\ : std_logic;
SIGNAL \s64[2][0]~2_combout\ : std_logic;
SIGNAL \s64[2][0]~3_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \s64[2][0]~4_combout\ : std_logic;
SIGNAL \s64[3][8]~9_combout\ : std_logic;
SIGNAL \fill32~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \s64[2][0]~11_combout\ : std_logic;
SIGNAL \s64[2][0]~10_combout\ : std_logic;
SIGNAL \s64[2][0]~12_combout\ : std_logic;
SIGNAL \s64[3][0]~13_combout\ : std_logic;
SIGNAL \fill64~0_combout\ : std_logic;
SIGNAL \Y~41_combout\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \s64[2][0]~14_combout\ : std_logic;
SIGNAL \s64[2][0]~15_combout\ : std_logic;
SIGNAL \s64[2][0]~16_combout\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \s64[2][0]~17_combout\ : std_logic;
SIGNAL \s64[2][0]~18_combout\ : std_logic;
SIGNAL \s64[3][1]~19_combout\ : std_logic;
SIGNAL \s64[1][11]~21_combout\ : std_logic;
SIGNAL \s64[1][15]~25_combout\ : std_logic;
SIGNAL \s64[1][13]~24_combout\ : std_logic;
SIGNAL \s64[2][13]~26_combout\ : std_logic;
SIGNAL \s64[2][0]~23_combout\ : std_logic;
SIGNAL \s64[1][9]~20_combout\ : std_logic;
SIGNAL \s64[2][0]~22_combout\ : std_logic;
SIGNAL \s64[3][9]~27_combout\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \s64[2][0]~30_combout\ : std_logic;
SIGNAL \s64[2][0]~31_combout\ : std_logic;
SIGNAL \s64[2][0]~29_combout\ : std_logic;
SIGNAL \s64[3][2]~32_combout\ : std_logic;
SIGNAL \s64[2][0]~34_combout\ : std_logic;
SIGNAL \s64[2][14]~35_combout\ : std_logic;
SIGNAL \s64[2][10]~33_combout\ : std_logic;
SIGNAL \s64[3][10]~36_combout\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \s64[2][0]~28_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \s64[2][15]~44_combout\ : std_logic;
SIGNAL \s64[2][0]~43_combout\ : std_logic;
SIGNAL \s64[2][11]~42_combout\ : std_logic;
SIGNAL \s64[3][11]~45_combout\ : std_logic;
SIGNAL \s64[2][0]~38_combout\ : std_logic;
SIGNAL \s64[2][0]~39_combout\ : std_logic;
SIGNAL \s64[2][0]~40_combout\ : std_logic;
SIGNAL \s64[3][3]~41_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \s64[2][0]~37_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \s64[3][4]~46_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \s64[3][12]~47_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \s64[2][0]~48_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \s64[3][5]~49_combout\ : std_logic;
SIGNAL \s64[3][13]~50_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \s64[3][6]~51_combout\ : std_logic;
SIGNAL \s64[3][14]~52_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \s64[3][15]~53_combout\ : std_logic;
SIGNAL \s64[3][7]~54_combout\ : std_logic;
SIGNAL \s32[3][7]~0_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \Y~40_combout\ : std_logic;
SIGNAL \Y~32_combout\ : std_logic;
SIGNAL \Y~33_combout\ : std_logic;
SIGNAL \Y~34_combout\ : std_logic;
SIGNAL \Y~35_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \Y~37_combout\ : std_logic;
SIGNAL \Y~38_combout\ : std_logic;
SIGNAL \Y~39_combout\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_Y~40_combout\ : std_logic;
SIGNAL \ALT_INV_Y~31_combout\ : std_logic;
SIGNAL \ALT_INV_Y~29_combout\ : std_logic;
SIGNAL \ALT_INV_s32[3][7]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~28_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][7]~54_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][15]~53_combout\ : std_logic;
SIGNAL \ALT_INV_Y~26_combout\ : std_logic;
SIGNAL \ALT_INV_Y~25_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][14]~52_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][6]~51_combout\ : std_logic;
SIGNAL \ALT_INV_Y~23_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][13]~50_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][5]~49_combout\ : std_logic;
SIGNAL \ALT_INV_Y~22_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~48_combout\ : std_logic;
SIGNAL \ALT_INV_Y~20_combout\ : std_logic;
SIGNAL \ALT_INV_Y~19_combout\ : std_logic;
SIGNAL \ALT_INV_Y~18_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][12]~47_combout\ : std_logic;
SIGNAL \ALT_INV_Y~17_combout\ : std_logic;
SIGNAL \ALT_INV_Y~16_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][4]~46_combout\ : std_logic;
SIGNAL \ALT_INV_Y~14_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][11]~45_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][15]~44_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~43_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][11]~42_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][3]~41_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~40_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~39_combout\ : std_logic;
SIGNAL \ALT_INV_Y~13_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~38_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~37_combout\ : std_logic;
SIGNAL \ALT_INV_Y~11_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][10]~36_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][14]~35_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~34_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][10]~33_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][2]~32_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~31_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~30_combout\ : std_logic;
SIGNAL \ALT_INV_Y~10_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~29_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~28_combout\ : std_logic;
SIGNAL \ALT_INV_Y~8_combout\ : std_logic;
SIGNAL \ALT_INV_Y~7_combout\ : std_logic;
SIGNAL \ALT_INV_Y~6_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][9]~27_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][13]~26_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][15]~25_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][13]~24_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~23_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~22_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][11]~21_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][9]~20_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][1]~19_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~18_combout\ : std_logic;
SIGNAL \ALT_INV_Y~5_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Y~4_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~16_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~15_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~14_combout\ : std_logic;
SIGNAL \ALT_INV_fill64~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~2_combout\ : std_logic;
SIGNAL \ALT_INV_fill32~0_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][0]~13_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~12_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~11_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Y~1_combout\ : std_logic;
SIGNAL \ALT_INV_s64[3][8]~9_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][12]~8_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][14]~7_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][12]~6_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_s64[2][0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][10]~1_combout\ : std_logic;
SIGNAL \ALT_INV_s64[1][8]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~41_combout\ : std_logic;

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
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_Y~40_combout\ <= NOT \Y~40_combout\;
\ALT_INV_Y~31_combout\ <= NOT \Y~31_combout\;
\ALT_INV_Y~29_combout\ <= NOT \Y~29_combout\;
\ALT_INV_s32[3][7]~0_combout\ <= NOT \s32[3][7]~0_combout\;
\ALT_INV_Y~28_combout\ <= NOT \Y~28_combout\;
\ALT_INV_s64[3][7]~54_combout\ <= NOT \s64[3][7]~54_combout\;
\ALT_INV_s64[3][15]~53_combout\ <= NOT \s64[3][15]~53_combout\;
\ALT_INV_Y~26_combout\ <= NOT \Y~26_combout\;
\ALT_INV_Y~25_combout\ <= NOT \Y~25_combout\;
\ALT_INV_s64[3][14]~52_combout\ <= NOT \s64[3][14]~52_combout\;
\ALT_INV_s64[3][6]~51_combout\ <= NOT \s64[3][6]~51_combout\;
\ALT_INV_Y~23_combout\ <= NOT \Y~23_combout\;
\ALT_INV_s64[3][13]~50_combout\ <= NOT \s64[3][13]~50_combout\;
\ALT_INV_s64[3][5]~49_combout\ <= NOT \s64[3][5]~49_combout\;
\ALT_INV_Y~22_combout\ <= NOT \Y~22_combout\;
\ALT_INV_s64[2][0]~48_combout\ <= NOT \s64[2][0]~48_combout\;
\ALT_INV_Y~20_combout\ <= NOT \Y~20_combout\;
\ALT_INV_Y~19_combout\ <= NOT \Y~19_combout\;
\ALT_INV_Y~18_combout\ <= NOT \Y~18_combout\;
\ALT_INV_s64[3][12]~47_combout\ <= NOT \s64[3][12]~47_combout\;
\ALT_INV_Y~17_combout\ <= NOT \Y~17_combout\;
\ALT_INV_Y~16_combout\ <= NOT \Y~16_combout\;
\ALT_INV_s64[3][4]~46_combout\ <= NOT \s64[3][4]~46_combout\;
\ALT_INV_Y~14_combout\ <= NOT \Y~14_combout\;
\ALT_INV_s64[3][11]~45_combout\ <= NOT \s64[3][11]~45_combout\;
\ALT_INV_s64[2][15]~44_combout\ <= NOT \s64[2][15]~44_combout\;
\ALT_INV_s64[2][0]~43_combout\ <= NOT \s64[2][0]~43_combout\;
\ALT_INV_s64[2][11]~42_combout\ <= NOT \s64[2][11]~42_combout\;
\ALT_INV_s64[3][3]~41_combout\ <= NOT \s64[3][3]~41_combout\;
\ALT_INV_s64[2][0]~40_combout\ <= NOT \s64[2][0]~40_combout\;
\ALT_INV_s64[2][0]~39_combout\ <= NOT \s64[2][0]~39_combout\;
\ALT_INV_Y~13_combout\ <= NOT \Y~13_combout\;
\ALT_INV_s64[2][0]~38_combout\ <= NOT \s64[2][0]~38_combout\;
\ALT_INV_s64[2][0]~37_combout\ <= NOT \s64[2][0]~37_combout\;
\ALT_INV_Y~11_combout\ <= NOT \Y~11_combout\;
\ALT_INV_s64[3][10]~36_combout\ <= NOT \s64[3][10]~36_combout\;
\ALT_INV_s64[2][14]~35_combout\ <= NOT \s64[2][14]~35_combout\;
\ALT_INV_s64[2][0]~34_combout\ <= NOT \s64[2][0]~34_combout\;
\ALT_INV_s64[2][10]~33_combout\ <= NOT \s64[2][10]~33_combout\;
\ALT_INV_s64[3][2]~32_combout\ <= NOT \s64[3][2]~32_combout\;
\ALT_INV_s64[2][0]~31_combout\ <= NOT \s64[2][0]~31_combout\;
\ALT_INV_s64[2][0]~30_combout\ <= NOT \s64[2][0]~30_combout\;
\ALT_INV_Y~10_combout\ <= NOT \Y~10_combout\;
\ALT_INV_s64[2][0]~29_combout\ <= NOT \s64[2][0]~29_combout\;
\ALT_INV_s64[2][0]~28_combout\ <= NOT \s64[2][0]~28_combout\;
\ALT_INV_Y~8_combout\ <= NOT \Y~8_combout\;
\ALT_INV_Y~7_combout\ <= NOT \Y~7_combout\;
\ALT_INV_Y~6_combout\ <= NOT \Y~6_combout\;
\ALT_INV_s64[3][9]~27_combout\ <= NOT \s64[3][9]~27_combout\;
\ALT_INV_s64[2][13]~26_combout\ <= NOT \s64[2][13]~26_combout\;
\ALT_INV_s64[1][15]~25_combout\ <= NOT \s64[1][15]~25_combout\;
\ALT_INV_s64[1][13]~24_combout\ <= NOT \s64[1][13]~24_combout\;
\ALT_INV_s64[2][0]~23_combout\ <= NOT \s64[2][0]~23_combout\;
\ALT_INV_s64[2][0]~22_combout\ <= NOT \s64[2][0]~22_combout\;
\ALT_INV_s64[1][11]~21_combout\ <= NOT \s64[1][11]~21_combout\;
\ALT_INV_s64[1][9]~20_combout\ <= NOT \s64[1][9]~20_combout\;
\ALT_INV_s64[3][1]~19_combout\ <= NOT \s64[3][1]~19_combout\;
\ALT_INV_s64[2][0]~18_combout\ <= NOT \s64[2][0]~18_combout\;
\ALT_INV_Y~5_combout\ <= NOT \Y~5_combout\;
\ALT_INV_s64[2][0]~17_combout\ <= NOT \s64[2][0]~17_combout\;
\ALT_INV_Y~4_combout\ <= NOT \Y~4_combout\;
\ALT_INV_s64[2][0]~16_combout\ <= NOT \s64[2][0]~16_combout\;
\ALT_INV_s64[2][0]~15_combout\ <= NOT \s64[2][0]~15_combout\;
\ALT_INV_s64[2][0]~14_combout\ <= NOT \s64[2][0]~14_combout\;
\ALT_INV_fill64~0_combout\ <= NOT \fill64~0_combout\;
\ALT_INV_Y~2_combout\ <= NOT \Y~2_combout\;
\ALT_INV_fill32~0_combout\ <= NOT \fill32~0_combout\;
\ALT_INV_s64[3][0]~13_combout\ <= NOT \s64[3][0]~13_combout\;
\ALT_INV_s64[2][0]~12_combout\ <= NOT \s64[2][0]~12_combout\;
\ALT_INV_s64[2][0]~11_combout\ <= NOT \s64[2][0]~11_combout\;
\ALT_INV_s64[2][0]~10_combout\ <= NOT \s64[2][0]~10_combout\;
\ALT_INV_Y~1_combout\ <= NOT \Y~1_combout\;
\ALT_INV_s64[3][8]~9_combout\ <= NOT \s64[3][8]~9_combout\;
\ALT_INV_s64[2][12]~8_combout\ <= NOT \s64[2][12]~8_combout\;
\ALT_INV_s64[1][14]~7_combout\ <= NOT \s64[1][14]~7_combout\;
\ALT_INV_s64[1][12]~6_combout\ <= NOT \s64[1][12]~6_combout\;
\ALT_INV_s64[2][0]~5_combout\ <= NOT \s64[2][0]~5_combout\;
\ALT_INV_s64[2][0]~4_combout\ <= NOT \s64[2][0]~4_combout\;
\ALT_INV_s64[2][0]~3_combout\ <= NOT \s64[2][0]~3_combout\;
\ALT_INV_s64[2][0]~2_combout\ <= NOT \s64[2][0]~2_combout\;
\ALT_INV_s64[1][10]~1_combout\ <= NOT \s64[1][10]~1_combout\;
\ALT_INV_s64[1][8]~0_combout\ <= NOT \s64[1][8]~0_combout\;
\ALT_INV_Y~0_combout\ <= NOT \Y~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Y~41_combout\ <= NOT \Y~41_combout\;

-- Location: IOOBUF_X25_Y56_N98
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~3_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X17_Y56_N5
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~9_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X19_Y56_N2
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~12_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X35_Y56_N67
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~15_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X19_Y56_N67
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~21_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X35_Y56_N98
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~24_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X28_Y56_N36
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~27_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X25_Y56_N5
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~30_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X23_Y56_N67
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~32_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X21_Y56_N98
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~33_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X19_Y56_N36
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

-- Location: IOOBUF_X19_Y56_N98
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~35_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X28_Y56_N98
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~36_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X28_Y56_N2
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~37_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X23_Y56_N2
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~38_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X21_Y56_N36
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~39_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOIBUF_X23_Y56_N94
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X21_Y56_N63
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X21_Y56_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X25_Y56_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X26_Y52_N4
\Y~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & !\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y~0_combout\);

-- Location: IOIBUF_X23_Y56_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X31_Y56_N32
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X28_Y56_N63
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LABCELL_X30_Y52_N0
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X33_Y56_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X33_Y56_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X36_Y56_N63
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X25_Y56_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X38_Y56_N63
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X30_Y56_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X29_Y52_N2
\s64[2][0]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~5_combout\ = ( \A[1]~input_o\ & ( \A[3]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) # 
-- (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \s64[2][0]~5_combout\);

-- Location: IOIBUF_X31_Y56_N63
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X31_Y56_N1
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X35_Y56_N32
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X30_Y52_N26
\s64[1][10]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][10]~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & (((\A[10]~input_o\)))) # (\B[0]~input_o\ & (((\A[9]~input_o\)) # (\ShiftFN[1]~input_o\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \A[11]~input_o\ & ( (\A[10]~input_o\) 
-- # (\B[0]~input_o\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (((\A[10]~input_o\)))) # (\B[0]~input_o\ & (!\ShiftFN[1]~input_o\ & (\A[9]~input_o\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ 
-- & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000101111001000001111111111110000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \s64[1][10]~1_combout\);

-- Location: IOIBUF_X30_Y56_N63
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X30_Y56_N94
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X30_Y52_N28
\s64[1][12]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][12]~6_combout\ = ( \ShiftFN[0]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & (((\A[12]~input_o\)))) # (\B[0]~input_o\ & ((!\ShiftFN[1]~input_o\) # ((\A[13]~input_o\)))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ 
-- & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (((\A[12]~input_o\)))) # (\B[0]~input_o\ & (\ShiftFN[1]~input_o\ & (\A[13]~input_o\))) ) ) ) # ( !\ShiftFN[0]~input_o\ 
-- & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110001000100001111001100110000111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \s64[1][12]~6_combout\);

-- Location: IOIBUF_X30_Y56_N1
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X35_Y56_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X30_Y52_N12
\s64[1][14]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][14]~7_combout\ = ( \ShiftFN[0]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & ((\A[13]~input_o\))) # (\ShiftFN[1]~input_o\ & (\A[15]~input_o\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \A[14]~input_o\ & ( 
-- (!\B[0]~input_o\) # (\A[15]~input_o\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\A[14]~input_o\ & ( (\B[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & ((\A[13]~input_o\))) # (\ShiftFN[1]~input_o\ & (\A[15]~input_o\)))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- !\A[14]~input_o\ & ( (\A[15]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000010011000111011101110111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \s64[1][14]~7_combout\);

-- Location: LABCELL_X30_Y52_N38
\s64[2][12]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][12]~8_combout\ = ( \s64[1][14]~7_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][12]~6_combout\)))) # (\B[1]~input_o\ & ((!\Equal0~0_combout\) # ((\s64[1][10]~1_combout\)))) ) ) # ( !\s64[1][14]~7_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][12]~6_combout\)))) # (\B[1]~input_o\ & (\Equal0~0_combout\ & (\s64[1][10]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111101110110000111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][10]~1_combout\,
	datac => \ALT_INV_s64[1][12]~6_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][14]~7_combout\,
	combout => \s64[2][12]~8_combout\);

-- Location: IOIBUF_X31_Y56_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X36_Y56_N94
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X31_Y52_N22
\s64[1][8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][8]~0_combout\ = ( \A[7]~input_o\ & ( \A[8]~input_o\ & ( ((!\B[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))) # (\A[9]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # ((\A[9]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & (((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)) # (\A[9]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[8]~input_o\ & ( 
-- (\A[9]~input_o\ & (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000001000001010000110111110101111100011111010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \s64[1][8]~0_combout\);

-- Location: MLABCELL_X31_Y52_N6
\s64[2][0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~2_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ ) ) # ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101010001010100010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~2_combout\);

-- Location: MLABCELL_X31_Y52_N4
\s64[2][0]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~3_combout\ = ( !\ShiftFN[1]~input_o\ & ( (\B[1]~input_o\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[2][0]~3_combout\);

-- Location: IOIBUF_X33_Y56_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X36_Y56_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X31_Y52_N8
\s64[2][0]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~4_combout\ = ( \A[5]~input_o\ & ( \s64[1][10]~1_combout\ & ( ((!\s64[2][0]~3_combout\ & (\s64[1][8]~0_combout\)) # (\s64[2][0]~3_combout\ & ((\A[6]~input_o\)))) # (\s64[2][0]~2_combout\) ) ) ) # ( !\A[5]~input_o\ & ( \s64[1][10]~1_combout\ & ( 
-- (!\s64[2][0]~2_combout\ & ((!\s64[2][0]~3_combout\ & (\s64[1][8]~0_combout\)) # (\s64[2][0]~3_combout\ & ((\A[6]~input_o\))))) # (\s64[2][0]~2_combout\ & (((!\s64[2][0]~3_combout\)))) ) ) ) # ( \A[5]~input_o\ & ( !\s64[1][10]~1_combout\ & ( 
-- (!\s64[2][0]~2_combout\ & ((!\s64[2][0]~3_combout\ & (\s64[1][8]~0_combout\)) # (\s64[2][0]~3_combout\ & ((\A[6]~input_o\))))) # (\s64[2][0]~2_combout\ & (((\s64[2][0]~3_combout\)))) ) ) ) # ( !\A[5]~input_o\ & ( !\s64[1][10]~1_combout\ & ( 
-- (!\s64[2][0]~2_combout\ & ((!\s64[2][0]~3_combout\ & (\s64[1][8]~0_combout\)) # (\s64[2][0]~3_combout\ & ((\A[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][8]~0_combout\,
	datab => \ALT_INV_s64[2][0]~2_combout\,
	datac => \ALT_INV_s64[2][0]~3_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_s64[1][10]~1_combout\,
	combout => \s64[2][0]~4_combout\);

-- Location: LABCELL_X27_Y52_N2
\s64[3][8]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][8]~9_combout\ = ( \s64[2][0]~4_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[2][12]~8_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~5_combout\))) ) ) # ( !\s64[2][0]~4_combout\ & ( (\B[2]~input_o\ & ((!\Equal0~0_combout\ & 
-- ((\s64[2][12]~8_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~5_combout\,
	datad => \ALT_INV_s64[2][12]~8_combout\,
	dataf => \ALT_INV_s64[2][0]~4_combout\,
	combout => \s64[3][8]~9_combout\);

-- Location: MLABCELL_X26_Y52_N34
\fill32~0\ : arriaii_lcell_comb
-- Equation(s):
-- \fill32~0_combout\ = ( \ShiftFN[1]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \fill32~0_combout\);

-- Location: IOIBUF_X33_Y56_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: MLABCELL_X29_Y52_N10
\s64[2][0]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~11_combout\ = ( \A[1]~input_o\ & ( \A[3]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[0]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\A[0]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \A[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[0]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) # 
-- (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[0]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \s64[2][0]~11_combout\);

-- Location: MLABCELL_X29_Y52_N6
\s64[2][0]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~10_combout\ = ( \B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\) # (\A[5]~input_o\) ) ) ) # ( \B[1]~input_o\ & 
-- ( !\A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[4]~input_o\ & ( (\A[5]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \s64[2][0]~10_combout\);

-- Location: LABCELL_X30_Y52_N20
\s64[2][0]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~12_combout\ = ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~12_combout\);

-- Location: LABCELL_X27_Y52_N0
\s64[3][0]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][0]~13_combout\ = ( \s64[2][0]~12_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][0]~11_combout\)) # (\Equal0~0_combout\))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][0]~10_combout\)))) ) ) # ( !\s64[2][0]~12_combout\ & ( (!\Equal0~0_combout\ 
-- & ((!\B[2]~input_o\ & (\s64[2][0]~11_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~10_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~11_combout\,
	datad => \ALT_INV_s64[2][0]~10_combout\,
	dataf => \ALT_INV_s64[2][0]~12_combout\,
	combout => \s64[3][0]~13_combout\);

-- Location: LABCELL_X30_Y52_N6
\fill64~0\ : arriaii_lcell_comb
-- Equation(s):
-- \fill64~0_combout\ = ( \A[15]~input_o\ & ( (\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \fill64~0_combout\);

-- Location: MLABCELL_X26_Y52_N0
\Y~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~41_combout\ = ( !\ExtWord~input_o\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\ & (((!\B[3]~input_o\ & \s64[3][0]~13_combout\)))) # (\B[5]~input_o\ & (\fill64~0_combout\)))) # (\B[4]~input_o\ & (((\fill64~0_combout\)))) ) ) # ( \ExtWord~input_o\ & ( 
-- (!\B[4]~input_o\ & (((!\B[3]~input_o\ & ((\s64[3][0]~13_combout\))) # (\B[3]~input_o\ & (\fill32~0_combout\))))) # (\B[4]~input_o\ & (((\fill32~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000011100000111000001010000111110001111000001111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_s64[3][0]~13_combout\,
	datag => \ALT_INV_fill64~0_combout\,
	combout => \Y~41_combout\);

-- Location: MLABCELL_X26_Y52_N16
\Y~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = ( \Equal0~0_combout\ & ( \Y~41_combout\ ) ) # ( !\Equal0~0_combout\ & ( ((!\ExtWord~input_o\ & (\Y~0_combout\ & \s64[3][8]~9_combout\))) # (\Y~41_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111000000101111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Y~0_combout\,
	datac => \ALT_INV_s64[3][8]~9_combout\,
	datad => \ALT_INV_Y~41_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Y~3_combout\);

-- Location: LABCELL_X30_Y52_N4
\s64[2][0]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~14_combout\ = ( \B[0]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\A[7]~input_o\ & \B[1]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (\A[7]~input_o\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \s64[2][0]~14_combout\);

-- Location: MLABCELL_X31_Y52_N12
\s64[2][0]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~15_combout\ = ( \A[6]~input_o\ & ( (!\B[1]~input_o\ & ((\A[5]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & \A[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \s64[2][0]~15_combout\);

-- Location: MLABCELL_X31_Y52_N18
\s64[2][0]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~16_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \s64[2][0]~16_combout\);

-- Location: LABCELL_X27_Y49_N0
\Y~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~16_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~15_combout\) # (\s64[2][0]~14_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~16_combout\ ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~16_combout\ & ( 
-- (!\Equal0~0_combout\ & ((\s64[2][0]~15_combout\) # (\s64[2][0]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000000011111111111111110011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s64[2][0]~14_combout\,
	datac => \ALT_INV_s64[2][0]~15_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~16_combout\,
	combout => \Y~4_combout\);

-- Location: MLABCELL_X26_Y52_N10
\Y~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = ( !\B[3]~input_o\ & ( !\B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y~1_combout\);

-- Location: LABCELL_X27_Y49_N6
\Y~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = ( \ExtWord~input_o\ & ( (!\Y~1_combout\) # ((!\B[2]~input_o\ & !\Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Y~1_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~7_combout\);

-- Location: MLABCELL_X29_Y52_N34
\s64[2][0]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~17_combout\ = ( \A[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)))) # 
-- (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))))) ) ) ) # ( \A[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # 
-- (\B[1]~input_o\ & ((\A[4]~input_o\))))) ) ) ) # ( !\A[1]~input_o\ & ( !\A[3]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \s64[2][0]~17_combout\);

-- Location: MLABCELL_X31_Y52_N2
\s64[2][0]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~18_combout\ = ( \A[7]~input_o\ & ( \A[8]~input_o\ & ( ((!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\ & (\A[5]~input_o\ & 
-- ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[6]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[5]~input_o\))) # (\B[0]~input_o\ & (((\A[6]~input_o\ & !\B[1]~input_o\)))) ) ) 
-- ) # ( !\A[7]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \s64[2][0]~18_combout\);

-- Location: LABCELL_X27_Y49_N4
\s64[3][1]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][1]~19_combout\ = ( \s64[2][0]~16_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][0]~17_combout\)) # (\Equal0~0_combout\))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][0]~18_combout\)))) ) ) # ( !\s64[2][0]~16_combout\ & ( (!\Equal0~0_combout\ 
-- & ((!\B[2]~input_o\ & (\s64[2][0]~17_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~18_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~17_combout\,
	datad => \ALT_INV_s64[2][0]~18_combout\,
	dataf => \ALT_INV_s64[2][0]~16_combout\,
	combout => \s64[3][1]~19_combout\);

-- Location: LABCELL_X30_Y52_N10
\s64[1][11]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][11]~21_combout\ = ( \ShiftFN[1]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\A[12]~input_o\))) # 
-- (\ShiftFN[0]~input_o\ & (\A[10]~input_o\))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\A[11]~input_o\ & ( (\B[0]~input_o\ & \A[12]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\A[11]~input_o\ & ( (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & 
-- ((\A[12]~input_o\))) # (\ShiftFN[0]~input_o\ & (\A[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000000000011001111001101111111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \s64[1][11]~21_combout\);

-- Location: LABCELL_X30_Y52_N16
\s64[1][15]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][15]~25_combout\ = ( \ShiftFN[0]~input_o\ & ( \A[14]~input_o\ & ( ((!\ShiftFN[1]~input_o\ & \B[0]~input_o\)) # (\A[15]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & \A[15]~input_o\) ) ) ) # ( 
-- \ShiftFN[0]~input_o\ & ( !\A[14]~input_o\ & ( (\A[15]~input_o\ & ((!\B[0]~input_o\) # (\ShiftFN[1]~input_o\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & \A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001101110100000000110011000010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \s64[1][15]~25_combout\);

-- Location: LABCELL_X30_Y52_N32
\s64[1][13]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][13]~24_combout\ = ( \ShiftFN[0]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & (((\A[13]~input_o\)))) # (\B[0]~input_o\ & (((\A[12]~input_o\)) # (\ShiftFN[1]~input_o\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \A[14]~input_o\ & ( (\B[0]~input_o\) 
-- # (\A[13]~input_o\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((\A[13]~input_o\)))) # (\B[0]~input_o\ & (!\ShiftFN[1]~input_o\ & ((\A[12]~input_o\)))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\A[14]~input_o\ & ( 
-- (\A[13]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000101000110011111111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \s64[1][13]~24_combout\);

-- Location: LABCELL_X24_Y52_N22
\s64[2][13]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][13]~26_combout\ = ( \s64[1][13]~24_combout\ & ( (!\B[1]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[1][15]~25_combout\))) # (\Equal0~0_combout\ & (\s64[1][11]~21_combout\))) ) ) # ( !\s64[1][13]~24_combout\ & ( (\B[1]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[1][15]~25_combout\))) # (\Equal0~0_combout\ & (\s64[1][11]~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[1][11]~21_combout\,
	datad => \ALT_INV_s64[1][15]~25_combout\,
	dataf => \ALT_INV_s64[1][13]~24_combout\,
	combout => \s64[2][13]~26_combout\);

-- Location: MLABCELL_X29_Y52_N18
\s64[2][0]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~23_combout\ = ( \A[5]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\))) ) ) ) # ( !\A[5]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)))) # 
-- (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) ) ) ) # ( \A[5]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[2]~input_o\)))) ) ) ) # ( !\A[5]~input_o\ & ( !\A[3]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \s64[2][0]~23_combout\);

-- Location: MLABCELL_X31_Y52_N24
\s64[1][9]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[1][9]~20_combout\ = ( \A[9]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # (((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)) # (\A[10]~input_o\)) ) ) ) # ( !\A[9]~input_o\ & ( \A[8]~input_o\ & ( (\B[0]~input_o\ & (((!\ShiftFN[1]~input_o\ & 
-- \ShiftFN[0]~input_o\)) # (\A[10]~input_o\))) ) ) ) # ( \A[9]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\) # ((\A[10]~input_o\ & ((!\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\)))) ) ) ) # ( !\A[9]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & 
-- (\A[10]~input_o\ & ((!\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000001110011111100110100000011001000111100111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \s64[1][9]~20_combout\);

-- Location: MLABCELL_X31_Y52_N30
\s64[2][0]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~22_combout\ = ( \s64[1][11]~21_combout\ & ( \A[6]~input_o\ & ( ((!\s64[2][0]~3_combout\ & (\s64[1][9]~20_combout\)) # (\s64[2][0]~3_combout\ & ((\A[7]~input_o\)))) # (\s64[2][0]~2_combout\) ) ) ) # ( !\s64[1][11]~21_combout\ & ( \A[6]~input_o\ 
-- & ( (!\s64[2][0]~2_combout\ & ((!\s64[2][0]~3_combout\ & (\s64[1][9]~20_combout\)) # (\s64[2][0]~3_combout\ & ((\A[7]~input_o\))))) # (\s64[2][0]~2_combout\ & (((\s64[2][0]~3_combout\)))) ) ) ) # ( \s64[1][11]~21_combout\ & ( !\A[6]~input_o\ & ( 
-- (!\s64[2][0]~2_combout\ & ((!\s64[2][0]~3_combout\ & (\s64[1][9]~20_combout\)) # (\s64[2][0]~3_combout\ & ((\A[7]~input_o\))))) # (\s64[2][0]~2_combout\ & (((!\s64[2][0]~3_combout\)))) ) ) ) # ( !\s64[1][11]~21_combout\ & ( !\A[6]~input_o\ & ( 
-- (!\s64[2][0]~2_combout\ & ((!\s64[2][0]~3_combout\ & (\s64[1][9]~20_combout\)) # (\s64[2][0]~3_combout\ & ((\A[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][9]~20_combout\,
	datab => \ALT_INV_s64[2][0]~2_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_s64[2][0]~3_combout\,
	datae => \ALT_INV_s64[1][11]~21_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \s64[2][0]~22_combout\);

-- Location: LABCELL_X24_Y52_N26
\s64[3][9]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][9]~27_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~22_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][13]~26_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~23_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~22_combout\ ) ) # ( \B[2]~input_o\ & ( 
-- !\s64[2][0]~22_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][13]~26_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011111111111111111111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s64[2][13]~26_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~23_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~22_combout\,
	combout => \s64[3][9]~27_combout\);

-- Location: MLABCELL_X26_Y52_N22
\Y~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\B[4]~input_o\ & (!\B[3]~input_o\ & !\B[5]~input_o\)) ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\B[4]~input_o\ & (!\B[5]~input_o\ & ((!\B[3]~input_o\) # (\ShiftFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000100010100000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y~5_combout\);

-- Location: LABCELL_X24_Y52_N28
\Y~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = ( \fill64~0_combout\ & ( (!\Y~0_combout\ & (((!\Y~5_combout\)) # (\s64[3][1]~19_combout\))) # (\Y~0_combout\ & (((\s64[3][9]~27_combout\ & !\Y~5_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\Y~0_combout\ & (\s64[3][1]~19_combout\ & 
-- ((\Y~5_combout\)))) # (\Y~0_combout\ & (((\s64[3][9]~27_combout\ & !\Y~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101000011110011010100001111001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][1]~19_combout\,
	datab => \ALT_INV_s64[3][9]~27_combout\,
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_Y~5_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \Y~6_combout\);

-- Location: LABCELL_X27_Y49_N30
\Y~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = ( \Y~1_combout\ & ( \ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y~1_combout\,
	combout => \Y~8_combout\);

-- Location: LABCELL_X27_Y49_N12
\Y~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = ( \fill32~0_combout\ & ( \s64[2][0]~17_combout\ & ( ((!\Y~8_combout\ & ((\Y~6_combout\))) # (\Y~8_combout\ & (\Y~4_combout\))) # (\Y~7_combout\) ) ) ) # ( !\fill32~0_combout\ & ( \s64[2][0]~17_combout\ & ( (!\Y~7_combout\ & 
-- ((!\Y~8_combout\ & ((\Y~6_combout\))) # (\Y~8_combout\ & (\Y~4_combout\)))) # (\Y~7_combout\ & (((\Y~8_combout\)))) ) ) ) # ( \fill32~0_combout\ & ( !\s64[2][0]~17_combout\ & ( (!\Y~7_combout\ & ((!\Y~8_combout\ & ((\Y~6_combout\))) # (\Y~8_combout\ & 
-- (\Y~4_combout\)))) # (\Y~7_combout\ & (((!\Y~8_combout\)))) ) ) ) # ( !\fill32~0_combout\ & ( !\s64[2][0]~17_combout\ & ( (!\Y~7_combout\ & ((!\Y~8_combout\ & ((\Y~6_combout\))) # (\Y~8_combout\ & (\Y~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~4_combout\,
	datab => \ALT_INV_Y~7_combout\,
	datac => \ALT_INV_Y~6_combout\,
	datad => \ALT_INV_Y~8_combout\,
	datae => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_s64[2][0]~17_combout\,
	combout => \Y~9_combout\);

-- Location: MLABCELL_X29_Y52_N20
\s64[2][0]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~30_combout\ = ( \A[5]~input_o\ & ( \A[3]~input_o\ & ( ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[5]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))))) # 
-- (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[5]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \s64[2][0]~30_combout\);

-- Location: MLABCELL_X31_Y52_N38
\s64[2][0]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~31_combout\ = ( \A[6]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[7]~input_o\)))) # (\B[1]~input_o\ & (((\s64[1][8]~0_combout\)))) ) ) # ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[7]~input_o\)))) # 
-- (\B[1]~input_o\ & (((\s64[1][8]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_s64[1][8]~0_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \s64[2][0]~31_combout\);

-- Location: MLABCELL_X31_Y52_N36
\s64[2][0]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~29_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \s64[2][0]~29_combout\);

-- Location: LABCELL_X27_Y52_N30
\s64[3][2]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][2]~32_combout\ = ( \s64[2][0]~29_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][0]~30_combout\)) # (\Equal0~0_combout\))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][0]~31_combout\)))) ) ) # ( !\s64[2][0]~29_combout\ & ( (!\Equal0~0_combout\ 
-- & ((!\B[2]~input_o\ & (\s64[2][0]~30_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~31_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~30_combout\,
	datad => \ALT_INV_s64[2][0]~31_combout\,
	dataf => \ALT_INV_s64[2][0]~29_combout\,
	combout => \s64[3][2]~32_combout\);

-- Location: MLABCELL_X29_Y52_N26
\s64[2][0]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~34_combout\ = ( \B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\ & ((\A[6]~input_o\))) # (\B[0]~input_o\ & (\A[5]~input_o\)) ) ) ) # ( \B[1]~input_o\ & 
-- ( !\A[4]~input_o\ & ( (\B[0]~input_o\ & \A[3]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[0]~input_o\ & ((\A[6]~input_o\))) # (\B[0]~input_o\ & (\A[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \s64[2][0]~34_combout\);

-- Location: LABCELL_X30_Y52_N22
\s64[2][14]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][14]~35_combout\ = ( \s64[1][12]~6_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][14]~7_combout\)))) # (\B[1]~input_o\ & (((\fill64~0_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[1][12]~6_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][14]~7_combout\)))) # (\B[1]~input_o\ & (!\Equal0~0_combout\ & ((\fill64~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_s64[1][14]~7_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	dataf => \ALT_INV_s64[1][12]~6_combout\,
	combout => \s64[2][14]~35_combout\);

-- Location: LABCELL_X30_Y52_N36
\s64[2][10]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][10]~33_combout\ = ( \s64[1][8]~0_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][10]~1_combout\)))) # (\B[1]~input_o\ & (((\s64[1][12]~6_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[1][8]~0_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][10]~1_combout\)))) # (\B[1]~input_o\ & (!\Equal0~0_combout\ & ((\s64[1][12]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001010001100110000101000110011010111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_s64[1][10]~1_combout\,
	datac => \ALT_INV_s64[1][12]~6_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][8]~0_combout\,
	combout => \s64[2][10]~33_combout\);

-- Location: LABCELL_X27_Y52_N28
\s64[3][10]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][10]~36_combout\ = ( \s64[2][10]~33_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & ((\s64[2][14]~35_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~34_combout\))) ) ) # ( !\s64[2][10]~33_combout\ & ( (\B[2]~input_o\ & 
-- ((!\Equal0~0_combout\ & ((\s64[2][14]~35_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~34_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~34_combout\,
	datad => \ALT_INV_s64[2][14]~35_combout\,
	dataf => \ALT_INV_s64[2][10]~33_combout\,
	combout => \s64[3][10]~36_combout\);

-- Location: LABCELL_X24_Y52_N12
\Y~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = ( \fill64~0_combout\ & ( (!\Y~0_combout\ & (((!\Y~5_combout\)) # (\s64[3][2]~32_combout\))) # (\Y~0_combout\ & (((\s64[3][10]~36_combout\ & !\Y~5_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\Y~0_combout\ & (\s64[3][2]~32_combout\ & 
-- ((\Y~5_combout\)))) # (\Y~0_combout\ & (((\s64[3][10]~36_combout\ & !\Y~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101000011110011010100001111001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][2]~32_combout\,
	datab => \ALT_INV_s64[3][10]~36_combout\,
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_Y~5_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \Y~11_combout\);

-- Location: MLABCELL_X31_Y52_N34
\s64[2][0]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~28_combout\ = ( \A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\) # ((\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)) ) ) ) # ( !\A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[7]~input_o\ & ( 
-- !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) # (\B[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110001000111110000000000001111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \s64[2][0]~28_combout\);

-- Location: LABCELL_X27_Y52_N24
\Y~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = ( \s64[2][0]~29_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & \s64[2][0]~28_combout\)) ) ) # ( !\s64[2][0]~29_combout\ & ( (\B[2]~input_o\ & (!\Equal0~0_combout\ & \s64[2][0]~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~28_combout\,
	dataf => \ALT_INV_s64[2][0]~29_combout\,
	combout => \Y~10_combout\);

-- Location: LABCELL_X27_Y49_N36
\Y~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = ( \Y~8_combout\ & ( \s64[2][0]~30_combout\ & ( (\Y~10_combout\) # (\Y~7_combout\) ) ) ) # ( !\Y~8_combout\ & ( \s64[2][0]~30_combout\ & ( (!\Y~7_combout\ & ((\Y~11_combout\))) # (\Y~7_combout\ & (\fill32~0_combout\)) ) ) ) # ( 
-- \Y~8_combout\ & ( !\s64[2][0]~30_combout\ & ( (!\Y~7_combout\ & \Y~10_combout\) ) ) ) # ( !\Y~8_combout\ & ( !\s64[2][0]~30_combout\ & ( (!\Y~7_combout\ & ((\Y~11_combout\))) # (\Y~7_combout\ & (\fill32~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill32~0_combout\,
	datab => \ALT_INV_Y~7_combout\,
	datac => \ALT_INV_Y~11_combout\,
	datad => \ALT_INV_Y~10_combout\,
	datae => \ALT_INV_Y~8_combout\,
	dataf => \ALT_INV_s64[2][0]~30_combout\,
	combout => \Y~12_combout\);

-- Location: LABCELL_X24_Y52_N4
\s64[2][15]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][15]~44_combout\ = ( \fill64~0_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][15]~25_combout\)))) # (\B[1]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[1][13]~24_combout\))) ) ) # ( !\fill64~0_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][15]~25_combout\)))) # (\B[1]~input_o\ & (\s64[1][13]~24_combout\ & (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100001101111111010000110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][13]~24_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_s64[1][15]~25_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[2][15]~44_combout\);

-- Location: MLABCELL_X29_Y52_N36
\s64[2][0]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~43_combout\ = ( \B[1]~input_o\ & ( \A[4]~input_o\ & ( (\B[0]~input_o\) # (\A[5]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[4]~input_o\ & ( (\A[5]~input_o\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \s64[2][0]~43_combout\);

-- Location: LABCELL_X24_Y52_N6
\s64[2][11]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][11]~42_combout\ = ( \s64[1][9]~20_combout\ & ( (!\B[1]~input_o\ & (((\s64[1][11]~21_combout\)))) # (\B[1]~input_o\ & (((\Equal0~0_combout\)) # (\s64[1][13]~24_combout\))) ) ) # ( !\s64[1][9]~20_combout\ & ( (!\B[1]~input_o\ & 
-- (((\s64[1][11]~21_combout\)))) # (\B[1]~input_o\ & (\s64[1][13]~24_combout\ & (!\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101000100000011110100010000001111011101110000111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[1][13]~24_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[1][11]~21_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_s64[1][9]~20_combout\,
	combout => \s64[2][11]~42_combout\);

-- Location: LABCELL_X24_Y52_N8
\s64[3][11]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][11]~45_combout\ = ( \s64[2][11]~42_combout\ & ( (!\B[2]~input_o\) # ((!\Equal0~0_combout\ & (\s64[2][15]~44_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~43_combout\)))) ) ) # ( !\s64[2][11]~42_combout\ & ( (\B[2]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\s64[2][15]~44_combout\)) # (\Equal0~0_combout\ & ((\s64[2][0]~43_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000100011111111111010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][15]~44_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~43_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][11]~42_combout\,
	combout => \s64[3][11]~45_combout\);

-- Location: MLABCELL_X29_Y52_N28
\s64[2][0]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~38_combout\ = ( \A[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[0]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # 
-- (\A[2]~input_o\))) # (\B[1]~input_o\ & (((\A[0]~input_o\ & \B[0]~input_o\)))) ) ) ) # ( \A[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[1]~input_o\ & (\A[2]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[0]~input_o\)))) ) ) ) # 
-- ( !\A[1]~input_o\ & ( !\A[3]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \s64[2][0]~38_combout\);

-- Location: MLABCELL_X29_Y52_N12
\s64[2][0]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~39_combout\ = ( \B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[4]~input_o\ & ( (\A[3]~input_o\) # (\B[0]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[0]~input_o\ & \A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \s64[2][0]~39_combout\);

-- Location: MLABCELL_X31_Y52_N16
\s64[2][0]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~40_combout\ = ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\A[7]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & (((\s64[1][9]~20_combout\)))) ) ) # ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[7]~input_o\)))) # 
-- (\B[1]~input_o\ & (((\s64[1][9]~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_s64[1][9]~20_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \s64[2][0]~40_combout\);

-- Location: LABCELL_X24_Y52_N0
\s64[3][3]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][3]~41_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~40_combout\ & ( !\Equal0~0_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~40_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~39_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~38_combout\)) ) ) 
-- ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~40_combout\ & ( (!\Equal0~0_combout\ & ((\s64[2][0]~39_combout\))) # (\Equal0~0_combout\ & (\s64[2][0]~38_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000000000000011101000111011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~38_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~39_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~40_combout\,
	combout => \s64[3][3]~41_combout\);

-- Location: LABCELL_X24_Y52_N32
\Y~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = ( \fill64~0_combout\ & ( (!\Y~0_combout\ & (((!\Y~5_combout\) # (\s64[3][3]~41_combout\)))) # (\Y~0_combout\ & (\s64[3][11]~45_combout\ & ((!\Y~5_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\Y~0_combout\ & (((\s64[3][3]~41_combout\ & 
-- \Y~5_combout\)))) # (\Y~0_combout\ & (\s64[3][11]~45_combout\ & ((!\Y~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011000011110101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][11]~45_combout\,
	datab => \ALT_INV_s64[3][3]~41_combout\,
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_Y~5_combout\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \Y~14_combout\);

-- Location: MLABCELL_X31_Y52_N14
\s64[2][0]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~37_combout\ = ( \ShiftFN[1]~input_o\ & ( (\A[7]~input_o\ & (((!\B[1]~input_o\ & !\B[0]~input_o\)) # (\ShiftFN[0]~input_o\))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & \A[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000011110000100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \s64[2][0]~37_combout\);

-- Location: LABCELL_X24_Y52_N36
\Y~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = ( \s64[2][0]~37_combout\ & ( (!\B[2]~input_o\ & ((\s64[2][0]~38_combout\))) # (\B[2]~input_o\ & (!\Equal0~0_combout\)) ) ) # ( !\s64[2][0]~37_combout\ & ( (\s64[2][0]~38_combout\ & !\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111110011000000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][0]~38_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~37_combout\,
	combout => \Y~13_combout\);

-- Location: LABCELL_X27_Y49_N22
\Y~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = ( \s64[2][0]~39_combout\ & ( \Y~13_combout\ & ( ((!\Y~7_combout\ & ((\Y~14_combout\))) # (\Y~7_combout\ & (\fill32~0_combout\))) # (\Y~8_combout\) ) ) ) # ( !\s64[2][0]~39_combout\ & ( \Y~13_combout\ & ( (!\Y~8_combout\ & ((!\Y~7_combout\ 
-- & ((\Y~14_combout\))) # (\Y~7_combout\ & (\fill32~0_combout\)))) # (\Y~8_combout\ & (((!\Y~7_combout\)))) ) ) ) # ( \s64[2][0]~39_combout\ & ( !\Y~13_combout\ & ( (!\Y~8_combout\ & ((!\Y~7_combout\ & ((\Y~14_combout\))) # (\Y~7_combout\ & 
-- (\fill32~0_combout\)))) # (\Y~8_combout\ & (((\Y~7_combout\)))) ) ) ) # ( !\s64[2][0]~39_combout\ & ( !\Y~13_combout\ & ( (!\Y~8_combout\ & ((!\Y~7_combout\ & ((\Y~14_combout\))) # (\Y~7_combout\ & (\fill32~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill32~0_combout\,
	datab => \ALT_INV_Y~8_combout\,
	datac => \ALT_INV_Y~7_combout\,
	datad => \ALT_INV_Y~14_combout\,
	datae => \ALT_INV_s64[2][0]~39_combout\,
	dataf => \ALT_INV_Y~13_combout\,
	combout => \Y~15_combout\);

-- Location: MLABCELL_X26_Y52_N26
\Y~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = ( !\B[5]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\B[3]~input_o\ & !\B[4]~input_o\)) ) ) ) # ( !\B[5]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\B[3]~input_o\ & (!\ShiftFN[0]~input_o\ & 
-- !\B[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y~17_combout\);

-- Location: MLABCELL_X26_Y52_N20
\Y~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & (!\ExtWord~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y~16_combout\);

-- Location: LABCELL_X27_Y52_N34
\s64[3][4]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][4]~46_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~4_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~12_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~4_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~10_combout\)) # (\Equal0~0_combout\ & 
-- ((\s64[2][0]~5_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~4_combout\ & ( (\Equal0~0_combout\ & \s64[2][0]~12_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~4_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~10_combout\)) # 
-- (\Equal0~0_combout\ & ((\s64[2][0]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~10_combout\,
	datab => \ALT_INV_s64[2][0]~5_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~12_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~4_combout\,
	combout => \s64[3][4]~46_combout\);

-- Location: LABCELL_X27_Y52_N32
\Y~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = ( \B[2]~input_o\ & ( \fill32~0_combout\ & ( (!\Equal0~0_combout\) # (\s64[2][0]~12_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \fill32~0_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~10_combout\)) # (\Equal0~0_combout\ & 
-- ((\s64[2][0]~5_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\fill32~0_combout\ & ( (\s64[2][0]~12_combout\ & \Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\fill32~0_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~10_combout\)) # (\Equal0~0_combout\ & 
-- ((\s64[2][0]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~10_combout\,
	datab => \ALT_INV_s64[2][0]~5_combout\,
	datac => \ALT_INV_s64[2][0]~12_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \Y~18_combout\);

-- Location: MLABCELL_X26_Y52_N8
\Y~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = ( \Y~18_combout\ & ( (\ExtWord~input_o\ & ((\fill32~0_combout\) # (\Y~1_combout\))) ) ) # ( !\Y~18_combout\ & ( (!\Y~1_combout\ & (\ExtWord~input_o\ & \fill32~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y~1_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_Y~18_combout\,
	combout => \Y~19_combout\);

-- Location: LABCELL_X27_Y52_N26
\s64[3][12]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][12]~47_combout\ = ( \s64[2][0]~4_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][12]~8_combout\)))) # (\B[2]~input_o\ & (((\fill64~0_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[2][0]~4_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][12]~8_combout\)))) 
-- # (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\fill64~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_s64[2][12]~8_combout\,
	dataf => \ALT_INV_s64[2][0]~4_combout\,
	combout => \s64[3][12]~47_combout\);

-- Location: MLABCELL_X26_Y52_N30
\Y~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = ( !\Y~0_combout\ & ( (!\ExtWord~input_o\ & (!\Y~5_combout\ & \fill64~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y~5_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	dataf => \ALT_INV_Y~0_combout\,
	combout => \Y~20_combout\);

-- Location: LABCELL_X27_Y52_N18
\Y~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = ( \s64[3][12]~47_combout\ & ( \Y~20_combout\ ) ) # ( !\s64[3][12]~47_combout\ & ( \Y~20_combout\ ) ) # ( \s64[3][12]~47_combout\ & ( !\Y~20_combout\ & ( (((\Y~16_combout\ & \s64[3][4]~46_combout\)) # (\Y~19_combout\)) # (\Y~17_combout\) ) 
-- ) ) # ( !\s64[3][12]~47_combout\ & ( !\Y~20_combout\ & ( ((\Y~16_combout\ & \s64[3][4]~46_combout\)) # (\Y~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111010101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~17_combout\,
	datab => \ALT_INV_Y~16_combout\,
	datac => \ALT_INV_s64[3][4]~46_combout\,
	datad => \ALT_INV_Y~19_combout\,
	datae => \ALT_INV_s64[3][12]~47_combout\,
	dataf => \ALT_INV_Y~20_combout\,
	combout => \Y~21_combout\);

-- Location: LABCELL_X27_Y49_N24
\s64[2][0]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[2][0]~48_combout\ = ( !\s64[2][0]~15_combout\ & ( !\s64[2][0]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_s64[2][0]~15_combout\,
	dataf => \ALT_INV_s64[2][0]~14_combout\,
	combout => \s64[2][0]~48_combout\);

-- Location: LABCELL_X27_Y49_N8
\Y~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~16_combout\ & ( (\Equal0~0_combout\) # (\fill32~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~16_combout\ & ( (!\Equal0~0_combout\ & (!\s64[2][0]~48_combout\)) # (\Equal0~0_combout\ & 
-- ((\s64[2][0]~23_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~16_combout\ & ( (\fill32~0_combout\ & !\Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~16_combout\ & ( (!\Equal0~0_combout\ & (!\s64[2][0]~48_combout\)) # 
-- (\Equal0~0_combout\ & ((\s64[2][0]~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000110011000011110000000010101010001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~48_combout\,
	datab => \ALT_INV_s64[2][0]~23_combout\,
	datac => \ALT_INV_fill32~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~16_combout\,
	combout => \Y~22_combout\);

-- Location: LABCELL_X27_Y49_N32
\s64[3][5]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][5]~49_combout\ = ( \B[2]~input_o\ & ( \s64[2][0]~16_combout\ & ( (\Equal0~0_combout\) # (\s64[2][0]~22_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \s64[2][0]~16_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~18_combout\)) # (\Equal0~0_combout\ & 
-- ((\s64[2][0]~23_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\s64[2][0]~16_combout\ & ( (\s64[2][0]~22_combout\ & !\Equal0~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\s64[2][0]~16_combout\ & ( (!\Equal0~0_combout\ & (\s64[2][0]~18_combout\)) # 
-- (\Equal0~0_combout\ & ((\s64[2][0]~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~18_combout\,
	datab => \ALT_INV_s64[2][0]~23_combout\,
	datac => \ALT_INV_s64[2][0]~22_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_s64[2][0]~16_combout\,
	combout => \s64[3][5]~49_combout\);

-- Location: LABCELL_X24_Y52_N38
\s64[3][13]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][13]~50_combout\ = ( \s64[2][0]~22_combout\ & ( (!\B[2]~input_o\ & (((\s64[2][13]~26_combout\)))) # (\B[2]~input_o\ & (((\fill64~0_combout\)) # (\Equal0~0_combout\))) ) ) # ( !\s64[2][0]~22_combout\ & ( (!\B[2]~input_o\ & 
-- (((\s64[2][13]~26_combout\)))) # (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\fill64~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_s64[2][13]~26_combout\,
	dataf => \ALT_INV_s64[2][0]~22_combout\,
	combout => \s64[3][13]~50_combout\);

-- Location: LABCELL_X27_Y52_N20
\Y~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = ( \Y~17_combout\ & ( (!\Y~20_combout\ & (!\s64[3][13]~50_combout\ & ((!\s64[3][5]~49_combout\) # (!\Y~16_combout\)))) ) ) # ( !\Y~17_combout\ & ( (!\Y~20_combout\ & ((!\s64[3][5]~49_combout\) # (!\Y~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][5]~49_combout\,
	datab => \ALT_INV_Y~16_combout\,
	datac => \ALT_INV_Y~20_combout\,
	datad => \ALT_INV_s64[3][13]~50_combout\,
	dataf => \ALT_INV_Y~17_combout\,
	combout => \Y~23_combout\);

-- Location: LABCELL_X27_Y49_N16
\Y~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = ( \Y~22_combout\ & ( \Y~23_combout\ & ( (\ExtWord~input_o\ & ((\Y~1_combout\) # (\fill32~0_combout\))) ) ) ) # ( !\Y~22_combout\ & ( \Y~23_combout\ & ( (\fill32~0_combout\ & (!\Y~1_combout\ & \ExtWord~input_o\)) ) ) ) # ( \Y~22_combout\ & 
-- ( !\Y~23_combout\ ) ) # ( !\Y~22_combout\ & ( !\Y~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000100000001000000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill32~0_combout\,
	datab => \ALT_INV_Y~1_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_Y~22_combout\,
	dataf => \ALT_INV_Y~23_combout\,
	combout => \Y~24_combout\);

-- Location: LABCELL_X27_Y52_N4
\s64[3][6]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][6]~51_combout\ = ( \s64[2][0]~31_combout\ & ( \s64[2][10]~33_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & (\s64[2][0]~34_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~29_combout\)))) ) ) ) # ( !\s64[2][0]~31_combout\ & ( 
-- \s64[2][10]~33_combout\ & ( (!\B[2]~input_o\ & (\s64[2][0]~34_combout\ & ((\Equal0~0_combout\)))) # (\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][0]~29_combout\)))) ) ) ) # ( \s64[2][0]~31_combout\ & ( !\s64[2][10]~33_combout\ & ( (!\B[2]~input_o\ 
-- & (((!\Equal0~0_combout\)) # (\s64[2][0]~34_combout\))) # (\B[2]~input_o\ & (((\s64[2][0]~29_combout\ & \Equal0~0_combout\)))) ) ) ) # ( !\s64[2][0]~31_combout\ & ( !\s64[2][10]~33_combout\ & ( (\Equal0~0_combout\ & ((!\B[2]~input_o\ & 
-- (\s64[2][0]~34_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~29_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~34_combout\,
	datab => \ALT_INV_s64[2][0]~29_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_s64[2][0]~31_combout\,
	dataf => \ALT_INV_s64[2][10]~33_combout\,
	combout => \s64[3][6]~51_combout\);

-- Location: LABCELL_X27_Y52_N10
\s64[3][14]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][14]~52_combout\ = ( \B[2]~input_o\ & ( \Equal0~0_combout\ & ( \s64[2][10]~33_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \Equal0~0_combout\ & ( \s64[2][14]~35_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\Equal0~0_combout\ & ( \fill64~0_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\Equal0~0_combout\ & ( \s64[2][14]~35_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][10]~33_combout\,
	datab => \ALT_INV_s64[2][14]~35_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s64[3][14]~52_combout\);

-- Location: LABCELL_X27_Y52_N6
\Y~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = ( \s64[2][0]~28_combout\ & ( \fill32~0_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & (\s64[2][0]~34_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~29_combout\)))) ) ) ) # ( !\s64[2][0]~28_combout\ & ( \fill32~0_combout\ & ( 
-- (!\Equal0~0_combout\ & (((\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~34_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~29_combout\))))) ) ) ) # ( \s64[2][0]~28_combout\ & ( !\fill32~0_combout\ & ( (!\Equal0~0_combout\ & 
-- (((!\B[2]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~34_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~29_combout\))))) ) ) ) # ( !\s64[2][0]~28_combout\ & ( !\fill32~0_combout\ & ( (\Equal0~0_combout\ & ((!\B[2]~input_o\ & 
-- (\s64[2][0]~34_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~29_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~34_combout\,
	datab => \ALT_INV_s64[2][0]~29_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_s64[2][0]~28_combout\,
	dataf => \ALT_INV_fill32~0_combout\,
	combout => \Y~25_combout\);

-- Location: MLABCELL_X26_Y52_N28
\Y~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = ( \Y~25_combout\ & ( (!\Y~20_combout\ & ((!\ExtWord~input_o\) # ((!\Y~1_combout\ & !\fill32~0_combout\)))) ) ) # ( !\Y~25_combout\ & ( (!\Y~20_combout\ & ((!\ExtWord~input_o\) # ((!\fill32~0_combout\) # (\Y~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001100110011001000110011001000100010001100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Y~20_combout\,
	datac => \ALT_INV_Y~1_combout\,
	datad => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_Y~25_combout\,
	combout => \Y~26_combout\);

-- Location: LABCELL_X27_Y52_N12
\Y~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = ( \Y~26_combout\ & ( (!\s64[3][6]~51_combout\ & (\s64[3][14]~52_combout\ & (\Y~17_combout\))) # (\s64[3][6]~51_combout\ & (((\s64[3][14]~52_combout\ & \Y~17_combout\)) # (\Y~16_combout\))) ) ) # ( !\Y~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][6]~51_combout\,
	datab => \ALT_INV_s64[3][14]~52_combout\,
	datac => \ALT_INV_Y~17_combout\,
	datad => \ALT_INV_Y~16_combout\,
	dataf => \ALT_INV_Y~26_combout\,
	combout => \Y~27_combout\);

-- Location: MLABCELL_X26_Y52_N6
\Y~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = (!\B[4]~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	combout => \Y~2_combout\);

-- Location: MLABCELL_X26_Y52_N18
\Y~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = ( \Y~2_combout\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y~2_combout\,
	combout => \Y~28_combout\);

-- Location: LABCELL_X24_Y52_N10
\s64[3][15]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][15]~53_combout\ = ( \fill64~0_combout\ & ( (!\B[2]~input_o\ & (\s64[2][15]~44_combout\)) # (\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][11]~42_combout\)))) ) ) # ( !\fill64~0_combout\ & ( (!\B[2]~input_o\ & (\s64[2][15]~44_combout\)) # 
-- (\B[2]~input_o\ & (((\Equal0~0_combout\ & \s64[2][11]~42_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101110011110101010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][15]~44_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_s64[2][11]~42_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_fill64~0_combout\,
	combout => \s64[3][15]~53_combout\);

-- Location: LABCELL_X24_Y52_N18
\s64[3][7]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \s64[3][7]~54_combout\ = ( \s64[2][11]~42_combout\ & ( \s64[2][0]~40_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & (\s64[2][0]~43_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~38_combout\)))) ) ) ) # ( !\s64[2][11]~42_combout\ & ( 
-- \s64[2][0]~40_combout\ & ( (!\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[2][0]~43_combout\))) # (\B[2]~input_o\ & (((\Equal0~0_combout\ & \s64[2][0]~38_combout\)))) ) ) ) # ( \s64[2][11]~42_combout\ & ( !\s64[2][0]~40_combout\ & ( (!\B[2]~input_o\ & 
-- (\s64[2][0]~43_combout\ & (\Equal0~0_combout\))) # (\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][0]~38_combout\)))) ) ) ) # ( !\s64[2][11]~42_combout\ & ( !\s64[2][0]~40_combout\ & ( (\Equal0~0_combout\ & ((!\B[2]~input_o\ & 
-- (\s64[2][0]~43_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~38_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~43_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_s64[2][0]~38_combout\,
	datae => \ALT_INV_s64[2][11]~42_combout\,
	dataf => \ALT_INV_s64[2][0]~40_combout\,
	combout => \s64[3][7]~54_combout\);

-- Location: LABCELL_X24_Y52_N16
\s32[3][7]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \s32[3][7]~0_combout\ = ( \fill32~0_combout\ & ( \s64[2][0]~37_combout\ & ( (!\Equal0~0_combout\) # ((!\B[2]~input_o\ & (\s64[2][0]~43_combout\)) # (\B[2]~input_o\ & ((\s64[2][0]~38_combout\)))) ) ) ) # ( !\fill32~0_combout\ & ( \s64[2][0]~37_combout\ & ( 
-- (!\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (\s64[2][0]~43_combout\))) # (\B[2]~input_o\ & (((\s64[2][0]~38_combout\ & \Equal0~0_combout\)))) ) ) ) # ( \fill32~0_combout\ & ( !\s64[2][0]~37_combout\ & ( (!\B[2]~input_o\ & (\s64[2][0]~43_combout\ & 
-- ((\Equal0~0_combout\)))) # (\B[2]~input_o\ & (((!\Equal0~0_combout\) # (\s64[2][0]~38_combout\)))) ) ) ) # ( !\fill32~0_combout\ & ( !\s64[2][0]~37_combout\ & ( (\Equal0~0_combout\ & ((!\B[2]~input_o\ & (\s64[2][0]~43_combout\)) # (\B[2]~input_o\ & 
-- ((\s64[2][0]~38_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[2][0]~43_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_s64[2][0]~38_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_fill32~0_combout\,
	dataf => \ALT_INV_s64[2][0]~37_combout\,
	combout => \s32[3][7]~0_combout\);

-- Location: MLABCELL_X26_Y52_N12
\Y~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = ( \ExtWord~input_o\ & ( \Y~2_combout\ & ( (!\Y~1_combout\ & (\fill32~0_combout\)) # (\Y~1_combout\ & ((\s32[3][7]~0_combout\))) ) ) ) # ( \ExtWord~input_o\ & ( !\Y~2_combout\ & ( (!\Y~1_combout\ & (\fill32~0_combout\)) # (\Y~1_combout\ & 
-- ((\s32[3][7]~0_combout\))) ) ) ) # ( !\ExtWord~input_o\ & ( !\Y~2_combout\ & ( \fill64~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010011001100000000000000000101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill32~0_combout\,
	datab => \ALT_INV_s32[3][7]~0_combout\,
	datac => \ALT_INV_fill64~0_combout\,
	datad => \ALT_INV_Y~1_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y~2_combout\,
	combout => \Y~29_combout\);

-- Location: MLABCELL_X26_Y52_N38
\Y~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = ( \Y~29_combout\ & ( \Equal0~0_combout\ ) ) # ( !\Y~29_combout\ & ( \Equal0~0_combout\ & ( (\Y~28_combout\ & (!\B[3]~input_o\ & \s64[3][7]~54_combout\)) ) ) ) # ( \Y~29_combout\ & ( !\Equal0~0_combout\ ) ) # ( !\Y~29_combout\ & ( 
-- !\Equal0~0_combout\ & ( (\Y~28_combout\ & ((!\B[3]~input_o\ & ((\s64[3][7]~54_combout\))) # (\B[3]~input_o\ & (\s64[3][15]~53_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101111111111111111100000000010001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~28_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_s64[3][15]~53_combout\,
	datad => \ALT_INV_s64[3][7]~54_combout\,
	datae => \ALT_INV_Y~29_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Y~30_combout\);

-- Location: LABCELL_X24_Y52_N20
\Y~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = ( !\ExtWord~input_o\ & ( (\Y~0_combout\ & \Y~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y~0_combout\,
	datad => \ALT_INV_Y~5_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~31_combout\);

-- Location: MLABCELL_X26_Y52_N14
\Y~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~40_combout\ = ( \ExtWord~input_o\ & ( \Y~5_combout\ & ( (!\Y~1_combout\ & (\fill32~0_combout\)) # (\Y~1_combout\ & ((\s32[3][7]~0_combout\))) ) ) ) # ( \ExtWord~input_o\ & ( !\Y~5_combout\ & ( (!\Y~1_combout\ & (\fill32~0_combout\)) # (\Y~1_combout\ & 
-- ((\s32[3][7]~0_combout\))) ) ) ) # ( !\ExtWord~input_o\ & ( !\Y~5_combout\ & ( \fill64~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010100110101001100000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill32~0_combout\,
	datab => \ALT_INV_s32[3][7]~0_combout\,
	datac => \ALT_INV_Y~1_combout\,
	datad => \ALT_INV_fill64~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y~5_combout\,
	combout => \Y~40_combout\);

-- Location: LABCELL_X27_Y52_N36
\Y~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = ( \Y~40_combout\ ) # ( !\Y~40_combout\ & ( (!\Y~31_combout\ & (\Y~16_combout\ & (\s64[3][8]~9_combout\))) # (\Y~31_combout\ & (((\Y~16_combout\ & \s64[3][8]~9_combout\)) # (\s64[3][0]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~31_combout\,
	datab => \ALT_INV_Y~16_combout\,
	datac => \ALT_INV_s64[3][8]~9_combout\,
	datad => \ALT_INV_s64[3][0]~13_combout\,
	dataf => \ALT_INV_Y~40_combout\,
	combout => \Y~32_combout\);

-- Location: LABCELL_X24_Y52_N30
\Y~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = ( \Y~16_combout\ & ( (((\s64[3][1]~19_combout\ & \Y~31_combout\)) # (\Y~40_combout\)) # (\s64[3][9]~27_combout\) ) ) # ( !\Y~16_combout\ & ( ((\s64[3][1]~19_combout\ & \Y~31_combout\)) # (\Y~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][1]~19_combout\,
	datab => \ALT_INV_s64[3][9]~27_combout\,
	datac => \ALT_INV_Y~31_combout\,
	datad => \ALT_INV_Y~40_combout\,
	dataf => \ALT_INV_Y~16_combout\,
	combout => \Y~33_combout\);

-- Location: LABCELL_X24_Y52_N14
\Y~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = ( \Y~16_combout\ & ( (((\s64[3][2]~32_combout\ & \Y~31_combout\)) # (\Y~40_combout\)) # (\s64[3][10]~36_combout\) ) ) # ( !\Y~16_combout\ & ( ((\s64[3][2]~32_combout\ & \Y~31_combout\)) # (\Y~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][2]~32_combout\,
	datab => \ALT_INV_s64[3][10]~36_combout\,
	datac => \ALT_INV_Y~31_combout\,
	datad => \ALT_INV_Y~40_combout\,
	dataf => \ALT_INV_Y~16_combout\,
	combout => \Y~34_combout\);

-- Location: LABCELL_X24_Y52_N34
\Y~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = ( \Y~16_combout\ & ( (((\s64[3][3]~41_combout\ & \Y~31_combout\)) # (\Y~40_combout\)) # (\s64[3][11]~45_combout\) ) ) # ( !\Y~16_combout\ & ( ((\s64[3][3]~41_combout\ & \Y~31_combout\)) # (\Y~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][11]~45_combout\,
	datab => \ALT_INV_s64[3][3]~41_combout\,
	datac => \ALT_INV_Y~31_combout\,
	datad => \ALT_INV_Y~40_combout\,
	dataf => \ALT_INV_Y~16_combout\,
	combout => \Y~35_combout\);

-- Location: LABCELL_X27_Y52_N38
\Y~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = ( \Y~40_combout\ ) # ( !\Y~40_combout\ & ( (!\Y~31_combout\ & (\Y~16_combout\ & ((\s64[3][12]~47_combout\)))) # (\Y~31_combout\ & (((\Y~16_combout\ & \s64[3][12]~47_combout\)) # (\s64[3][4]~46_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~31_combout\,
	datab => \ALT_INV_Y~16_combout\,
	datac => \ALT_INV_s64[3][4]~46_combout\,
	datad => \ALT_INV_s64[3][12]~47_combout\,
	dataf => \ALT_INV_Y~40_combout\,
	combout => \Y~36_combout\);

-- Location: LABCELL_X27_Y52_N22
\Y~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~37_combout\ = ( \Y~31_combout\ & ( (((\Y~16_combout\ & \s64[3][13]~50_combout\)) # (\Y~40_combout\)) # (\s64[3][5]~49_combout\) ) ) # ( !\Y~31_combout\ & ( ((\Y~16_combout\ & \s64[3][13]~50_combout\)) # (\Y~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][5]~49_combout\,
	datab => \ALT_INV_Y~16_combout\,
	datac => \ALT_INV_Y~40_combout\,
	datad => \ALT_INV_s64[3][13]~50_combout\,
	dataf => \ALT_INV_Y~31_combout\,
	combout => \Y~37_combout\);

-- Location: LABCELL_X27_Y52_N14
\Y~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~38_combout\ = ( \Y~31_combout\ & ( (((\s64[3][14]~52_combout\ & \Y~16_combout\)) # (\Y~40_combout\)) # (\s64[3][6]~51_combout\) ) ) # ( !\Y~31_combout\ & ( ((\s64[3][14]~52_combout\ & \Y~16_combout\)) # (\Y~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s64[3][6]~51_combout\,
	datab => \ALT_INV_s64[3][14]~52_combout\,
	datac => \ALT_INV_Y~40_combout\,
	datad => \ALT_INV_Y~16_combout\,
	dataf => \ALT_INV_Y~31_combout\,
	combout => \Y~38_combout\);

-- Location: MLABCELL_X26_Y52_N32
\Y~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~39_combout\ = ( \Y~40_combout\ ) # ( !\Y~40_combout\ & ( (!\Y~31_combout\ & (\s64[3][15]~53_combout\ & ((\Y~16_combout\)))) # (\Y~31_combout\ & (((\s64[3][15]~53_combout\ & \Y~16_combout\)) # (\s64[3][7]~54_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~31_combout\,
	datab => \ALT_INV_s64[3][15]~53_combout\,
	datac => \ALT_INV_s64[3][7]~54_combout\,
	datad => \ALT_INV_Y~16_combout\,
	dataf => \ALT_INV_Y~40_combout\,
	combout => \Y~39_combout\);

-- Location: IOIBUF_X17_Y56_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X13_Y0_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X59_Y51_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X13_Y0_N63
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y25_N1
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X12_Y56_N94
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y48_N1
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X14_Y56_N63
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

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
END structure;


