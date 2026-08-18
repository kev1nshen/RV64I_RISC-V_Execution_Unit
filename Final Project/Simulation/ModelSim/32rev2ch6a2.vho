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

-- DATE "04/08/2026 15:03:22"

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
-- B[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \stage[6][4]~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \stage[3][31]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A_in[31]~0_combout\ : std_logic;
SIGNAL \stage[3][31]~2_combout\ : std_logic;
SIGNAL \fill~0_combout\ : std_logic;
SIGNAL \stage[6][31]~3_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A_in[24]~15_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A_in[25]~14_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \stage[1][6]~12_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A_in[30]~9_combout\ : std_logic;
SIGNAL \stage[6][0]~9_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A_in[27]~12_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A_in[26]~13_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \stage[1][4]~11_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A_in[29]~10_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A_in[28]~11_combout\ : std_logic;
SIGNAL \stage[1][2]~10_combout\ : std_logic;
SIGNAL \stage[6][0]~13_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A_in[18]~6_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A_in[19]~5_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \stage[1][12]~6_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A_in[22]~2_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A_in[23]~1_combout\ : std_logic;
SIGNAL \stage[1][8]~4_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A_in[16]~8_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A_in[17]~7_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \stage[1][14]~7_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A_in[20]~4_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A_in[21]~3_combout\ : std_logic;
SIGNAL \stage[1][10]~5_combout\ : std_logic;
SIGNAL \stage[3][8]~8_combout\ : std_logic;
SIGNAL \stage[1][24]~21_combout\ : std_logic;
SIGNAL \stage[1][28]~23_combout\ : std_logic;
SIGNAL \stage[1][30]~24_combout\ : std_logic;
SIGNAL \stage[1][26]~22_combout\ : std_logic;
SIGNAL \stage[3][24]~25_combout\ : std_logic;
SIGNAL \stage[6][0]~26_combout\ : std_logic;
SIGNAL \stage[6][0]~20_combout\ : std_logic;
SIGNAL \stage[1][18]~16_combout\ : std_logic;
SIGNAL \stage[1][20]~17_combout\ : std_logic;
SIGNAL \stage[1][22]~18_combout\ : std_logic;
SIGNAL \stage[1][16]~15_combout\ : std_logic;
SIGNAL \stage[3][16]~19_combout\ : std_logic;
SIGNAL \stage[6][0]~14_combout\ : std_logic;
SIGNAL \stage[6][0]~27_combout\ : std_logic;
SIGNAL \stage[6][0]~28_combout\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \stage[1][9]~30_combout\ : std_logic;
SIGNAL \stage[1][13]~32_combout\ : std_logic;
SIGNAL \stage[1][15]~33_combout\ : std_logic;
SIGNAL \stage[1][11]~31_combout\ : std_logic;
SIGNAL \stage[3][9]~34_combout\ : std_logic;
SIGNAL \stage[1][29]~47_combout\ : std_logic;
SIGNAL \stage[1][31]~48_combout\ : std_logic;
SIGNAL \stage[1][27]~46_combout\ : std_logic;
SIGNAL \stage[1][25]~45_combout\ : std_logic;
SIGNAL \stage[3][25]~49_combout\ : std_logic;
SIGNAL \stage[1][23]~43_combout\ : std_logic;
SIGNAL \stage[1][17]~40_combout\ : std_logic;
SIGNAL \stage[1][19]~41_combout\ : std_logic;
SIGNAL \stage[1][21]~42_combout\ : std_logic;
SIGNAL \stage[3][17]~44_combout\ : std_logic;
SIGNAL \stage[6][1]~50_combout\ : std_logic;
SIGNAL \stage[1][5]~37_combout\ : std_logic;
SIGNAL \stage[6][1]~35_combout\ : std_logic;
SIGNAL \stage[1][7]~38_combout\ : std_logic;
SIGNAL \stage[1][3]~36_combout\ : std_logic;
SIGNAL \stage[6][1]~39_combout\ : std_logic;
SIGNAL \stage[6][1]~51_combout\ : std_logic;
SIGNAL \stage[6][30]~29_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \stage[3][29]~58_combout\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \stage[3][26]~55_combout\ : std_logic;
SIGNAL \stage[3][18]~54_combout\ : std_logic;
SIGNAL \stage[6][2]~56_combout\ : std_logic;
SIGNAL \stage[6][2]~53_combout\ : std_logic;
SIGNAL \stage[3][10]~52_combout\ : std_logic;
SIGNAL \stage[6][2]~57_combout\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \stage[6][3]~60_combout\ : std_logic;
SIGNAL \stage[3][11]~59_combout\ : std_logic;
SIGNAL \stage[3][19]~61_combout\ : std_logic;
SIGNAL \stage[3][27]~62_combout\ : std_logic;
SIGNAL \stage[6][3]~63_combout\ : std_logic;
SIGNAL \stage[6][3]~64_combout\ : std_logic;
SIGNAL \stage[3][28]~65_combout\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \stage[6][4]~67_combout\ : std_logic;
SIGNAL \stage[3][20]~68_combout\ : std_logic;
SIGNAL \stage[6][4]~69_combout\ : std_logic;
SIGNAL \stage[3][12]~66_combout\ : std_logic;
SIGNAL \stage[6][4]~70_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \stage[3][21]~73_combout\ : std_logic;
SIGNAL \stage[6][5]~74_combout\ : std_logic;
SIGNAL \stage[3][13]~71_combout\ : std_logic;
SIGNAL \stage[6][5]~72_combout\ : std_logic;
SIGNAL \stage[6][5]~75_combout\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \stage[3][14]~76_combout\ : std_logic;
SIGNAL \stage[3][22]~78_combout\ : std_logic;
SIGNAL \stage[3][30]~79_combout\ : std_logic;
SIGNAL \stage[6][6]~80_combout\ : std_logic;
SIGNAL \stage[6][6]~77_combout\ : std_logic;
SIGNAL \stage[6][6]~81_combout\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \stage[6][7]~83_combout\ : std_logic;
SIGNAL \stage[3][31]~85_combout\ : std_logic;
SIGNAL \stage[3][23]~84_combout\ : std_logic;
SIGNAL \stage[6][7]~86_combout\ : std_logic;
SIGNAL \stage[3][15]~82_combout\ : std_logic;
SIGNAL \stage[6][7]~87_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \stage[6][14]~89_combout\ : std_logic;
SIGNAL \stage[6][8]~90_combout\ : std_logic;
SIGNAL \stage[6][23]~88_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \stage[6][22]~91_combout\ : std_logic;
SIGNAL \stage[6][9]~92_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \stage[6][21]~93_combout\ : std_logic;
SIGNAL \stage[6][10]~94_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \stage[6][11]~96_combout\ : std_logic;
SIGNAL \stage[6][20]~95_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \stage[6][12]~98_combout\ : std_logic;
SIGNAL \stage[6][19]~97_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \stage[6][13]~100_combout\ : std_logic;
SIGNAL \stage[6][18]~99_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \stage[6][14]~102_combout\ : std_logic;
SIGNAL \stage[6][17]~101_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \stage[6][16]~103_combout\ : std_logic;
SIGNAL \stage[6][15]~104_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \Y~32_combout\ : std_logic;
SIGNAL \Y~33_combout\ : std_logic;
SIGNAL \Y~34_combout\ : std_logic;
SIGNAL \Y~35_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \Y~37_combout\ : std_logic;
SIGNAL \Y~38_combout\ : std_logic;
SIGNAL \Y~39_combout\ : std_logic;
SIGNAL \Y~40_combout\ : std_logic;
SIGNAL \Y~41_combout\ : std_logic;
SIGNAL \Y~42_combout\ : std_logic;
SIGNAL \Y~43_combout\ : std_logic;
SIGNAL \Y~44_combout\ : std_logic;
SIGNAL \Y~45_combout\ : std_logic;
SIGNAL \Y~46_combout\ : std_logic;
SIGNAL \Y~47_combout\ : std_logic;
SIGNAL \Y~48_combout\ : std_logic;
SIGNAL \Y~49_combout\ : std_logic;
SIGNAL \Y~65_combout\ : std_logic;
SIGNAL \Y~50_combout\ : std_logic;
SIGNAL \Y~61_combout\ : std_logic;
SIGNAL \Y~51_combout\ : std_logic;
SIGNAL \Y~57_combout\ : std_logic;
SIGNAL \Y~52_combout\ : std_logic;
SIGNAL \Y~53_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][10]~94_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][21]~93_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][9]~92_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][22]~91_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][8]~90_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][14]~89_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][23]~88_combout\ : std_logic;
SIGNAL \ALT_INV_Y~12_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][7]~87_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][7]~86_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][31]~85_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][23]~84_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][7]~83_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][15]~82_combout\ : std_logic;
SIGNAL \ALT_INV_Y~10_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][6]~81_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][6]~80_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][30]~79_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][22]~78_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][6]~77_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][14]~76_combout\ : std_logic;
SIGNAL \ALT_INV_Y~8_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][5]~75_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][5]~74_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][21]~73_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][5]~72_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][13]~71_combout\ : std_logic;
SIGNAL \ALT_INV_Y~6_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][4]~70_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][4]~69_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][20]~68_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][4]~67_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][12]~66_combout\ : std_logic;
SIGNAL \ALT_INV_Y~4_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][28]~65_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][3]~64_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][3]~63_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][27]~62_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][19]~61_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][3]~60_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][11]~59_combout\ : std_logic;
SIGNAL \ALT_INV_Y~2_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][29]~58_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][2]~57_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][2]~56_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][26]~55_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][18]~54_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][2]~53_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][10]~52_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][1]~51_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][1]~50_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][25]~49_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][31]~48_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][29]~47_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][27]~46_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][25]~45_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][17]~44_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][23]~43_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][21]~42_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][19]~41_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][17]~40_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][1]~39_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][7]~38_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][5]~37_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][3]~36_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][1]~35_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][9]~34_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][15]~33_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][13]~32_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][11]~31_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][9]~30_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][30]~29_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~28_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~27_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~26_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][24]~25_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][30]~24_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][28]~23_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][26]~22_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][24]~21_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~20_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][16]~19_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][22]~18_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][20]~17_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][18]~16_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][16]~15_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~14_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~13_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][6]~12_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[24]~15_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[25]~14_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][4]~11_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[26]~13_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[27]~12_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[28]~11_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[29]~10_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~9_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[30]~9_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][8]~8_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][14]~7_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[16]~8_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[17]~7_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][12]~6_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[18]~6_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[19]~5_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][10]~5_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[20]~4_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[21]~3_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][8]~4_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[22]~2_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[23]~1_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][31]~3_combout\ : std_logic;
SIGNAL \ALT_INV_fill~0_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][31]~2_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[31]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y~52_combout\ : std_logic;
SIGNAL \ALT_INV_Y~51_combout\ : std_logic;
SIGNAL \ALT_INV_Y~50_combout\ : std_logic;
SIGNAL \ALT_INV_Y~49_combout\ : std_logic;
SIGNAL \ALT_INV_Y~47_combout\ : std_logic;
SIGNAL \ALT_INV_Y~45_combout\ : std_logic;
SIGNAL \ALT_INV_Y~43_combout\ : std_logic;
SIGNAL \ALT_INV_Y~41_combout\ : std_logic;
SIGNAL \ALT_INV_Y~40_combout\ : std_logic;
SIGNAL \ALT_INV_Y~38_combout\ : std_logic;
SIGNAL \ALT_INV_Y~36_combout\ : std_logic;
SIGNAL \ALT_INV_Y~34_combout\ : std_logic;
SIGNAL \ALT_INV_Y~32_combout\ : std_logic;
SIGNAL \ALT_INV_Y~30_combout\ : std_logic;
SIGNAL \ALT_INV_Y~28_combout\ : std_logic;
SIGNAL \ALT_INV_Y~26_combout\ : std_logic;
SIGNAL \ALT_INV_Y~25_combout\ : std_logic;
SIGNAL \ALT_INV_Y~24_combout\ : std_logic;
SIGNAL \ALT_INV_Y~23_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][15]~104_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][16]~103_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][14]~102_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][17]~101_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][13]~100_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][18]~99_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][12]~98_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][19]~97_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][11]~96_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][20]~95_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][31]~1_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][4]~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_stage[6][10]~94_combout\ <= NOT \stage[6][10]~94_combout\;
\ALT_INV_stage[6][21]~93_combout\ <= NOT \stage[6][21]~93_combout\;
\ALT_INV_stage[6][9]~92_combout\ <= NOT \stage[6][9]~92_combout\;
\ALT_INV_stage[6][22]~91_combout\ <= NOT \stage[6][22]~91_combout\;
\ALT_INV_stage[6][8]~90_combout\ <= NOT \stage[6][8]~90_combout\;
\ALT_INV_stage[6][14]~89_combout\ <= NOT \stage[6][14]~89_combout\;
\ALT_INV_stage[6][23]~88_combout\ <= NOT \stage[6][23]~88_combout\;
\ALT_INV_Y~12_combout\ <= NOT \Y~12_combout\;
\ALT_INV_stage[6][7]~87_combout\ <= NOT \stage[6][7]~87_combout\;
\ALT_INV_stage[6][7]~86_combout\ <= NOT \stage[6][7]~86_combout\;
\ALT_INV_stage[3][31]~85_combout\ <= NOT \stage[3][31]~85_combout\;
\ALT_INV_stage[3][23]~84_combout\ <= NOT \stage[3][23]~84_combout\;
\ALT_INV_stage[6][7]~83_combout\ <= NOT \stage[6][7]~83_combout\;
\ALT_INV_stage[3][15]~82_combout\ <= NOT \stage[3][15]~82_combout\;
\ALT_INV_Y~10_combout\ <= NOT \Y~10_combout\;
\ALT_INV_stage[6][6]~81_combout\ <= NOT \stage[6][6]~81_combout\;
\ALT_INV_stage[6][6]~80_combout\ <= NOT \stage[6][6]~80_combout\;
\ALT_INV_stage[3][30]~79_combout\ <= NOT \stage[3][30]~79_combout\;
\ALT_INV_stage[3][22]~78_combout\ <= NOT \stage[3][22]~78_combout\;
\ALT_INV_stage[6][6]~77_combout\ <= NOT \stage[6][6]~77_combout\;
\ALT_INV_stage[3][14]~76_combout\ <= NOT \stage[3][14]~76_combout\;
\ALT_INV_Y~8_combout\ <= NOT \Y~8_combout\;
\ALT_INV_stage[6][5]~75_combout\ <= NOT \stage[6][5]~75_combout\;
\ALT_INV_stage[6][5]~74_combout\ <= NOT \stage[6][5]~74_combout\;
\ALT_INV_stage[3][21]~73_combout\ <= NOT \stage[3][21]~73_combout\;
\ALT_INV_stage[6][5]~72_combout\ <= NOT \stage[6][5]~72_combout\;
\ALT_INV_stage[3][13]~71_combout\ <= NOT \stage[3][13]~71_combout\;
\ALT_INV_Y~6_combout\ <= NOT \Y~6_combout\;
\ALT_INV_stage[6][4]~70_combout\ <= NOT \stage[6][4]~70_combout\;
\ALT_INV_stage[6][4]~69_combout\ <= NOT \stage[6][4]~69_combout\;
\ALT_INV_stage[3][20]~68_combout\ <= NOT \stage[3][20]~68_combout\;
\ALT_INV_stage[6][4]~67_combout\ <= NOT \stage[6][4]~67_combout\;
\ALT_INV_stage[3][12]~66_combout\ <= NOT \stage[3][12]~66_combout\;
\ALT_INV_Y~4_combout\ <= NOT \Y~4_combout\;
\ALT_INV_stage[3][28]~65_combout\ <= NOT \stage[3][28]~65_combout\;
\ALT_INV_stage[6][3]~64_combout\ <= NOT \stage[6][3]~64_combout\;
\ALT_INV_stage[6][3]~63_combout\ <= NOT \stage[6][3]~63_combout\;
\ALT_INV_stage[3][27]~62_combout\ <= NOT \stage[3][27]~62_combout\;
\ALT_INV_stage[3][19]~61_combout\ <= NOT \stage[3][19]~61_combout\;
\ALT_INV_stage[6][3]~60_combout\ <= NOT \stage[6][3]~60_combout\;
\ALT_INV_stage[3][11]~59_combout\ <= NOT \stage[3][11]~59_combout\;
\ALT_INV_Y~2_combout\ <= NOT \Y~2_combout\;
\ALT_INV_stage[3][29]~58_combout\ <= NOT \stage[3][29]~58_combout\;
\ALT_INV_stage[6][2]~57_combout\ <= NOT \stage[6][2]~57_combout\;
\ALT_INV_stage[6][2]~56_combout\ <= NOT \stage[6][2]~56_combout\;
\ALT_INV_stage[3][26]~55_combout\ <= NOT \stage[3][26]~55_combout\;
\ALT_INV_stage[3][18]~54_combout\ <= NOT \stage[3][18]~54_combout\;
\ALT_INV_stage[6][2]~53_combout\ <= NOT \stage[6][2]~53_combout\;
\ALT_INV_stage[3][10]~52_combout\ <= NOT \stage[3][10]~52_combout\;
\ALT_INV_stage[6][1]~51_combout\ <= NOT \stage[6][1]~51_combout\;
\ALT_INV_stage[6][1]~50_combout\ <= NOT \stage[6][1]~50_combout\;
\ALT_INV_stage[3][25]~49_combout\ <= NOT \stage[3][25]~49_combout\;
\ALT_INV_stage[1][31]~48_combout\ <= NOT \stage[1][31]~48_combout\;
\ALT_INV_stage[1][29]~47_combout\ <= NOT \stage[1][29]~47_combout\;
\ALT_INV_stage[1][27]~46_combout\ <= NOT \stage[1][27]~46_combout\;
\ALT_INV_stage[1][25]~45_combout\ <= NOT \stage[1][25]~45_combout\;
\ALT_INV_stage[3][17]~44_combout\ <= NOT \stage[3][17]~44_combout\;
\ALT_INV_stage[1][23]~43_combout\ <= NOT \stage[1][23]~43_combout\;
\ALT_INV_stage[1][21]~42_combout\ <= NOT \stage[1][21]~42_combout\;
\ALT_INV_stage[1][19]~41_combout\ <= NOT \stage[1][19]~41_combout\;
\ALT_INV_stage[1][17]~40_combout\ <= NOT \stage[1][17]~40_combout\;
\ALT_INV_stage[6][1]~39_combout\ <= NOT \stage[6][1]~39_combout\;
\ALT_INV_stage[1][7]~38_combout\ <= NOT \stage[1][7]~38_combout\;
\ALT_INV_stage[1][5]~37_combout\ <= NOT \stage[1][5]~37_combout\;
\ALT_INV_stage[1][3]~36_combout\ <= NOT \stage[1][3]~36_combout\;
\ALT_INV_stage[6][1]~35_combout\ <= NOT \stage[6][1]~35_combout\;
\ALT_INV_stage[3][9]~34_combout\ <= NOT \stage[3][9]~34_combout\;
\ALT_INV_stage[1][15]~33_combout\ <= NOT \stage[1][15]~33_combout\;
\ALT_INV_stage[1][13]~32_combout\ <= NOT \stage[1][13]~32_combout\;
\ALT_INV_stage[1][11]~31_combout\ <= NOT \stage[1][11]~31_combout\;
\ALT_INV_stage[1][9]~30_combout\ <= NOT \stage[1][9]~30_combout\;
\ALT_INV_stage[6][30]~29_combout\ <= NOT \stage[6][30]~29_combout\;
\ALT_INV_stage[6][0]~28_combout\ <= NOT \stage[6][0]~28_combout\;
\ALT_INV_stage[6][0]~27_combout\ <= NOT \stage[6][0]~27_combout\;
\ALT_INV_stage[6][0]~26_combout\ <= NOT \stage[6][0]~26_combout\;
\ALT_INV_stage[3][24]~25_combout\ <= NOT \stage[3][24]~25_combout\;
\ALT_INV_stage[1][30]~24_combout\ <= NOT \stage[1][30]~24_combout\;
\ALT_INV_stage[1][28]~23_combout\ <= NOT \stage[1][28]~23_combout\;
\ALT_INV_stage[1][26]~22_combout\ <= NOT \stage[1][26]~22_combout\;
\ALT_INV_stage[1][24]~21_combout\ <= NOT \stage[1][24]~21_combout\;
\ALT_INV_stage[6][0]~20_combout\ <= NOT \stage[6][0]~20_combout\;
\ALT_INV_stage[3][16]~19_combout\ <= NOT \stage[3][16]~19_combout\;
\ALT_INV_stage[1][22]~18_combout\ <= NOT \stage[1][22]~18_combout\;
\ALT_INV_stage[1][20]~17_combout\ <= NOT \stage[1][20]~17_combout\;
\ALT_INV_stage[1][18]~16_combout\ <= NOT \stage[1][18]~16_combout\;
\ALT_INV_stage[1][16]~15_combout\ <= NOT \stage[1][16]~15_combout\;
\ALT_INV_stage[6][0]~14_combout\ <= NOT \stage[6][0]~14_combout\;
\ALT_INV_stage[6][0]~13_combout\ <= NOT \stage[6][0]~13_combout\;
\ALT_INV_stage[1][6]~12_combout\ <= NOT \stage[1][6]~12_combout\;
\ALT_INV_A_in[24]~15_combout\ <= NOT \A_in[24]~15_combout\;
\ALT_INV_A_in[25]~14_combout\ <= NOT \A_in[25]~14_combout\;
\ALT_INV_stage[1][4]~11_combout\ <= NOT \stage[1][4]~11_combout\;
\ALT_INV_A_in[26]~13_combout\ <= NOT \A_in[26]~13_combout\;
\ALT_INV_A_in[27]~12_combout\ <= NOT \A_in[27]~12_combout\;
\ALT_INV_stage[1][2]~10_combout\ <= NOT \stage[1][2]~10_combout\;
\ALT_INV_A_in[28]~11_combout\ <= NOT \A_in[28]~11_combout\;
\ALT_INV_A_in[29]~10_combout\ <= NOT \A_in[29]~10_combout\;
\ALT_INV_stage[6][0]~9_combout\ <= NOT \stage[6][0]~9_combout\;
\ALT_INV_A_in[30]~9_combout\ <= NOT \A_in[30]~9_combout\;
\ALT_INV_stage[3][8]~8_combout\ <= NOT \stage[3][8]~8_combout\;
\ALT_INV_stage[1][14]~7_combout\ <= NOT \stage[1][14]~7_combout\;
\ALT_INV_A_in[16]~8_combout\ <= NOT \A_in[16]~8_combout\;
\ALT_INV_A_in[17]~7_combout\ <= NOT \A_in[17]~7_combout\;
\ALT_INV_stage[1][12]~6_combout\ <= NOT \stage[1][12]~6_combout\;
\ALT_INV_A_in[18]~6_combout\ <= NOT \A_in[18]~6_combout\;
\ALT_INV_A_in[19]~5_combout\ <= NOT \A_in[19]~5_combout\;
\ALT_INV_stage[1][10]~5_combout\ <= NOT \stage[1][10]~5_combout\;
\ALT_INV_A_in[20]~4_combout\ <= NOT \A_in[20]~4_combout\;
\ALT_INV_A_in[21]~3_combout\ <= NOT \A_in[21]~3_combout\;
\ALT_INV_stage[1][8]~4_combout\ <= NOT \stage[1][8]~4_combout\;
\ALT_INV_A_in[22]~2_combout\ <= NOT \A_in[22]~2_combout\;
\ALT_INV_A_in[23]~1_combout\ <= NOT \A_in[23]~1_combout\;
\ALT_INV_stage[6][31]~3_combout\ <= NOT \stage[6][31]~3_combout\;
\ALT_INV_fill~0_combout\ <= NOT \fill~0_combout\;
\ALT_INV_stage[3][31]~2_combout\ <= NOT \stage[3][31]~2_combout\;
\ALT_INV_A_in[31]~0_combout\ <= NOT \A_in[31]~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Y~52_combout\ <= NOT \Y~52_combout\;
\ALT_INV_Y~51_combout\ <= NOT \Y~51_combout\;
\ALT_INV_Y~50_combout\ <= NOT \Y~50_combout\;
\ALT_INV_Y~49_combout\ <= NOT \Y~49_combout\;
\ALT_INV_Y~47_combout\ <= NOT \Y~47_combout\;
\ALT_INV_Y~45_combout\ <= NOT \Y~45_combout\;
\ALT_INV_Y~43_combout\ <= NOT \Y~43_combout\;
\ALT_INV_Y~41_combout\ <= NOT \Y~41_combout\;
\ALT_INV_Y~40_combout\ <= NOT \Y~40_combout\;
\ALT_INV_Y~38_combout\ <= NOT \Y~38_combout\;
\ALT_INV_Y~36_combout\ <= NOT \Y~36_combout\;
\ALT_INV_Y~34_combout\ <= NOT \Y~34_combout\;
\ALT_INV_Y~32_combout\ <= NOT \Y~32_combout\;
\ALT_INV_Y~30_combout\ <= NOT \Y~30_combout\;
\ALT_INV_Y~28_combout\ <= NOT \Y~28_combout\;
\ALT_INV_Y~26_combout\ <= NOT \Y~26_combout\;
\ALT_INV_Y~25_combout\ <= NOT \Y~25_combout\;
\ALT_INV_Y~24_combout\ <= NOT \Y~24_combout\;
\ALT_INV_Y~23_combout\ <= NOT \Y~23_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_stage[6][15]~104_combout\ <= NOT \stage[6][15]~104_combout\;
\ALT_INV_stage[6][16]~103_combout\ <= NOT \stage[6][16]~103_combout\;
\ALT_INV_stage[6][14]~102_combout\ <= NOT \stage[6][14]~102_combout\;
\ALT_INV_stage[6][17]~101_combout\ <= NOT \stage[6][17]~101_combout\;
\ALT_INV_stage[6][13]~100_combout\ <= NOT \stage[6][13]~100_combout\;
\ALT_INV_stage[6][18]~99_combout\ <= NOT \stage[6][18]~99_combout\;
\ALT_INV_stage[6][12]~98_combout\ <= NOT \stage[6][12]~98_combout\;
\ALT_INV_stage[6][19]~97_combout\ <= NOT \stage[6][19]~97_combout\;
\ALT_INV_stage[6][11]~96_combout\ <= NOT \stage[6][11]~96_combout\;
\ALT_INV_stage[6][20]~95_combout\ <= NOT \stage[6][20]~95_combout\;
\ALT_INV_stage[3][31]~1_combout\ <= NOT \stage[3][31]~1_combout\;
\ALT_INV_stage[6][4]~0_combout\ <= NOT \stage[6][4]~0_combout\;

-- Location: IOOBUF_X17_Y56_N98
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X48_Y56_N98
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~1_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X21_Y56_N67
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~3_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X25_Y56_N98
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~5_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X46_Y56_N2
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~7_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~9_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~11_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~13_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X25_Y56_N67
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~14_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X19_Y56_N36
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~15_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~16_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X44_Y56_N98
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~17_combout\,
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
	i => \Y~18_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X51_Y56_N67
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~19_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~20_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X21_Y56_N98
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~21_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X17_Y56_N67
\Y[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~22_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X46_Y56_N67
\Y[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~27_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X36_Y56_N2
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~29_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X36_Y56_N98
\Y[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~31_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X44_Y56_N67
\Y[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~33_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X59_Y51_N33
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~35_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X40_Y56_N33
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~37_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X42_Y56_N36
\Y[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~39_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X35_Y56_N2
\Y[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~42_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X46_Y56_N98
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~44_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X48_Y56_N33
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~46_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X35_Y56_N98
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~48_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X23_Y56_N36
\Y[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~65_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X21_Y56_N36
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~61_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X23_Y56_N2
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~57_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X28_Y56_N67
\Y[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~53_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOIBUF_X30_Y56_N63
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X33_Y56_N94
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X17_Y56_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X28_Y56_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X15_Y56_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X23_Y56_N63
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X35_Y56_N32
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: MLABCELL_X29_Y52_N0
\stage[6][4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][4]~0_combout\ = ( \ExtWord~input_o\ & ( !\B[4]~input_o\ ) ) # ( !\ExtWord~input_o\ & ( (!\B[5]~input_o\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \stage[6][4]~0_combout\);

-- Location: IOIBUF_X28_Y56_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X30_Y56_N94
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X30_Y56_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: MLABCELL_X29_Y53_N26
\stage[3][31]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][31]~1_combout\ = ( !\B[0]~input_o\ & ( (!\B[2]~input_o\ & !\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[3][31]~1_combout\);

-- Location: LABCELL_X32_Y52_N34
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X21_Y56_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X35_Y56_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X29_Y53_N24
\A_in[31]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[31]~0_combout\ = ( \A[15]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[31]~input_o\)))) # (\ExtWord~input_o\ & (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (!\ExtWord~input_o\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \A_in[31]~0_combout\);

-- Location: MLABCELL_X29_Y53_N10
\stage[3][31]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][31]~2_combout\ = ( \A_in[31]~0_combout\ & ( (\stage[3][31]~1_combout\ & ((!\Equal0~0_combout\) # (\A[0]~input_o\))) ) ) # ( !\A_in[31]~0_combout\ & ( (\A[0]~input_o\ & (\stage[3][31]~1_combout\ & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_stage[3][31]~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A_in[31]~0_combout\,
	combout => \stage[3][31]~2_combout\);

-- Location: MLABCELL_X29_Y53_N14
\fill~0\ : arriaii_lcell_comb
-- Equation(s):
-- \fill~0_combout\ = ( \A[15]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\) # (\ExtWord~input_o\)))) ) ) # ( !\A[15]~input_o\ & ( (\ShiftFN[1]~input_o\ & (!\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & \A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \fill~0_combout\);

-- Location: MLABCELL_X29_Y53_N18
\stage[6][31]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][31]~3_combout\ = ( \fill~0_combout\ & ( ((!\stage[6][4]~0_combout\) # ((!\stage[3][31]~1_combout\) # (\stage[3][31]~2_combout\))) # (\B[3]~input_o\) ) ) # ( !\fill~0_combout\ & ( (!\B[3]~input_o\ & (\stage[6][4]~0_combout\ & 
-- \stage[3][31]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011111111110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_stage[6][4]~0_combout\,
	datac => \ALT_INV_stage[3][31]~2_combout\,
	datad => \ALT_INV_stage[3][31]~1_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[6][31]~3_combout\);

-- Location: IOIBUF_X38_Y56_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X38_Y56_N63
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: MLABCELL_X34_Y52_N16
\A_in[24]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[24]~15_combout\ = ( \A[24]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[0]~input_o\ & (\A[15]~input_o\ & \ShiftFN[1]~input_o\))) ) ) # ( !\A[24]~input_o\ & ( (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & (\A[15]~input_o\ & \ShiftFN[1]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000110101010101010111010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \A_in[24]~15_combout\);

-- Location: IOIBUF_X49_Y56_N94
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: MLABCELL_X34_Y52_N12
\A_in[25]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[25]~14_combout\ = ( \A[25]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[0]~input_o\ & (\A[15]~input_o\ & \ShiftFN[1]~input_o\))) ) ) # ( !\A[25]~input_o\ & ( (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & (\A[15]~input_o\ & \ShiftFN[1]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000110101010101010111010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \A_in[25]~14_combout\);

-- Location: IOIBUF_X48_Y56_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X34_Y53_N8
\stage[1][6]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][6]~12_combout\ = ( \Equal0~0_combout\ & ( \A[7]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[25]~14_combout\))) # (\B[0]~input_o\ & (\A_in[24]~15_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( \A[7]~input_o\ & ( (\B[0]~input_o\) # (\A[6]~input_o\) ) ) 
-- ) # ( \Equal0~0_combout\ & ( !\A[7]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[25]~14_combout\))) # (\B[0]~input_o\ & (\A_in[24]~15_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[7]~input_o\ & ( (\A[6]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[24]~15_combout\,
	datad => \ALT_INV_A_in[25]~14_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \stage[1][6]~12_combout\);

-- Location: IOIBUF_X23_Y56_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X19_Y56_N1
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: MLABCELL_X29_Y53_N12
\A_in[30]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[30]~9_combout\ = ( \A[15]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[30]~input_o\)))) # (\ExtWord~input_o\ & (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (!\ExtWord~input_o\ & \A[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \A_in[30]~9_combout\);

-- Location: MLABCELL_X29_Y53_N20
\stage[6][0]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~9_combout\ = ( \A_in[30]~9_combout\ & ( \A_in[31]~0_combout\ & ( ((!\B[0]~input_o\ & ((\A[0]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\))) # (\Equal0~0_combout\) ) ) ) # ( !\A_in[30]~9_combout\ & ( \A_in[31]~0_combout\ & ( 
-- (!\B[0]~input_o\ & (((\A[0]~input_o\)) # (\Equal0~0_combout\))) # (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[1]~input_o\))) ) ) ) # ( \A_in[30]~9_combout\ & ( !\A_in[31]~0_combout\ & ( (!\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[0]~input_o\)))) # 
-- (\B[0]~input_o\ & (((\A[1]~input_o\)) # (\Equal0~0_combout\))) ) ) ) # ( !\A_in[30]~9_combout\ & ( !\A_in[31]~0_combout\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A[0]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A_in[30]~9_combout\,
	dataf => \ALT_INV_A_in[31]~0_combout\,
	combout => \stage[6][0]~9_combout\);

-- Location: IOIBUF_X38_Y56_N94
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X42_Y56_N1
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: MLABCELL_X34_Y52_N24
\A_in[27]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[27]~12_combout\ = ( \A[27]~input_o\ & ( (!\ExtWord~input_o\) # ((\A[15]~input_o\ & (\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\))) ) ) # ( !\A[27]~input_o\ & ( (\A[15]~input_o\ & (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\ & \ShiftFN[1]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \A_in[27]~12_combout\);

-- Location: IOIBUF_X49_Y56_N32
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: MLABCELL_X34_Y52_N8
\A_in[26]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[26]~13_combout\ = ( \A[26]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \A[15]~input_o\))) ) ) # ( !\A[26]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\ & \A[15]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \A_in[26]~13_combout\);

-- Location: IOIBUF_X40_Y56_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X34_Y53_N26
\stage[1][4]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][4]~11_combout\ = ( \Equal0~0_combout\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[27]~12_combout\)) # (\B[0]~input_o\ & ((\A_in[26]~13_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( \A[5]~input_o\ & ( (\B[0]~input_o\) # (\A[4]~input_o\) ) ) 
-- ) # ( \Equal0~0_combout\ & ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[27]~12_combout\)) # (\B[0]~input_o\ & ((\A_in[26]~13_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[5]~input_o\ & ( (\A[4]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[27]~12_combout\,
	datad => \ALT_INV_A_in[26]~13_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \stage[1][4]~11_combout\);

-- Location: IOIBUF_X25_Y56_N32
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X19_Y56_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X48_Y56_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LABCELL_X32_Y52_N32
\A_in[29]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[29]~10_combout\ = ( \A[29]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \A[15]~input_o\))) ) ) # ( !\A[29]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\ & \A[15]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \A_in[29]~10_combout\);

-- Location: IOIBUF_X25_Y56_N1
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X32_Y52_N16
\A_in[28]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[28]~11_combout\ = ( \A[28]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \A[15]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\A[15]~input_o\ & \ExtWord~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \A_in[28]~11_combout\);

-- Location: MLABCELL_X34_Y53_N22
\stage[1][2]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][2]~10_combout\ = ( \A_in[29]~10_combout\ & ( \A_in[28]~11_combout\ & ( ((!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\)))) # (\Equal0~0_combout\) ) ) ) # ( !\A_in[29]~10_combout\ & ( \A_in[28]~11_combout\ & ( 
-- (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))))) # (\Equal0~0_combout\ & (((\B[0]~input_o\)))) ) ) ) # ( \A_in[29]~10_combout\ & ( !\A_in[28]~11_combout\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & 
-- (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))))) # (\Equal0~0_combout\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A_in[29]~10_combout\ & ( !\A_in[28]~11_combout\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A_in[29]~10_combout\,
	dataf => \ALT_INV_A_in[28]~11_combout\,
	combout => \stage[1][2]~10_combout\);

-- Location: LABCELL_X30_Y53_N24
\stage[6][0]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~13_combout\ = ( \B[2]~input_o\ & ( \stage[1][2]~10_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][4]~11_combout\))) # (\B[1]~input_o\ & (\stage[1][6]~12_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][2]~10_combout\ & ( 
-- (\stage[6][0]~9_combout\) # (\B[1]~input_o\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][2]~10_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][4]~11_combout\))) # (\B[1]~input_o\ & (\stage[1][6]~12_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\stage[1][2]~10_combout\ & ( (!\B[1]~input_o\ & \stage[6][0]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][6]~12_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[6][0]~9_combout\,
	datad => \ALT_INV_stage[1][4]~11_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][2]~10_combout\,
	combout => \stage[6][0]~13_combout\);

-- Location: IOIBUF_X42_Y56_N63
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: MLABCELL_X34_Y52_N0
\A_in[18]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[18]~6_combout\ = ( \A[18]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[0]~input_o\ & (\A[15]~input_o\ & \ShiftFN[1]~input_o\))) ) ) # ( !\A[18]~input_o\ & ( (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & (\A[15]~input_o\ & \ShiftFN[1]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000110101010101010111010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \A_in[18]~6_combout\);

-- Location: IOIBUF_X36_Y56_N32
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X35_Y52_N30
\A_in[19]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[19]~5_combout\ = ( \A[19]~input_o\ & ( (!\ExtWord~input_o\) # ((\A[15]~input_o\ & (\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))) ) ) # ( !\A[19]~input_o\ & ( (\A[15]~input_o\ & (\ExtWord~input_o\ & (\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \A_in[19]~5_combout\);

-- Location: IOIBUF_X33_Y56_N63
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X38_Y56_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: MLABCELL_X31_Y52_N2
\stage[1][12]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][12]~6_combout\ = ( \A[13]~input_o\ & ( \A[12]~input_o\ & ( (!\Equal0~0_combout\) # ((!\B[0]~input_o\ & ((\A_in[19]~5_combout\))) # (\B[0]~input_o\ & (\A_in[18]~6_combout\))) ) ) ) # ( !\A[13]~input_o\ & ( \A[12]~input_o\ & ( (!\Equal0~0_combout\ 
-- & (((!\B[0]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A_in[19]~5_combout\))) # (\B[0]~input_o\ & (\A_in[18]~6_combout\)))) ) ) ) # ( \A[13]~input_o\ & ( !\A[12]~input_o\ & ( (!\Equal0~0_combout\ & (((\B[0]~input_o\)))) # 
-- (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A_in[19]~5_combout\))) # (\B[0]~input_o\ & (\A_in[18]~6_combout\)))) ) ) ) # ( !\A[13]~input_o\ & ( !\A[12]~input_o\ & ( (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A_in[19]~5_combout\))) # (\B[0]~input_o\ & 
-- (\A_in[18]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[18]~6_combout\,
	datac => \ALT_INV_A_in[19]~5_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \stage[1][12]~6_combout\);

-- Location: IOIBUF_X40_Y56_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LABCELL_X35_Y52_N4
\A_in[22]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[22]~2_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[22]~input_o\)))) # (\ExtWord~input_o\ & (\A[15]~input_o\ & ((\ShiftFN[0]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & \A[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000111010000110000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[22]~2_combout\);

-- Location: IOIBUF_X31_Y56_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X30_Y56_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

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

-- Location: LABCELL_X35_Y52_N20
\A_in[23]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[23]~1_combout\ = ( \A[23]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \A[15]~input_o\))) ) ) # ( !\A[23]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & \A[15]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \A_in[23]~1_combout\);

-- Location: MLABCELL_X31_Y53_N22
\stage[1][8]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][8]~4_combout\ = ( \A[9]~input_o\ & ( \A_in[23]~1_combout\ & ( (!\B[0]~input_o\ & (((\A[8]~input_o\) # (\Equal0~0_combout\)))) # (\B[0]~input_o\ & (((!\Equal0~0_combout\)) # (\A_in[22]~2_combout\))) ) ) ) # ( !\A[9]~input_o\ & ( 
-- \A_in[23]~1_combout\ & ( (!\B[0]~input_o\ & (((\A[8]~input_o\) # (\Equal0~0_combout\)))) # (\B[0]~input_o\ & (\A_in[22]~2_combout\ & (\Equal0~0_combout\))) ) ) ) # ( \A[9]~input_o\ & ( !\A_in[23]~1_combout\ & ( (!\B[0]~input_o\ & (((!\Equal0~0_combout\ & 
-- \A[8]~input_o\)))) # (\B[0]~input_o\ & (((!\Equal0~0_combout\)) # (\A_in[22]~2_combout\))) ) ) ) # ( !\A[9]~input_o\ & ( !\A_in[23]~1_combout\ & ( (!\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[8]~input_o\)))) # (\B[0]~input_o\ & (\A_in[22]~2_combout\ & 
-- (\Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[22]~2_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A_in[23]~1_combout\,
	combout => \stage[1][8]~4_combout\);

-- Location: IOIBUF_X19_Y56_N63
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: MLABCELL_X31_Y52_N6
\A_in[16]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[16]~8_combout\ = ( \ExtWord~input_o\ & ( (\A[15]~input_o\ & (\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( \A[16]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \A_in[16]~8_combout\);

-- Location: IOIBUF_X53_Y56_N1
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: MLABCELL_X34_Y52_N2
\A_in[17]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[17]~7_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[17]~input_o\)))) # (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & ((\A[15]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & \A[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[17]~7_combout\);

-- Location: IOIBUF_X33_Y56_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: MLABCELL_X31_Y52_N8
\stage[1][14]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][14]~7_combout\ = ( \A[14]~input_o\ & ( \A[15]~input_o\ & ( (!\Equal0~0_combout\) # ((!\B[0]~input_o\ & ((\A_in[17]~7_combout\))) # (\B[0]~input_o\ & (\A_in[16]~8_combout\))) ) ) ) # ( !\A[14]~input_o\ & ( \A[15]~input_o\ & ( (!\Equal0~0_combout\ 
-- & (((\B[0]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A_in[17]~7_combout\))) # (\B[0]~input_o\ & (\A_in[16]~8_combout\)))) ) ) ) # ( \A[14]~input_o\ & ( !\A[15]~input_o\ & ( (!\Equal0~0_combout\ & (((!\B[0]~input_o\)))) # 
-- (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A_in[17]~7_combout\))) # (\B[0]~input_o\ & (\A_in[16]~8_combout\)))) ) ) ) # ( !\A[14]~input_o\ & ( !\A[15]~input_o\ & ( (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A_in[17]~7_combout\))) # (\B[0]~input_o\ & 
-- (\A_in[16]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[16]~8_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_in[17]~7_combout\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \stage[1][14]~7_combout\);

-- Location: IOIBUF_X40_Y56_N94
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LABCELL_X35_Y52_N28
\A_in[20]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[20]~4_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[20]~input_o\)))) # (\ExtWord~input_o\ & (\A[15]~input_o\ & (\ShiftFN[0]~input_o\))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & \A[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[20]~4_combout\);

-- Location: IOIBUF_X31_Y56_N94
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X31_Y56_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X36_Y56_N63
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X35_Y52_N6
\A_in[21]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[21]~3_combout\ = ( \A[21]~input_o\ & ( (!\ExtWord~input_o\) # ((\A[15]~input_o\ & (\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))) ) ) # ( !\A[21]~input_o\ & ( (\A[15]~input_o\ & (\ExtWord~input_o\ & (\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \A_in[21]~3_combout\);

-- Location: MLABCELL_X31_Y53_N6
\stage[1][10]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][10]~5_combout\ = ( \A[10]~input_o\ & ( \A_in[21]~3_combout\ & ( (!\B[0]~input_o\) # ((!\Equal0~0_combout\ & ((\A[11]~input_o\))) # (\Equal0~0_combout\ & (\A_in[20]~4_combout\))) ) ) ) # ( !\A[10]~input_o\ & ( \A_in[21]~3_combout\ & ( 
-- (!\B[0]~input_o\ & (((\Equal0~0_combout\)))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\ & ((\A[11]~input_o\))) # (\Equal0~0_combout\ & (\A_in[20]~4_combout\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A_in[21]~3_combout\ & ( (!\B[0]~input_o\ & 
-- (((!\Equal0~0_combout\)))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\ & ((\A[11]~input_o\))) # (\Equal0~0_combout\ & (\A_in[20]~4_combout\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A_in[21]~3_combout\ & ( (\B[0]~input_o\ & ((!\Equal0~0_combout\ & 
-- ((\A[11]~input_o\))) # (\Equal0~0_combout\ & (\A_in[20]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[20]~4_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A_in[21]~3_combout\,
	combout => \stage[1][10]~5_combout\);

-- Location: LABCELL_X30_Y53_N20
\stage[3][8]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][8]~8_combout\ = ( \B[2]~input_o\ & ( \stage[1][10]~5_combout\ & ( (!\B[1]~input_o\ & (\stage[1][12]~6_combout\)) # (\B[1]~input_o\ & ((\stage[1][14]~7_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][10]~5_combout\ & ( 
-- (\stage[1][8]~4_combout\) # (\B[1]~input_o\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][10]~5_combout\ & ( (!\B[1]~input_o\ & (\stage[1][12]~6_combout\)) # (\B[1]~input_o\ & ((\stage[1][14]~7_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\stage[1][10]~5_combout\ & ( (!\B[1]~input_o\ & \stage[1][8]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][12]~6_combout\,
	datac => \ALT_INV_stage[1][8]~4_combout\,
	datad => \ALT_INV_stage[1][14]~7_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][10]~5_combout\,
	combout => \stage[3][8]~8_combout\);

-- Location: MLABCELL_X34_Y53_N14
\stage[1][24]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][24]~21_combout\ = ( \Equal0~0_combout\ & ( \A[7]~input_o\ & ( (!\B[0]~input_o\) # (\A[6]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( \A[7]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[24]~15_combout\))) # (\B[0]~input_o\ & (\A_in[25]~14_combout\)) ) 
-- ) ) # ( \Equal0~0_combout\ & ( !\A[7]~input_o\ & ( (\A[6]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[7]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[24]~15_combout\))) # (\B[0]~input_o\ & (\A_in[25]~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[25]~14_combout\,
	datad => \ALT_INV_A_in[24]~15_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \stage[1][24]~21_combout\);

-- Location: MLABCELL_X34_Y53_N2
\stage[1][28]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][28]~23_combout\ = ( \A_in[29]~10_combout\ & ( \A_in[28]~11_combout\ & ( (!\Equal0~0_combout\) # ((!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\))) ) ) ) # ( !\A_in[29]~10_combout\ & ( \A_in[28]~11_combout\ & ( 
-- (!\Equal0~0_combout\ & (((!\B[0]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)))) ) ) ) # ( \A_in[29]~10_combout\ & ( !\A_in[28]~11_combout\ & ( (!\Equal0~0_combout\ & 
-- (((\B[0]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)))) ) ) ) # ( !\A_in[29]~10_combout\ & ( !\A_in[28]~11_combout\ & ( (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A[3]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A_in[29]~10_combout\,
	dataf => \ALT_INV_A_in[28]~11_combout\,
	combout => \stage[1][28]~23_combout\);

-- Location: MLABCELL_X29_Y53_N6
\stage[1][30]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][30]~24_combout\ = ( \A_in[30]~9_combout\ & ( \A_in[31]~0_combout\ & ( (!\Equal0~0_combout\) # ((!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (\A[0]~input_o\))) ) ) ) # ( !\A_in[30]~9_combout\ & ( \A_in[31]~0_combout\ & ( 
-- (!\B[0]~input_o\ & (\Equal0~0_combout\ & ((\A[1]~input_o\)))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\) # ((\A[0]~input_o\)))) ) ) ) # ( \A_in[30]~9_combout\ & ( !\A_in[31]~0_combout\ & ( (!\B[0]~input_o\ & ((!\Equal0~0_combout\) # ((\A[1]~input_o\)))) # 
-- (\B[0]~input_o\ & (\Equal0~0_combout\ & (\A[0]~input_o\))) ) ) ) # ( !\A_in[30]~9_combout\ & ( !\A_in[31]~0_combout\ & ( (\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (\A[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_A_in[30]~9_combout\,
	dataf => \ALT_INV_A_in[31]~0_combout\,
	combout => \stage[1][30]~24_combout\);

-- Location: MLABCELL_X34_Y53_N38
\stage[1][26]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][26]~22_combout\ = ( \Equal0~0_combout\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[26]~13_combout\))) # (\B[0]~input_o\ & (\A_in[27]~12_combout\)) ) 
-- ) ) # ( \Equal0~0_combout\ & ( !\A[5]~input_o\ & ( (\A[4]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[26]~13_combout\))) # (\B[0]~input_o\ & (\A_in[27]~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[27]~12_combout\,
	datad => \ALT_INV_A_in[26]~13_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \stage[1][26]~22_combout\);

-- Location: LABCELL_X27_Y52_N26
\stage[3][24]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][24]~25_combout\ = ( \stage[1][30]~24_combout\ & ( \stage[1][26]~22_combout\ & ( ((!\B[2]~input_o\ & (\stage[1][24]~21_combout\)) # (\B[2]~input_o\ & ((\stage[1][28]~23_combout\)))) # (\B[1]~input_o\) ) ) ) # ( !\stage[1][30]~24_combout\ & ( 
-- \stage[1][26]~22_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & (\stage[1][24]~21_combout\)) # (\B[2]~input_o\ & ((\stage[1][28]~23_combout\))))) # (\B[1]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( \stage[1][30]~24_combout\ & ( 
-- !\stage[1][26]~22_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & (\stage[1][24]~21_combout\)) # (\B[2]~input_o\ & ((\stage[1][28]~23_combout\))))) # (\B[1]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( !\stage[1][30]~24_combout\ & ( 
-- !\stage[1][26]~22_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & (\stage[1][24]~21_combout\)) # (\B[2]~input_o\ & ((\stage[1][28]~23_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][24]~21_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][28]~23_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_stage[1][30]~24_combout\,
	dataf => \ALT_INV_stage[1][26]~22_combout\,
	combout => \stage[3][24]~25_combout\);

-- Location: MLABCELL_X29_Y52_N6
\stage[6][0]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~26_combout\ = ( \ExtWord~input_o\ & ( (\B[3]~input_o\ & \B[4]~input_o\) ) ) # ( !\ExtWord~input_o\ & ( (\B[3]~input_o\ & (\B[4]~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \stage[6][0]~26_combout\);

-- Location: MLABCELL_X29_Y52_N4
\stage[6][0]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~20_combout\ = ( \ExtWord~input_o\ & ( (!\B[3]~input_o\ & \B[4]~input_o\) ) ) # ( !\ExtWord~input_o\ & ( (!\B[3]~input_o\ & (\B[4]~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \stage[6][0]~20_combout\);

-- Location: MLABCELL_X31_Y52_N38
\stage[1][18]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][18]~16_combout\ = ( \A[13]~input_o\ & ( \A[12]~input_o\ & ( ((!\B[0]~input_o\ & (\A_in[18]~6_combout\)) # (\B[0]~input_o\ & ((\A_in[19]~5_combout\)))) # (\Equal0~0_combout\) ) ) ) # ( !\A[13]~input_o\ & ( \A[12]~input_o\ & ( (!\Equal0~0_combout\ 
-- & ((!\B[0]~input_o\ & (\A_in[18]~6_combout\)) # (\B[0]~input_o\ & ((\A_in[19]~5_combout\))))) # (\Equal0~0_combout\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[13]~input_o\ & ( !\A[12]~input_o\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & 
-- (\A_in[18]~6_combout\)) # (\B[0]~input_o\ & ((\A_in[19]~5_combout\))))) # (\Equal0~0_combout\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[13]~input_o\ & ( !\A[12]~input_o\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & (\A_in[18]~6_combout\)) # (\B[0]~input_o\ 
-- & ((\A_in[19]~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[18]~6_combout\,
	datac => \ALT_INV_A_in[19]~5_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \stage[1][18]~16_combout\);

-- Location: MLABCELL_X31_Y53_N10
\stage[1][20]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][20]~17_combout\ = ( \A[10]~input_o\ & ( \A_in[21]~3_combout\ & ( ((!\Equal0~0_combout\ & (\A_in[20]~4_combout\)) # (\Equal0~0_combout\ & ((\A[11]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \A_in[21]~3_combout\ & ( 
-- (!\B[0]~input_o\ & ((!\Equal0~0_combout\ & (\A_in[20]~4_combout\)) # (\Equal0~0_combout\ & ((\A[11]~input_o\))))) # (\B[0]~input_o\ & (((!\Equal0~0_combout\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A_in[21]~3_combout\ & ( (!\B[0]~input_o\ & 
-- ((!\Equal0~0_combout\ & (\A_in[20]~4_combout\)) # (\Equal0~0_combout\ & ((\A[11]~input_o\))))) # (\B[0]~input_o\ & (((\Equal0~0_combout\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A_in[21]~3_combout\ & ( (!\B[0]~input_o\ & ((!\Equal0~0_combout\ & 
-- (\A_in[20]~4_combout\)) # (\Equal0~0_combout\ & ((\A[11]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[20]~4_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A_in[21]~3_combout\,
	combout => \stage[1][20]~17_combout\);

-- Location: MLABCELL_X31_Y53_N14
\stage[1][22]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][22]~18_combout\ = ( \A[9]~input_o\ & ( \A_in[23]~1_combout\ & ( (!\B[0]~input_o\ & (((\Equal0~0_combout\)) # (\A_in[22]~2_combout\))) # (\B[0]~input_o\ & (((!\Equal0~0_combout\) # (\A[8]~input_o\)))) ) ) ) # ( !\A[9]~input_o\ & ( 
-- \A_in[23]~1_combout\ & ( (!\B[0]~input_o\ & (\A_in[22]~2_combout\ & (!\Equal0~0_combout\))) # (\B[0]~input_o\ & (((!\Equal0~0_combout\) # (\A[8]~input_o\)))) ) ) ) # ( \A[9]~input_o\ & ( !\A_in[23]~1_combout\ & ( (!\B[0]~input_o\ & (((\Equal0~0_combout\)) 
-- # (\A_in[22]~2_combout\))) # (\B[0]~input_o\ & (((\Equal0~0_combout\ & \A[8]~input_o\)))) ) ) ) # ( !\A[9]~input_o\ & ( !\A_in[23]~1_combout\ & ( (!\B[0]~input_o\ & (\A_in[22]~2_combout\ & (!\Equal0~0_combout\))) # (\B[0]~input_o\ & (((\Equal0~0_combout\ 
-- & \A[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[22]~2_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A_in[23]~1_combout\,
	combout => \stage[1][22]~18_combout\);

-- Location: MLABCELL_X31_Y52_N34
\stage[1][16]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][16]~15_combout\ = ( \A[14]~input_o\ & ( \A[15]~input_o\ & ( ((!\B[0]~input_o\ & (\A_in[16]~8_combout\)) # (\B[0]~input_o\ & ((\A_in[17]~7_combout\)))) # (\Equal0~0_combout\) ) ) ) # ( !\A[14]~input_o\ & ( \A[15]~input_o\ & ( (!\Equal0~0_combout\ 
-- & ((!\B[0]~input_o\ & (\A_in[16]~8_combout\)) # (\B[0]~input_o\ & ((\A_in[17]~7_combout\))))) # (\Equal0~0_combout\ & (((!\B[0]~input_o\)))) ) ) ) # ( \A[14]~input_o\ & ( !\A[15]~input_o\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & 
-- (\A_in[16]~8_combout\)) # (\B[0]~input_o\ & ((\A_in[17]~7_combout\))))) # (\Equal0~0_combout\ & (((\B[0]~input_o\)))) ) ) ) # ( !\A[14]~input_o\ & ( !\A[15]~input_o\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & (\A_in[16]~8_combout\)) # (\B[0]~input_o\ 
-- & ((\A_in[17]~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[16]~8_combout\,
	datac => \ALT_INV_A_in[17]~7_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \stage[1][16]~15_combout\);

-- Location: LABCELL_X27_Y52_N20
\stage[3][16]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][16]~19_combout\ = ( \stage[1][22]~18_combout\ & ( \stage[1][16]~15_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\stage[1][20]~17_combout\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)) # (\stage[1][18]~16_combout\))) ) ) ) # ( 
-- !\stage[1][22]~18_combout\ & ( \stage[1][16]~15_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\stage[1][20]~17_combout\)))) # (\B[1]~input_o\ & (\stage[1][18]~16_combout\ & (!\B[2]~input_o\))) ) ) ) # ( \stage[1][22]~18_combout\ & ( 
-- !\stage[1][16]~15_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\ & \stage[1][20]~17_combout\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)) # (\stage[1][18]~16_combout\))) ) ) ) # ( !\stage[1][22]~18_combout\ & ( !\stage[1][16]~15_combout\ & ( 
-- (!\B[1]~input_o\ & (((\B[2]~input_o\ & \stage[1][20]~17_combout\)))) # (\B[1]~input_o\ & (\stage[1][18]~16_combout\ & (!\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][18]~16_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_stage[1][20]~17_combout\,
	datae => \ALT_INV_stage[1][22]~18_combout\,
	dataf => \ALT_INV_stage[1][16]~15_combout\,
	combout => \stage[3][16]~19_combout\);

-- Location: LABCELL_X30_Y53_N28
\stage[6][0]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~14_combout\ = ( \B[5]~input_o\ & ( !\ExtWord~input_o\ & ( \fill~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_fill~0_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \stage[6][0]~14_combout\);

-- Location: MLABCELL_X29_Y52_N28
\stage[6][0]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~27_combout\ = ( !\stage[6][0]~14_combout\ & ( (!\stage[3][24]~25_combout\ & (((!\stage[6][0]~20_combout\) # (!\stage[3][16]~19_combout\)))) # (\stage[3][24]~25_combout\ & (!\stage[6][0]~26_combout\ & ((!\stage[6][0]~20_combout\) # 
-- (!\stage[3][16]~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][24]~25_combout\,
	datab => \ALT_INV_stage[6][0]~26_combout\,
	datac => \ALT_INV_stage[6][0]~20_combout\,
	datad => \ALT_INV_stage[3][16]~19_combout\,
	dataf => \ALT_INV_stage[6][0]~14_combout\,
	combout => \stage[6][0]~27_combout\);

-- Location: MLABCELL_X29_Y53_N16
\stage[6][0]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~28_combout\ = ( \stage[6][0]~27_combout\ & ( (\stage[6][4]~0_combout\ & ((!\B[3]~input_o\ & (\stage[6][0]~13_combout\)) # (\B[3]~input_o\ & ((\stage[3][8]~8_combout\))))) ) ) # ( !\stage[6][0]~27_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_stage[6][4]~0_combout\,
	datac => \ALT_INV_stage[6][0]~13_combout\,
	datad => \ALT_INV_stage[3][8]~8_combout\,
	dataf => \ALT_INV_stage[6][0]~27_combout\,
	combout => \stage[6][0]~28_combout\);

-- Location: MLABCELL_X29_Y53_N28
\Y~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( \stage[6][0]~28_combout\ & ( ((!\ShiftFN[0]~input_o\ & (\A[0]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\stage[6][31]~3_combout\)))) # (\ShiftFN[1]~input_o\) ) ) # ( !\stage[6][0]~28_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & (\A[0]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\stage[6][31]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_stage[6][31]~3_combout\,
	dataf => \ALT_INV_stage[6][0]~28_combout\,
	combout => \Y~0_combout\);

-- Location: MLABCELL_X31_Y53_N16
\stage[1][9]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][9]~30_combout\ = ( \Equal0~0_combout\ & ( \A_in[21]~3_combout\ & ( (\A_in[22]~2_combout\) # (\B[0]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( \A_in[21]~3_combout\ & ( (!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[10]~input_o\))) 
-- ) ) ) # ( \Equal0~0_combout\ & ( !\A_in[21]~3_combout\ & ( (!\B[0]~input_o\ & \A_in[22]~2_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( !\A_in[21]~3_combout\ & ( (!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[22]~2_combout\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A_in[21]~3_combout\,
	combout => \stage[1][9]~30_combout\);

-- Location: MLABCELL_X31_Y52_N20
\stage[1][13]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][13]~32_combout\ = ( \A[13]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[14]~input_o\))) # (\Equal0~0_combout\ & (\A_in[17]~7_combout\)) ) ) ) # ( !\A[13]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[14]~input_o\))) 
-- # (\Equal0~0_combout\ & (\A_in[17]~7_combout\)) ) ) ) # ( \A[13]~input_o\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\) # (\A_in[18]~6_combout\) ) ) ) # ( !\A[13]~input_o\ & ( !\B[0]~input_o\ & ( (\Equal0~0_combout\ & \A_in[18]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[17]~7_combout\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A_in[18]~6_combout\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][13]~32_combout\);

-- Location: MLABCELL_X31_Y52_N4
\stage[1][15]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][15]~33_combout\ = ( \A_in[16]~8_combout\ & ( (!\Equal0~0_combout\ $ (!\B[0]~input_o\)) # (\A[15]~input_o\) ) ) # ( !\A_in[16]~8_combout\ & ( (\A[15]~input_o\ & (!\Equal0~0_combout\ $ (\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001100111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A_in[16]~8_combout\,
	combout => \stage[1][15]~33_combout\);

-- Location: MLABCELL_X31_Y53_N2
\stage[1][11]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][11]~31_combout\ = ( \A[11]~input_o\ & ( \A[12]~input_o\ & ( (!\Equal0~0_combout\) # ((!\B[0]~input_o\ & (\A_in[20]~4_combout\)) # (\B[0]~input_o\ & ((\A_in[19]~5_combout\)))) ) ) ) # ( !\A[11]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A_in[20]~4_combout\ & (\Equal0~0_combout\))) # (\B[0]~input_o\ & (((!\Equal0~0_combout\) # (\A_in[19]~5_combout\)))) ) ) ) # ( \A[11]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & (((!\Equal0~0_combout\)) # (\A_in[20]~4_combout\))) # 
-- (\B[0]~input_o\ & (((\Equal0~0_combout\ & \A_in[19]~5_combout\)))) ) ) ) # ( !\A[11]~input_o\ & ( !\A[12]~input_o\ & ( (\Equal0~0_combout\ & ((!\B[0]~input_o\ & (\A_in[20]~4_combout\)) # (\B[0]~input_o\ & ((\A_in[19]~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[20]~4_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_A_in[19]~5_combout\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \stage[1][11]~31_combout\);

-- Location: LABCELL_X30_Y51_N26
\stage[3][9]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][9]~34_combout\ = ( \B[2]~input_o\ & ( \stage[1][11]~31_combout\ & ( (!\B[1]~input_o\ & (\stage[1][13]~32_combout\)) # (\B[1]~input_o\ & ((\stage[1][15]~33_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][11]~31_combout\ & ( (\B[1]~input_o\) # 
-- (\stage[1][9]~30_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][11]~31_combout\ & ( (!\B[1]~input_o\ & (\stage[1][13]~32_combout\)) # (\B[1]~input_o\ & ((\stage[1][15]~33_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][11]~31_combout\ & ( 
-- (\stage[1][9]~30_combout\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][9]~30_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][13]~32_combout\,
	datad => \ALT_INV_stage[1][15]~33_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][11]~31_combout\,
	combout => \stage[3][9]~34_combout\);

-- Location: MLABCELL_X29_Y53_N34
\stage[1][29]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][29]~47_combout\ = ( \Equal0~0_combout\ & ( \A[1]~input_o\ & ( (\A[2]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[29]~10_combout\)) # (\B[0]~input_o\ & ((\A_in[30]~9_combout\))) ) ) 
-- ) # ( \Equal0~0_combout\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & \A[2]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[29]~10_combout\)) # (\B[0]~input_o\ & ((\A_in[30]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A_in[29]~10_combout\,
	datad => \ALT_INV_A_in[30]~9_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \stage[1][29]~47_combout\);

-- Location: MLABCELL_X29_Y53_N36
\stage[1][31]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][31]~48_combout\ = ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & (((\Equal0~0_combout\)) # (\A_in[31]~0_combout\))) # (\B[0]~input_o\ & (((\fill~0_combout\)))) ) ) # ( !\A[0]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[31]~0_combout\ & 
-- ((!\Equal0~0_combout\)))) # (\B[0]~input_o\ & (((\fill~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000011010100110000001101010011111100110101001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[31]~0_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \stage[1][31]~48_combout\);

-- Location: MLABCELL_X34_Y53_N18
\stage[1][27]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][27]~46_combout\ = ( \A[4]~input_o\ & ( \A_in[28]~11_combout\ & ( (!\B[0]~input_o\ & (((\A_in[27]~12_combout\)) # (\Equal0~0_combout\))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\) # ((\A[3]~input_o\)))) ) ) ) # ( !\A[4]~input_o\ & ( 
-- \A_in[28]~11_combout\ & ( (!\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A_in[27]~12_combout\))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\) # ((\A[3]~input_o\)))) ) ) ) # ( \A[4]~input_o\ & ( !\A_in[28]~11_combout\ & ( (!\B[0]~input_o\ & 
-- (((\A_in[27]~12_combout\)) # (\Equal0~0_combout\))) # (\B[0]~input_o\ & (\Equal0~0_combout\ & ((\A[3]~input_o\)))) ) ) ) # ( !\A[4]~input_o\ & ( !\A_in[28]~11_combout\ & ( (!\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A_in[27]~12_combout\))) # 
-- (\B[0]~input_o\ & (\Equal0~0_combout\ & ((\A[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A_in[27]~12_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A_in[28]~11_combout\,
	combout => \stage[1][27]~46_combout\);

-- Location: MLABCELL_X34_Y53_N32
\stage[1][25]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][25]~45_combout\ = ( \Equal0~0_combout\ & ( \A[5]~input_o\ & ( (\B[0]~input_o\) # (\A[6]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[25]~14_combout\))) # (\B[0]~input_o\ & (\A_in[26]~13_combout\)) ) ) 
-- ) # ( \Equal0~0_combout\ & ( !\A[5]~input_o\ & ( (\A[6]~input_o\ & !\B[0]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[25]~14_combout\))) # (\B[0]~input_o\ & (\A_in[26]~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[26]~13_combout\,
	datad => \ALT_INV_A_in[25]~14_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \stage[1][25]~45_combout\);

-- Location: LABCELL_X30_Y50_N26
\stage[3][25]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][25]~49_combout\ = ( \stage[1][27]~46_combout\ & ( \stage[1][25]~45_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & (\stage[1][29]~47_combout\)) # (\B[1]~input_o\ & ((\stage[1][31]~48_combout\)))) ) ) ) # ( !\stage[1][27]~46_combout\ & ( 
-- \stage[1][25]~45_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\stage[1][29]~47_combout\)) # (\B[1]~input_o\ & ((\stage[1][31]~48_combout\))))) ) ) ) # ( \stage[1][27]~46_combout\ & ( 
-- !\stage[1][25]~45_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\stage[1][29]~47_combout\)) # (\B[1]~input_o\ & ((\stage[1][31]~48_combout\))))) ) ) ) # ( !\stage[1][27]~46_combout\ & ( 
-- !\stage[1][25]~45_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\stage[1][29]~47_combout\)) # (\B[1]~input_o\ & ((\stage[1][31]~48_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][29]~47_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_stage[1][31]~48_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_stage[1][27]~46_combout\,
	dataf => \ALT_INV_stage[1][25]~45_combout\,
	combout => \stage[3][25]~49_combout\);

-- Location: MLABCELL_X31_Y53_N38
\stage[1][23]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][23]~43_combout\ = ( \Equal0~0_combout\ & ( \A[7]~input_o\ & ( (\A[8]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( \A[7]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[23]~1_combout\))) # (\B[0]~input_o\ & (\A_in[24]~15_combout\)) ) ) 
-- ) # ( \Equal0~0_combout\ & ( !\A[7]~input_o\ & ( (!\B[0]~input_o\ & \A[8]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[7]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[23]~1_combout\))) # (\B[0]~input_o\ & (\A_in[24]~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[24]~15_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[23]~1_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \stage[1][23]~43_combout\);

-- Location: MLABCELL_X31_Y52_N28
\stage[1][17]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][17]~40_combout\ = ( \A[13]~input_o\ & ( \B[0]~input_o\ & ( (\A_in[18]~6_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\A[13]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & \A_in[18]~6_combout\) ) ) ) # ( \A[13]~input_o\ & ( !\B[0]~input_o\ 
-- & ( (!\Equal0~0_combout\ & (\A_in[17]~7_combout\)) # (\Equal0~0_combout\ & ((\A[14]~input_o\))) ) ) ) # ( !\A[13]~input_o\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A_in[17]~7_combout\)) # (\Equal0~0_combout\ & ((\A[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[17]~7_combout\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A_in[18]~6_combout\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][17]~40_combout\);

-- Location: MLABCELL_X31_Y53_N28
\stage[1][19]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][19]~41_combout\ = ( \A[11]~input_o\ & ( \A[12]~input_o\ & ( ((!\B[0]~input_o\ & ((\A_in[19]~5_combout\))) # (\B[0]~input_o\ & (\A_in[20]~4_combout\))) # (\Equal0~0_combout\) ) ) ) # ( !\A[11]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\Equal0~0_combout\) # (\A_in[19]~5_combout\)))) # (\B[0]~input_o\ & (\A_in[20]~4_combout\ & ((!\Equal0~0_combout\)))) ) ) ) # ( \A[11]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & (((\A_in[19]~5_combout\ & !\Equal0~0_combout\)))) # 
-- (\B[0]~input_o\ & (((\Equal0~0_combout\)) # (\A_in[20]~4_combout\))) ) ) ) # ( !\A[11]~input_o\ & ( !\A[12]~input_o\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A_in[19]~5_combout\))) # (\B[0]~input_o\ & (\A_in[20]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[20]~4_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[19]~5_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \stage[1][19]~41_combout\);

-- Location: MLABCELL_X31_Y53_N32
\stage[1][21]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][21]~42_combout\ = ( \Equal0~0_combout\ & ( \A_in[21]~3_combout\ & ( (!\B[0]~input_o\ & ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( !\Equal0~0_combout\ & ( \A_in[21]~3_combout\ & ( (!\B[0]~input_o\) # 
-- (\A_in[22]~2_combout\) ) ) ) # ( \Equal0~0_combout\ & ( !\A_in[21]~3_combout\ & ( (!\B[0]~input_o\ & ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( !\Equal0~0_combout\ & ( !\A_in[21]~3_combout\ & ( (\B[0]~input_o\ & 
-- \A_in[22]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[22]~2_combout\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A_in[21]~3_combout\,
	combout => \stage[1][21]~42_combout\);

-- Location: LABCELL_X30_Y50_N22
\stage[3][17]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][17]~44_combout\ = ( \stage[1][19]~41_combout\ & ( \stage[1][21]~42_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\) # (\stage[1][17]~40_combout\)))) # (\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\stage[1][23]~43_combout\))) ) ) ) # ( 
-- !\stage[1][19]~41_combout\ & ( \stage[1][21]~42_combout\ & ( (!\B[2]~input_o\ & (((\stage[1][17]~40_combout\ & !\B[1]~input_o\)))) # (\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\stage[1][23]~43_combout\))) ) ) ) # ( \stage[1][19]~41_combout\ & ( 
-- !\stage[1][21]~42_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\) # (\stage[1][17]~40_combout\)))) # (\B[2]~input_o\ & (\stage[1][23]~43_combout\ & ((\B[1]~input_o\)))) ) ) ) # ( !\stage[1][19]~41_combout\ & ( !\stage[1][21]~42_combout\ & ( 
-- (!\B[2]~input_o\ & (((\stage[1][17]~40_combout\ & !\B[1]~input_o\)))) # (\B[2]~input_o\ & (\stage[1][23]~43_combout\ & ((\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][23]~43_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_stage[1][17]~40_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_stage[1][19]~41_combout\,
	dataf => \ALT_INV_stage[1][21]~42_combout\,
	combout => \stage[3][17]~44_combout\);

-- Location: LABCELL_X30_Y52_N22
\stage[6][1]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][1]~50_combout\ = ( !\stage[6][0]~14_combout\ & ( (!\stage[6][0]~26_combout\ & ((!\stage[6][0]~20_combout\) # ((!\stage[3][17]~44_combout\)))) # (\stage[6][0]~26_combout\ & (!\stage[3][25]~49_combout\ & ((!\stage[6][0]~20_combout\) # 
-- (!\stage[3][17]~44_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][0]~26_combout\,
	datab => \ALT_INV_stage[6][0]~20_combout\,
	datac => \ALT_INV_stage[3][25]~49_combout\,
	datad => \ALT_INV_stage[3][17]~44_combout\,
	dataf => \ALT_INV_stage[6][0]~14_combout\,
	combout => \stage[6][1]~50_combout\);

-- Location: MLABCELL_X34_Y53_N30
\stage[1][5]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][5]~37_combout\ = ( \Equal0~0_combout\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[26]~13_combout\))) # (\B[0]~input_o\ & (\A_in[25]~14_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\) # (\A[6]~input_o\) ) ) 
-- ) # ( \Equal0~0_combout\ & ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[26]~13_combout\))) # (\B[0]~input_o\ & (\A_in[25]~14_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[5]~input_o\ & ( (\A[6]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[25]~14_combout\,
	datad => \ALT_INV_A_in[26]~13_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \stage[1][5]~37_combout\);

-- Location: MLABCELL_X31_Y52_N26
\stage[6][1]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][1]~35_combout\ = ( \A_in[29]~10_combout\ & ( \B[0]~input_o\ & ( (\A[2]~input_o\) # (\Equal0~0_combout\) ) ) ) # ( !\A_in[29]~10_combout\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & \A[2]~input_o\) ) ) ) # ( \A_in[29]~10_combout\ & ( 
-- !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[1]~input_o\))) # (\Equal0~0_combout\ & (\A_in[30]~9_combout\)) ) ) ) # ( !\A_in[29]~10_combout\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & ((\A[1]~input_o\))) # (\Equal0~0_combout\ & 
-- (\A_in[30]~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A_in[30]~9_combout\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_A_in[29]~10_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[6][1]~35_combout\);

-- Location: MLABCELL_X31_Y53_N26
\stage[1][7]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][7]~38_combout\ = ( \Equal0~0_combout\ & ( \A[7]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[24]~15_combout\)) # (\B[0]~input_o\ & ((\A_in[23]~1_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( \A[7]~input_o\ & ( (!\B[0]~input_o\) # (\A[8]~input_o\) ) ) 
-- ) # ( \Equal0~0_combout\ & ( !\A[7]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[24]~15_combout\)) # (\B[0]~input_o\ & ((\A_in[23]~1_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[7]~input_o\ & ( (\B[0]~input_o\ & \A[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[24]~15_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[23]~1_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \stage[1][7]~38_combout\);

-- Location: MLABCELL_X34_Y53_N6
\stage[1][3]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][3]~36_combout\ = ( \A[4]~input_o\ & ( \A_in[28]~11_combout\ & ( (!\B[0]~input_o\ & (((\A[3]~input_o\)) # (\Equal0~0_combout\))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\) # ((\A_in[27]~12_combout\)))) ) ) ) # ( !\A[4]~input_o\ & ( 
-- \A_in[28]~11_combout\ & ( (!\B[0]~input_o\ & (((\A[3]~input_o\)) # (\Equal0~0_combout\))) # (\B[0]~input_o\ & (\Equal0~0_combout\ & (\A_in[27]~12_combout\))) ) ) ) # ( \A[4]~input_o\ & ( !\A_in[28]~11_combout\ & ( (!\B[0]~input_o\ & (!\Equal0~0_combout\ & 
-- ((\A[3]~input_o\)))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\) # ((\A_in[27]~12_combout\)))) ) ) ) # ( !\A[4]~input_o\ & ( !\A_in[28]~11_combout\ & ( (!\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[3]~input_o\)))) # (\B[0]~input_o\ & (\Equal0~0_combout\ & 
-- (\A_in[27]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A_in[27]~12_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A_in[28]~11_combout\,
	combout => \stage[1][3]~36_combout\);

-- Location: LABCELL_X30_Y51_N28
\stage[6][1]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][1]~39_combout\ = ( \B[2]~input_o\ & ( \stage[1][3]~36_combout\ & ( (!\B[1]~input_o\ & (\stage[1][5]~37_combout\)) # (\B[1]~input_o\ & ((\stage[1][7]~38_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][3]~36_combout\ & ( 
-- (\stage[6][1]~35_combout\) # (\B[1]~input_o\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][3]~36_combout\ & ( (!\B[1]~input_o\ & (\stage[1][5]~37_combout\)) # (\B[1]~input_o\ & ((\stage[1][7]~38_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\stage[1][3]~36_combout\ & ( (!\B[1]~input_o\ & \stage[6][1]~35_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][5]~37_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[6][1]~35_combout\,
	datad => \ALT_INV_stage[1][7]~38_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][3]~36_combout\,
	combout => \stage[6][1]~39_combout\);

-- Location: LABCELL_X30_Y51_N34
\stage[6][1]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][1]~51_combout\ = ( \stage[6][1]~39_combout\ & ( (!\stage[6][1]~50_combout\) # ((\stage[6][4]~0_combout\ & ((!\B[3]~input_o\) # (\stage[3][9]~34_combout\)))) ) ) # ( !\stage[6][1]~39_combout\ & ( (!\stage[6][1]~50_combout\) # 
-- ((\stage[6][4]~0_combout\ & (\B[3]~input_o\ & \stage[3][9]~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000001111111110000000111111111010001011111111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[3][9]~34_combout\,
	datad => \ALT_INV_stage[6][1]~50_combout\,
	dataf => \ALT_INV_stage[6][1]~39_combout\,
	combout => \stage[6][1]~51_combout\);

-- Location: LABCELL_X30_Y51_N2
\stage[6][30]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][30]~29_combout\ = ( \stage[1][30]~24_combout\ & ( \B[1]~input_o\ & ( \fill~0_combout\ ) ) ) # ( !\stage[1][30]~24_combout\ & ( \B[1]~input_o\ & ( \fill~0_combout\ ) ) ) # ( \stage[1][30]~24_combout\ & ( !\B[1]~input_o\ & ( ((!\B[3]~input_o\ & 
-- (!\B[2]~input_o\ & \stage[6][4]~0_combout\))) # (\fill~0_combout\) ) ) ) # ( !\stage[1][30]~24_combout\ & ( !\B[1]~input_o\ & ( (\fill~0_combout\ & (((!\stage[6][4]~0_combout\) # (\B[2]~input_o\)) # (\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010011001100111011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_stage[6][4]~0_combout\,
	datae => \ALT_INV_stage[1][30]~24_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage[6][30]~29_combout\);

-- Location: LABCELL_X32_Y52_N2
\Y~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = ( \stage[6][30]~29_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\A[1]~input_o\)) # (\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[6][1]~51_combout\)))) ) ) # ( !\stage[6][30]~29_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (!\ShiftFN[0]~input_o\ & (\A[1]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[6][1]~51_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_stage[6][1]~51_combout\,
	dataf => \ALT_INV_stage[6][30]~29_combout\,
	combout => \Y~1_combout\);

-- Location: LABCELL_X30_Y50_N8
\stage[3][29]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][29]~58_combout\ = ( \stage[1][31]~48_combout\ & ( (!\B[2]~input_o\ & (((\stage[1][29]~47_combout\) # (\B[1]~input_o\)))) # (\B[2]~input_o\ & (\fill~0_combout\)) ) ) # ( !\stage[1][31]~48_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\ & 
-- \stage[1][29]~47_combout\)))) # (\B[2]~input_o\ & (\fill~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000100011101000100011101110111010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][29]~47_combout\,
	dataf => \ALT_INV_stage[1][31]~48_combout\,
	combout => \stage[3][29]~58_combout\);

-- Location: LABCELL_X30_Y50_N10
\Y~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = ( \B[3]~input_o\ & ( \fill~0_combout\ ) ) # ( !\B[3]~input_o\ & ( (!\stage[6][4]~0_combout\ & (\fill~0_combout\)) # (\stage[6][4]~0_combout\ & ((\stage[3][29]~58_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[6][4]~0_combout\,
	datad => \ALT_INV_stage[3][29]~58_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y~2_combout\);

-- Location: LABCELL_X30_Y53_N2
\stage[3][26]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][26]~55_combout\ = ( \B[2]~input_o\ & ( \stage[1][28]~23_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][30]~24_combout\))) # (\B[1]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][28]~23_combout\ & ( (\B[1]~input_o\) # 
-- (\stage[1][26]~22_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][28]~23_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][30]~24_combout\))) # (\B[1]~input_o\ & (\fill~0_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][28]~23_combout\ & ( 
-- (\stage[1][26]~22_combout\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][26]~22_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][30]~24_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][28]~23_combout\,
	combout => \stage[3][26]~55_combout\);

-- Location: LABCELL_X27_Y52_N8
\stage[3][18]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][18]~54_combout\ = ( \stage[1][22]~18_combout\ & ( \stage[1][24]~21_combout\ & ( ((!\B[1]~input_o\ & (\stage[1][18]~16_combout\)) # (\B[1]~input_o\ & ((\stage[1][20]~17_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\stage[1][22]~18_combout\ & ( 
-- \stage[1][24]~21_combout\ & ( (!\B[1]~input_o\ & (\stage[1][18]~16_combout\ & (!\B[2]~input_o\))) # (\B[1]~input_o\ & (((\stage[1][20]~17_combout\) # (\B[2]~input_o\)))) ) ) ) # ( \stage[1][22]~18_combout\ & ( !\stage[1][24]~21_combout\ & ( 
-- (!\B[1]~input_o\ & (((\B[2]~input_o\)) # (\stage[1][18]~16_combout\))) # (\B[1]~input_o\ & (((!\B[2]~input_o\ & \stage[1][20]~17_combout\)))) ) ) ) # ( !\stage[1][22]~18_combout\ & ( !\stage[1][24]~21_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & 
-- (\stage[1][18]~16_combout\)) # (\B[1]~input_o\ & ((\stage[1][20]~17_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][18]~16_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_stage[1][20]~17_combout\,
	datae => \ALT_INV_stage[1][22]~18_combout\,
	dataf => \ALT_INV_stage[1][24]~21_combout\,
	combout => \stage[3][18]~54_combout\);

-- Location: LABCELL_X30_Y52_N6
\stage[6][2]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][2]~56_combout\ = ( \stage[6][0]~20_combout\ & ( (!\stage[3][18]~54_combout\ & (!\stage[6][0]~14_combout\ & ((!\stage[3][26]~55_combout\) # (!\stage[6][0]~26_combout\)))) ) ) # ( !\stage[6][0]~20_combout\ & ( (!\stage[6][0]~14_combout\ & 
-- ((!\stage[3][26]~55_combout\) # (!\stage[6][0]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][26]~55_combout\,
	datab => \ALT_INV_stage[3][18]~54_combout\,
	datac => \ALT_INV_stage[6][0]~26_combout\,
	datad => \ALT_INV_stage[6][0]~14_combout\,
	dataf => \ALT_INV_stage[6][0]~20_combout\,
	combout => \stage[6][2]~56_combout\);

-- Location: LABCELL_X30_Y53_N36
\stage[6][2]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][2]~53_combout\ = ( \B[2]~input_o\ & ( \stage[1][2]~10_combout\ & ( (!\B[1]~input_o\ & (\stage[1][6]~12_combout\)) # (\B[1]~input_o\ & ((\stage[1][8]~4_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][2]~10_combout\ & ( (!\B[1]~input_o\) # 
-- (\stage[1][4]~11_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][2]~10_combout\ & ( (!\B[1]~input_o\ & (\stage[1][6]~12_combout\)) # (\B[1]~input_o\ & ((\stage[1][8]~4_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][2]~10_combout\ & ( 
-- (\B[1]~input_o\ & \stage[1][4]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][6]~12_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][8]~4_combout\,
	datad => \ALT_INV_stage[1][4]~11_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][2]~10_combout\,
	combout => \stage[6][2]~53_combout\);

-- Location: LABCELL_X30_Y53_N14
\stage[3][10]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][10]~52_combout\ = ( \B[2]~input_o\ & ( \stage[1][10]~5_combout\ & ( (!\B[1]~input_o\ & (\stage[1][14]~7_combout\)) # (\B[1]~input_o\ & ((\stage[1][16]~15_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][10]~5_combout\ & ( (!\B[1]~input_o\) # 
-- (\stage[1][12]~6_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][10]~5_combout\ & ( (!\B[1]~input_o\ & (\stage[1][14]~7_combout\)) # (\B[1]~input_o\ & ((\stage[1][16]~15_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][10]~5_combout\ & ( 
-- (\B[1]~input_o\ & \stage[1][12]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_stage[1][12]~6_combout\,
	datac => \ALT_INV_stage[1][14]~7_combout\,
	datad => \ALT_INV_stage[1][16]~15_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][10]~5_combout\,
	combout => \stage[3][10]~52_combout\);

-- Location: LABCELL_X30_Y53_N6
\stage[6][2]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][2]~57_combout\ = ( \stage[3][10]~52_combout\ & ( (!\stage[6][2]~56_combout\) # ((\stage[6][4]~0_combout\ & ((\stage[6][2]~53_combout\) # (\B[3]~input_o\)))) ) ) # ( !\stage[3][10]~52_combout\ & ( (!\stage[6][2]~56_combout\) # 
-- ((\stage[6][4]~0_combout\ & (!\B[3]~input_o\ & \stage[6][2]~53_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110100111100001111010011110001111101011111000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[6][2]~56_combout\,
	datad => \ALT_INV_stage[6][2]~53_combout\,
	dataf => \ALT_INV_stage[3][10]~52_combout\,
	combout => \stage[6][2]~57_combout\);

-- Location: LABCELL_X32_Y52_N4
\Y~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = ( \stage[6][2]~57_combout\ & ( ((!\ShiftFN[0]~input_o\ & (\A[2]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Y~2_combout\)))) # (\ShiftFN[1]~input_o\) ) ) # ( !\stage[6][2]~57_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & 
-- (\A[2]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Y~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_Y~2_combout\,
	dataf => \ALT_INV_stage[6][2]~57_combout\,
	combout => \Y~3_combout\);

-- Location: LABCELL_X30_Y51_N20
\stage[6][3]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][3]~60_combout\ = ( \B[2]~input_o\ & ( \stage[1][3]~36_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][7]~38_combout\))) # (\B[1]~input_o\ & (\stage[1][9]~30_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][3]~36_combout\ & ( (!\B[1]~input_o\) # 
-- (\stage[1][5]~37_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][3]~36_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][7]~38_combout\))) # (\B[1]~input_o\ & (\stage[1][9]~30_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][3]~36_combout\ & ( 
-- (\stage[1][5]~37_combout\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][5]~37_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][9]~30_combout\,
	datad => \ALT_INV_stage[1][7]~38_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][3]~36_combout\,
	combout => \stage[6][3]~60_combout\);

-- Location: LABCELL_X30_Y51_N16
\stage[3][11]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][11]~59_combout\ = ( \stage[1][13]~32_combout\ & ( \stage[1][11]~31_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & (\stage[1][15]~33_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~40_combout\)))) ) ) ) # ( !\stage[1][13]~32_combout\ & ( 
-- \stage[1][11]~31_combout\ & ( (!\B[2]~input_o\ & (!\B[1]~input_o\)) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\stage[1][15]~33_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~40_combout\))))) ) ) ) # ( \stage[1][13]~32_combout\ & ( 
-- !\stage[1][11]~31_combout\ & ( (!\B[2]~input_o\ & (\B[1]~input_o\)) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\stage[1][15]~33_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~40_combout\))))) ) ) ) # ( !\stage[1][13]~32_combout\ & ( 
-- !\stage[1][11]~31_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\stage[1][15]~33_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~40_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][15]~33_combout\,
	datad => \ALT_INV_stage[1][17]~40_combout\,
	datae => \ALT_INV_stage[1][13]~32_combout\,
	dataf => \ALT_INV_stage[1][11]~31_combout\,
	combout => \stage[3][11]~59_combout\);

-- Location: LABCELL_X30_Y50_N12
\stage[3][19]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][19]~61_combout\ = ( \B[1]~input_o\ & ( \stage[1][25]~45_combout\ & ( (\stage[1][21]~42_combout\) # (\B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \stage[1][25]~45_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][19]~41_combout\))) # (\B[2]~input_o\ & 
-- (\stage[1][23]~43_combout\)) ) ) ) # ( \B[1]~input_o\ & ( !\stage[1][25]~45_combout\ & ( (!\B[2]~input_o\ & \stage[1][21]~42_combout\) ) ) ) # ( !\B[1]~input_o\ & ( !\stage[1][25]~45_combout\ & ( (!\B[2]~input_o\ & ((\stage[1][19]~41_combout\))) # 
-- (\B[2]~input_o\ & (\stage[1][23]~43_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][23]~43_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_stage[1][21]~42_combout\,
	datad => \ALT_INV_stage[1][19]~41_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_stage[1][25]~45_combout\,
	combout => \stage[3][19]~61_combout\);

-- Location: LABCELL_X30_Y50_N16
\stage[3][27]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][27]~62_combout\ = ( \stage[1][27]~46_combout\ & ( \stage[1][31]~48_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & ((\stage[1][29]~47_combout\))) # (\B[2]~input_o\ & (\fill~0_combout\))) ) ) ) # ( !\stage[1][27]~46_combout\ & ( 
-- \stage[1][31]~48_combout\ & ( (!\B[1]~input_o\ & (\B[2]~input_o\)) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\stage[1][29]~47_combout\))) # (\B[2]~input_o\ & (\fill~0_combout\)))) ) ) ) # ( \stage[1][27]~46_combout\ & ( !\stage[1][31]~48_combout\ & ( 
-- (!\B[1]~input_o\ & (!\B[2]~input_o\)) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\stage[1][29]~47_combout\))) # (\B[2]~input_o\ & (\fill~0_combout\)))) ) ) ) # ( !\stage[1][27]~46_combout\ & ( !\stage[1][31]~48_combout\ & ( (\B[1]~input_o\ & 
-- ((!\B[2]~input_o\ & ((\stage[1][29]~47_combout\))) # (\B[2]~input_o\ & (\fill~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[1][29]~47_combout\,
	datae => \ALT_INV_stage[1][27]~46_combout\,
	dataf => \ALT_INV_stage[1][31]~48_combout\,
	combout => \stage[3][27]~62_combout\);

-- Location: LABCELL_X30_Y52_N20
\stage[6][3]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][3]~63_combout\ = ( \stage[3][27]~62_combout\ & ( (!\stage[6][0]~26_combout\ & (!\stage[6][0]~14_combout\ & ((!\stage[6][0]~20_combout\) # (!\stage[3][19]~61_combout\)))) ) ) # ( !\stage[3][27]~62_combout\ & ( (!\stage[6][0]~14_combout\ & 
-- ((!\stage[6][0]~20_combout\) # (!\stage[3][19]~61_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][0]~26_combout\,
	datab => \ALT_INV_stage[6][0]~20_combout\,
	datac => \ALT_INV_stage[6][0]~14_combout\,
	datad => \ALT_INV_stage[3][19]~61_combout\,
	dataf => \ALT_INV_stage[3][27]~62_combout\,
	combout => \stage[6][3]~63_combout\);

-- Location: LABCELL_X30_Y52_N30
\stage[6][3]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][3]~64_combout\ = ( \stage[6][3]~63_combout\ & ( (\stage[6][4]~0_combout\ & ((!\B[3]~input_o\ & (\stage[6][3]~60_combout\)) # (\B[3]~input_o\ & ((\stage[3][11]~59_combout\))))) ) ) # ( !\stage[6][3]~63_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[6][3]~60_combout\,
	datad => \ALT_INV_stage[3][11]~59_combout\,
	dataf => \ALT_INV_stage[6][3]~63_combout\,
	combout => \stage[6][3]~64_combout\);

-- Location: LABCELL_X30_Y53_N8
\stage[3][28]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][28]~65_combout\ = ( \B[2]~input_o\ & ( \stage[1][28]~23_combout\ & ( \fill~0_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][28]~23_combout\ & ( (!\B[1]~input_o\) # (\stage[1][30]~24_combout\) ) ) ) # ( \B[2]~input_o\ & ( 
-- !\stage[1][28]~23_combout\ & ( \fill~0_combout\ ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][28]~23_combout\ & ( (\stage[1][30]~24_combout\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000001111111111011101110111010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][30]~24_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_fill~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][28]~23_combout\,
	combout => \stage[3][28]~65_combout\);

-- Location: LABCELL_X30_Y52_N28
\Y~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = ( \fill~0_combout\ & ( (!\stage[6][4]~0_combout\) # ((\stage[3][28]~65_combout\) # (\B[3]~input_o\)) ) ) # ( !\fill~0_combout\ & ( (\stage[6][4]~0_combout\ & (!\B[3]~input_o\ & \stage[3][28]~65_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[3][28]~65_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \Y~4_combout\);

-- Location: LABCELL_X32_Y52_N10
\Y~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = ( \Y~4_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\A[3]~input_o\)) # (\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[6][3]~64_combout\)))) ) ) # ( !\Y~4_combout\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & 
-- ((\A[3]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((\stage[6][3]~64_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_stage[6][3]~64_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_Y~4_combout\,
	combout => \Y~5_combout\);

-- Location: LABCELL_X30_Y52_N2
\Y~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = ( \stage[3][27]~62_combout\ & ( ((!\B[3]~input_o\ & \stage[6][4]~0_combout\)) # (\fill~0_combout\) ) ) # ( !\stage[3][27]~62_combout\ & ( (\fill~0_combout\ & ((!\stage[6][4]~0_combout\) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011000011110000001100001111110011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[6][4]~0_combout\,
	dataf => \ALT_INV_stage[3][27]~62_combout\,
	combout => \Y~6_combout\);

-- Location: LABCELL_X30_Y53_N34
\stage[6][4]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][4]~67_combout\ = ( \stage[1][4]~11_combout\ & ( \stage[1][8]~4_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & (\stage[1][6]~12_combout\)) # (\B[2]~input_o\ & ((\stage[1][10]~5_combout\)))) ) ) ) # ( !\stage[1][4]~11_combout\ & ( 
-- \stage[1][8]~4_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\stage[1][6]~12_combout\)) # (\B[2]~input_o\ & ((\stage[1][10]~5_combout\))))) ) ) ) # ( \stage[1][4]~11_combout\ & ( !\stage[1][8]~4_combout\ & 
-- ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\stage[1][6]~12_combout\)) # (\B[2]~input_o\ & ((\stage[1][10]~5_combout\))))) ) ) ) # ( !\stage[1][4]~11_combout\ & ( !\stage[1][8]~4_combout\ & ( (\B[1]~input_o\ & 
-- ((!\B[2]~input_o\ & (\stage[1][6]~12_combout\)) # (\B[2]~input_o\ & ((\stage[1][10]~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][6]~12_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][10]~5_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_stage[1][4]~11_combout\,
	dataf => \ALT_INV_stage[1][8]~4_combout\,
	combout => \stage[6][4]~67_combout\);

-- Location: LABCELL_X27_Y52_N36
\stage[3][20]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][20]~68_combout\ = ( \stage[1][22]~18_combout\ & ( \stage[1][26]~22_combout\ & ( ((!\B[2]~input_o\ & ((\stage[1][20]~17_combout\))) # (\B[2]~input_o\ & (\stage[1][24]~21_combout\))) # (\B[1]~input_o\) ) ) ) # ( !\stage[1][22]~18_combout\ & ( 
-- \stage[1][26]~22_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\stage[1][20]~17_combout\))) # (\B[2]~input_o\ & (\stage[1][24]~21_combout\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( \stage[1][22]~18_combout\ & ( 
-- !\stage[1][26]~22_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\stage[1][20]~17_combout\))) # (\B[2]~input_o\ & (\stage[1][24]~21_combout\)))) # (\B[1]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( !\stage[1][22]~18_combout\ & ( 
-- !\stage[1][26]~22_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\stage[1][20]~17_combout\))) # (\B[2]~input_o\ & (\stage[1][24]~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][24]~21_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_stage[1][20]~17_combout\,
	datae => \ALT_INV_stage[1][22]~18_combout\,
	dataf => \ALT_INV_stage[1][26]~22_combout\,
	combout => \stage[3][20]~68_combout\);

-- Location: LABCELL_X30_Y52_N34
\stage[6][4]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][4]~69_combout\ = ( \stage[6][0]~20_combout\ & ( (!\stage[3][20]~68_combout\ & (!\stage[6][0]~14_combout\ & ((!\stage[3][28]~65_combout\) # (!\stage[6][0]~26_combout\)))) ) ) # ( !\stage[6][0]~20_combout\ & ( (!\stage[6][0]~14_combout\ & 
-- ((!\stage[3][28]~65_combout\) # (!\stage[6][0]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][28]~65_combout\,
	datab => \ALT_INV_stage[3][20]~68_combout\,
	datac => \ALT_INV_stage[6][0]~26_combout\,
	datad => \ALT_INV_stage[6][0]~14_combout\,
	dataf => \ALT_INV_stage[6][0]~20_combout\,
	combout => \stage[6][4]~69_combout\);

-- Location: LABCELL_X27_Y52_N32
\stage[3][12]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][12]~66_combout\ = ( \B[2]~input_o\ & ( \stage[1][12]~6_combout\ & ( (!\B[1]~input_o\ & (\stage[1][16]~15_combout\)) # (\B[1]~input_o\ & ((\stage[1][18]~16_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][12]~6_combout\ & ( (!\B[1]~input_o\) # 
-- (\stage[1][14]~7_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][12]~6_combout\ & ( (!\B[1]~input_o\ & (\stage[1][16]~15_combout\)) # (\B[1]~input_o\ & ((\stage[1][18]~16_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][12]~6_combout\ & ( 
-- (\B[1]~input_o\ & \stage[1][14]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][16]~15_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][18]~16_combout\,
	datad => \ALT_INV_stage[1][14]~7_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][12]~6_combout\,
	combout => \stage[3][12]~66_combout\);

-- Location: LABCELL_X30_Y52_N36
\stage[6][4]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][4]~70_combout\ = ( \stage[3][12]~66_combout\ & ( (\stage[6][4]~69_combout\ & ((!\stage[6][4]~0_combout\) # ((!\B[3]~input_o\ & !\stage[6][4]~67_combout\)))) ) ) # ( !\stage[3][12]~66_combout\ & ( (\stage[6][4]~69_combout\ & 
-- ((!\stage[6][4]~0_combout\) # ((!\stage[6][4]~67_combout\) # (\B[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000001111101100000000111010100000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[6][4]~67_combout\,
	datad => \ALT_INV_stage[6][4]~69_combout\,
	dataf => \ALT_INV_stage[3][12]~66_combout\,
	combout => \stage[6][4]~70_combout\);

-- Location: MLABCELL_X34_Y52_N10
\Y~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = ( \A[4]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Y~6_combout\)))) # (\ShiftFN[1]~input_o\ & (((!\stage[6][4]~70_combout\)))) ) ) # ( !\A[4]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & 
-- (\Y~6_combout\))) # (\ShiftFN[1]~input_o\ & (((!\stage[6][4]~70_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000010010101110000001011011111100010101101111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y~6_combout\,
	datad => \ALT_INV_stage[6][4]~70_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Y~7_combout\);

-- Location: LABCELL_X30_Y52_N0
\Y~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = ( \fill~0_combout\ & ( ((!\stage[6][4]~0_combout\) # (\stage[3][26]~55_combout\)) # (\B[3]~input_o\) ) ) # ( !\fill~0_combout\ & ( (!\B[3]~input_o\ & (\stage[3][26]~55_combout\ & \stage[6][4]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[3][26]~55_combout\,
	datad => \ALT_INV_stage[6][4]~0_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \Y~8_combout\);

-- Location: LABCELL_X30_Y50_N2
\stage[3][21]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][21]~73_combout\ = ( \stage[1][27]~46_combout\ & ( \stage[1][25]~45_combout\ & ( ((!\B[1]~input_o\ & ((\stage[1][21]~42_combout\))) # (\B[1]~input_o\ & (\stage[1][23]~43_combout\))) # (\B[2]~input_o\) ) ) ) # ( !\stage[1][27]~46_combout\ & ( 
-- \stage[1][25]~45_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\stage[1][21]~42_combout\))) # (\B[1]~input_o\ & (\stage[1][23]~43_combout\)))) # (\B[2]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \stage[1][27]~46_combout\ & ( 
-- !\stage[1][25]~45_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\stage[1][21]~42_combout\))) # (\B[1]~input_o\ & (\stage[1][23]~43_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\stage[1][27]~46_combout\ & ( 
-- !\stage[1][25]~45_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\stage[1][21]~42_combout\))) # (\B[1]~input_o\ & (\stage[1][23]~43_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][23]~43_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_stage[1][21]~42_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_stage[1][27]~46_combout\,
	dataf => \ALT_INV_stage[1][25]~45_combout\,
	combout => \stage[3][21]~73_combout\);

-- Location: LABCELL_X30_Y50_N6
\stage[6][5]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][5]~74_combout\ = ( !\stage[6][0]~14_combout\ & ( (!\stage[3][29]~58_combout\ & ((!\stage[3][21]~73_combout\) # ((!\stage[6][0]~20_combout\)))) # (\stage[3][29]~58_combout\ & (!\stage[6][0]~26_combout\ & ((!\stage[3][21]~73_combout\) # 
-- (!\stage[6][0]~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000111111001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][29]~58_combout\,
	datab => \ALT_INV_stage[3][21]~73_combout\,
	datac => \ALT_INV_stage[6][0]~20_combout\,
	datad => \ALT_INV_stage[6][0]~26_combout\,
	dataf => \ALT_INV_stage[6][0]~14_combout\,
	combout => \stage[6][5]~74_combout\);

-- Location: LABCELL_X30_Y51_N4
\stage[3][13]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][13]~71_combout\ = ( \stage[1][13]~32_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & ((\stage[1][15]~33_combout\))) # (\B[2]~input_o\ & (\stage[1][19]~41_combout\)) ) ) ) # ( !\stage[1][13]~32_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ 
-- & ((\stage[1][15]~33_combout\))) # (\B[2]~input_o\ & (\stage[1][19]~41_combout\)) ) ) ) # ( \stage[1][13]~32_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\) # (\stage[1][17]~40_combout\) ) ) ) # ( !\stage[1][13]~32_combout\ & ( !\B[1]~input_o\ & ( 
-- (\B[2]~input_o\ & \stage[1][17]~40_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_stage[1][19]~41_combout\,
	datac => \ALT_INV_stage[1][15]~33_combout\,
	datad => \ALT_INV_stage[1][17]~40_combout\,
	datae => \ALT_INV_stage[1][13]~32_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage[3][13]~71_combout\);

-- Location: LABCELL_X30_Y51_N10
\stage[6][5]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][5]~72_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \stage[1][11]~31_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \stage[1][7]~38_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \stage[1][9]~30_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \stage[1][5]~37_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][5]~37_combout\,
	datab => \ALT_INV_stage[1][11]~31_combout\,
	datac => \ALT_INV_stage[1][7]~38_combout\,
	datad => \ALT_INV_stage[1][9]~30_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage[6][5]~72_combout\);

-- Location: LABCELL_X30_Y50_N30
\stage[6][5]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][5]~75_combout\ = ( \stage[6][5]~72_combout\ & ( (\stage[6][5]~74_combout\ & ((!\stage[6][4]~0_combout\) # ((\B[3]~input_o\ & !\stage[3][13]~71_combout\)))) ) ) # ( !\stage[6][5]~72_combout\ & ( (\stage[6][5]~74_combout\ & 
-- ((!\stage[6][4]~0_combout\) # ((!\B[3]~input_o\) # (!\stage[3][13]~71_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111000001011000010100000101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[6][5]~74_combout\,
	datad => \ALT_INV_stage[3][13]~71_combout\,
	dataf => \ALT_INV_stage[6][5]~72_combout\,
	combout => \stage[6][5]~75_combout\);

-- Location: MLABCELL_X34_Y52_N20
\Y~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = ( \A[5]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Y~8_combout\)))) # (\ShiftFN[1]~input_o\ & (((!\stage[6][5]~75_combout\)))) ) ) # ( !\A[5]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & 
-- (\Y~8_combout\))) # (\ShiftFN[1]~input_o\ & (((!\stage[6][5]~75_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000010010101110000001011011111100010101101111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y~8_combout\,
	datad => \ALT_INV_stage[6][5]~75_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Y~9_combout\);

-- Location: LABCELL_X30_Y50_N28
\Y~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = ( \stage[3][25]~49_combout\ & ( ((\stage[6][4]~0_combout\ & !\B[3]~input_o\)) # (\fill~0_combout\) ) ) # ( !\stage[3][25]~49_combout\ & ( (\fill~0_combout\ & ((!\stage[6][4]~0_combout\) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_fill~0_combout\,
	dataf => \ALT_INV_stage[3][25]~49_combout\,
	combout => \Y~10_combout\);

-- Location: LABCELL_X27_Y52_N0
\stage[3][14]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][14]~76_combout\ = ( \B[2]~input_o\ & ( \stage[1][20]~17_combout\ & ( (\stage[1][18]~16_combout\) # (\B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][20]~17_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][14]~7_combout\))) # (\B[1]~input_o\ & 
-- (\stage[1][16]~15_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][20]~17_combout\ & ( (!\B[1]~input_o\ & \stage[1][18]~16_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][20]~17_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][14]~7_combout\))) # 
-- (\B[1]~input_o\ & (\stage[1][16]~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][16]~15_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][18]~16_combout\,
	datad => \ALT_INV_stage[1][14]~7_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][20]~17_combout\,
	combout => \stage[3][14]~76_combout\);

-- Location: LABCELL_X27_Y52_N6
\stage[3][22]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][22]~78_combout\ = ( \stage[1][22]~18_combout\ & ( \stage[1][26]~22_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & (\stage[1][24]~21_combout\)) # (\B[2]~input_o\ & ((\stage[1][28]~23_combout\)))) ) ) ) # ( !\stage[1][22]~18_combout\ & ( 
-- \stage[1][26]~22_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\stage[1][24]~21_combout\)) # (\B[2]~input_o\ & ((\stage[1][28]~23_combout\))))) ) ) ) # ( \stage[1][22]~18_combout\ & ( 
-- !\stage[1][26]~22_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\stage[1][24]~21_combout\)) # (\B[2]~input_o\ & ((\stage[1][28]~23_combout\))))) ) ) ) # ( !\stage[1][22]~18_combout\ & ( 
-- !\stage[1][26]~22_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\stage[1][24]~21_combout\)) # (\B[2]~input_o\ & ((\stage[1][28]~23_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][24]~21_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][28]~23_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_stage[1][22]~18_combout\,
	dataf => \ALT_INV_stage[1][26]~22_combout\,
	combout => \stage[3][22]~78_combout\);

-- Location: MLABCELL_X29_Y53_N38
\stage[3][30]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][30]~79_combout\ = ( \stage[1][30]~24_combout\ & ( ((!\B[2]~input_o\ & !\B[1]~input_o\)) # (\fill~0_combout\) ) ) # ( !\stage[1][30]~24_combout\ & ( (\fill~0_combout\ & ((\B[1]~input_o\) # (\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_stage[1][30]~24_combout\,
	combout => \stage[3][30]~79_combout\);

-- Location: LABCELL_X30_Y52_N24
\stage[6][6]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][6]~80_combout\ = ( \stage[6][0]~26_combout\ & ( (!\stage[3][30]~79_combout\ & (!\stage[6][0]~14_combout\ & ((!\stage[3][22]~78_combout\) # (!\stage[6][0]~20_combout\)))) ) ) # ( !\stage[6][0]~26_combout\ & ( (!\stage[6][0]~14_combout\ & 
-- ((!\stage[3][22]~78_combout\) # (!\stage[6][0]~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][22]~78_combout\,
	datab => \ALT_INV_stage[3][30]~79_combout\,
	datac => \ALT_INV_stage[6][0]~20_combout\,
	datad => \ALT_INV_stage[6][0]~14_combout\,
	dataf => \ALT_INV_stage[6][0]~26_combout\,
	combout => \stage[6][6]~80_combout\);

-- Location: LABCELL_X30_Y53_N16
\stage[6][6]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][6]~77_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \stage[1][12]~6_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \stage[1][8]~4_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \stage[1][10]~5_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \stage[1][6]~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][6]~12_combout\,
	datab => \ALT_INV_stage[1][10]~5_combout\,
	datac => \ALT_INV_stage[1][8]~4_combout\,
	datad => \ALT_INV_stage[1][12]~6_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage[6][6]~77_combout\);

-- Location: LABCELL_X30_Y53_N4
\stage[6][6]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][6]~81_combout\ = ( \stage[6][6]~77_combout\ & ( (\stage[6][6]~80_combout\ & ((!\stage[6][4]~0_combout\) # ((\B[3]~input_o\ & !\stage[3][14]~76_combout\)))) ) ) # ( !\stage[6][6]~77_combout\ & ( (\stage[6][6]~80_combout\ & 
-- ((!\stage[6][4]~0_combout\) # ((!\B[3]~input_o\) # (!\stage[3][14]~76_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000000000101110100000000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[3][14]~76_combout\,
	datad => \ALT_INV_stage[6][6]~80_combout\,
	dataf => \ALT_INV_stage[6][6]~77_combout\,
	combout => \stage[6][6]~81_combout\);

-- Location: MLABCELL_X34_Y52_N4
\Y~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = ( \A[6]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Y~10_combout\)))) # (\ShiftFN[1]~input_o\ & (((!\stage[6][6]~81_combout\)))) ) ) # ( !\A[6]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & 
-- (\Y~10_combout\))) # (\ShiftFN[1]~input_o\ & (((!\stage[6][6]~81_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000010010101110000001011011111100010101101111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y~10_combout\,
	datad => \ALT_INV_stage[6][6]~81_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Y~11_combout\);

-- Location: MLABCELL_X29_Y52_N30
\Y~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = ( \B[3]~input_o\ & ( \fill~0_combout\ ) ) # ( !\B[3]~input_o\ & ( (!\stage[6][4]~0_combout\ & ((\fill~0_combout\))) # (\stage[6][4]~0_combout\ & (\stage[3][24]~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][24]~25_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[6][4]~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y~12_combout\);

-- Location: LABCELL_X30_Y51_N38
\stage[6][7]~83\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][7]~83_combout\ = ( \stage[1][7]~38_combout\ & ( \stage[1][11]~31_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & ((\stage[1][9]~30_combout\))) # (\B[2]~input_o\ & (\stage[1][13]~32_combout\))) ) ) ) # ( !\stage[1][7]~38_combout\ & ( 
-- \stage[1][11]~31_combout\ & ( (!\B[2]~input_o\ & (\B[1]~input_o\ & ((\stage[1][9]~30_combout\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\stage[1][13]~32_combout\)))) ) ) ) # ( \stage[1][7]~38_combout\ & ( !\stage[1][11]~31_combout\ & ( 
-- (!\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\stage[1][9]~30_combout\)))) # (\B[2]~input_o\ & (\B[1]~input_o\ & (\stage[1][13]~32_combout\))) ) ) ) # ( !\stage[1][7]~38_combout\ & ( !\stage[1][11]~31_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & 
-- ((\stage[1][9]~30_combout\))) # (\B[2]~input_o\ & (\stage[1][13]~32_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][13]~32_combout\,
	datad => \ALT_INV_stage[1][9]~30_combout\,
	datae => \ALT_INV_stage[1][7]~38_combout\,
	dataf => \ALT_INV_stage[1][11]~31_combout\,
	combout => \stage[6][7]~83_combout\);

-- Location: MLABCELL_X29_Y53_N8
\stage[3][31]~85\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][31]~85_combout\ = ( \fill~0_combout\ & ( (\stage[3][31]~1_combout\ & !\stage[3][31]~2_combout\) ) ) # ( !\fill~0_combout\ & ( !\stage[3][31]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_stage[3][31]~1_combout\,
	datac => \ALT_INV_stage[3][31]~2_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[3][31]~85_combout\);

-- Location: LABCELL_X30_Y50_N32
\stage[3][23]~84\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][23]~84_combout\ = ( \stage[1][27]~46_combout\ & ( \stage[1][25]~45_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\stage[1][23]~43_combout\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # (\stage[1][29]~47_combout\)))) ) ) ) # ( 
-- !\stage[1][27]~46_combout\ & ( \stage[1][25]~45_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\stage[1][23]~43_combout\))) # (\B[2]~input_o\ & (((\B[1]~input_o\ & \stage[1][29]~47_combout\)))) ) ) ) # ( \stage[1][27]~46_combout\ & ( 
-- !\stage[1][25]~45_combout\ & ( (!\B[2]~input_o\ & (\stage[1][23]~43_combout\ & (!\B[1]~input_o\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # (\stage[1][29]~47_combout\)))) ) ) ) # ( !\stage[1][27]~46_combout\ & ( !\stage[1][25]~45_combout\ & ( 
-- (!\B[2]~input_o\ & (\stage[1][23]~43_combout\ & (!\B[1]~input_o\))) # (\B[2]~input_o\ & (((\B[1]~input_o\ & \stage[1][29]~47_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][23]~43_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_stage[1][29]~47_combout\,
	datae => \ALT_INV_stage[1][27]~46_combout\,
	dataf => \ALT_INV_stage[1][25]~45_combout\,
	combout => \stage[3][23]~84_combout\);

-- Location: MLABCELL_X29_Y52_N12
\stage[6][7]~86\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][7]~86_combout\ = ( !\stage[6][0]~14_combout\ & ( (!\stage[3][31]~85_combout\ & (!\stage[6][0]~26_combout\ & ((!\stage[3][23]~84_combout\) # (!\stage[6][0]~20_combout\)))) # (\stage[3][31]~85_combout\ & ((!\stage[3][23]~84_combout\) # 
-- ((!\stage[6][0]~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110001010100111111000101010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][31]~85_combout\,
	datab => \ALT_INV_stage[3][23]~84_combout\,
	datac => \ALT_INV_stage[6][0]~20_combout\,
	datad => \ALT_INV_stage[6][0]~26_combout\,
	dataf => \ALT_INV_stage[6][0]~14_combout\,
	combout => \stage[6][7]~86_combout\);

-- Location: LABCELL_X30_Y51_N12
\stage[3][15]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][15]~82_combout\ = ( \stage[1][19]~41_combout\ & ( \stage[1][21]~42_combout\ & ( ((!\B[1]~input_o\ & (\stage[1][15]~33_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~40_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\stage[1][19]~41_combout\ & ( 
-- \stage[1][21]~42_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & (\stage[1][15]~33_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~40_combout\))))) # (\B[2]~input_o\ & (\B[1]~input_o\)) ) ) ) # ( \stage[1][19]~41_combout\ & ( !\stage[1][21]~42_combout\ 
-- & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & (\stage[1][15]~33_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~40_combout\))))) # (\B[2]~input_o\ & (!\B[1]~input_o\)) ) ) ) # ( !\stage[1][19]~41_combout\ & ( !\stage[1][21]~42_combout\ & ( (!\B[2]~input_o\ & 
-- ((!\B[1]~input_o\ & (\stage[1][15]~33_combout\)) # (\B[1]~input_o\ & ((\stage[1][17]~40_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][15]~33_combout\,
	datad => \ALT_INV_stage[1][17]~40_combout\,
	datae => \ALT_INV_stage[1][19]~41_combout\,
	dataf => \ALT_INV_stage[1][21]~42_combout\,
	combout => \stage[3][15]~82_combout\);

-- Location: MLABCELL_X29_Y52_N36
\stage[6][7]~87\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][7]~87_combout\ = ( \stage[3][15]~82_combout\ & ( (\stage[6][7]~86_combout\ & ((!\stage[6][4]~0_combout\) # ((!\B[3]~input_o\ & !\stage[6][7]~83_combout\)))) ) ) # ( !\stage[3][15]~82_combout\ & ( (\stage[6][7]~86_combout\ & 
-- ((!\stage[6][4]~0_combout\) # ((!\stage[6][7]~83_combout\) # (\B[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000001111101100000000111010100000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[6][7]~83_combout\,
	datad => \ALT_INV_stage[6][7]~86_combout\,
	dataf => \ALT_INV_stage[3][15]~82_combout\,
	combout => \stage[6][7]~87_combout\);

-- Location: MLABCELL_X34_Y52_N28
\Y~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = ( \stage[6][7]~87_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\A[7]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Y~12_combout\)))) ) ) # ( !\stage[6][7]~87_combout\ & ( ((!\ShiftFN[0]~input_o\ & ((\A[7]~input_o\))) # 
-- (\ShiftFN[0]~input_o\ & (\Y~12_combout\))) # (\ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110111111111000111011111111100011101000000000001110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~12_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_stage[6][7]~87_combout\,
	combout => \Y~13_combout\);

-- Location: MLABCELL_X29_Y52_N2
\stage[6][14]~89\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][14]~89_combout\ = ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\) # (\ExtWord~input_o\))) ) ) # ( !\B[3]~input_o\ & ( (\B[4]~input_o\ & ((!\B[5]~input_o\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001110001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \stage[6][14]~89_combout\);

-- Location: MLABCELL_X29_Y52_N20
\stage[6][8]~90\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][8]~90_combout\ = ( \stage[3][8]~8_combout\ & ( \fill~0_combout\ & ( (!\stage[6][14]~89_combout\) # ((!\stage[6][4]~0_combout\ & (\stage[3][24]~25_combout\)) # (\stage[6][4]~0_combout\ & ((\stage[3][16]~19_combout\)))) ) ) ) # ( 
-- !\stage[3][8]~8_combout\ & ( \fill~0_combout\ & ( (!\stage[6][4]~0_combout\ & (((!\stage[6][14]~89_combout\)) # (\stage[3][24]~25_combout\))) # (\stage[6][4]~0_combout\ & (((\stage[3][16]~19_combout\ & \stage[6][14]~89_combout\)))) ) ) ) # ( 
-- \stage[3][8]~8_combout\ & ( !\fill~0_combout\ & ( (!\stage[6][4]~0_combout\ & (\stage[3][24]~25_combout\ & ((\stage[6][14]~89_combout\)))) # (\stage[6][4]~0_combout\ & (((!\stage[6][14]~89_combout\) # (\stage[3][16]~19_combout\)))) ) ) ) # ( 
-- !\stage[3][8]~8_combout\ & ( !\fill~0_combout\ & ( (\stage[6][14]~89_combout\ & ((!\stage[6][4]~0_combout\ & (\stage[3][24]~25_combout\)) # (\stage[6][4]~0_combout\ & ((\stage[3][16]~19_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][24]~25_combout\,
	datab => \ALT_INV_stage[3][16]~19_combout\,
	datac => \ALT_INV_stage[6][4]~0_combout\,
	datad => \ALT_INV_stage[6][14]~89_combout\,
	datae => \ALT_INV_stage[3][8]~8_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[6][8]~90_combout\);

-- Location: MLABCELL_X29_Y52_N14
\stage[6][23]~88\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][23]~88_combout\ = ( \B[3]~input_o\ & ( (!\stage[6][4]~0_combout\ & ((\fill~0_combout\))) # (\stage[6][4]~0_combout\ & (!\stage[3][31]~85_combout\)) ) ) # ( !\B[3]~input_o\ & ( (!\stage[6][4]~0_combout\ & ((\fill~0_combout\))) # 
-- (\stage[6][4]~0_combout\ & (\stage[3][23]~84_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111101010100000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][31]~85_combout\,
	datab => \ALT_INV_stage[3][23]~84_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[6][4]~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \stage[6][23]~88_combout\);

-- Location: LABCELL_X32_Y52_N12
\Y~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = ( \A[8]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\stage[6][23]~88_combout\)))) # (\ShiftFN[1]~input_o\ & (\stage[6][8]~90_combout\)) ) ) # ( !\A[8]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (((\stage[6][23]~88_combout\ & \ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (\stage[6][8]~90_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111110101001101011111010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~90_combout\,
	datab => \ALT_INV_stage[6][23]~88_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Y~14_combout\);

-- Location: LABCELL_X30_Y52_N26
\stage[6][22]~91\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][22]~91_combout\ = ( \fill~0_combout\ & ( (!\stage[6][4]~0_combout\) # ((!\B[3]~input_o\ & (\stage[3][22]~78_combout\)) # (\B[3]~input_o\ & ((\stage[3][30]~79_combout\)))) ) ) # ( !\fill~0_combout\ & ( (\stage[6][4]~0_combout\ & ((!\B[3]~input_o\ 
-- & (\stage[3][22]~78_combout\)) # (\B[3]~input_o\ & ((\stage[3][30]~79_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001111111111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][22]~78_combout\,
	datab => \ALT_INV_stage[3][30]~79_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_stage[6][4]~0_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[6][22]~91_combout\);

-- Location: MLABCELL_X29_Y51_N2
\stage[6][9]~92\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][9]~92_combout\ = ( \stage[3][25]~49_combout\ & ( \stage[6][14]~89_combout\ & ( (!\stage[6][4]~0_combout\) # (\stage[3][17]~44_combout\) ) ) ) # ( !\stage[3][25]~49_combout\ & ( \stage[6][14]~89_combout\ & ( (\stage[6][4]~0_combout\ & 
-- \stage[3][17]~44_combout\) ) ) ) # ( \stage[3][25]~49_combout\ & ( !\stage[6][14]~89_combout\ & ( (!\stage[6][4]~0_combout\ & ((\fill~0_combout\))) # (\stage[6][4]~0_combout\ & (\stage[3][9]~34_combout\)) ) ) ) # ( !\stage[3][25]~49_combout\ & ( 
-- !\stage[6][14]~89_combout\ & ( (!\stage[6][4]~0_combout\ & ((\fill~0_combout\))) # (\stage[6][4]~0_combout\ & (\stage[3][9]~34_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_stage[3][9]~34_combout\,
	datac => \ALT_INV_stage[3][17]~44_combout\,
	datad => \ALT_INV_fill~0_combout\,
	datae => \ALT_INV_stage[3][25]~49_combout\,
	dataf => \ALT_INV_stage[6][14]~89_combout\,
	combout => \stage[6][9]~92_combout\);

-- Location: MLABCELL_X31_Y52_N14
\Y~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\stage[6][22]~91_combout\)) # (\ShiftFN[1]~input_o\ & ((\stage[6][9]~92_combout\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\A[9]~input_o\))) # 
-- (\ShiftFN[1]~input_o\ & (\stage[6][9]~92_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][22]~91_combout\,
	datab => \ALT_INV_stage[6][9]~92_combout\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~15_combout\);

-- Location: LABCELL_X30_Y50_N4
\stage[6][21]~93\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][21]~93_combout\ = ( \B[3]~input_o\ & ( (!\stage[6][4]~0_combout\ & ((\fill~0_combout\))) # (\stage[6][4]~0_combout\ & (\stage[3][29]~58_combout\)) ) ) # ( !\B[3]~input_o\ & ( (!\stage[6][4]~0_combout\ & ((\fill~0_combout\))) # 
-- (\stage[6][4]~0_combout\ & (\stage[3][21]~73_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][29]~58_combout\,
	datab => \ALT_INV_stage[3][21]~73_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[6][4]~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \stage[6][21]~93_combout\);

-- Location: MLABCELL_X29_Y52_N26
\stage[6][10]~94\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][10]~94_combout\ = ( \stage[3][10]~52_combout\ & ( \stage[3][26]~55_combout\ & ( (!\stage[6][4]~0_combout\ & (((\fill~0_combout\)) # (\stage[6][14]~89_combout\))) # (\stage[6][4]~0_combout\ & ((!\stage[6][14]~89_combout\) # 
-- ((\stage[3][18]~54_combout\)))) ) ) ) # ( !\stage[3][10]~52_combout\ & ( \stage[3][26]~55_combout\ & ( (!\stage[6][4]~0_combout\ & (((\fill~0_combout\)) # (\stage[6][14]~89_combout\))) # (\stage[6][4]~0_combout\ & (\stage[6][14]~89_combout\ & 
-- ((\stage[3][18]~54_combout\)))) ) ) ) # ( \stage[3][10]~52_combout\ & ( !\stage[3][26]~55_combout\ & ( (!\stage[6][4]~0_combout\ & (!\stage[6][14]~89_combout\ & (\fill~0_combout\))) # (\stage[6][4]~0_combout\ & ((!\stage[6][14]~89_combout\) # 
-- ((\stage[3][18]~54_combout\)))) ) ) ) # ( !\stage[3][10]~52_combout\ & ( !\stage[3][26]~55_combout\ & ( (!\stage[6][4]~0_combout\ & (!\stage[6][14]~89_combout\ & (\fill~0_combout\))) # (\stage[6][4]~0_combout\ & (\stage[6][14]~89_combout\ & 
-- ((\stage[3][18]~54_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_stage[6][14]~89_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[3][18]~54_combout\,
	datae => \ALT_INV_stage[3][10]~52_combout\,
	dataf => \ALT_INV_stage[3][26]~55_combout\,
	combout => \stage[6][10]~94_combout\);

-- Location: MLABCELL_X31_Y52_N16
\Y~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\stage[6][21]~93_combout\)) # (\ShiftFN[1]~input_o\ & ((\stage[6][10]~94_combout\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\A[10]~input_o\))) # 
-- (\ShiftFN[1]~input_o\ & (\stage[6][10]~94_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][21]~93_combout\,
	datab => \ALT_INV_stage[6][10]~94_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~16_combout\);

-- Location: LABCELL_X30_Y52_N10
\stage[6][11]~96\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][11]~96_combout\ = ( \stage[3][11]~59_combout\ & ( \stage[6][14]~89_combout\ & ( (!\stage[6][4]~0_combout\ & ((\stage[3][27]~62_combout\))) # (\stage[6][4]~0_combout\ & (\stage[3][19]~61_combout\)) ) ) ) # ( !\stage[3][11]~59_combout\ & ( 
-- \stage[6][14]~89_combout\ & ( (!\stage[6][4]~0_combout\ & ((\stage[3][27]~62_combout\))) # (\stage[6][4]~0_combout\ & (\stage[3][19]~61_combout\)) ) ) ) # ( \stage[3][11]~59_combout\ & ( !\stage[6][14]~89_combout\ & ( (\stage[6][4]~0_combout\) # 
-- (\fill~0_combout\) ) ) ) # ( !\stage[3][11]~59_combout\ & ( !\stage[6][14]~89_combout\ & ( (\fill~0_combout\ & !\stage[6][4]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][19]~61_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[3][27]~62_combout\,
	datad => \ALT_INV_stage[6][4]~0_combout\,
	datae => \ALT_INV_stage[3][11]~59_combout\,
	dataf => \ALT_INV_stage[6][14]~89_combout\,
	combout => \stage[6][11]~96_combout\);

-- Location: LABCELL_X30_Y52_N32
\stage[6][20]~95\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][20]~95_combout\ = ( \fill~0_combout\ & ( (!\stage[6][4]~0_combout\) # ((!\B[3]~input_o\ & ((\stage[3][20]~68_combout\))) # (\B[3]~input_o\ & (\stage[3][28]~65_combout\))) ) ) # ( !\fill~0_combout\ & ( (\stage[6][4]~0_combout\ & ((!\B[3]~input_o\ 
-- & ((\stage[3][20]~68_combout\))) # (\B[3]~input_o\ & (\stage[3][28]~65_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010111110011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][28]~65_combout\,
	datab => \ALT_INV_stage[3][20]~68_combout\,
	datac => \ALT_INV_stage[6][4]~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[6][20]~95_combout\);

-- Location: LABCELL_X32_Y52_N18
\Y~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = ( \A[11]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\stage[6][20]~95_combout\)))) # (\ShiftFN[1]~input_o\ & (((\stage[6][11]~96_combout\)))) ) ) # ( !\A[11]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\ShiftFN[0]~input_o\ & ((\stage[6][20]~95_combout\)))) # (\ShiftFN[1]~input_o\ & (((\stage[6][11]~96_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_stage[6][11]~96_combout\,
	datad => \ALT_INV_stage[6][20]~95_combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Y~17_combout\);

-- Location: LABCELL_X30_Y52_N12
\stage[6][12]~98\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][12]~98_combout\ = ( \stage[3][28]~65_combout\ & ( \fill~0_combout\ & ( (!\stage[6][4]~0_combout\) # ((!\stage[6][14]~89_combout\ & (\stage[3][12]~66_combout\)) # (\stage[6][14]~89_combout\ & ((\stage[3][20]~68_combout\)))) ) ) ) # ( 
-- !\stage[3][28]~65_combout\ & ( \fill~0_combout\ & ( (!\stage[6][4]~0_combout\ & (((!\stage[6][14]~89_combout\)))) # (\stage[6][4]~0_combout\ & ((!\stage[6][14]~89_combout\ & (\stage[3][12]~66_combout\)) # (\stage[6][14]~89_combout\ & 
-- ((\stage[3][20]~68_combout\))))) ) ) ) # ( \stage[3][28]~65_combout\ & ( !\fill~0_combout\ & ( (!\stage[6][4]~0_combout\ & (((\stage[6][14]~89_combout\)))) # (\stage[6][4]~0_combout\ & ((!\stage[6][14]~89_combout\ & (\stage[3][12]~66_combout\)) # 
-- (\stage[6][14]~89_combout\ & ((\stage[3][20]~68_combout\))))) ) ) ) # ( !\stage[3][28]~65_combout\ & ( !\fill~0_combout\ & ( (\stage[6][4]~0_combout\ & ((!\stage[6][14]~89_combout\ & (\stage[3][12]~66_combout\)) # (\stage[6][14]~89_combout\ & 
-- ((\stage[3][20]~68_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][12]~66_combout\,
	datab => \ALT_INV_stage[3][20]~68_combout\,
	datac => \ALT_INV_stage[6][4]~0_combout\,
	datad => \ALT_INV_stage[6][14]~89_combout\,
	datae => \ALT_INV_stage[3][28]~65_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[6][12]~98_combout\);

-- Location: LABCELL_X30_Y52_N38
\stage[6][19]~97\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][19]~97_combout\ = ( \stage[3][27]~62_combout\ & ( (!\stage[6][4]~0_combout\ & (((\fill~0_combout\)))) # (\stage[6][4]~0_combout\ & (((\stage[3][19]~61_combout\)) # (\B[3]~input_o\))) ) ) # ( !\stage[3][27]~62_combout\ & ( 
-- (!\stage[6][4]~0_combout\ & (((\fill~0_combout\)))) # (\stage[6][4]~0_combout\ & (!\B[3]~input_o\ & ((\stage[3][19]~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[3][19]~61_combout\,
	dataf => \ALT_INV_stage[3][27]~62_combout\,
	combout => \stage[6][19]~97_combout\);

-- Location: LABCELL_X32_Y52_N36
\Y~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = ( \A[12]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\stage[6][19]~97_combout\)))) # (\ShiftFN[1]~input_o\ & (\stage[6][12]~98_combout\)) ) ) # ( !\A[12]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (((\stage[6][19]~97_combout\ & \ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (\stage[6][12]~98_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111110101001101011111010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][12]~98_combout\,
	datab => \ALT_INV_stage[6][19]~97_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Y~18_combout\);

-- Location: LABCELL_X30_Y50_N38
\stage[6][13]~100\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][13]~100_combout\ = ( \stage[3][13]~71_combout\ & ( \stage[3][21]~73_combout\ & ( ((!\stage[6][14]~89_combout\ & (\fill~0_combout\)) # (\stage[6][14]~89_combout\ & ((\stage[3][29]~58_combout\)))) # (\stage[6][4]~0_combout\) ) ) ) # ( 
-- !\stage[3][13]~71_combout\ & ( \stage[3][21]~73_combout\ & ( (!\stage[6][14]~89_combout\ & (\fill~0_combout\ & (!\stage[6][4]~0_combout\))) # (\stage[6][14]~89_combout\ & (((\stage[3][29]~58_combout\) # (\stage[6][4]~0_combout\)))) ) ) ) # ( 
-- \stage[3][13]~71_combout\ & ( !\stage[3][21]~73_combout\ & ( (!\stage[6][14]~89_combout\ & (((\stage[6][4]~0_combout\)) # (\fill~0_combout\))) # (\stage[6][14]~89_combout\ & (((!\stage[6][4]~0_combout\ & \stage[3][29]~58_combout\)))) ) ) ) # ( 
-- !\stage[3][13]~71_combout\ & ( !\stage[3][21]~73_combout\ & ( (!\stage[6][4]~0_combout\ & ((!\stage[6][14]~89_combout\ & (\fill~0_combout\)) # (\stage[6][14]~89_combout\ & ((\stage[3][29]~58_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[6][14]~89_combout\,
	datac => \ALT_INV_stage[6][4]~0_combout\,
	datad => \ALT_INV_stage[3][29]~58_combout\,
	datae => \ALT_INV_stage[3][13]~71_combout\,
	dataf => \ALT_INV_stage[3][21]~73_combout\,
	combout => \stage[6][13]~100_combout\);

-- Location: LABCELL_X30_Y52_N4
\stage[6][18]~99\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][18]~99_combout\ = ( \fill~0_combout\ & ( (!\stage[6][4]~0_combout\) # ((!\B[3]~input_o\ & ((\stage[3][18]~54_combout\))) # (\B[3]~input_o\ & (\stage[3][26]~55_combout\))) ) ) # ( !\fill~0_combout\ & ( (\stage[6][4]~0_combout\ & ((!\B[3]~input_o\ 
-- & ((\stage[3][18]~54_combout\))) # (\B[3]~input_o\ & (\stage[3][26]~55_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010111110011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][26]~55_combout\,
	datab => \ALT_INV_stage[3][18]~54_combout\,
	datac => \ALT_INV_stage[6][4]~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[6][18]~99_combout\);

-- Location: LABCELL_X35_Y52_N32
\Y~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = ( \stage[6][18]~99_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\A[13]~input_o\)) # (\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[6][13]~100_combout\)))) ) ) # ( !\stage[6][18]~99_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (!\ShiftFN[0]~input_o\ & (\A[13]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[6][13]~100_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_stage[6][13]~100_combout\,
	dataf => \ALT_INV_stage[6][18]~99_combout\,
	combout => \Y~19_combout\);

-- Location: LABCELL_X30_Y52_N16
\stage[6][14]~102\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][14]~102_combout\ = ( \stage[6][4]~0_combout\ & ( \stage[6][14]~89_combout\ & ( \stage[3][22]~78_combout\ ) ) ) # ( !\stage[6][4]~0_combout\ & ( \stage[6][14]~89_combout\ & ( \stage[3][30]~79_combout\ ) ) ) # ( \stage[6][4]~0_combout\ & ( 
-- !\stage[6][14]~89_combout\ & ( \stage[3][14]~76_combout\ ) ) ) # ( !\stage[6][4]~0_combout\ & ( !\stage[6][14]~89_combout\ & ( \fill~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][14]~76_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[3][22]~78_combout\,
	datad => \ALT_INV_stage[3][30]~79_combout\,
	datae => \ALT_INV_stage[6][4]~0_combout\,
	dataf => \ALT_INV_stage[6][14]~89_combout\,
	combout => \stage[6][14]~102_combout\);

-- Location: LABCELL_X30_Y51_N32
\stage[6][17]~101\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][17]~101_combout\ = ( \stage[3][17]~44_combout\ & ( (!\stage[6][4]~0_combout\ & (((\fill~0_combout\)))) # (\stage[6][4]~0_combout\ & ((!\B[3]~input_o\) # ((\stage[3][25]~49_combout\)))) ) ) # ( !\stage[3][17]~44_combout\ & ( 
-- (!\stage[6][4]~0_combout\ & (((\fill~0_combout\)))) # (\stage[6][4]~0_combout\ & (\B[3]~input_o\ & ((\stage[3][25]~49_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[3][25]~49_combout\,
	dataf => \ALT_INV_stage[3][17]~44_combout\,
	combout => \stage[6][17]~101_combout\);

-- Location: LABCELL_X35_Y52_N34
\Y~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = ( \A[14]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\stage[6][17]~101_combout\)))) # (\ShiftFN[1]~input_o\ & (((\stage[6][14]~102_combout\)))) ) ) # ( !\A[14]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\ShiftFN[0]~input_o\ & ((\stage[6][17]~101_combout\)))) # (\ShiftFN[1]~input_o\ & (((\stage[6][14]~102_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_stage[6][14]~102_combout\,
	datad => \ALT_INV_stage[6][17]~101_combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Y~20_combout\);

-- Location: MLABCELL_X29_Y52_N38
\stage[6][16]~103\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][16]~103_combout\ = ( \fill~0_combout\ & ( (!\stage[6][4]~0_combout\) # ((!\B[3]~input_o\ & (\stage[3][16]~19_combout\)) # (\B[3]~input_o\ & ((\stage[3][24]~25_combout\)))) ) ) # ( !\fill~0_combout\ & ( (\stage[6][4]~0_combout\ & 
-- ((!\B[3]~input_o\ & (\stage[3][16]~19_combout\)) # (\B[3]~input_o\ & ((\stage[3][24]~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_stage[3][16]~19_combout\,
	datad => \ALT_INV_stage[3][24]~25_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[6][16]~103_combout\);

-- Location: MLABCELL_X29_Y52_N10
\stage[6][15]~104\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][15]~104_combout\ = ( \stage[3][23]~84_combout\ & ( \stage[3][15]~82_combout\ & ( ((!\stage[6][14]~89_combout\ & (\fill~0_combout\)) # (\stage[6][14]~89_combout\ & ((!\stage[3][31]~85_combout\)))) # (\stage[6][4]~0_combout\) ) ) ) # ( 
-- !\stage[3][23]~84_combout\ & ( \stage[3][15]~82_combout\ & ( (!\stage[6][4]~0_combout\ & ((!\stage[6][14]~89_combout\ & (\fill~0_combout\)) # (\stage[6][14]~89_combout\ & ((!\stage[3][31]~85_combout\))))) # (\stage[6][4]~0_combout\ & 
-- (!\stage[6][14]~89_combout\)) ) ) ) # ( \stage[3][23]~84_combout\ & ( !\stage[3][15]~82_combout\ & ( (!\stage[6][4]~0_combout\ & ((!\stage[6][14]~89_combout\ & (\fill~0_combout\)) # (\stage[6][14]~89_combout\ & ((!\stage[3][31]~85_combout\))))) # 
-- (\stage[6][4]~0_combout\ & (\stage[6][14]~89_combout\)) ) ) ) # ( !\stage[3][23]~84_combout\ & ( !\stage[3][15]~82_combout\ & ( (!\stage[6][4]~0_combout\ & ((!\stage[6][14]~89_combout\ & (\fill~0_combout\)) # (\stage[6][14]~89_combout\ & 
-- ((!\stage[3][31]~85_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000001000001110110001100101101110010011000111111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_stage[6][14]~89_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_stage[3][31]~85_combout\,
	datae => \ALT_INV_stage[3][23]~84_combout\,
	dataf => \ALT_INV_stage[3][15]~82_combout\,
	combout => \stage[6][15]~104_combout\);

-- Location: MLABCELL_X34_Y52_N26
\Y~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = ( \stage[6][15]~104_combout\ & ( ((!\ShiftFN[0]~input_o\ & (\A[15]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\stage[6][16]~103_combout\)))) # (\ShiftFN[1]~input_o\) ) ) # ( !\stage[6][15]~104_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & (\A[15]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\stage[6][16]~103_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000001000111111111110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_stage[6][16]~103_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_stage[6][15]~104_combout\,
	combout => \Y~21_combout\);

-- Location: MLABCELL_X29_Y52_N34
\Y~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = ( \ShiftFN[1]~input_o\ & ( \ExtWord~input_o\ & ( \stage[6][15]~104_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \ExtWord~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\A[16]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\stage[6][16]~103_combout\))) ) 
-- ) ) # ( \ShiftFN[1]~input_o\ & ( !\ExtWord~input_o\ & ( \stage[6][16]~103_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\ExtWord~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\A[16]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\stage[6][15]~104_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001111111100100010011101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_stage[6][15]~104_combout\,
	datad => \ALT_INV_stage[6][16]~103_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~22_combout\);

-- Location: LABCELL_X35_Y52_N0
\Y~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\ExtWord~input_o\ & ( (\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~24_combout\);

-- Location: LABCELL_X35_Y52_N16
\Equal2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X35_Y52_N22
\Y~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = ( \ExtWord~input_o\ & ( (\ShiftFN[1]~input_o\ & \stage[6][15]~104_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_stage[6][15]~104_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~23_combout\);

-- Location: MLABCELL_X29_Y52_N16
\Y~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = ( \stage[3][16]~19_combout\ & ( \stage[3][24]~25_combout\ & ( (\ExtWord~input_o\ & ((\fill~0_combout\) # (\stage[6][4]~0_combout\))) ) ) ) # ( !\stage[3][16]~19_combout\ & ( \stage[3][24]~25_combout\ & ( (\ExtWord~input_o\ & 
-- ((!\stage[6][4]~0_combout\ & (\fill~0_combout\)) # (\stage[6][4]~0_combout\ & ((\B[3]~input_o\))))) ) ) ) # ( \stage[3][16]~19_combout\ & ( !\stage[3][24]~25_combout\ & ( (\ExtWord~input_o\ & ((!\stage[6][4]~0_combout\ & (\fill~0_combout\)) # 
-- (\stage[6][4]~0_combout\ & ((!\B[3]~input_o\))))) ) ) ) # ( !\stage[3][16]~19_combout\ & ( !\stage[3][24]~25_combout\ & ( (!\stage[6][4]~0_combout\ & (\fill~0_combout\ & \ExtWord~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000111001000000000001001110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~0_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_stage[3][16]~19_combout\,
	dataf => \ALT_INV_stage[3][24]~25_combout\,
	combout => \Y~25_combout\);

-- Location: LABCELL_X35_Y52_N26
\Y~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = ( \stage[6][14]~102_combout\ & ( (!\Y~25_combout\ & (((!\stage[6][17]~101_combout\ & !\Equal0~0_combout\)) # (\ExtWord~input_o\))) ) ) # ( !\stage[6][14]~102_combout\ & ( (!\Y~25_combout\ & (((!\stage[6][17]~101_combout\) # 
-- (\Equal0~0_combout\)) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010101010101000101010101010100010001000101010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~25_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_stage[6][17]~101_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_stage[6][14]~102_combout\,
	combout => \Y~26_combout\);

-- Location: LABCELL_X35_Y52_N8
\Y~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = ( \A[17]~input_o\ & ( (((\Y~24_combout\ & !\Y~26_combout\)) # (\Y~23_combout\)) # (\Equal2~0_combout\) ) ) # ( !\A[17]~input_o\ & ( ((\Y~24_combout\ & !\Y~26_combout\)) # (\Y~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111101111111001111110111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~24_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Y~23_combout\,
	datad => \ALT_INV_Y~26_combout\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Y~27_combout\);

-- Location: LABCELL_X35_Y52_N18
\Y~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = ( \ExtWord~input_o\ & ( !\Y~25_combout\ ) ) # ( !\ExtWord~input_o\ & ( (!\Y~25_combout\ & ((!\Equal0~0_combout\ & (!\stage[6][18]~99_combout\)) # (\Equal0~0_combout\ & ((!\stage[6][13]~100_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110000000000101011000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][18]~99_combout\,
	datab => \ALT_INV_stage[6][13]~100_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Y~25_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~28_combout\);

-- Location: LABCELL_X35_Y52_N14
\Y~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = ( \A[18]~input_o\ & ( (((\Y~24_combout\ & !\Y~28_combout\)) # (\Y~23_combout\)) # (\Equal2~0_combout\) ) ) # ( !\A[18]~input_o\ & ( ((\Y~24_combout\ & !\Y~28_combout\)) # (\Y~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111101111111001111110111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~24_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Y~23_combout\,
	datad => \ALT_INV_Y~28_combout\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Y~29_combout\);

-- Location: LABCELL_X32_Y52_N38
\Y~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = ( !\Y~25_combout\ & ( ((!\Equal0~0_combout\ & ((!\stage[6][19]~97_combout\))) # (\Equal0~0_combout\ & (!\stage[6][12]~98_combout\))) # (\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011111111110010101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][12]~98_combout\,
	datab => \ALT_INV_stage[6][19]~97_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y~25_combout\,
	combout => \Y~30_combout\);

-- Location: LABCELL_X35_Y52_N12
\Y~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = ( \A[19]~input_o\ & ( (((\Y~24_combout\ & !\Y~30_combout\)) # (\Y~23_combout\)) # (\Equal2~0_combout\) ) ) # ( !\A[19]~input_o\ & ( ((\Y~24_combout\ & !\Y~30_combout\)) # (\Y~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111101111111001111110111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~24_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Y~23_combout\,
	datad => \ALT_INV_Y~30_combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Y~31_combout\);

-- Location: LABCELL_X35_Y52_N24
\Y~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = ( \stage[6][11]~96_combout\ & ( (!\Y~25_combout\ & (((!\stage[6][20]~95_combout\ & !\Equal0~0_combout\)) # (\ExtWord~input_o\))) ) ) # ( !\stage[6][11]~96_combout\ & ( (!\Y~25_combout\ & (((!\stage[6][20]~95_combout\) # 
-- (\Equal0~0_combout\)) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010101010101000101010101010100010001000101010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~25_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_stage[6][20]~95_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_stage[6][11]~96_combout\,
	combout => \Y~32_combout\);

-- Location: LABCELL_X35_Y52_N10
\Y~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = ( \Y~32_combout\ & ( ((\Equal2~0_combout\ & \A[20]~input_o\)) # (\Y~23_combout\) ) ) # ( !\Y~32_combout\ & ( (((\Equal2~0_combout\ & \A[20]~input_o\)) # (\Y~23_combout\)) # (\Y~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111010101111111111100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~24_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_Y~23_combout\,
	dataf => \ALT_INV_Y~32_combout\,
	combout => \Y~33_combout\);

-- Location: MLABCELL_X31_Y52_N18
\Y~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = ( \Equal0~0_combout\ & ( (!\Y~25_combout\ & ((!\stage[6][10]~94_combout\) # (\ExtWord~input_o\))) ) ) # ( !\Equal0~0_combout\ & ( (!\Y~25_combout\ & ((!\stage[6][21]~93_combout\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000000101011110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][21]~93_combout\,
	datab => \ALT_INV_stage[6][10]~94_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Y~25_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Y~34_combout\);

-- Location: LABCELL_X35_Y52_N38
\Y~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = ( \A[21]~input_o\ & ( (((\Y~24_combout\ & !\Y~34_combout\)) # (\Y~23_combout\)) # (\Equal2~0_combout\) ) ) # ( !\A[21]~input_o\ & ( ((\Y~24_combout\ & !\Y~34_combout\)) # (\Y~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111101111111001111110111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~24_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Y~23_combout\,
	datad => \ALT_INV_Y~34_combout\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Y~35_combout\);

-- Location: MLABCELL_X31_Y52_N12
\Y~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = ( \ExtWord~input_o\ & ( !\Y~25_combout\ ) ) # ( !\ExtWord~input_o\ & ( (!\Y~25_combout\ & ((!\Equal0~0_combout\ & (!\stage[6][22]~91_combout\)) # (\Equal0~0_combout\ & ((!\stage[6][9]~92_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110000000000101011000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][22]~91_combout\,
	datab => \ALT_INV_stage[6][9]~92_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Y~25_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~36_combout\);

-- Location: LABCELL_X35_Y52_N36
\Y~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~37_combout\ = ( \A[22]~input_o\ & ( (((\Y~24_combout\ & !\Y~36_combout\)) # (\Y~23_combout\)) # (\Equal2~0_combout\) ) ) # ( !\A[22]~input_o\ & ( ((\Y~24_combout\ & !\Y~36_combout\)) # (\Y~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111101110011111111110111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~24_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Y~36_combout\,
	datad => \ALT_INV_Y~23_combout\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Y~37_combout\);

-- Location: LABCELL_X32_Y52_N14
\Y~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~38_combout\ = ( !\Y~25_combout\ & ( ((!\Equal0~0_combout\ & ((!\stage[6][23]~88_combout\))) # (\Equal0~0_combout\ & (!\stage[6][8]~90_combout\))) # (\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011111111110010101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~90_combout\,
	datab => \ALT_INV_stage[6][23]~88_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y~25_combout\,
	combout => \Y~38_combout\);

-- Location: LABCELL_X35_Y52_N2
\Y~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~39_combout\ = ( \A[23]~input_o\ & ( (((!\Y~38_combout\ & \Y~24_combout\)) # (\Equal2~0_combout\)) # (\Y~23_combout\) ) ) # ( !\A[23]~input_o\ & ( ((!\Y~38_combout\ & \Y~24_combout\)) # (\Y~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110111011001100111011101100111111101111110011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~38_combout\,
	datab => \ALT_INV_Y~23_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Y~24_combout\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Y~39_combout\);

-- Location: MLABCELL_X34_Y52_N6
\Y~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~40_combout\ = ( \stage[6][15]~104_combout\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\Y~25_combout\))) # (\ShiftFN[1]~input_o\ & (((\ExtWord~input_o\) # (\Y~25_combout\)))) ) ) # ( !\stage[6][15]~104_combout\ & ( (\Y~25_combout\ & 
-- ((!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\ & ((!\ExtWord~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000010000001110000001000000111010101110000011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y~25_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_stage[6][15]~104_combout\,
	combout => \Y~40_combout\);

-- Location: MLABCELL_X34_Y52_N30
\Y~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~41_combout\ = ( \ShiftFN[1]~input_o\ & ( (\Y~12_combout\ & !\ExtWord~input_o\) ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \A[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~12_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y~41_combout\);

-- Location: MLABCELL_X34_Y52_N34
\Y~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~42_combout\ = ( \stage[6][7]~87_combout\ & ( (\Y~41_combout\) # (\Y~40_combout\) ) ) # ( !\stage[6][7]~87_combout\ & ( (((!\ExtWord~input_o\ & \Equal0~0_combout\)) # (\Y~41_combout\)) # (\Y~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110111111001111111011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Y~40_combout\,
	datac => \ALT_INV_Y~41_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_stage[6][7]~87_combout\,
	combout => \Y~42_combout\);

-- Location: MLABCELL_X34_Y52_N14
\Y~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~43_combout\ = ( \A[25]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (!\ExtWord~input_o\ & ((\Y~10_combout\)))) ) ) # ( !\A[25]~input_o\ & ( (!\ExtWord~input_o\ & (\Y~10_combout\ & \ShiftFN[1]~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011001100000010101100110000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y~10_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Y~43_combout\);

-- Location: MLABCELL_X34_Y52_N32
\Y~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~44_combout\ = ( \Y~43_combout\ ) # ( !\Y~43_combout\ & ( ((!\ExtWord~input_o\ & (!\stage[6][6]~81_combout\ & \Equal0~0_combout\))) # (\Y~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110110011001100111011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Y~40_combout\,
	datac => \ALT_INV_stage[6][6]~81_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Y~43_combout\,
	combout => \Y~44_combout\);

-- Location: MLABCELL_X34_Y52_N18
\Y~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~45_combout\ = ( \A[26]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (!\ExtWord~input_o\ & ((\Y~8_combout\)))) ) ) # ( !\A[26]~input_o\ & ( (!\ExtWord~input_o\ & (\ShiftFN[1]~input_o\ & \Y~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011000000110010101100000011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Y~8_combout\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \Y~45_combout\);

-- Location: MLABCELL_X34_Y52_N36
\Y~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~46_combout\ = ( \Y~40_combout\ ) # ( !\Y~40_combout\ & ( ((!\ExtWord~input_o\ & (\Equal0~0_combout\ & !\stage[6][5]~75_combout\))) # (\Y~45_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111001011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Y~45_combout\,
	datad => \ALT_INV_stage[6][5]~75_combout\,
	dataf => \ALT_INV_Y~40_combout\,
	combout => \Y~46_combout\);

-- Location: MLABCELL_X34_Y52_N22
\Y~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~47_combout\ = ( \A[27]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\ & (((\Y~6_combout\ & !\ExtWord~input_o\)))) ) ) # ( !\A[27]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\Y~6_combout\ & !\ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010001101100010001000110110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y~6_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \Y~47_combout\);

-- Location: MLABCELL_X34_Y52_N38
\Y~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~48_combout\ = ( \Y~40_combout\ ) # ( !\Y~40_combout\ & ( ((!\ExtWord~input_o\ & (\Equal0~0_combout\ & !\stage[6][4]~70_combout\))) # (\Y~47_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111111001000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_stage[6][4]~70_combout\,
	datad => \ALT_INV_Y~47_combout\,
	dataf => \ALT_INV_Y~40_combout\,
	combout => \Y~48_combout\);

-- Location: LABCELL_X32_Y52_N8
\Y~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~49_combout\ = ( \A[28]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\ & (((\ExtWord~input_o\ & \stage[6][15]~104_combout\)))) ) ) # ( !\A[28]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & 
-- \stage[6][15]~104_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010110001000100011011000100010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_stage[6][15]~104_combout\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Y~49_combout\);

-- Location: LABCELL_X32_Y52_N28
\Y~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~65_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((\ShiftFN[0]~input_o\ & (((!\ExtWord~input_o\ & \stage[6][3]~64_combout\)) # (\Y~25_combout\)))) # (\Y~49_combout\) ) ) # ( \ShiftFN[1]~input_o\ & ( (((!\ExtWord~input_o\ & ((\Y~25_combout\) # 
-- (\Y~4_combout\)))) # (\Y~49_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001011111111000010101111111100001111111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_stage[6][3]~64_combout\,
	datac => \ALT_INV_Y~4_combout\,
	datad => \ALT_INV_Y~49_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y~25_combout\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~65_combout\);

-- Location: LABCELL_X32_Y52_N6
\Y~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~50_combout\ = ( \A[29]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\ & (((\stage[6][15]~104_combout\ & \ExtWord~input_o\)))) ) ) # ( !\A[29]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\stage[6][15]~104_combout\ & 
-- \ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010110001000100011011000100010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_stage[6][15]~104_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \Y~50_combout\);

-- Location: LABCELL_X32_Y52_N24
\Y~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~61_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((\ShiftFN[0]~input_o\ & (((!\ExtWord~input_o\ & \stage[6][2]~57_combout\)) # (\Y~25_combout\)))) # (\Y~50_combout\) ) ) # ( \ShiftFN[1]~input_o\ & ( (((!\ExtWord~input_o\ & ((\Y~25_combout\) # 
-- (\Y~2_combout\)))) # (\Y~50_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001011111111000010101111111100001111111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_stage[6][2]~57_combout\,
	datac => \ALT_INV_Y~2_combout\,
	datad => \ALT_INV_Y~50_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y~25_combout\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~61_combout\);

-- Location: LABCELL_X32_Y52_N0
\Y~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~51_combout\ = ( \A[30]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\ & (((\ExtWord~input_o\ & \stage[6][15]~104_combout\)))) ) ) # ( !\A[30]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & 
-- \stage[6][15]~104_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010110001000100011011000100010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_stage[6][15]~104_combout\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Y~51_combout\);

-- Location: LABCELL_X32_Y52_N20
\Y~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~57_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((\ShiftFN[0]~input_o\ & (((!\ExtWord~input_o\ & \stage[6][1]~51_combout\)) # (\Y~25_combout\)))) # (\Y~51_combout\) ) ) # ( \ShiftFN[1]~input_o\ & ( (((!\ExtWord~input_o\ & ((\Y~25_combout\) # 
-- (\stage[6][30]~29_combout\)))) # (\Y~51_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001011111111000010101111111100001111111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_stage[6][1]~51_combout\,
	datac => \ALT_INV_stage[6][30]~29_combout\,
	datad => \ALT_INV_Y~51_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y~25_combout\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~57_combout\);

-- Location: MLABCELL_X29_Y53_N30
\Y~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~52_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & (\A[31]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\stage[6][15]~104_combout\)))) ) ) # ( !\ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & 
-- \A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000010111010000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_stage[6][15]~104_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~52_combout\);

-- Location: MLABCELL_X29_Y53_N0
\Y~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~53_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((\ShiftFN[0]~input_o\ & (((\stage[6][0]~28_combout\ & !\ExtWord~input_o\)) # (\Y~25_combout\)))) # (\Y~52_combout\) ) ) # ( \ShiftFN[1]~input_o\ & ( (((!\ExtWord~input_o\ & ((\stage[6][31]~3_combout\) # 
-- (\Y~25_combout\))))) # (\Y~52_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011100111111011111110111111100110111001101110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~25_combout\,
	datab => \ALT_INV_Y~52_combout\,
	datac => \ALT_INV_stage[6][31]~3_combout\,
	datad => \ALT_INV_stage[6][0]~28_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~53_combout\);

-- Location: IOIBUF_X11_Y0_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X59_Y10_N32
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X25_Y0_N94
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y6_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y6_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X59_Y22_N32
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y21_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X56_Y56_N94
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X41_Y0_N94
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X56_Y56_N1
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X59_Y36_N94
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X3_Y0_N94
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X59_Y21_N1
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X59_Y6_N63
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X54_Y0_N63
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X32_Y0_N63
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X49_Y56_N63
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X54_Y0_N32
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X50_Y0_N63
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X59_Y25_N32
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


