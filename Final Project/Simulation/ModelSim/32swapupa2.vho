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

-- DATE "04/08/2026 14:53:58"

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
-- B[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \srl64[1][0]~11_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \srl64[1][6]~14_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \srl64[1][4]~13_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \srl64[1][2]~12_combout\ : std_logic;
SIGNAL \srl64[3][0]~15_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \srl64[1][20]~7_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \srl64[1][18]~6_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \srl64[1][22]~8_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \srl64[1][16]~5_combout\ : std_logic;
SIGNAL \srl64[3][16]~9_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \srl64[1][26]~2_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \srl64[1][30]~3_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \srl64[1][28]~1_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \srl64[1][24]~0_combout\ : std_logic;
SIGNAL \srl64[3][24]~4_combout\ : std_logic;
SIGNAL \srl64[1][14]~19_combout\ : std_logic;
SIGNAL \srl64[1][10]~17_combout\ : std_logic;
SIGNAL \srl64[1][12]~18_combout\ : std_logic;
SIGNAL \srl64[1][8]~16_combout\ : std_logic;
SIGNAL \srl64[3][8]~20_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \srl64[5][0]~21_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \srl64[4][16]~22_combout\ : std_logic;
SIGNAL \sra64[0][31]~0_combout\ : std_logic;
SIGNAL \Y_sra[0]~0_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \srl64[5][16]~10_combout\ : std_logic;
SIGNAL \Y_srl[0]~0_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \sll64[6][0]~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \sll64[1][1]~1_combout\ : std_logic;
SIGNAL \srl64[1][19]~29_combout\ : std_logic;
SIGNAL \srl64[1][23]~31_combout\ : std_logic;
SIGNAL \srl64[1][17]~28_combout\ : std_logic;
SIGNAL \srl64[1][21]~30_combout\ : std_logic;
SIGNAL \srl64[3][17]~32_combout\ : std_logic;
SIGNAL \sra64[6][15]~1_combout\ : std_logic;
SIGNAL \srl64[1][27]~25_combout\ : std_logic;
SIGNAL \srl64[1][29]~24_combout\ : std_logic;
SIGNAL \srl64[1][25]~26_combout\ : std_logic;
SIGNAL \sra64[3][25]~2_combout\ : std_logic;
SIGNAL \sra64[6][17]~3_combout\ : std_logic;
SIGNAL \srl64[1][13]~41_combout\ : std_logic;
SIGNAL \srl64[1][11]~40_combout\ : std_logic;
SIGNAL \srl64[1][9]~39_combout\ : std_logic;
SIGNAL \srl64[1][15]~42_combout\ : std_logic;
SIGNAL \srl64[3][9]~43_combout\ : std_logic;
SIGNAL \srl64[1][3]~35_combout\ : std_logic;
SIGNAL \srl64[1][7]~37_combout\ : std_logic;
SIGNAL \srl64[1][5]~36_combout\ : std_logic;
SIGNAL \srl64[1][1]~34_combout\ : std_logic;
SIGNAL \srl64[3][1]~38_combout\ : std_logic;
SIGNAL \sra64[5][1]~4_combout\ : std_logic;
SIGNAL \Y_sra[1]~1_combout\ : std_logic;
SIGNAL \srl64[2][29]~23_combout\ : std_logic;
SIGNAL \srl64[3][25]~27_combout\ : std_logic;
SIGNAL \srl64[5][1]~44_combout\ : std_logic;
SIGNAL \srl64[5][17]~33_combout\ : std_logic;
SIGNAL \Y_srl[1]~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \sll64[2][2]~2_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \srl64[3][18]~47_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \srl64[3][26]~46_combout\ : std_logic;
SIGNAL \sra64[3][26]~5_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \sra64[6][18]~6_combout\ : std_logic;
SIGNAL \srl64[5][18]~48_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \srl64[3][10]~45_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \sll64[2][3]~3_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \srl64[3][11]~49_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \srl64[3][19]~51_combout\ : std_logic;
SIGNAL \Y_sra[15]~2_combout\ : std_logic;
SIGNAL \sra64[6][17]~7_combout\ : std_logic;
SIGNAL \sra64[6][17]~8_combout\ : std_logic;
SIGNAL \sra64[6][19]~9_combout\ : std_logic;
SIGNAL \sra64[6][19]~10_combout\ : std_logic;
SIGNAL \srl64[3][27]~50_combout\ : std_logic;
SIGNAL \srl64[5][19]~52_combout\ : std_logic;
SIGNAL \sra64[3][27]~11_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \sll64[2][0]~4_combout\ : std_logic;
SIGNAL \sll64[2][4]~5_combout\ : std_logic;
SIGNAL \sll64[4][4]~6_combout\ : std_logic;
SIGNAL \srl64[3][28]~54_combout\ : std_logic;
SIGNAL \sra64[3][28]~14_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \srl64[3][20]~55_combout\ : std_logic;
SIGNAL \sra64[6][20]~12_combout\ : std_logic;
SIGNAL \sra64[6][20]~13_combout\ : std_logic;
SIGNAL \srl64[5][20]~56_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \srl64[3][12]~53_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \srl64[3][21]~58_combout\ : std_logic;
SIGNAL \srl64[3][13]~57_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \sra64[6][21]~15_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \srl64[5][21]~59_combout\ : std_logic;
SIGNAL \shamt[5]~0_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \sll64[2][1]~7_combout\ : std_logic;
SIGNAL \sll64[2][5]~8_combout\ : std_logic;
SIGNAL \sll64[4][5]~9_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \sll64[2][6]~10_combout\ : std_logic;
SIGNAL \sll64[4][6]~11_combout\ : std_logic;
SIGNAL \srl64[3][22]~61_combout\ : std_logic;
SIGNAL \srl64[3][14]~60_combout\ : std_logic;
SIGNAL \sra64[6][22]~16_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \srl64[5][22]~62_combout\ : std_logic;
SIGNAL \Mux25~8_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~9_combout\ : std_logic;
SIGNAL \Mux25~10_combout\ : std_logic;
SIGNAL \sll64[6][0]~12_combout\ : std_logic;
SIGNAL \sll64[2][7]~13_combout\ : std_logic;
SIGNAL \sll64[6][7]~14_combout\ : std_logic;
SIGNAL \srl64[3][15]~67_combout\ : std_logic;
SIGNAL \srl64[3][7]~66_combout\ : std_logic;
SIGNAL \srl64[3][23]~64_combout\ : std_logic;
SIGNAL \sra64[5][7]~17_combout\ : std_logic;
SIGNAL \Y_sra[7]~10_combout\ : std_logic;
SIGNAL \srl64[3][31]~63_combout\ : std_logic;
SIGNAL \srl64[5][7]~68_combout\ : std_logic;
SIGNAL \srl64[5][23]~65_combout\ : std_logic;
SIGNAL \Y_srl[7]~2_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \sra64[5][8]~18_combout\ : std_logic;
SIGNAL \Y_sra[8]~6_combout\ : std_logic;
SIGNAL \Y_srl[8]~9_combout\ : std_logic;
SIGNAL \sll64[2][8]~15_combout\ : std_logic;
SIGNAL \sll64[4][8]~16_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \sll64[2][9]~17_combout\ : std_logic;
SIGNAL \sll64[4][9]~18_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \sll64[2][10]~19_combout\ : std_logic;
SIGNAL \sll64[4][10]~20_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \sll64[2][11]~21_combout\ : std_logic;
SIGNAL \sll64[4][11]~22_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \srl64[5][28]~70_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \sll64[2][12]~23_combout\ : std_logic;
SIGNAL \sll64[4][12]~24_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \srl64[5][29]~71_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \sll64[2][13]~25_combout\ : std_logic;
SIGNAL \sll64[4][13]~26_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \sll64[2][14]~27_combout\ : std_logic;
SIGNAL \sll64[4][14]~28_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Y_srl[1]~3_combout\ : std_logic;
SIGNAL \Y_srl[15]~4_combout\ : std_logic;
SIGNAL \Y_srl[15]~5_combout\ : std_logic;
SIGNAL \Y_srl[15]~6_combout\ : std_logic;
SIGNAL \Y_sra[15]~3_combout\ : std_logic;
SIGNAL \Y_sra[15]~4_combout\ : std_logic;
SIGNAL \sll64[2][15]~29_combout\ : std_logic;
SIGNAL \sll64[4][15]~30_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \A_left[16]~0_combout\ : std_logic;
SIGNAL \sll64[2][16]~31_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \A_left[17]~1_combout\ : std_logic;
SIGNAL \sll64[2][17]~32_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \A_left[18]~2_combout\ : std_logic;
SIGNAL \sll64[2][18]~33_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \A_left[19]~3_combout\ : std_logic;
SIGNAL \sll64[2][19]~34_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \A_left[20]~4_combout\ : std_logic;
SIGNAL \sll64[2][20]~35_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \A_left[21]~5_combout\ : std_logic;
SIGNAL \sll64[2][21]~36_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \A_left[22]~6_combout\ : std_logic;
SIGNAL \sll64[2][22]~37_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \A_left[23]~7_combout\ : std_logic;
SIGNAL \sll64[2][23]~38_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \srl64[5][24]~69_combout\ : std_logic;
SIGNAL \A_left[24]~8_combout\ : std_logic;
SIGNAL \sll64[2][24]~39_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \A_left[25]~9_combout\ : std_logic;
SIGNAL \sll64[2][25]~40_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \A_left[26]~10_combout\ : std_logic;
SIGNAL \sll64[2][26]~41_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \A_left[27]~11_combout\ : std_logic;
SIGNAL \sll64[2][27]~42_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \A_left[28]~12_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \A_left[29]~13_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Y_sra[30]~5_combout\ : std_logic;
SIGNAL \sll64[2][30]~43_combout\ : std_logic;
SIGNAL \sll64[4][30]~44_combout\ : std_logic;
SIGNAL \Y_sll[30]~0_combout\ : std_logic;
SIGNAL \Y_srl[30]~7_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Y_srl[31]~8_combout\ : std_logic;
SIGNAL \sll64[2][31]~45_combout\ : std_logic;
SIGNAL \sll64[4][31]~46_combout\ : std_logic;
SIGNAL \Y_sll[31]~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y_srl[31]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sll[31]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][31]~46_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][31]~45_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[30]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[30]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sll[30]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][30]~44_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][30]~43_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[29]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[28]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][27]~42_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[27]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][26]~41_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[26]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][25]~40_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[25]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][24]~39_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[24]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][23]~38_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[23]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][22]~37_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[22]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][21]~36_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[21]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][20]~35_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[20]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][19]~34_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[19]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][18]~33_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[18]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][17]~32_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[17]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][16]~31_combout\ : std_logic;
SIGNAL \ALT_INV_A_left[16]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[15]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[15]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[15]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[15]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[15]~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][15]~30_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][15]~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~5_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][14]~28_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][14]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][13]~26_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][13]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][29]~71_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][12]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[5][1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][17]~3_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[3][25]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][15]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][1]~44_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][9]~43_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][15]~42_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][13]~41_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][11]~40_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][9]~39_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][1]~38_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][7]~37_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][5]~36_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][3]~35_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][1]~34_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][17]~33_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][17]~32_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][23]~31_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][21]~30_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][19]~29_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][17]~28_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][25]~27_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][25]~26_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][27]~25_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][29]~24_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[2][29]~23_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[1][1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[4][16]~22_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[0][31]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][0]~21_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][8]~20_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][14]~19_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][12]~18_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][10]~17_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][8]~16_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][0]~15_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][6]~14_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][4]~13_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][2]~12_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][0]~11_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][16]~10_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][16]~9_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][22]~8_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][20]~7_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][18]~6_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][16]~5_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][24]~4_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][30]~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][26]~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][28]~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[1][24]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[7]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[8]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[8]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~8_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][12]~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][28]~70_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][11]~22_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][11]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][10]~20_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][10]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~6_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][9]~18_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][9]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[5][8]~18_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][24]~69_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][8]~16_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][8]~15_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[5][7]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Y_srl[7]~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][7]~68_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][15]~67_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][7]~66_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][23]~65_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][23]~64_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][31]~63_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][7]~14_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][7]~13_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[6][0]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~6_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][22]~16_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][22]~62_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][22]~61_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~5_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][14]~60_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][6]~11_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][6]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~8_combout\ : std_logic;
SIGNAL \ALT_INV_shamt[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][21]~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][21]~59_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][21]~58_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][13]~57_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][5]~9_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][5]~8_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][1]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[3][28]~14_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][20]~13_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][20]~12_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][20]~56_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][20]~55_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][28]~54_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][12]~53_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[4][4]~6_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][4]~5_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[3][27]~11_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][19]~10_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][19]~9_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][17]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Y_sra[15]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][17]~7_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][19]~52_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][19]~51_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][27]~50_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][11]~49_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll64[2][3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~4_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[6][18]~6_combout\ : std_logic;
SIGNAL \ALT_INV_sra64[3][26]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[5][18]~48_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][18]~47_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][26]~46_combout\ : std_logic;
SIGNAL \ALT_INV_srl64[3][10]~45_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Y_srl[31]~8_combout\ <= NOT \Y_srl[31]~8_combout\;
\ALT_INV_Y_sll[31]~1_combout\ <= NOT \Y_sll[31]~1_combout\;
\ALT_INV_sll64[4][31]~46_combout\ <= NOT \sll64[4][31]~46_combout\;
\ALT_INV_sll64[2][31]~45_combout\ <= NOT \sll64[2][31]~45_combout\;
\ALT_INV_Y_sra[30]~5_combout\ <= NOT \Y_sra[30]~5_combout\;
\ALT_INV_Y_srl[30]~7_combout\ <= NOT \Y_srl[30]~7_combout\;
\ALT_INV_Y_sll[30]~0_combout\ <= NOT \Y_sll[30]~0_combout\;
\ALT_INV_sll64[4][30]~44_combout\ <= NOT \sll64[4][30]~44_combout\;
\ALT_INV_sll64[2][30]~43_combout\ <= NOT \sll64[2][30]~43_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_A_left[29]~13_combout\ <= NOT \A_left[29]~13_combout\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_A_left[28]~12_combout\ <= NOT \A_left[28]~12_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_sll64[2][27]~42_combout\ <= NOT \sll64[2][27]~42_combout\;
\ALT_INV_A_left[27]~11_combout\ <= NOT \A_left[27]~11_combout\;
\ALT_INV_Mux5~3_combout\ <= NOT \Mux5~3_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_sll64[2][26]~41_combout\ <= NOT \sll64[2][26]~41_combout\;
\ALT_INV_A_left[26]~10_combout\ <= NOT \A_left[26]~10_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_sll64[2][25]~40_combout\ <= NOT \sll64[2][25]~40_combout\;
\ALT_INV_A_left[25]~9_combout\ <= NOT \A_left[25]~9_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_sll64[2][24]~39_combout\ <= NOT \sll64[2][24]~39_combout\;
\ALT_INV_A_left[24]~8_combout\ <= NOT \A_left[24]~8_combout\;
\ALT_INV_Mux8~3_combout\ <= NOT \Mux8~3_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_sll64[2][23]~38_combout\ <= NOT \sll64[2][23]~38_combout\;
\ALT_INV_A_left[23]~7_combout\ <= NOT \A_left[23]~7_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_sll64[2][22]~37_combout\ <= NOT \sll64[2][22]~37_combout\;
\ALT_INV_A_left[22]~6_combout\ <= NOT \A_left[22]~6_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_sll64[2][21]~36_combout\ <= NOT \sll64[2][21]~36_combout\;
\ALT_INV_A_left[21]~5_combout\ <= NOT \A_left[21]~5_combout\;
\ALT_INV_Mux11~3_combout\ <= NOT \Mux11~3_combout\;
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_sll64[2][20]~35_combout\ <= NOT \sll64[2][20]~35_combout\;
\ALT_INV_A_left[20]~4_combout\ <= NOT \A_left[20]~4_combout\;
\ALT_INV_Mux12~3_combout\ <= NOT \Mux12~3_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_sll64[2][19]~34_combout\ <= NOT \sll64[2][19]~34_combout\;
\ALT_INV_A_left[19]~3_combout\ <= NOT \A_left[19]~3_combout\;
\ALT_INV_Mux13~3_combout\ <= NOT \Mux13~3_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_sll64[2][18]~33_combout\ <= NOT \sll64[2][18]~33_combout\;
\ALT_INV_A_left[18]~2_combout\ <= NOT \A_left[18]~2_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_sll64[2][17]~32_combout\ <= NOT \sll64[2][17]~32_combout\;
\ALT_INV_A_left[17]~1_combout\ <= NOT \A_left[17]~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux15~6_combout\ <= NOT \Mux15~6_combout\;
\ALT_INV_Mux15~5_combout\ <= NOT \Mux15~5_combout\;
\ALT_INV_Mux15~4_combout\ <= NOT \Mux15~4_combout\;
\ALT_INV_Mux15~3_combout\ <= NOT \Mux15~3_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux15~2_combout\ <= NOT \Mux15~2_combout\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\ALT_INV_sll64[2][16]~31_combout\ <= NOT \sll64[2][16]~31_combout\;
\ALT_INV_A_left[16]~0_combout\ <= NOT \A_left[16]~0_combout\;
\ALT_INV_Y_sra[15]~4_combout\ <= NOT \Y_sra[15]~4_combout\;
\ALT_INV_Y_sra[15]~3_combout\ <= NOT \Y_sra[15]~3_combout\;
\ALT_INV_Y_srl[15]~6_combout\ <= NOT \Y_srl[15]~6_combout\;
\ALT_INV_Y_srl[15]~5_combout\ <= NOT \Y_srl[15]~5_combout\;
\ALT_INV_Y_srl[15]~4_combout\ <= NOT \Y_srl[15]~4_combout\;
\ALT_INV_sll64[4][15]~30_combout\ <= NOT \sll64[4][15]~30_combout\;
\ALT_INV_sll64[2][15]~29_combout\ <= NOT \sll64[2][15]~29_combout\;
\ALT_INV_Mux17~5_combout\ <= NOT \Mux17~5_combout\;
\ALT_INV_sll64[4][14]~28_combout\ <= NOT \sll64[4][14]~28_combout\;
\ALT_INV_sll64[2][14]~27_combout\ <= NOT \sll64[2][14]~27_combout\;
\ALT_INV_Mux17~4_combout\ <= NOT \Mux17~4_combout\;
\ALT_INV_Mux17~3_combout\ <= NOT \Mux17~3_combout\;
\ALT_INV_Mux17~2_combout\ <= NOT \Mux17~2_combout\;
\ALT_INV_sll64[4][13]~26_combout\ <= NOT \sll64[4][13]~26_combout\;
\ALT_INV_sll64[2][13]~25_combout\ <= NOT \sll64[2][13]~25_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_srl64[5][29]~71_combout\ <= NOT \srl64[5][29]~71_combout\;
\ALT_INV_Mux19~4_combout\ <= NOT \Mux19~4_combout\;
\ALT_INV_sll64[4][12]~24_combout\ <= NOT \sll64[4][12]~24_combout\;
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_sll64[2][2]~2_combout\ <= NOT \sll64[2][2]~2_combout\;
\ALT_INV_Y_sra[1]~1_combout\ <= NOT \Y_sra[1]~1_combout\;
\ALT_INV_sra64[5][1]~4_combout\ <= NOT \sra64[5][1]~4_combout\;
\ALT_INV_sra64[6][17]~3_combout\ <= NOT \sra64[6][17]~3_combout\;
\ALT_INV_sra64[3][25]~2_combout\ <= NOT \sra64[3][25]~2_combout\;
\ALT_INV_sra64[6][15]~1_combout\ <= NOT \sra64[6][15]~1_combout\;
\ALT_INV_Y_srl[1]~1_combout\ <= NOT \Y_srl[1]~1_combout\;
\ALT_INV_srl64[5][1]~44_combout\ <= NOT \srl64[5][1]~44_combout\;
\ALT_INV_srl64[3][9]~43_combout\ <= NOT \srl64[3][9]~43_combout\;
\ALT_INV_srl64[1][15]~42_combout\ <= NOT \srl64[1][15]~42_combout\;
\ALT_INV_srl64[1][13]~41_combout\ <= NOT \srl64[1][13]~41_combout\;
\ALT_INV_srl64[1][11]~40_combout\ <= NOT \srl64[1][11]~40_combout\;
\ALT_INV_srl64[1][9]~39_combout\ <= NOT \srl64[1][9]~39_combout\;
\ALT_INV_srl64[3][1]~38_combout\ <= NOT \srl64[3][1]~38_combout\;
\ALT_INV_srl64[1][7]~37_combout\ <= NOT \srl64[1][7]~37_combout\;
\ALT_INV_srl64[1][5]~36_combout\ <= NOT \srl64[1][5]~36_combout\;
\ALT_INV_srl64[1][3]~35_combout\ <= NOT \srl64[1][3]~35_combout\;
\ALT_INV_srl64[1][1]~34_combout\ <= NOT \srl64[1][1]~34_combout\;
\ALT_INV_srl64[5][17]~33_combout\ <= NOT \srl64[5][17]~33_combout\;
\ALT_INV_srl64[3][17]~32_combout\ <= NOT \srl64[3][17]~32_combout\;
\ALT_INV_srl64[1][23]~31_combout\ <= NOT \srl64[1][23]~31_combout\;
\ALT_INV_srl64[1][21]~30_combout\ <= NOT \srl64[1][21]~30_combout\;
\ALT_INV_srl64[1][19]~29_combout\ <= NOT \srl64[1][19]~29_combout\;
\ALT_INV_srl64[1][17]~28_combout\ <= NOT \srl64[1][17]~28_combout\;
\ALT_INV_srl64[3][25]~27_combout\ <= NOT \srl64[3][25]~27_combout\;
\ALT_INV_srl64[1][25]~26_combout\ <= NOT \srl64[1][25]~26_combout\;
\ALT_INV_srl64[1][27]~25_combout\ <= NOT \srl64[1][27]~25_combout\;
\ALT_INV_srl64[1][29]~24_combout\ <= NOT \srl64[1][29]~24_combout\;
\ALT_INV_srl64[2][29]~23_combout\ <= NOT \srl64[2][29]~23_combout\;
\ALT_INV_sll64[1][1]~1_combout\ <= NOT \sll64[1][1]~1_combout\;
\ALT_INV_Y_sra[0]~0_combout\ <= NOT \Y_sra[0]~0_combout\;
\ALT_INV_srl64[4][16]~22_combout\ <= NOT \srl64[4][16]~22_combout\;
\ALT_INV_sra64[0][31]~0_combout\ <= NOT \sra64[0][31]~0_combout\;
\ALT_INV_Y_srl[0]~0_combout\ <= NOT \Y_srl[0]~0_combout\;
\ALT_INV_srl64[5][0]~21_combout\ <= NOT \srl64[5][0]~21_combout\;
\ALT_INV_srl64[3][8]~20_combout\ <= NOT \srl64[3][8]~20_combout\;
\ALT_INV_srl64[1][14]~19_combout\ <= NOT \srl64[1][14]~19_combout\;
\ALT_INV_srl64[1][12]~18_combout\ <= NOT \srl64[1][12]~18_combout\;
\ALT_INV_srl64[1][10]~17_combout\ <= NOT \srl64[1][10]~17_combout\;
\ALT_INV_srl64[1][8]~16_combout\ <= NOT \srl64[1][8]~16_combout\;
\ALT_INV_srl64[3][0]~15_combout\ <= NOT \srl64[3][0]~15_combout\;
\ALT_INV_srl64[1][6]~14_combout\ <= NOT \srl64[1][6]~14_combout\;
\ALT_INV_srl64[1][4]~13_combout\ <= NOT \srl64[1][4]~13_combout\;
\ALT_INV_srl64[1][2]~12_combout\ <= NOT \srl64[1][2]~12_combout\;
\ALT_INV_srl64[1][0]~11_combout\ <= NOT \srl64[1][0]~11_combout\;
\ALT_INV_srl64[5][16]~10_combout\ <= NOT \srl64[5][16]~10_combout\;
\ALT_INV_srl64[3][16]~9_combout\ <= NOT \srl64[3][16]~9_combout\;
\ALT_INV_srl64[1][22]~8_combout\ <= NOT \srl64[1][22]~8_combout\;
\ALT_INV_srl64[1][20]~7_combout\ <= NOT \srl64[1][20]~7_combout\;
\ALT_INV_srl64[1][18]~6_combout\ <= NOT \srl64[1][18]~6_combout\;
\ALT_INV_srl64[1][16]~5_combout\ <= NOT \srl64[1][16]~5_combout\;
\ALT_INV_srl64[3][24]~4_combout\ <= NOT \srl64[3][24]~4_combout\;
\ALT_INV_srl64[1][30]~3_combout\ <= NOT \srl64[1][30]~3_combout\;
\ALT_INV_srl64[1][26]~2_combout\ <= NOT \srl64[1][26]~2_combout\;
\ALT_INV_srl64[1][28]~1_combout\ <= NOT \srl64[1][28]~1_combout\;
\ALT_INV_srl64[1][24]~0_combout\ <= NOT \srl64[1][24]~0_combout\;
\ALT_INV_sll64[6][0]~0_combout\ <= NOT \sll64[6][0]~0_combout\;
\ALT_INV_Y_sra[7]~10_combout\ <= NOT \Y_sra[7]~10_combout\;
\ALT_INV_Y_srl[8]~9_combout\ <= NOT \Y_srl[8]~9_combout\;
\ALT_INV_Y_sra[8]~6_combout\ <= NOT \Y_sra[8]~6_combout\;
\ALT_INV_Mux18~6_combout\ <= NOT \Mux18~6_combout\;
\ALT_INV_Mux15~8_combout\ <= NOT \Mux15~8_combout\;
\ALT_INV_sll64[2][12]~23_combout\ <= NOT \sll64[2][12]~23_combout\;
\ALT_INV_Mux19~3_combout\ <= NOT \Mux19~3_combout\;
\ALT_INV_Mux19~2_combout\ <= NOT \Mux19~2_combout\;
\ALT_INV_srl64[5][28]~70_combout\ <= NOT \srl64[5][28]~70_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\ALT_INV_Mux20~3_combout\ <= NOT \Mux20~3_combout\;
\ALT_INV_sll64[4][11]~22_combout\ <= NOT \sll64[4][11]~22_combout\;
\ALT_INV_sll64[2][11]~21_combout\ <= NOT \sll64[2][11]~21_combout\;
\ALT_INV_Mux20~2_combout\ <= NOT \Mux20~2_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux21~3_combout\ <= NOT \Mux21~3_combout\;
\ALT_INV_sll64[4][10]~20_combout\ <= NOT \sll64[4][10]~20_combout\;
\ALT_INV_sll64[2][10]~19_combout\ <= NOT \sll64[2][10]~19_combout\;
\ALT_INV_Mux21~2_combout\ <= NOT \Mux21~2_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux22~6_combout\ <= NOT \Mux22~6_combout\;
\ALT_INV_sll64[4][9]~18_combout\ <= NOT \sll64[4][9]~18_combout\;
\ALT_INV_sll64[2][9]~17_combout\ <= NOT \sll64[2][9]~17_combout\;
\ALT_INV_Mux22~5_combout\ <= NOT \Mux22~5_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\ALT_INV_Mux22~4_combout\ <= NOT \Mux22~4_combout\;
\ALT_INV_Mux22~3_combout\ <= NOT \Mux22~3_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux22~2_combout\ <= NOT \Mux22~2_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_sra64[5][8]~18_combout\ <= NOT \sra64[5][8]~18_combout\;
\ALT_INV_Y_srl[1]~3_combout\ <= NOT \Y_srl[1]~3_combout\;
\ALT_INV_srl64[5][24]~69_combout\ <= NOT \srl64[5][24]~69_combout\;
\ALT_INV_sll64[4][8]~16_combout\ <= NOT \sll64[4][8]~16_combout\;
\ALT_INV_sll64[2][8]~15_combout\ <= NOT \sll64[2][8]~15_combout\;
\ALT_INV_sra64[5][7]~17_combout\ <= NOT \sra64[5][7]~17_combout\;
\ALT_INV_Y_srl[7]~2_combout\ <= NOT \Y_srl[7]~2_combout\;
\ALT_INV_srl64[5][7]~68_combout\ <= NOT \srl64[5][7]~68_combout\;
\ALT_INV_srl64[3][15]~67_combout\ <= NOT \srl64[3][15]~67_combout\;
\ALT_INV_srl64[3][7]~66_combout\ <= NOT \srl64[3][7]~66_combout\;
\ALT_INV_srl64[5][23]~65_combout\ <= NOT \srl64[5][23]~65_combout\;
\ALT_INV_srl64[3][23]~64_combout\ <= NOT \srl64[3][23]~64_combout\;
\ALT_INV_srl64[3][31]~63_combout\ <= NOT \srl64[3][31]~63_combout\;
\ALT_INV_sll64[6][7]~14_combout\ <= NOT \sll64[6][7]~14_combout\;
\ALT_INV_sll64[2][7]~13_combout\ <= NOT \sll64[2][7]~13_combout\;
\ALT_INV_sll64[6][0]~12_combout\ <= NOT \sll64[6][0]~12_combout\;
\ALT_INV_Mux25~9_combout\ <= NOT \Mux25~9_combout\;
\ALT_INV_Mux25~8_combout\ <= NOT \Mux25~8_combout\;
\ALT_INV_Mux25~7_combout\ <= NOT \Mux25~7_combout\;
\ALT_INV_Mux25~6_combout\ <= NOT \Mux25~6_combout\;
\ALT_INV_sra64[6][22]~16_combout\ <= NOT \sra64[6][22]~16_combout\;
\ALT_INV_srl64[5][22]~62_combout\ <= NOT \srl64[5][22]~62_combout\;
\ALT_INV_srl64[3][22]~61_combout\ <= NOT \srl64[3][22]~61_combout\;
\ALT_INV_Mux25~5_combout\ <= NOT \Mux25~5_combout\;
\ALT_INV_srl64[3][14]~60_combout\ <= NOT \srl64[3][14]~60_combout\;
\ALT_INV_Mux25~4_combout\ <= NOT \Mux25~4_combout\;
\ALT_INV_sll64[4][6]~11_combout\ <= NOT \sll64[4][6]~11_combout\;
\ALT_INV_sll64[2][6]~10_combout\ <= NOT \sll64[2][6]~10_combout\;
\ALT_INV_Mux26~5_combout\ <= NOT \Mux26~5_combout\;
\ALT_INV_Mux26~4_combout\ <= NOT \Mux26~4_combout\;
\ALT_INV_Mux26~3_combout\ <= NOT \Mux26~3_combout\;
\ALT_INV_Mux29~8_combout\ <= NOT \Mux29~8_combout\;
\ALT_INV_shamt[5]~0_combout\ <= NOT \shamt[5]~0_combout\;
\ALT_INV_Mux26~2_combout\ <= NOT \Mux26~2_combout\;
\ALT_INV_sra64[6][21]~15_combout\ <= NOT \sra64[6][21]~15_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_srl64[5][21]~59_combout\ <= NOT \srl64[5][21]~59_combout\;
\ALT_INV_srl64[3][21]~58_combout\ <= NOT \srl64[3][21]~58_combout\;
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\ALT_INV_Mux25~3_combout\ <= NOT \Mux25~3_combout\;
\ALT_INV_Mux25~2_combout\ <= NOT \Mux25~2_combout\;
\ALT_INV_srl64[3][13]~57_combout\ <= NOT \srl64[3][13]~57_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_sll64[4][5]~9_combout\ <= NOT \sll64[4][5]~9_combout\;
\ALT_INV_sll64[2][5]~8_combout\ <= NOT \sll64[2][5]~8_combout\;
\ALT_INV_sll64[2][1]~7_combout\ <= NOT \sll64[2][1]~7_combout\;
\ALT_INV_Mux27~4_combout\ <= NOT \Mux27~4_combout\;
\ALT_INV_Mux27~3_combout\ <= NOT \Mux27~3_combout\;
\ALT_INV_Mux27~2_combout\ <= NOT \Mux27~2_combout\;
\ALT_INV_sra64[3][28]~14_combout\ <= NOT \sra64[3][28]~14_combout\;
\ALT_INV_sra64[6][20]~13_combout\ <= NOT \sra64[6][20]~13_combout\;
\ALT_INV_sra64[6][20]~12_combout\ <= NOT \sra64[6][20]~12_combout\;
\ALT_INV_srl64[5][20]~56_combout\ <= NOT \srl64[5][20]~56_combout\;
\ALT_INV_srl64[3][20]~55_combout\ <= NOT \srl64[3][20]~55_combout\;
\ALT_INV_srl64[3][28]~54_combout\ <= NOT \srl64[3][28]~54_combout\;
\ALT_INV_srl64[3][12]~53_combout\ <= NOT \srl64[3][12]~53_combout\;
\ALT_INV_Mux27~1_combout\ <= NOT \Mux27~1_combout\;
\ALT_INV_sll64[4][4]~6_combout\ <= NOT \sll64[4][4]~6_combout\;
\ALT_INV_sll64[2][4]~5_combout\ <= NOT \sll64[2][4]~5_combout\;
\ALT_INV_sll64[2][0]~4_combout\ <= NOT \sll64[2][0]~4_combout\;
\ALT_INV_Mux28~4_combout\ <= NOT \Mux28~4_combout\;
\ALT_INV_Mux28~3_combout\ <= NOT \Mux28~3_combout\;
\ALT_INV_Mux28~2_combout\ <= NOT \Mux28~2_combout\;
\ALT_INV_sra64[3][27]~11_combout\ <= NOT \sra64[3][27]~11_combout\;
\ALT_INV_sra64[6][19]~10_combout\ <= NOT \sra64[6][19]~10_combout\;
\ALT_INV_sra64[6][19]~9_combout\ <= NOT \sra64[6][19]~9_combout\;
\ALT_INV_sra64[6][17]~8_combout\ <= NOT \sra64[6][17]~8_combout\;
\ALT_INV_Y_sra[15]~2_combout\ <= NOT \Y_sra[15]~2_combout\;
\ALT_INV_sra64[6][17]~7_combout\ <= NOT \sra64[6][17]~7_combout\;
\ALT_INV_srl64[5][19]~52_combout\ <= NOT \srl64[5][19]~52_combout\;
\ALT_INV_srl64[3][19]~51_combout\ <= NOT \srl64[3][19]~51_combout\;
\ALT_INV_srl64[3][27]~50_combout\ <= NOT \srl64[3][27]~50_combout\;
\ALT_INV_srl64[3][11]~49_combout\ <= NOT \srl64[3][11]~49_combout\;
\ALT_INV_Mux28~1_combout\ <= NOT \Mux28~1_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_sll64[2][3]~3_combout\ <= NOT \sll64[2][3]~3_combout\;
\ALT_INV_Mux29~6_combout\ <= NOT \Mux29~6_combout\;
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux29~5_combout\ <= NOT \Mux29~5_combout\;
\ALT_INV_Mux29~4_combout\ <= NOT \Mux29~4_combout\;
\ALT_INV_sra64[6][18]~6_combout\ <= NOT \sra64[6][18]~6_combout\;
\ALT_INV_sra64[3][26]~5_combout\ <= NOT \sra64[3][26]~5_combout\;
\ALT_INV_Mux29~3_combout\ <= NOT \Mux29~3_combout\;
\ALT_INV_Mux29~2_combout\ <= NOT \Mux29~2_combout\;
\ALT_INV_srl64[5][18]~48_combout\ <= NOT \srl64[5][18]~48_combout\;
\ALT_INV_srl64[3][18]~47_combout\ <= NOT \srl64[3][18]~47_combout\;
\ALT_INV_srl64[3][26]~46_combout\ <= NOT \srl64[3][26]~46_combout\;
\ALT_INV_srl64[3][10]~45_combout\ <= NOT \srl64[3][10]~45_combout\;

-- Location: IOOBUF_X36_Y56_N67
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X48_Y56_N33
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X35_Y56_N67
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~7_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X59_Y48_N67
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~5_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X51_Y56_N2
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~5_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X38_Y56_N67
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~6_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X44_Y56_N67
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~10_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X30_Y56_N36
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X49_Y56_N98
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~7_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X59_Y49_N36
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~4_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X33_Y56_N98
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X35_Y56_N36
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~5_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X48_Y56_N98
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~2_combout\,
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
	i => \Mux17~6_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X25_Y56_N98
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X28_Y56_N67
\Y[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~7_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X55_Y56_N5
\Y[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~3_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X44_Y56_N2
\Y[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~4_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X40_Y56_N67
\Y[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X51_Y56_N98
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~3_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X53_Y56_N2
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~3_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X59_Y51_N98
\Y[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X49_Y56_N36
\Y[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X48_Y56_N67
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~3_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X59_Y49_N98
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X31_Y56_N98
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~3_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X51_Y56_N36
\Y[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X28_Y56_N2
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X53_Y56_N67
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X40_Y56_N98
\Y[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOIBUF_X42_Y56_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X59_Y48_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y49_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X46_Y56_N63
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X40_Y50_N6
\srl64[1][0]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][0]~11_combout\ = ( \A[1]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[0]~input_o\ & !\ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \srl64[1][0]~11_combout\);

-- Location: IOIBUF_X46_Y56_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X25_Y56_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X37_Y50_N2
\srl64[1][6]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][6]~14_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[7]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][6]~14_combout\);

-- Location: IOIBUF_X38_Y56_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X36_Y56_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X36_Y56_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X37_Y50_N0
\srl64[1][4]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][4]~13_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[5]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][4]~13_combout\);

-- Location: IOIBUF_X33_Y56_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X25_Y56_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X44_Y56_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X40_Y50_N4
\srl64[1][2]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][2]~12_combout\ = (!\ExtWord~input_o\ & ((!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	combout => \srl64[1][2]~12_combout\);

-- Location: MLABCELL_X37_Y50_N26
\srl64[3][0]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][0]~15_combout\ = ( \B[1]~input_o\ & ( \srl64[1][2]~12_combout\ & ( (!\B[2]~input_o\) # (\srl64[1][6]~14_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \srl64[1][2]~12_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][0]~11_combout\)) # (\B[2]~input_o\ & 
-- ((\srl64[1][4]~13_combout\))) ) ) ) # ( \B[1]~input_o\ & ( !\srl64[1][2]~12_combout\ & ( (\srl64[1][6]~14_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\srl64[1][2]~12_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][0]~11_combout\)) # 
-- (\B[2]~input_o\ & ((\srl64[1][4]~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][0]~11_combout\,
	datab => \ALT_INV_srl64[1][6]~14_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][4]~13_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][2]~12_combout\,
	combout => \srl64[3][0]~15_combout\);

-- Location: IOIBUF_X31_Y56_N63
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X40_Y56_N1
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: MLABCELL_X39_Y50_N6
\srl64[1][20]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][20]~7_combout\ = ( \A[21]~input_o\ & ( \A[4]~input_o\ & ( (!\ExtWord~input_o\ & (((\B[0]~input_o\)) # (\A[20]~input_o\))) # (\ExtWord~input_o\ & (((!\B[0]~input_o\) # (\A[5]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( \A[4]~input_o\ & ( 
-- (!\ExtWord~input_o\ & (\A[20]~input_o\ & (!\B[0]~input_o\))) # (\ExtWord~input_o\ & (((!\B[0]~input_o\) # (\A[5]~input_o\)))) ) ) ) # ( \A[21]~input_o\ & ( !\A[4]~input_o\ & ( (!\ExtWord~input_o\ & (((\B[0]~input_o\)) # (\A[20]~input_o\))) # 
-- (\ExtWord~input_o\ & (((\B[0]~input_o\ & \A[5]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( !\A[4]~input_o\ & ( (!\ExtWord~input_o\ & (\A[20]~input_o\ & (!\B[0]~input_o\))) # (\ExtWord~input_o\ & (((\B[0]~input_o\ & \A[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \srl64[1][20]~7_combout\);

-- Location: IOIBUF_X38_Y56_N94
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X28_Y56_N32
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: MLABCELL_X39_Y50_N2
\srl64[1][18]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][18]~6_combout\ = ( \A[2]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[19]~input_o\)) # (\ExtWord~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[19]~input_o\)) # 
-- (\ExtWord~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( \A[2]~input_o\ & ( !\B[0]~input_o\ & ( (\A[18]~input_o\) # (\ExtWord~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[18]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][18]~6_combout\);

-- Location: IOIBUF_X33_Y56_N63
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X49_Y56_N63
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LABCELL_X40_Y51_N26
\srl64[1][22]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][22]~8_combout\ = ( \A[7]~input_o\ & ( \B[0]~input_o\ & ( (\ExtWord~input_o\) # (\A[23]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( \B[0]~input_o\ & ( (\A[23]~input_o\ & !\ExtWord~input_o\) ) ) ) # ( \A[7]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\ExtWord~input_o\ & (\A[22]~input_o\)) # (\ExtWord~input_o\ & ((\A[6]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[22]~input_o\)) # (\ExtWord~input_o\ & ((\A[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][22]~8_combout\);

-- Location: IOIBUF_X42_Y56_N1
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X59_Y46_N1
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LABCELL_X40_Y50_N20
\srl64[1][16]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][16]~5_combout\ = ( \ExtWord~input_o\ & ( \A[0]~input_o\ & ( (!\B[0]~input_o\) # (\A[1]~input_o\) ) ) ) # ( !\ExtWord~input_o\ & ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)) ) ) ) # ( 
-- \ExtWord~input_o\ & ( !\A[0]~input_o\ & ( (\A[1]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\ExtWord~input_o\ & ( !\A[0]~input_o\ & ( (!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \srl64[1][16]~5_combout\);

-- Location: LABCELL_X40_Y48_N24
\srl64[3][16]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][16]~9_combout\ = ( \srl64[1][22]~8_combout\ & ( \srl64[1][16]~5_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\) # ((\srl64[1][20]~7_combout\)))) # (\B[1]~input_o\ & (((\srl64[1][18]~6_combout\)) # (\B[2]~input_o\))) ) ) ) # ( 
-- !\srl64[1][22]~8_combout\ & ( \srl64[1][16]~5_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\) # ((\srl64[1][20]~7_combout\)))) # (\B[1]~input_o\ & (!\B[2]~input_o\ & ((\srl64[1][18]~6_combout\)))) ) ) ) # ( \srl64[1][22]~8_combout\ & ( 
-- !\srl64[1][16]~5_combout\ & ( (!\B[1]~input_o\ & (\B[2]~input_o\ & (\srl64[1][20]~7_combout\))) # (\B[1]~input_o\ & (((\srl64[1][18]~6_combout\)) # (\B[2]~input_o\))) ) ) ) # ( !\srl64[1][22]~8_combout\ & ( !\srl64[1][16]~5_combout\ & ( (!\B[1]~input_o\ & 
-- (\B[2]~input_o\ & (\srl64[1][20]~7_combout\))) # (\B[1]~input_o\ & (!\B[2]~input_o\ & ((\srl64[1][18]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][20]~7_combout\,
	datad => \ALT_INV_srl64[1][18]~6_combout\,
	datae => \ALT_INV_srl64[1][22]~8_combout\,
	dataf => \ALT_INV_srl64[1][16]~5_combout\,
	combout => \srl64[3][16]~9_combout\);

-- Location: IOIBUF_X35_Y56_N94
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X23_Y56_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X35_Y56_N1
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X51_Y56_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: MLABCELL_X37_Y52_N6
\srl64[1][26]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][26]~2_combout\ = ( \A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[27]~input_o\))) # (\ExtWord~input_o\ & (\A[11]~input_o\)) ) ) ) # ( !\A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[27]~input_o\))) # 
-- (\ExtWord~input_o\ & (\A[11]~input_o\)) ) ) ) # ( \A[10]~input_o\ & ( !\B[0]~input_o\ & ( (\ExtWord~input_o\) # (\A[26]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( !\B[0]~input_o\ & ( (\A[26]~input_o\ & !\ExtWord~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][26]~2_combout\);

-- Location: IOIBUF_X30_Y56_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X42_Y56_N94
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X40_Y56_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X25_Y56_N63
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X38_Y50_N2
\srl64[1][30]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][30]~3_combout\ = ( \A[30]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[31]~input_o\)) # (\ExtWord~input_o\ & ((\A[15]~input_o\))) ) ) ) # ( !\A[30]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[31]~input_o\)) # 
-- (\ExtWord~input_o\ & ((\A[15]~input_o\))) ) ) ) # ( \A[30]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\A[30]~input_o\ & ( !\B[0]~input_o\ & ( (\ExtWord~input_o\ & \A[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][30]~3_combout\);

-- Location: IOIBUF_X23_Y56_N94
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X31_Y56_N32
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X42_Y56_N32
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

-- Location: MLABCELL_X37_Y52_N2
\srl64[1][28]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][28]~1_combout\ = ( \ExtWord~input_o\ & ( \B[0]~input_o\ & ( \A[13]~input_o\ ) ) ) # ( !\ExtWord~input_o\ & ( \B[0]~input_o\ & ( \A[29]~input_o\ ) ) ) # ( \ExtWord~input_o\ & ( !\B[0]~input_o\ & ( \A[12]~input_o\ ) ) ) # ( !\ExtWord~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[28]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][28]~1_combout\);

-- Location: IOIBUF_X46_Y56_N94
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X36_Y56_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X38_Y56_N1
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X49_Y56_N1
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X40_Y51_N22
\srl64[1][24]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][24]~0_combout\ = ( \A[24]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[25]~input_o\)) # (\ExtWord~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( !\A[24]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[25]~input_o\)) # 
-- (\ExtWord~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( \A[24]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\) # (\A[8]~input_o\) ) ) ) # ( !\A[24]~input_o\ & ( !\B[0]~input_o\ & ( (\ExtWord~input_o\ & \A[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][24]~0_combout\);

-- Location: LABCELL_X40_Y48_N2
\srl64[3][24]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][24]~4_combout\ = ( \B[1]~input_o\ & ( \srl64[1][24]~0_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][26]~2_combout\)) # (\B[2]~input_o\ & ((\srl64[1][30]~3_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( \srl64[1][24]~0_combout\ & ( (!\B[2]~input_o\) # 
-- (\srl64[1][28]~1_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\srl64[1][24]~0_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][26]~2_combout\)) # (\B[2]~input_o\ & ((\srl64[1][30]~3_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( !\srl64[1][24]~0_combout\ & ( 
-- (\B[2]~input_o\ & \srl64[1][28]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][26]~2_combout\,
	datab => \ALT_INV_srl64[1][30]~3_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][28]~1_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][24]~0_combout\,
	combout => \srl64[3][24]~4_combout\);

-- Location: LABCELL_X38_Y50_N6
\srl64[1][14]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][14]~19_combout\ = ( \A[15]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[14]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[0]~input_o\ & \A[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \srl64[1][14]~19_combout\);

-- Location: MLABCELL_X37_Y50_N30
\srl64[1][10]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][10]~17_combout\ = ( \A[10]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[11]~input_o\))) ) ) # ( !\A[10]~input_o\ & ( (!\ExtWord~input_o\ & (\B[0]~input_o\ & \A[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \srl64[1][10]~17_combout\);

-- Location: LABCELL_X38_Y50_N4
\srl64[1][12]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][12]~18_combout\ = ( \A[12]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[13]~input_o\))) ) ) # ( !\A[12]~input_o\ & ( (!\ExtWord~input_o\ & (\B[0]~input_o\ & \A[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \srl64[1][12]~18_combout\);

-- Location: MLABCELL_X37_Y50_N28
\srl64[1][8]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][8]~16_combout\ = ( \A[9]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[8]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[9]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[0]~input_o\ & \A[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \srl64[1][8]~16_combout\);

-- Location: MLABCELL_X37_Y50_N34
\srl64[3][8]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][8]~20_combout\ = ( \B[2]~input_o\ & ( \srl64[1][8]~16_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][12]~18_combout\))) # (\B[1]~input_o\ & (\srl64[1][14]~19_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][8]~16_combout\ & ( (!\B[1]~input_o\) # 
-- (\srl64[1][10]~17_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][8]~16_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][12]~18_combout\))) # (\B[1]~input_o\ & (\srl64[1][14]~19_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][8]~16_combout\ & ( 
-- (\srl64[1][10]~17_combout\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][14]~19_combout\,
	datab => \ALT_INV_srl64[1][10]~17_combout\,
	datac => \ALT_INV_srl64[1][12]~18_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][8]~16_combout\,
	combout => \srl64[3][8]~20_combout\);

-- Location: IOIBUF_X48_Y56_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X39_Y48_N22
\srl64[5][0]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][0]~21_combout\ = ( \srl64[3][8]~20_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & (\srl64[3][16]~9_combout\)) # (\B[3]~input_o\ & ((\srl64[3][24]~4_combout\))) ) ) ) # ( !\srl64[3][8]~20_combout\ & ( \B[4]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\srl64[3][16]~9_combout\)) # (\B[3]~input_o\ & ((\srl64[3][24]~4_combout\))) ) ) ) # ( \srl64[3][8]~20_combout\ & ( !\B[4]~input_o\ & ( (\srl64[3][0]~15_combout\) # (\B[3]~input_o\) ) ) ) # ( !\srl64[3][8]~20_combout\ & ( !\B[4]~input_o\ & ( 
-- (!\B[3]~input_o\ & \srl64[3][0]~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_srl64[3][0]~15_combout\,
	datac => \ALT_INV_srl64[3][16]~9_combout\,
	datad => \ALT_INV_srl64[3][24]~4_combout\,
	datae => \ALT_INV_srl64[3][8]~20_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \srl64[5][0]~21_combout\);

-- Location: IOIBUF_X46_Y56_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X39_Y48_N36
\srl64[4][16]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[4][16]~22_combout\ = (!\B[3]~input_o\ & (\srl64[3][16]~9_combout\)) # (\B[3]~input_o\ & ((\srl64[3][24]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[3][16]~9_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][24]~4_combout\,
	combout => \srl64[4][16]~22_combout\);

-- Location: LABCELL_X38_Y49_N22
\sra64[0][31]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[0][31]~0_combout\ = ( \A[15]~input_o\ & ( (\A[31]~input_o\) # (\ExtWord~input_o\) ) ) # ( !\A[15]~input_o\ & ( (!\ExtWord~input_o\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \sra64[0][31]~0_combout\);

-- Location: LABCELL_X38_Y48_N8
\Y_sra[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[0]~0_combout\ = ( \sra64[0][31]~0_combout\ & ( \B[4]~input_o\ & ( ((\ExtWord~input_o\) # (\B[5]~input_o\)) # (\srl64[5][0]~21_combout\) ) ) ) # ( !\sra64[0][31]~0_combout\ & ( \B[4]~input_o\ & ( (\srl64[5][0]~21_combout\ & (!\B[5]~input_o\ & 
-- !\ExtWord~input_o\)) ) ) ) # ( \sra64[0][31]~0_combout\ & ( !\B[4]~input_o\ & ( (!\ExtWord~input_o\ & (((\B[5]~input_o\)) # (\srl64[5][0]~21_combout\))) # (\ExtWord~input_o\ & (((\srl64[4][16]~22_combout\)))) ) ) ) # ( !\sra64[0][31]~0_combout\ & ( 
-- !\B[4]~input_o\ & ( (!\ExtWord~input_o\ & (\srl64[5][0]~21_combout\ & (!\B[5]~input_o\))) # (\ExtWord~input_o\ & (((\srl64[4][16]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111011100000111111101000000010000000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[5][0]~21_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_srl64[4][16]~22_combout\,
	datae => \ALT_INV_sra64[0][31]~0_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_sra[0]~0_combout\);

-- Location: IOIBUF_X28_Y56_N94
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: MLABCELL_X39_Y48_N38
\srl64[5][16]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][16]~10_combout\ = ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\srl64[3][16]~9_combout\)) # (\B[3]~input_o\ & ((\srl64[3][24]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_srl64[3][16]~9_combout\,
	datad => \ALT_INV_srl64[3][24]~4_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \srl64[5][16]~10_combout\);

-- Location: MLABCELL_X39_Y48_N6
\Y_srl[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[0]~0_combout\ = ( \srl64[5][16]~10_combout\ & ( ((!\B[5]~input_o\ & \srl64[5][0]~21_combout\)) # (\ExtWord~input_o\) ) ) # ( !\srl64[5][16]~10_combout\ & ( (!\B[5]~input_o\ & (!\ExtWord~input_o\ & \srl64[5][0]~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_srl64[5][0]~21_combout\,
	dataf => \ALT_INV_srl64[5][16]~10_combout\,
	combout => \Y_srl[0]~0_combout\);

-- Location: IOIBUF_X33_Y56_N32
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LABCELL_X38_Y48_N6
\sll64[6][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][0]~0_combout\ = ( !\B[3]~input_o\ & ( !\B[4]~input_o\ & ( (!\B[2]~input_o\ & (!\B[1]~input_o\ & ((!\B[5]~input_o\) # (\ExtWord~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \sll64[6][0]~0_combout\);

-- Location: LABCELL_X38_Y48_N20
\Mux31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((\A[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\sll64[6][0]~0_combout\ & !\B[0]~input_o\))))) ) ) # ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\Y_srl[0]~0_combout\)))) # (\ShiftFN[0]~input_o\ & 
-- (\Y_sra[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000111010001110111001111110011000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sra[0]~0_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y_srl[0]~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	datag => \ALT_INV_sll64[6][0]~0_combout\,
	combout => \Mux31~0_combout\);

-- Location: MLABCELL_X42_Y49_N24
\sll64[1][1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[1][1]~1_combout\ = ( \A[0]~input_o\ & ( (\B[0]~input_o\) # (\A[1]~input_o\) ) ) # ( !\A[0]~input_o\ & ( (\A[1]~input_o\ & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \sll64[1][1]~1_combout\);

-- Location: MLABCELL_X39_Y50_N12
\srl64[1][19]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][19]~29_combout\ = ( \A[19]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[20]~input_o\))) # (\ExtWord~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\A[19]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[20]~input_o\))) # 
-- (\ExtWord~input_o\ & (\A[4]~input_o\)) ) ) ) # ( \A[19]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\A[19]~input_o\ & ( !\B[0]~input_o\ & ( (\A[3]~input_o\ & \ExtWord~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][19]~29_combout\);

-- Location: LABCELL_X40_Y51_N38
\srl64[1][23]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][23]~31_combout\ = ( \A[23]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[24]~input_o\)) # (\ExtWord~input_o\ & ((\A[8]~input_o\))) ) ) ) # ( !\A[23]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[24]~input_o\)) # 
-- (\ExtWord~input_o\ & ((\A[8]~input_o\))) ) ) ) # ( \A[23]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\) # (\A[7]~input_o\) ) ) ) # ( !\A[23]~input_o\ & ( !\B[0]~input_o\ & ( (\A[7]~input_o\ & \ExtWord~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][23]~31_combout\);

-- Location: MLABCELL_X39_Y50_N28
\srl64[1][17]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][17]~28_combout\ = ( \A[2]~input_o\ & ( \B[0]~input_o\ & ( (\A[18]~input_o\) # (\ExtWord~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[18]~input_o\) ) ) ) # ( \A[2]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\ExtWord~input_o\ & ((\A[17]~input_o\))) # (\ExtWord~input_o\ & (\A[1]~input_o\)) ) ) ) # ( !\A[2]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[17]~input_o\))) # (\ExtWord~input_o\ & (\A[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][17]~28_combout\);

-- Location: LABCELL_X40_Y51_N14
\srl64[1][21]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][21]~30_combout\ = ( \A[21]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\) # ((!\ExtWord~input_o\ & (\A[22]~input_o\)) # (\ExtWord~input_o\ & ((\A[6]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\ExtWord~input_o\)))) # (\B[0]~input_o\ & ((!\ExtWord~input_o\ & (\A[22]~input_o\)) # (\ExtWord~input_o\ & ((\A[6]~input_o\))))) ) ) ) # ( \A[21]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & (((!\ExtWord~input_o\)))) # (\B[0]~input_o\ & 
-- ((!\ExtWord~input_o\ & (\A[22]~input_o\)) # (\ExtWord~input_o\ & ((\A[6]~input_o\))))) ) ) ) # ( !\A[21]~input_o\ & ( !\A[5]~input_o\ & ( (\B[0]~input_o\ & ((!\ExtWord~input_o\ & (\A[22]~input_o\)) # (\ExtWord~input_o\ & ((\A[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \srl64[1][21]~30_combout\);

-- Location: MLABCELL_X42_Y50_N20
\srl64[3][17]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][17]~32_combout\ = ( \srl64[1][17]~28_combout\ & ( \srl64[1][21]~30_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & (\srl64[1][19]~29_combout\)) # (\B[2]~input_o\ & ((\srl64[1][23]~31_combout\)))) ) ) ) # ( !\srl64[1][17]~28_combout\ & ( 
-- \srl64[1][21]~30_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][19]~29_combout\)) # (\B[2]~input_o\ & ((\srl64[1][23]~31_combout\))))) ) ) ) # ( \srl64[1][17]~28_combout\ & ( 
-- !\srl64[1][21]~30_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][19]~29_combout\)) # (\B[2]~input_o\ & ((\srl64[1][23]~31_combout\))))) ) ) ) # ( !\srl64[1][17]~28_combout\ & ( 
-- !\srl64[1][21]~30_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][19]~29_combout\)) # (\B[2]~input_o\ & ((\srl64[1][23]~31_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][19]~29_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][23]~31_combout\,
	datae => \ALT_INV_srl64[1][17]~28_combout\,
	dataf => \ALT_INV_srl64[1][21]~30_combout\,
	combout => \srl64[3][17]~32_combout\);

-- Location: LABCELL_X38_Y51_N8
\sra64[6][15]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][15]~1_combout\ = ((!\ExtWord~input_o\ & \B[5]~input_o\)) # (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110111011001100111011101100110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	combout => \sra64[6][15]~1_combout\);

-- Location: MLABCELL_X37_Y52_N30
\srl64[1][27]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][27]~25_combout\ = ( \A[11]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[28]~input_o\)) # (\ExtWord~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[28]~input_o\)) # 
-- (\ExtWord~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( \A[11]~input_o\ & ( !\B[0]~input_o\ & ( (\ExtWord~input_o\) # (\A[27]~input_o\) ) ) ) # ( !\A[11]~input_o\ & ( !\B[0]~input_o\ & ( (\A[27]~input_o\ & !\ExtWord~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][27]~25_combout\);

-- Location: LABCELL_X38_Y50_N12
\srl64[1][29]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][29]~24_combout\ = ( \A[30]~input_o\ & ( \B[0]~input_o\ & ( (!\ExtWord~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\A[30]~input_o\ & ( \B[0]~input_o\ & ( (\ExtWord~input_o\ & \A[14]~input_o\) ) ) ) # ( \A[30]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\ExtWord~input_o\ & (\A[29]~input_o\)) # (\ExtWord~input_o\ & ((\A[13]~input_o\))) ) ) ) # ( !\A[30]~input_o\ & ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & (\A[29]~input_o\)) # (\ExtWord~input_o\ & ((\A[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][29]~24_combout\);

-- Location: LABCELL_X40_Y51_N10
\srl64[1][25]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][25]~26_combout\ = ( \A[26]~input_o\ & ( \A[9]~input_o\ & ( (!\B[0]~input_o\ & (((\A[25]~input_o\) # (\ExtWord~input_o\)))) # (\B[0]~input_o\ & (((!\ExtWord~input_o\)) # (\A[10]~input_o\))) ) ) ) # ( !\A[26]~input_o\ & ( \A[9]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\A[25]~input_o\) # (\ExtWord~input_o\)))) # (\B[0]~input_o\ & (\A[10]~input_o\ & (\ExtWord~input_o\))) ) ) ) # ( \A[26]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[0]~input_o\ & (((!\ExtWord~input_o\ & \A[25]~input_o\)))) # (\B[0]~input_o\ 
-- & (((!\ExtWord~input_o\)) # (\A[10]~input_o\))) ) ) ) # ( !\A[26]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[0]~input_o\ & (((!\ExtWord~input_o\ & \A[25]~input_o\)))) # (\B[0]~input_o\ & (\A[10]~input_o\ & (\ExtWord~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \srl64[1][25]~26_combout\);

-- Location: MLABCELL_X42_Y51_N20
\sra64[3][25]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[3][25]~2_combout\ = ( \srl64[1][25]~26_combout\ & ( \sra64[0][31]~0_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\srl64[1][27]~25_combout\))) # (\B[2]~input_o\ & (((\B[1]~input_o\) # (\srl64[1][29]~24_combout\)))) ) ) ) # ( 
-- !\srl64[1][25]~26_combout\ & ( \sra64[0][31]~0_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][27]~25_combout\ & ((\B[1]~input_o\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\) # (\srl64[1][29]~24_combout\)))) ) ) ) # ( \srl64[1][25]~26_combout\ & ( 
-- !\sra64[0][31]~0_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\srl64[1][27]~25_combout\))) # (\B[2]~input_o\ & (((\srl64[1][29]~24_combout\ & !\B[1]~input_o\)))) ) ) ) # ( !\srl64[1][25]~26_combout\ & ( !\sra64[0][31]~0_combout\ & ( 
-- (!\B[2]~input_o\ & (\srl64[1][27]~25_combout\ & ((\B[1]~input_o\)))) # (\B[2]~input_o\ & (((\srl64[1][29]~24_combout\ & !\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][27]~25_combout\,
	datac => \ALT_INV_srl64[1][29]~24_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_srl64[1][25]~26_combout\,
	dataf => \ALT_INV_sra64[0][31]~0_combout\,
	combout => \sra64[3][25]~2_combout\);

-- Location: MLABCELL_X42_Y49_N36
\sra64[6][17]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][17]~3_combout\ = ( \sra64[0][31]~0_combout\ & ( ((!\B[3]~input_o\ & (\srl64[3][17]~32_combout\)) # (\B[3]~input_o\ & ((\sra64[3][25]~2_combout\)))) # (\sra64[6][15]~1_combout\) ) ) # ( !\sra64[0][31]~0_combout\ & ( (!\sra64[6][15]~1_combout\ & 
-- ((!\B[3]~input_o\ & (\srl64[3][17]~32_combout\)) # (\B[3]~input_o\ & ((\sra64[3][25]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000000110001110111001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][17]~32_combout\,
	datab => \ALT_INV_sra64[6][15]~1_combout\,
	datac => \ALT_INV_sra64[3][25]~2_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sra64[0][31]~0_combout\,
	combout => \sra64[6][17]~3_combout\);

-- Location: LABCELL_X38_Y50_N28
\srl64[1][13]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][13]~41_combout\ = ( \A[14]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[13]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[14]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[0]~input_o\ & \A[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \srl64[1][13]~41_combout\);

-- Location: MLABCELL_X37_Y52_N18
\srl64[1][11]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][11]~40_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[12]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (\A[11]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][11]~40_combout\);

-- Location: MLABCELL_X37_Y52_N32
\srl64[1][9]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][9]~39_combout\ = ( \B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[10]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\ExtWord~input_o\ & \A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \srl64[1][9]~39_combout\);

-- Location: LABCELL_X40_Y50_N2
\srl64[1][15]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][15]~42_combout\ = ( \A[0]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))))) # (\ExtWord~input_o\ & (((\B[0]~input_o\)))) ) ) # ( !\A[0]~input_o\ & ( (!\ExtWord~input_o\ & 
-- ((!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100000101000100010010111110010001001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \srl64[1][15]~42_combout\);

-- Location: MLABCELL_X42_Y50_N6
\srl64[3][9]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][9]~43_combout\ = ( \srl64[1][9]~39_combout\ & ( \srl64[1][15]~42_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\srl64[1][13]~41_combout\))) # (\B[1]~input_o\ & (((\B[2]~input_o\) # (\srl64[1][11]~40_combout\)))) ) ) ) # ( 
-- !\srl64[1][9]~39_combout\ & ( \srl64[1][15]~42_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][13]~41_combout\ & ((\B[2]~input_o\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\) # (\srl64[1][11]~40_combout\)))) ) ) ) # ( \srl64[1][9]~39_combout\ & ( 
-- !\srl64[1][15]~42_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\srl64[1][13]~41_combout\))) # (\B[1]~input_o\ & (((\srl64[1][11]~40_combout\ & !\B[2]~input_o\)))) ) ) ) # ( !\srl64[1][9]~39_combout\ & ( !\srl64[1][15]~42_combout\ & ( 
-- (!\B[1]~input_o\ & (\srl64[1][13]~41_combout\ & ((\B[2]~input_o\)))) # (\B[1]~input_o\ & (((\srl64[1][11]~40_combout\ & !\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][13]~41_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][11]~40_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_srl64[1][9]~39_combout\,
	dataf => \ALT_INV_srl64[1][15]~42_combout\,
	combout => \srl64[3][9]~43_combout\);

-- Location: LABCELL_X40_Y50_N12
\srl64[1][3]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][3]~35_combout\ = (!\ExtWord~input_o\ & ((!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	combout => \srl64[1][3]~35_combout\);

-- Location: LABCELL_X40_Y50_N14
\srl64[1][7]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][7]~37_combout\ = ( \A[8]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[7]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \srl64[1][7]~37_combout\);

-- Location: LABCELL_X40_Y50_N30
\srl64[1][5]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][5]~36_combout\ = ( \A[5]~input_o\ & ( (!\ExtWord~input_o\ & ((!\B[0]~input_o\) # (\A[6]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \srl64[1][5]~36_combout\);

-- Location: LABCELL_X40_Y50_N28
\srl64[1][1]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[1][1]~34_combout\ = ( \A[2]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[1]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & (!\ExtWord~input_o\ & \A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \srl64[1][1]~34_combout\);

-- Location: LABCELL_X40_Y50_N36
\srl64[3][1]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][1]~38_combout\ = ( \srl64[1][5]~36_combout\ & ( \srl64[1][1]~34_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & (\srl64[1][3]~35_combout\)) # (\B[2]~input_o\ & ((\srl64[1][7]~37_combout\)))) ) ) ) # ( !\srl64[1][5]~36_combout\ & ( 
-- \srl64[1][1]~34_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][3]~35_combout\)) # (\B[2]~input_o\ & ((\srl64[1][7]~37_combout\))))) ) ) ) # ( \srl64[1][5]~36_combout\ & ( !\srl64[1][1]~34_combout\ 
-- & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\srl64[1][3]~35_combout\)) # (\B[2]~input_o\ & ((\srl64[1][7]~37_combout\))))) ) ) ) # ( !\srl64[1][5]~36_combout\ & ( !\srl64[1][1]~34_combout\ & ( (\B[1]~input_o\ & 
-- ((!\B[2]~input_o\ & (\srl64[1][3]~35_combout\)) # (\B[2]~input_o\ & ((\srl64[1][7]~37_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][3]~35_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][7]~37_combout\,
	datae => \ALT_INV_srl64[1][5]~36_combout\,
	dataf => \ALT_INV_srl64[1][1]~34_combout\,
	combout => \srl64[3][1]~38_combout\);

-- Location: MLABCELL_X42_Y49_N10
\sra64[5][1]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[5][1]~4_combout\ = ( \B[4]~input_o\ & ( \sra64[3][25]~2_combout\ & ( (\srl64[3][17]~32_combout\) # (\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \sra64[3][25]~2_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][1]~38_combout\))) # (\B[3]~input_o\ & 
-- (\srl64[3][9]~43_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\sra64[3][25]~2_combout\ & ( (!\B[3]~input_o\ & \srl64[3][17]~32_combout\) ) ) ) # ( !\B[4]~input_o\ & ( !\sra64[3][25]~2_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][1]~38_combout\))) # 
-- (\B[3]~input_o\ & (\srl64[3][9]~43_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][9]~43_combout\,
	datab => \ALT_INV_srl64[3][1]~38_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][17]~32_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sra64[3][25]~2_combout\,
	combout => \sra64[5][1]~4_combout\);

-- Location: MLABCELL_X42_Y49_N14
\Y_sra[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[1]~1_combout\ = ( \sra64[5][1]~4_combout\ & ( (!\ExtWord~input_o\ & ((!\B[5]~input_o\) # ((\A[31]~input_o\)))) # (\ExtWord~input_o\ & (((\sra64[6][17]~3_combout\)))) ) ) # ( !\sra64[5][1]~4_combout\ & ( (!\ExtWord~input_o\ & (\B[5]~input_o\ & 
-- (\A[31]~input_o\))) # (\ExtWord~input_o\ & (((\sra64[6][17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_sra64[6][17]~3_combout\,
	dataf => \ALT_INV_sra64[5][1]~4_combout\,
	combout => \Y_sra[1]~1_combout\);

-- Location: LABCELL_X38_Y50_N30
\srl64[2][29]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[2][29]~23_combout\ = ( \A[15]~input_o\ & ( (!\B[0]~input_o\ & ((\A[31]~input_o\) # (\ExtWord~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[0]~input_o\ & \A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \srl64[2][29]~23_combout\);

-- Location: MLABCELL_X42_Y51_N22
\srl64[3][25]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][25]~27_combout\ = ( \srl64[1][25]~26_combout\ & ( \srl64[2][29]~23_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\srl64[1][27]~25_combout\))) # (\B[2]~input_o\ & (((\srl64[1][29]~24_combout\) # (\B[1]~input_o\)))) ) ) ) # ( 
-- !\srl64[1][25]~26_combout\ & ( \srl64[2][29]~23_combout\ & ( (!\B[2]~input_o\ & (\srl64[1][27]~25_combout\ & (\B[1]~input_o\))) # (\B[2]~input_o\ & (((\srl64[1][29]~24_combout\) # (\B[1]~input_o\)))) ) ) ) # ( \srl64[1][25]~26_combout\ & ( 
-- !\srl64[2][29]~23_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\srl64[1][27]~25_combout\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\ & \srl64[1][29]~24_combout\)))) ) ) ) # ( !\srl64[1][25]~26_combout\ & ( !\srl64[2][29]~23_combout\ & ( 
-- (!\B[2]~input_o\ & (\srl64[1][27]~25_combout\ & (\B[1]~input_o\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\ & \srl64[1][29]~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][27]~25_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_srl64[1][29]~24_combout\,
	datae => \ALT_INV_srl64[1][25]~26_combout\,
	dataf => \ALT_INV_srl64[2][29]~23_combout\,
	combout => \srl64[3][25]~27_combout\);

-- Location: MLABCELL_X42_Y49_N8
\srl64[5][1]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][1]~44_combout\ = ( \B[4]~input_o\ & ( \srl64[3][25]~27_combout\ & ( (\B[3]~input_o\) # (\srl64[3][17]~32_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \srl64[3][25]~27_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][1]~38_combout\))) # (\B[3]~input_o\ & 
-- (\srl64[3][9]~43_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\srl64[3][25]~27_combout\ & ( (\srl64[3][17]~32_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\srl64[3][25]~27_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][1]~38_combout\))) # 
-- (\B[3]~input_o\ & (\srl64[3][9]~43_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][9]~43_combout\,
	datab => \ALT_INV_srl64[3][1]~38_combout\,
	datac => \ALT_INV_srl64[3][17]~32_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_srl64[3][25]~27_combout\,
	combout => \srl64[5][1]~44_combout\);

-- Location: MLABCELL_X42_Y49_N26
\srl64[5][17]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][17]~33_combout\ = ( \srl64[3][17]~32_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\) # (\srl64[3][25]~27_combout\))) ) ) # ( !\srl64[3][17]~32_combout\ & ( (\srl64[3][25]~27_combout\ & (!\B[4]~input_o\ & \B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[3][25]~27_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_srl64[3][17]~32_combout\,
	combout => \srl64[5][17]~33_combout\);

-- Location: MLABCELL_X42_Y49_N12
\Y_srl[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[1]~1_combout\ = ( \B[5]~input_o\ & ( (\ExtWord~input_o\ & \srl64[5][17]~33_combout\) ) ) # ( !\B[5]~input_o\ & ( (!\ExtWord~input_o\ & (\srl64[5][1]~44_combout\)) # (\ExtWord~input_o\ & ((\srl64[5][17]~33_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_srl64[5][1]~44_combout\,
	datad => \ALT_INV_srl64[5][17]~33_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y_srl[1]~1_combout\);

-- Location: MLABCELL_X42_Y49_N0
\Mux30~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (((\A[1]~input_o\)))) # (\ShiftFN[0]~input_o\ & (\sll64[1][1]~1_combout\ & (\sll64[6][0]~0_combout\)))) ) ) # ( \ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & 
-- (((\Y_srl[1]~1_combout\)))) # (\ShiftFN[0]~input_o\ & (\Y_sra[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000101000011110011001111111111000001010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[1][1]~1_combout\,
	datab => \ALT_INV_Y_sra[1]~1_combout\,
	datac => \ALT_INV_Y_srl[1]~1_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	datag => \ALT_INV_sll64[6][0]~0_combout\,
	combout => \Mux30~0_combout\);

-- Location: LABCELL_X38_Y52_N20
\Mux27~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( !\sra64[6][15]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_sra64[6][15]~1_combout\,
	combout => \Mux27~0_combout\);

-- Location: LABCELL_X40_Y50_N26
\sll64[2][2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][2]~2_combout\ = ( \A[2]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[1]~input_o\))) # (\B[1]~input_o\ & (((\A[0]~input_o\ & !\B[0]~input_o\)))) ) ) # ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\B[0]~input_o\)))) # 
-- (\B[1]~input_o\ & (((\A[0]~input_o\ & !\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101000011110011010100001111001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \sll64[2][2]~2_combout\);

-- Location: LABCELL_X38_Y52_N6
\Mux29~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( !\B[3]~input_o\ & ( (\Mux27~0_combout\ & (!\B[2]~input_o\ & \sll64[2][2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux27~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][2]~2_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: MLABCELL_X44_Y52_N26
\Mux25~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \B[4]~input_o\ ) # ( !\B[4]~input_o\ & ( (\B[5]~input_o\) # (\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: MLABCELL_X37_Y50_N38
\Mux29~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = ( \B[1]~input_o\ & ( \srl64[1][2]~12_combout\ & ( (!\B[2]~input_o\ & ((\srl64[1][4]~13_combout\))) # (\B[2]~input_o\ & (\srl64[1][8]~16_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \srl64[1][2]~12_combout\ & ( (!\B[2]~input_o\) # 
-- (\srl64[1][6]~14_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\srl64[1][2]~12_combout\ & ( (!\B[2]~input_o\ & ((\srl64[1][4]~13_combout\))) # (\B[2]~input_o\ & (\srl64[1][8]~16_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\srl64[1][2]~12_combout\ & ( 
-- (\srl64[1][6]~14_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][8]~16_combout\,
	datab => \ALT_INV_srl64[1][6]~14_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][4]~13_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][2]~12_combout\,
	combout => \Mux29~1_combout\);

-- Location: LABCELL_X40_Y48_N14
\srl64[3][18]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][18]~47_combout\ = ( \srl64[1][22]~8_combout\ & ( \srl64[1][24]~0_combout\ & ( ((!\B[1]~input_o\ & ((\srl64[1][18]~6_combout\))) # (\B[1]~input_o\ & (\srl64[1][20]~7_combout\))) # (\B[2]~input_o\) ) ) ) # ( !\srl64[1][22]~8_combout\ & ( 
-- \srl64[1][24]~0_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\srl64[1][18]~6_combout\))) # (\B[1]~input_o\ & (\srl64[1][20]~7_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \srl64[1][22]~8_combout\ & ( !\srl64[1][24]~0_combout\ 
-- & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\srl64[1][18]~6_combout\))) # (\B[1]~input_o\ & (\srl64[1][20]~7_combout\)))) # (\B[2]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\srl64[1][22]~8_combout\ & ( !\srl64[1][24]~0_combout\ & ( (!\B[2]~input_o\ & 
-- ((!\B[1]~input_o\ & ((\srl64[1][18]~6_combout\))) # (\B[1]~input_o\ & (\srl64[1][20]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][20]~7_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][18]~6_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_srl64[1][22]~8_combout\,
	dataf => \ALT_INV_srl64[1][24]~0_combout\,
	combout => \srl64[3][18]~47_combout\);

-- Location: LABCELL_X40_Y52_N24
\Mux29~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (!\ShiftFN[0]~input_o\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	combout => \Mux29~2_combout\);

-- Location: LABCELL_X40_Y52_N8
\Mux29~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\ShiftFN[0]~input_o\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	combout => \Mux29~3_combout\);

-- Location: LABCELL_X40_Y48_N28
\srl64[3][26]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][26]~46_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( !\srl64[1][30]~3_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( !\srl64[1][28]~1_combout\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[2]~input_o\ & ( !\srl64[1][26]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111100001111000011001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][26]~2_combout\,
	datab => \ALT_INV_srl64[1][30]~3_combout\,
	datac => \ALT_INV_srl64[1][28]~1_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \srl64[3][26]~46_combout\);

-- Location: LABCELL_X40_Y48_N18
\sra64[3][26]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[3][26]~5_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \sra64[0][31]~0_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \srl64[1][30]~3_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( \srl64[1][28]~1_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \srl64[1][26]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][26]~2_combout\,
	datab => \ALT_INV_sra64[0][31]~0_combout\,
	datac => \ALT_INV_srl64[1][30]~3_combout\,
	datad => \ALT_INV_srl64[1][28]~1_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sra64[3][26]~5_combout\);

-- Location: MLABCELL_X42_Y49_N22
\Mux29~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = ( !\ExtWord~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\B[5]~input_o\ & ((\sra64[3][26]~5_combout\))) # (\B[5]~input_o\ & (\A[31]~input_o\)) ) ) ) # ( !\ExtWord~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\B[5]~input_o\ & 
-- !\srl64[3][26]~46_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000000000101101011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_srl64[3][26]~46_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_sra64[3][26]~5_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux29~4_combout\);

-- Location: MLABCELL_X39_Y52_N30
\sra64[6][18]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][18]~6_combout\ = ( \B[3]~input_o\ & ( (!\sra64[6][15]~1_combout\ & (\sra64[3][26]~5_combout\)) # (\sra64[6][15]~1_combout\ & ((\sra64[0][31]~0_combout\))) ) ) # ( !\B[3]~input_o\ & ( (!\sra64[6][15]~1_combout\ & ((\srl64[3][18]~47_combout\))) # 
-- (\sra64[6][15]~1_combout\ & (\sra64[0][31]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[3][26]~5_combout\,
	datab => \ALT_INV_sra64[0][31]~0_combout\,
	datac => \ALT_INV_sra64[6][15]~1_combout\,
	datad => \ALT_INV_srl64[3][18]~47_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sra64[6][18]~6_combout\);

-- Location: MLABCELL_X39_Y52_N24
\srl64[5][18]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][18]~48_combout\ = ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & !\srl64[3][26]~46_combout\) ) ) # ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & \srl64[3][18]~47_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_srl64[3][18]~47_combout\,
	datad => \ALT_INV_srl64[3][26]~46_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[5][18]~48_combout\);

-- Location: MLABCELL_X39_Y52_N14
\Mux29~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = ( \srl64[5][18]~48_combout\ & ( (!\Mux29~2_combout\ & (!\Mux29~4_combout\ & ((!\Mux29~3_combout\) # (!\sra64[6][18]~6_combout\)))) ) ) # ( !\srl64[5][18]~48_combout\ & ( (!\Mux29~4_combout\ & ((!\Mux29~3_combout\) # 
-- (!\sra64[6][18]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~2_combout\,
	datab => \ALT_INV_Mux29~3_combout\,
	datac => \ALT_INV_Mux29~4_combout\,
	datad => \ALT_INV_sra64[6][18]~6_combout\,
	dataf => \ALT_INV_srl64[5][18]~48_combout\,
	combout => \Mux29~5_combout\);

-- Location: MLABCELL_X44_Y52_N22
\Mux25~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & !\ExtWord~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & !\ExtWord~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: MLABCELL_X37_Y50_N20
\srl64[3][10]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][10]~45_combout\ = ( \B[2]~input_o\ & ( \srl64[1][16]~5_combout\ & ( (\srl64[1][14]~19_combout\) # (\B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][16]~5_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][10]~17_combout\)) # (\B[1]~input_o\ & 
-- ((\srl64[1][12]~18_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][16]~5_combout\ & ( (!\B[1]~input_o\ & \srl64[1][14]~19_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][16]~5_combout\ & ( (!\B[1]~input_o\ & (\srl64[1][10]~17_combout\)) # 
-- (\B[1]~input_o\ & ((\srl64[1][12]~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][10]~17_combout\,
	datac => \ALT_INV_srl64[1][14]~19_combout\,
	datad => \ALT_INV_srl64[1][12]~18_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][16]~5_combout\,
	combout => \srl64[3][10]~45_combout\);

-- Location: MLABCELL_X39_Y52_N36
\Mux29~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = ( \Mux25~0_combout\ & ( \srl64[3][10]~45_combout\ & ( (!\Mux25~1_combout\) # (\srl64[3][18]~47_combout\) ) ) ) # ( !\Mux25~0_combout\ & ( \srl64[3][10]~45_combout\ & ( (!\Mux25~1_combout\ & (\Mux29~1_combout\)) # (\Mux25~1_combout\ & 
-- ((!\Mux29~5_combout\))) ) ) ) # ( \Mux25~0_combout\ & ( !\srl64[3][10]~45_combout\ & ( (\Mux25~1_combout\ & \srl64[3][18]~47_combout\) ) ) ) # ( !\Mux25~0_combout\ & ( !\srl64[3][10]~45_combout\ & ( (!\Mux25~1_combout\ & (\Mux29~1_combout\)) # 
-- (\Mux25~1_combout\ & ((!\Mux29~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100100010000001010000010101110111001000101010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~1_combout\,
	datab => \ALT_INV_Mux29~1_combout\,
	datac => \ALT_INV_srl64[3][18]~47_combout\,
	datad => \ALT_INV_Mux29~5_combout\,
	datae => \ALT_INV_Mux25~0_combout\,
	dataf => \ALT_INV_srl64[3][10]~45_combout\,
	combout => \Mux29~6_combout\);

-- Location: LABCELL_X38_Y52_N10
\Mux29~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = ( \Mux29~6_combout\ & ( (((!\ShiftFN[0]~input_o\ & \A[2]~input_o\)) # (\Mux29~0_combout\)) # (\ShiftFN[1]~input_o\) ) ) # ( !\Mux29~6_combout\ & ( ((!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & \A[2]~input_o\))) # 
-- (\Mux29~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001111000011111000111101011111110111110101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Mux29~0_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_Mux29~6_combout\,
	combout => \Mux29~7_combout\);

-- Location: LABCELL_X40_Y50_N10
\sll64[2][3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][3]~3_combout\ = ( \A[3]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[2]~input_o\))) # (\B[1]~input_o\ & (\A[0]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\)) # 
-- (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[2]~input_o\))) # (\B[1]~input_o\ & (\A[0]~input_o\)))) ) ) ) # ( \A[3]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\)) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[2]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[0]~input_o\)))) ) ) ) # ( !\A[3]~input_o\ & ( !\A[1]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[2]~input_o\))) # (\B[1]~input_o\ & (\A[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \sll64[2][3]~3_combout\);

-- Location: LABCELL_X38_Y48_N12
\Mux28~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( !\B[3]~input_o\ & ( \Mux27~0_combout\ & ( (!\B[2]~input_o\ & \sll64[2][3]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][3]~3_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Mux27~0_combout\,
	combout => \Mux28~0_combout\);

-- Location: MLABCELL_X42_Y50_N14
\srl64[3][11]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][11]~49_combout\ = ( \srl64[1][17]~28_combout\ & ( \srl64[1][15]~42_combout\ & ( ((!\B[1]~input_o\ & (\srl64[1][11]~40_combout\)) # (\B[1]~input_o\ & ((\srl64[1][13]~41_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\srl64[1][17]~28_combout\ & ( 
-- \srl64[1][15]~42_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & (\srl64[1][11]~40_combout\)) # (\B[1]~input_o\ & ((\srl64[1][13]~41_combout\))))) # (\B[2]~input_o\ & (!\B[1]~input_o\)) ) ) ) # ( \srl64[1][17]~28_combout\ & ( 
-- !\srl64[1][15]~42_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & (\srl64[1][11]~40_combout\)) # (\B[1]~input_o\ & ((\srl64[1][13]~41_combout\))))) # (\B[2]~input_o\ & (\B[1]~input_o\)) ) ) ) # ( !\srl64[1][17]~28_combout\ & ( 
-- !\srl64[1][15]~42_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & (\srl64[1][11]~40_combout\)) # (\B[1]~input_o\ & ((\srl64[1][13]~41_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][11]~40_combout\,
	datad => \ALT_INV_srl64[1][13]~41_combout\,
	datae => \ALT_INV_srl64[1][17]~28_combout\,
	dataf => \ALT_INV_srl64[1][15]~42_combout\,
	combout => \srl64[3][11]~49_combout\);

-- Location: MLABCELL_X42_Y50_N30
\Mux28~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = ( \srl64[1][5]~36_combout\ & ( \srl64[1][7]~37_combout\ & ( (!\B[2]~input_o\ & (((\srl64[1][3]~35_combout\)) # (\B[1]~input_o\))) # (\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\srl64[1][9]~39_combout\)))) ) ) ) # ( 
-- !\srl64[1][5]~36_combout\ & ( \srl64[1][7]~37_combout\ & ( (!\B[2]~input_o\ & (!\B[1]~input_o\ & (\srl64[1][3]~35_combout\))) # (\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\srl64[1][9]~39_combout\)))) ) ) ) # ( \srl64[1][5]~36_combout\ & ( 
-- !\srl64[1][7]~37_combout\ & ( (!\B[2]~input_o\ & (((\srl64[1][3]~35_combout\)) # (\B[1]~input_o\))) # (\B[2]~input_o\ & (\B[1]~input_o\ & ((\srl64[1][9]~39_combout\)))) ) ) ) # ( !\srl64[1][5]~36_combout\ & ( !\srl64[1][7]~37_combout\ & ( (!\B[2]~input_o\ 
-- & (!\B[1]~input_o\ & (\srl64[1][3]~35_combout\))) # (\B[2]~input_o\ & (\B[1]~input_o\ & ((\srl64[1][9]~39_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][3]~35_combout\,
	datad => \ALT_INV_srl64[1][9]~39_combout\,
	datae => \ALT_INV_srl64[1][5]~36_combout\,
	dataf => \ALT_INV_srl64[1][7]~37_combout\,
	combout => \Mux28~1_combout\);

-- Location: MLABCELL_X42_Y50_N38
\srl64[3][19]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][19]~51_combout\ = ( \srl64[1][19]~29_combout\ & ( \srl64[1][21]~30_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & ((\srl64[1][23]~31_combout\))) # (\B[1]~input_o\ & (\srl64[1][25]~26_combout\))) ) ) ) # ( !\srl64[1][19]~29_combout\ & ( 
-- \srl64[1][21]~30_combout\ & ( (!\B[1]~input_o\ & (((\srl64[1][23]~31_combout\ & \B[2]~input_o\)))) # (\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\srl64[1][25]~26_combout\))) ) ) ) # ( \srl64[1][19]~29_combout\ & ( !\srl64[1][21]~30_combout\ & ( 
-- (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\srl64[1][23]~31_combout\)))) # (\B[1]~input_o\ & (\srl64[1][25]~26_combout\ & ((\B[2]~input_o\)))) ) ) ) # ( !\srl64[1][19]~29_combout\ & ( !\srl64[1][21]~30_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\srl64[1][23]~31_combout\))) # (\B[1]~input_o\ & (\srl64[1][25]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][25]~26_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][23]~31_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_srl64[1][19]~29_combout\,
	dataf => \ALT_INV_srl64[1][21]~30_combout\,
	combout => \srl64[3][19]~51_combout\);

-- Location: LABCELL_X38_Y51_N12
\Y_sra[15]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[15]~2_combout\ = ( \B[5]~input_o\ & ( (\ExtWord~input_o\ & (!\B[4]~input_o\ & !\B[3]~input_o\)) ) ) # ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000010001000000000011001100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	combout => \Y_sra[15]~2_combout\);

-- Location: LABCELL_X38_Y49_N24
\sra64[6][17]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][17]~7_combout\ = ( \B[4]~input_o\ & ( (!\ExtWord~input_o\ & ((\A[31]~input_o\))) # (\ExtWord~input_o\ & (\A[15]~input_o\)) ) ) # ( !\B[4]~input_o\ & ( (\B[5]~input_o\ & (!\ExtWord~input_o\ & \A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \sra64[6][17]~7_combout\);

-- Location: LABCELL_X38_Y48_N36
\sra64[6][17]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][17]~8_combout\ = ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\) # (\ExtWord~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \sra64[6][17]~8_combout\);

-- Location: LABCELL_X40_Y48_N22
\sra64[6][19]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][19]~9_combout\ = ( \srl64[1][27]~25_combout\ & ( \srl64[1][29]~24_combout\ & ( (\sra64[6][17]~8_combout\ & ((!\B[2]~input_o\) # (\sra64[0][31]~0_combout\))) ) ) ) # ( !\srl64[1][27]~25_combout\ & ( \srl64[1][29]~24_combout\ & ( 
-- (\sra64[6][17]~8_combout\ & ((!\B[2]~input_o\ & (\B[1]~input_o\)) # (\B[2]~input_o\ & ((\sra64[0][31]~0_combout\))))) ) ) ) # ( \srl64[1][27]~25_combout\ & ( !\srl64[1][29]~24_combout\ & ( (\sra64[6][17]~8_combout\ & ((!\B[2]~input_o\ & (!\B[1]~input_o\)) 
-- # (\B[2]~input_o\ & ((\sra64[0][31]~0_combout\))))) ) ) ) # ( !\srl64[1][27]~25_combout\ & ( !\srl64[1][29]~24_combout\ & ( (\B[2]~input_o\ & (\sra64[0][31]~0_combout\ & \sra64[6][17]~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000001000101100000000010001110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sra64[0][31]~0_combout\,
	datad => \ALT_INV_sra64[6][17]~8_combout\,
	datae => \ALT_INV_srl64[1][27]~25_combout\,
	dataf => \ALT_INV_srl64[1][29]~24_combout\,
	combout => \sra64[6][19]~9_combout\);

-- Location: LABCELL_X40_Y52_N18
\sra64[6][19]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][19]~10_combout\ = ( !\sra64[6][19]~9_combout\ & ( (!\sra64[6][17]~7_combout\ & ((!\Y_sra[15]~2_combout\) # (!\srl64[3][19]~51_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sra[15]~2_combout\,
	datac => \ALT_INV_sra64[6][17]~7_combout\,
	datad => \ALT_INV_srl64[3][19]~51_combout\,
	dataf => \ALT_INV_sra64[6][19]~9_combout\,
	combout => \sra64[6][19]~10_combout\);

-- Location: MLABCELL_X42_Y51_N24
\srl64[3][27]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][27]~50_combout\ = ( \srl64[2][29]~23_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\srl64[1][27]~25_combout\))) # (\B[1]~input_o\ & (\srl64[1][29]~24_combout\)))) # (\B[2]~input_o\ & (!\B[1]~input_o\)) ) ) # ( !\srl64[2][29]~23_combout\ 
-- & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\srl64[1][27]~25_combout\))) # (\B[1]~input_o\ & (\srl64[1][29]~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][29]~24_combout\,
	datad => \ALT_INV_srl64[1][27]~25_combout\,
	dataf => \ALT_INV_srl64[2][29]~23_combout\,
	combout => \srl64[3][27]~50_combout\);

-- Location: LABCELL_X40_Y52_N14
\srl64[5][19]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][19]~52_combout\ = ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\srl64[3][19]~51_combout\)) # (\B[3]~input_o\ & ((\srl64[3][27]~50_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_srl64[3][19]~51_combout\,
	datad => \ALT_INV_srl64[3][27]~50_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \srl64[5][19]~52_combout\);

-- Location: MLABCELL_X42_Y51_N26
\sra64[3][27]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[3][27]~11_combout\ = ( \sra64[0][31]~0_combout\ & ( ((!\B[1]~input_o\ & (\srl64[1][27]~25_combout\)) # (\B[1]~input_o\ & ((\srl64[1][29]~24_combout\)))) # (\B[2]~input_o\) ) ) # ( !\sra64[0][31]~0_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & 
-- (\srl64[1][27]~25_combout\)) # (\B[1]~input_o\ & ((\srl64[1][29]~24_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][27]~25_combout\,
	datad => \ALT_INV_srl64[1][29]~24_combout\,
	dataf => \ALT_INV_sra64[0][31]~0_combout\,
	combout => \sra64[3][27]~11_combout\);

-- Location: LABCELL_X40_Y52_N0
\Mux28~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = ( \srl64[3][27]~50_combout\ & ( \sra64[3][27]~11_combout\ & ( (!\ExtWord~input_o\ & ((!\B[5]~input_o\) # ((\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) ) # ( !\srl64[3][27]~50_combout\ & ( \sra64[3][27]~11_combout\ & ( 
-- (\ShiftFN[0]~input_o\ & (!\ExtWord~input_o\ & ((!\B[5]~input_o\) # (\A[31]~input_o\)))) ) ) ) # ( \srl64[3][27]~50_combout\ & ( !\sra64[3][27]~11_combout\ & ( (!\ExtWord~input_o\ & ((!\B[5]~input_o\ & ((!\ShiftFN[0]~input_o\))) # (\B[5]~input_o\ & 
-- (\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) ) # ( !\srl64[3][27]~50_combout\ & ( !\sra64[3][27]~11_combout\ & ( (\B[5]~input_o\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\ & !\ExtWord~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000101000010000000000001011000000001010101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_srl64[3][27]~50_combout\,
	dataf => \ALT_INV_sra64[3][27]~11_combout\,
	combout => \Mux28~2_combout\);

-- Location: LABCELL_X40_Y52_N10
\Mux28~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = ( \Mux29~2_combout\ & ( (!\srl64[5][19]~52_combout\ & (!\Mux28~2_combout\ & ((!\Mux29~3_combout\) # (\sra64[6][19]~10_combout\)))) ) ) # ( !\Mux29~2_combout\ & ( (!\Mux28~2_combout\ & ((!\Mux29~3_combout\) # 
-- (\sra64[6][19]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100000000110111010000000011010000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[6][19]~10_combout\,
	datab => \ALT_INV_Mux29~3_combout\,
	datac => \ALT_INV_srl64[5][19]~52_combout\,
	datad => \ALT_INV_Mux28~2_combout\,
	dataf => \ALT_INV_Mux29~2_combout\,
	combout => \Mux28~3_combout\);

-- Location: LABCELL_X40_Y52_N6
\Mux28~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = ( \srl64[3][19]~51_combout\ & ( \Mux28~3_combout\ & ( (!\Mux25~1_combout\ & ((!\Mux25~0_combout\ & ((\Mux28~1_combout\))) # (\Mux25~0_combout\ & (\srl64[3][11]~49_combout\)))) # (\Mux25~1_combout\ & (((\Mux25~0_combout\)))) ) ) ) # ( 
-- !\srl64[3][19]~51_combout\ & ( \Mux28~3_combout\ & ( (!\Mux25~1_combout\ & ((!\Mux25~0_combout\ & ((\Mux28~1_combout\))) # (\Mux25~0_combout\ & (\srl64[3][11]~49_combout\)))) ) ) ) # ( \srl64[3][19]~51_combout\ & ( !\Mux28~3_combout\ & ( 
-- ((!\Mux25~0_combout\ & ((\Mux28~1_combout\))) # (\Mux25~0_combout\ & (\srl64[3][11]~49_combout\))) # (\Mux25~1_combout\) ) ) ) # ( !\srl64[3][19]~51_combout\ & ( !\Mux28~3_combout\ & ( (!\Mux25~1_combout\ & ((!\Mux25~0_combout\ & ((\Mux28~1_combout\))) # 
-- (\Mux25~0_combout\ & (\srl64[3][11]~49_combout\)))) # (\Mux25~1_combout\ & (((!\Mux25~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001011110010010101111111011100000010101000100000011110100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~1_combout\,
	datab => \ALT_INV_srl64[3][11]~49_combout\,
	datac => \ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_Mux28~1_combout\,
	datae => \ALT_INV_srl64[3][19]~51_combout\,
	dataf => \ALT_INV_Mux28~3_combout\,
	combout => \Mux28~4_combout\);

-- Location: LABCELL_X38_Y48_N0
\Mux28~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux28~4_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux28~4_combout\ & ( ((\A[3]~input_o\ & !\ShiftFN[0]~input_o\)) # (\Mux28~0_combout\) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux28~4_combout\ & ( 
-- \Mux28~0_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux28~4_combout\ & ( ((\A[3]~input_o\ & !\ShiftFN[0]~input_o\)) # (\Mux28~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111000011110000111101001111010011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Mux28~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux28~4_combout\,
	combout => \Mux28~5_combout\);

-- Location: MLABCELL_X39_Y49_N20
\sll64[2][0]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][0]~4_combout\ = ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[0]~input_o\) ) )

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
	combout => \sll64[2][0]~4_combout\);

-- Location: LABCELL_X40_Y50_N32
\sll64[2][4]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][4]~5_combout\ = ( \B[0]~input_o\ & ( \A[1]~input_o\ & ( (\A[3]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (\A[4]~input_o\)) # (\B[1]~input_o\ & ((\A[2]~input_o\))) ) ) ) # ( \B[0]~input_o\ & 
-- ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & \A[3]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (\A[4]~input_o\)) # (\B[1]~input_o\ & ((\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \sll64[2][4]~5_combout\);

-- Location: MLABCELL_X39_Y49_N26
\sll64[4][4]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][4]~6_combout\ = ( \B[2]~input_o\ & ( (\sll64[2][0]~4_combout\ & !\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \sll64[2][4]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][0]~4_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sll64[2][4]~5_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sll64[4][4]~6_combout\);

-- Location: LABCELL_X40_Y49_N2
\srl64[3][28]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][28]~54_combout\ = ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\srl64[1][28]~1_combout\))) # (\B[1]~input_o\ & (\srl64[1][30]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][30]~3_combout\,
	datab => \ALT_INV_srl64[1][28]~1_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \srl64[3][28]~54_combout\);

-- Location: LABCELL_X40_Y48_N8
\sra64[3][28]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[3][28]~14_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \sra64[0][31]~0_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \sra64[0][31]~0_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( \srl64[1][30]~3_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \srl64[1][28]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][28]~1_combout\,
	datab => \ALT_INV_srl64[1][30]~3_combout\,
	datad => \ALT_INV_sra64[0][31]~0_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sra64[3][28]~14_combout\);

-- Location: LABCELL_X40_Y52_N2
\Mux27~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = ( \srl64[3][28]~54_combout\ & ( \sra64[3][28]~14_combout\ & ( (!\ExtWord~input_o\ & ((!\B[5]~input_o\) # ((\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) ) # ( !\srl64[3][28]~54_combout\ & ( \sra64[3][28]~14_combout\ & ( 
-- (!\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & ((!\B[5]~input_o\) # (\A[31]~input_o\)))) ) ) ) # ( \srl64[3][28]~54_combout\ & ( !\sra64[3][28]~14_combout\ & ( (!\ExtWord~input_o\ & ((!\B[5]~input_o\ & ((!\ShiftFN[0]~input_o\))) # (\B[5]~input_o\ & 
-- (\A[31]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) ) # ( !\srl64[3][28]~54_combout\ & ( !\sra64[3][28]~14_combout\ & ( (\B[5]~input_o\ & (\A[31]~input_o\ & (!\ExtWord~input_o\ & \ShiftFN[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000101000000001000000000000101100001010000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_srl64[3][28]~54_combout\,
	dataf => \ALT_INV_sra64[3][28]~14_combout\,
	combout => \Mux27~2_combout\);

-- Location: LABCELL_X40_Y48_N6
\srl64[3][20]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][20]~55_combout\ = ( \srl64[1][20]~7_combout\ & ( \srl64[1][24]~0_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & ((\srl64[1][22]~8_combout\))) # (\B[2]~input_o\ & (\srl64[1][26]~2_combout\))) ) ) ) # ( !\srl64[1][20]~7_combout\ & ( 
-- \srl64[1][24]~0_combout\ & ( (!\B[2]~input_o\ & (((\srl64[1][22]~8_combout\ & \B[1]~input_o\)))) # (\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\srl64[1][26]~2_combout\))) ) ) ) # ( \srl64[1][20]~7_combout\ & ( !\srl64[1][24]~0_combout\ & ( (!\B[2]~input_o\ 
-- & (((!\B[1]~input_o\) # (\srl64[1][22]~8_combout\)))) # (\B[2]~input_o\ & (\srl64[1][26]~2_combout\ & ((\B[1]~input_o\)))) ) ) ) # ( !\srl64[1][20]~7_combout\ & ( !\srl64[1][24]~0_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & 
-- ((\srl64[1][22]~8_combout\))) # (\B[2]~input_o\ & (\srl64[1][26]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][26]~2_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][22]~8_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_srl64[1][20]~7_combout\,
	dataf => \ALT_INV_srl64[1][24]~0_combout\,
	combout => \srl64[3][20]~55_combout\);

-- Location: LABCELL_X40_Y48_N20
\sra64[6][20]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][20]~12_combout\ = ( \srl64[1][28]~1_combout\ & ( \srl64[1][30]~3_combout\ & ( (\sra64[6][17]~8_combout\ & ((!\B[2]~input_o\) # (\sra64[0][31]~0_combout\))) ) ) ) # ( !\srl64[1][28]~1_combout\ & ( \srl64[1][30]~3_combout\ & ( 
-- (\sra64[6][17]~8_combout\ & ((!\B[2]~input_o\ & (\B[1]~input_o\)) # (\B[2]~input_o\ & ((\sra64[0][31]~0_combout\))))) ) ) ) # ( \srl64[1][28]~1_combout\ & ( !\srl64[1][30]~3_combout\ & ( (\sra64[6][17]~8_combout\ & ((!\B[2]~input_o\ & (!\B[1]~input_o\)) # 
-- (\B[2]~input_o\ & ((\sra64[0][31]~0_combout\))))) ) ) ) # ( !\srl64[1][28]~1_combout\ & ( !\srl64[1][30]~3_combout\ & ( (\B[2]~input_o\ & (\sra64[6][17]~8_combout\ & \sra64[0][31]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000010000000101100000100000001110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sra64[6][17]~8_combout\,
	datad => \ALT_INV_sra64[0][31]~0_combout\,
	datae => \ALT_INV_srl64[1][28]~1_combout\,
	dataf => \ALT_INV_srl64[1][30]~3_combout\,
	combout => \sra64[6][20]~12_combout\);

-- Location: MLABCELL_X39_Y52_N22
\sra64[6][20]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][20]~13_combout\ = ( !\sra64[6][20]~12_combout\ & ( (!\sra64[6][17]~7_combout\ & ((!\srl64[3][20]~55_combout\) # (!\Y_sra[15]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[3][20]~55_combout\,
	datac => \ALT_INV_sra64[6][17]~7_combout\,
	datad => \ALT_INV_Y_sra[15]~2_combout\,
	dataf => \ALT_INV_sra64[6][20]~12_combout\,
	combout => \sra64[6][20]~13_combout\);

-- Location: MLABCELL_X39_Y52_N20
\srl64[5][20]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][20]~56_combout\ = ( \B[3]~input_o\ & ( (\srl64[3][28]~54_combout\ & !\B[4]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (\srl64[3][20]~55_combout\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[3][20]~55_combout\,
	datac => \ALT_INV_srl64[3][28]~54_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \srl64[5][20]~56_combout\);

-- Location: MLABCELL_X39_Y52_N12
\Mux27~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = ( \srl64[5][20]~56_combout\ & ( (!\Mux29~2_combout\ & (!\Mux27~2_combout\ & ((!\Mux29~3_combout\) # (\sra64[6][20]~13_combout\)))) ) ) # ( !\srl64[5][20]~56_combout\ & ( (!\Mux27~2_combout\ & ((!\Mux29~3_combout\) # 
-- (\sra64[6][20]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000010000000101000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~2_combout\,
	datab => \ALT_INV_Mux29~3_combout\,
	datac => \ALT_INV_Mux27~2_combout\,
	datad => \ALT_INV_sra64[6][20]~13_combout\,
	dataf => \ALT_INV_srl64[5][20]~56_combout\,
	combout => \Mux27~3_combout\);

-- Location: MLABCELL_X37_Y50_N6
\Mux27~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = ( \B[2]~input_o\ & ( \srl64[1][8]~16_combout\ & ( (!\B[1]~input_o\) # (\srl64[1][10]~17_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][8]~16_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][4]~13_combout\))) # (\B[1]~input_o\ & 
-- (\srl64[1][6]~14_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][8]~16_combout\ & ( (\B[1]~input_o\ & \srl64[1][10]~17_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][8]~16_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][4]~13_combout\))) # 
-- (\B[1]~input_o\ & (\srl64[1][6]~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][10]~17_combout\,
	datac => \ALT_INV_srl64[1][6]~14_combout\,
	datad => \ALT_INV_srl64[1][4]~13_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][8]~16_combout\,
	combout => \Mux27~1_combout\);

-- Location: MLABCELL_X37_Y50_N10
\srl64[3][12]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][12]~53_combout\ = ( \B[1]~input_o\ & ( \srl64[1][16]~5_combout\ & ( (!\B[2]~input_o\ & ((\srl64[1][14]~19_combout\))) # (\B[2]~input_o\ & (\srl64[1][18]~6_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( \srl64[1][16]~5_combout\ & ( (\B[2]~input_o\) # 
-- (\srl64[1][12]~18_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\srl64[1][16]~5_combout\ & ( (!\B[2]~input_o\ & ((\srl64[1][14]~19_combout\))) # (\B[2]~input_o\ & (\srl64[1][18]~6_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\srl64[1][16]~5_combout\ & ( 
-- (\srl64[1][12]~18_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][18]~6_combout\,
	datab => \ALT_INV_srl64[1][12]~18_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][14]~19_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][16]~5_combout\,
	combout => \srl64[3][12]~53_combout\);

-- Location: MLABCELL_X39_Y52_N6
\Mux27~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = ( \Mux25~1_combout\ & ( \srl64[3][20]~55_combout\ & ( (!\Mux27~3_combout\) # (\Mux25~0_combout\) ) ) ) # ( !\Mux25~1_combout\ & ( \srl64[3][20]~55_combout\ & ( (!\Mux25~0_combout\ & (\Mux27~1_combout\)) # (\Mux25~0_combout\ & 
-- ((\srl64[3][12]~53_combout\))) ) ) ) # ( \Mux25~1_combout\ & ( !\srl64[3][20]~55_combout\ & ( (!\Mux27~3_combout\ & !\Mux25~0_combout\) ) ) ) # ( !\Mux25~1_combout\ & ( !\srl64[3][20]~55_combout\ & ( (!\Mux25~0_combout\ & (\Mux27~1_combout\)) # 
-- (\Mux25~0_combout\ & ((\srl64[3][12]~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111100010001000100000001100001111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux27~3_combout\,
	datab => \ALT_INV_Mux25~0_combout\,
	datac => \ALT_INV_Mux27~1_combout\,
	datad => \ALT_INV_srl64[3][12]~53_combout\,
	datae => \ALT_INV_Mux25~1_combout\,
	dataf => \ALT_INV_srl64[3][20]~55_combout\,
	combout => \Mux27~4_combout\);

-- Location: MLABCELL_X39_Y48_N30
\Mux27~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = ( \Mux27~4_combout\ & ( \ShiftFN[0]~input_o\ & ( ((\sll64[4][4]~6_combout\ & !\sra64[6][15]~1_combout\)) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Mux27~4_combout\ & ( \ShiftFN[0]~input_o\ & ( (\sll64[4][4]~6_combout\ & 
-- (!\sra64[6][15]~1_combout\ & !\ShiftFN[1]~input_o\)) ) ) ) # ( \Mux27~4_combout\ & ( !\ShiftFN[0]~input_o\ & ( (\ShiftFN[1]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\Mux27~4_combout\ & ( !\ShiftFN[0]~input_o\ & ( (\A[4]~input_o\ & !\ShiftFN[1]~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110000000000000011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_sll64[4][4]~6_combout\,
	datac => \ALT_INV_sra64[6][15]~1_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Mux27~4_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux27~5_combout\);

-- Location: MLABCELL_X42_Y50_N8
\srl64[3][21]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][21]~58_combout\ = ( \srl64[1][23]~31_combout\ & ( \srl64[1][25]~26_combout\ & ( (!\B[2]~input_o\ & (((\srl64[1][21]~30_combout\)) # (\B[1]~input_o\))) # (\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\srl64[1][27]~25_combout\)))) ) ) ) # ( 
-- !\srl64[1][23]~31_combout\ & ( \srl64[1][25]~26_combout\ & ( (!\B[2]~input_o\ & (!\B[1]~input_o\ & ((\srl64[1][21]~30_combout\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\srl64[1][27]~25_combout\)))) ) ) ) # ( \srl64[1][23]~31_combout\ & ( 
-- !\srl64[1][25]~26_combout\ & ( (!\B[2]~input_o\ & (((\srl64[1][21]~30_combout\)) # (\B[1]~input_o\))) # (\B[2]~input_o\ & (\B[1]~input_o\ & (\srl64[1][27]~25_combout\))) ) ) ) # ( !\srl64[1][23]~31_combout\ & ( !\srl64[1][25]~26_combout\ & ( 
-- (!\B[2]~input_o\ & (!\B[1]~input_o\ & ((\srl64[1][21]~30_combout\)))) # (\B[2]~input_o\ & (\B[1]~input_o\ & (\srl64[1][27]~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][27]~25_combout\,
	datad => \ALT_INV_srl64[1][21]~30_combout\,
	datae => \ALT_INV_srl64[1][23]~31_combout\,
	dataf => \ALT_INV_srl64[1][25]~26_combout\,
	combout => \srl64[3][21]~58_combout\);

-- Location: MLABCELL_X42_Y50_N26
\srl64[3][13]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][13]~57_combout\ = ( \srl64[1][19]~29_combout\ & ( \srl64[1][15]~42_combout\ & ( ((!\B[2]~input_o\ & ((\srl64[1][13]~41_combout\))) # (\B[2]~input_o\ & (\srl64[1][17]~28_combout\))) # (\B[1]~input_o\) ) ) ) # ( !\srl64[1][19]~29_combout\ & ( 
-- \srl64[1][15]~42_combout\ & ( (!\B[2]~input_o\ & (((\srl64[1][13]~41_combout\)) # (\B[1]~input_o\))) # (\B[2]~input_o\ & (!\B[1]~input_o\ & (\srl64[1][17]~28_combout\))) ) ) ) # ( \srl64[1][19]~29_combout\ & ( !\srl64[1][15]~42_combout\ & ( 
-- (!\B[2]~input_o\ & (!\B[1]~input_o\ & ((\srl64[1][13]~41_combout\)))) # (\B[2]~input_o\ & (((\srl64[1][17]~28_combout\)) # (\B[1]~input_o\))) ) ) ) # ( !\srl64[1][19]~29_combout\ & ( !\srl64[1][15]~42_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & 
-- ((\srl64[1][13]~41_combout\))) # (\B[2]~input_o\ & (\srl64[1][17]~28_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][17]~28_combout\,
	datad => \ALT_INV_srl64[1][13]~41_combout\,
	datae => \ALT_INV_srl64[1][19]~29_combout\,
	dataf => \ALT_INV_srl64[1][15]~42_combout\,
	combout => \srl64[3][13]~57_combout\);

-- Location: MLABCELL_X42_Y50_N0
\Mux26~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \srl64[1][5]~36_combout\ & ( \srl64[1][11]~40_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\srl64[1][7]~37_combout\)))) # (\B[2]~input_o\ & (((\srl64[1][9]~39_combout\)) # (\B[1]~input_o\))) ) ) ) # ( 
-- !\srl64[1][5]~36_combout\ & ( \srl64[1][11]~40_combout\ & ( (!\B[2]~input_o\ & (\B[1]~input_o\ & ((\srl64[1][7]~37_combout\)))) # (\B[2]~input_o\ & (((\srl64[1][9]~39_combout\)) # (\B[1]~input_o\))) ) ) ) # ( \srl64[1][5]~36_combout\ & ( 
-- !\srl64[1][11]~40_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\srl64[1][7]~37_combout\)))) # (\B[2]~input_o\ & (!\B[1]~input_o\ & (\srl64[1][9]~39_combout\))) ) ) ) # ( !\srl64[1][5]~36_combout\ & ( !\srl64[1][11]~40_combout\ & ( 
-- (!\B[2]~input_o\ & (\B[1]~input_o\ & ((\srl64[1][7]~37_combout\)))) # (\B[2]~input_o\ & (!\B[1]~input_o\ & (\srl64[1][9]~39_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][9]~39_combout\,
	datad => \ALT_INV_srl64[1][7]~37_combout\,
	datae => \ALT_INV_srl64[1][5]~36_combout\,
	dataf => \ALT_INV_srl64[1][11]~40_combout\,
	combout => \Mux26~0_combout\);

-- Location: MLABCELL_X42_Y52_N4
\Mux25~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( !\ShiftFN[0]~input_o\ & ( (\ExtWord~input_o\) # (\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux25~2_combout\);

-- Location: MLABCELL_X37_Y52_N34
\Mux25~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (!\ExtWord~input_o\ & !\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux25~3_combout\);

-- Location: MLABCELL_X42_Y51_N30
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( !\B[2]~input_o\ & ( !\B[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: MLABCELL_X42_Y51_N28
\sra64[6][21]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][21]~15_combout\ = ( \sra64[6][15]~1_combout\ & ( \sra64[0][31]~0_combout\ ) ) # ( !\sra64[6][15]~1_combout\ & ( (\B[3]~input_o\ & ((!\Mux15~0_combout\ & ((\sra64[0][31]~0_combout\))) # (\Mux15~0_combout\ & (\srl64[1][29]~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][29]~24_combout\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_sra64[0][31]~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sra64[6][15]~1_combout\,
	combout => \sra64[6][21]~15_combout\);

-- Location: MLABCELL_X42_Y52_N34
\Mux26~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = ( \Mux29~3_combout\ & ( ((\srl64[3][21]~58_combout\ & \Y_sra[15]~2_combout\)) # (\sra64[6][21]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[6][21]~15_combout\,
	datab => \ALT_INV_srl64[3][21]~58_combout\,
	datac => \ALT_INV_Y_sra[15]~2_combout\,
	dataf => \ALT_INV_Mux29~3_combout\,
	combout => \Mux26~2_combout\);

-- Location: MLABCELL_X42_Y52_N30
\Mux26~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( \srl64[2][29]~23_combout\ & ( (!\B[2]~input_o\ & ((\B[1]~input_o\) # (\srl64[1][29]~24_combout\))) ) ) # ( !\srl64[2][29]~23_combout\ & ( (\srl64[1][29]~24_combout\ & (!\B[2]~input_o\ & !\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][29]~24_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[2][29]~23_combout\,
	combout => \Mux26~1_combout\);

-- Location: MLABCELL_X42_Y52_N32
\srl64[5][21]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][21]~59_combout\ = ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\srl64[3][21]~58_combout\)) # (\B[3]~input_o\ & ((\Mux26~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[3][21]~58_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_Mux26~1_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \srl64[5][21]~59_combout\);

-- Location: MLABCELL_X37_Y51_N22
\shamt[5]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \shamt[5]~0_combout\ = ( !\ExtWord~input_o\ & ( \B[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \shamt[5]~0_combout\);

-- Location: LABCELL_X38_Y48_N26
\Mux29~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = ( !\ExtWord~input_o\ & ( \ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux29~8_combout\);

-- Location: MLABCELL_X42_Y52_N16
\Mux26~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = ( \Mux29~8_combout\ & ( \srl64[1][29]~24_combout\ & ( (!\shamt[5]~0_combout\ & (((\Mux15~0_combout\)) # (\sra64[0][31]~0_combout\))) # (\shamt[5]~0_combout\ & (((\A[31]~input_o\)))) ) ) ) # ( \Mux29~8_combout\ & ( 
-- !\srl64[1][29]~24_combout\ & ( (!\shamt[5]~0_combout\ & (\sra64[0][31]~0_combout\ & (!\Mux15~0_combout\))) # (\shamt[5]~0_combout\ & (((\A[31]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000111001100000000000000000100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][31]~0_combout\,
	datab => \ALT_INV_shamt[5]~0_combout\,
	datac => \ALT_INV_Mux15~0_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_Mux29~8_combout\,
	dataf => \ALT_INV_srl64[1][29]~24_combout\,
	combout => \Mux26~3_combout\);

-- Location: MLABCELL_X42_Y52_N2
\Mux26~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = ( \Mux26~1_combout\ & ( !\Mux26~3_combout\ & ( (!\Mux26~2_combout\ & ((!\Mux25~2_combout\ & (!\Mux25~3_combout\)) # (\Mux25~2_combout\ & ((!\srl64[5][21]~59_combout\) # (\Mux25~3_combout\))))) ) ) ) # ( !\Mux26~1_combout\ & ( 
-- !\Mux26~3_combout\ & ( (!\Mux26~2_combout\ & ((!\Mux25~2_combout\) # ((!\srl64[5][21]~59_combout\) # (\Mux25~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010110000110100001001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~2_combout\,
	datab => \ALT_INV_Mux25~3_combout\,
	datac => \ALT_INV_Mux26~2_combout\,
	datad => \ALT_INV_srl64[5][21]~59_combout\,
	datae => \ALT_INV_Mux26~1_combout\,
	dataf => \ALT_INV_Mux26~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: MLABCELL_X42_Y52_N24
\Mux26~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = ( \Mux25~1_combout\ & ( \Mux26~4_combout\ & ( (\srl64[3][21]~58_combout\ & \Mux25~0_combout\) ) ) ) # ( !\Mux25~1_combout\ & ( \Mux26~4_combout\ & ( (!\Mux25~0_combout\ & ((\Mux26~0_combout\))) # (\Mux25~0_combout\ & 
-- (\srl64[3][13]~57_combout\)) ) ) ) # ( \Mux25~1_combout\ & ( !\Mux26~4_combout\ & ( (!\Mux25~0_combout\) # (\srl64[3][21]~58_combout\) ) ) ) # ( !\Mux25~1_combout\ & ( !\Mux26~4_combout\ & ( (!\Mux25~0_combout\ & ((\Mux26~0_combout\))) # 
-- (\Mux25~0_combout\ & (\srl64[3][13]~57_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011111111110101010100001111001100110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][21]~58_combout\,
	datab => \ALT_INV_srl64[3][13]~57_combout\,
	datac => \ALT_INV_Mux26~0_combout\,
	datad => \ALT_INV_Mux25~0_combout\,
	datae => \ALT_INV_Mux25~1_combout\,
	dataf => \ALT_INV_Mux26~4_combout\,
	combout => \Mux26~5_combout\);

-- Location: LABCELL_X40_Y50_N24
\sll64[2][1]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][1]~7_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\A[0]~input_o\ & (!\B[1]~input_o\ & \B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \sll64[2][1]~7_combout\);

-- Location: LABCELL_X40_Y50_N16
\sll64[2][5]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][5]~8_combout\ = ( \B[0]~input_o\ & ( \A[2]~input_o\ & ( (\B[1]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ & ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( \B[0]~input_o\ & 
-- ( !\A[2]~input_o\ & ( (\A[4]~input_o\ & !\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \sll64[2][5]~8_combout\);

-- Location: LABCELL_X43_Y52_N8
\sll64[4][5]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][5]~9_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \sll64[2][1]~7_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \sll64[2][5]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sll64[2][1]~7_combout\,
	datad => \ALT_INV_sll64[2][5]~8_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sll64[4][5]~9_combout\);

-- Location: LABCELL_X38_Y52_N14
\Mux26~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = ( \ShiftFN[1]~input_o\ & ( \sll64[4][5]~9_combout\ & ( \Mux26~5_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \sll64[4][5]~9_combout\ & ( (!\ShiftFN[0]~input_o\ & ((\A[5]~input_o\))) # (\ShiftFN[0]~input_o\ & 
-- (!\sra64[6][15]~1_combout\)) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\sll64[4][5]~9_combout\ & ( \Mux26~5_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\sll64[4][5]~9_combout\ & ( (!\ShiftFN[0]~input_o\ & \A[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010101010101010100110000111111000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux26~5_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_sra64[6][15]~1_combout\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_sll64[4][5]~9_combout\,
	combout => \Mux26~6_combout\);

-- Location: MLABCELL_X37_Y50_N12
\sll64[2][6]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][6]~10_combout\ = ( \A[4]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[5]~input_o\)) # (\B[1]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[5]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[3]~input_o\))) ) ) ) # ( \A[4]~input_o\ & ( !\B[0]~input_o\ & ( (\A[6]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][6]~10_combout\);

-- Location: LABCELL_X38_Y52_N16
\sll64[4][6]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][6]~11_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \sll64[2][2]~2_combout\) ) ) # ( !\B[2]~input_o\ & ( (\sll64[2][6]~10_combout\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][6]~10_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sll64[2][2]~2_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sll64[4][6]~11_combout\);

-- Location: LABCELL_X40_Y48_N38
\srl64[3][22]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][22]~61_combout\ = ( \B[1]~input_o\ & ( \srl64[1][24]~0_combout\ & ( (!\B[2]~input_o\) # (\srl64[1][28]~1_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \srl64[1][24]~0_combout\ & ( (!\B[2]~input_o\ & ((\srl64[1][22]~8_combout\))) # (\B[2]~input_o\ & 
-- (\srl64[1][26]~2_combout\)) ) ) ) # ( \B[1]~input_o\ & ( !\srl64[1][24]~0_combout\ & ( (\B[2]~input_o\ & \srl64[1][28]~1_combout\) ) ) ) # ( !\B[1]~input_o\ & ( !\srl64[1][24]~0_combout\ & ( (!\B[2]~input_o\ & ((\srl64[1][22]~8_combout\))) # 
-- (\B[2]~input_o\ & (\srl64[1][26]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][26]~2_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][22]~8_combout\,
	datad => \ALT_INV_srl64[1][28]~1_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_srl64[1][24]~0_combout\,
	combout => \srl64[3][22]~61_combout\);

-- Location: LABCELL_X40_Y48_N34
\srl64[3][14]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][14]~60_combout\ = ( \srl64[1][20]~7_combout\ & ( \srl64[1][16]~5_combout\ & ( ((!\B[2]~input_o\ & (\srl64[1][14]~19_combout\)) # (\B[2]~input_o\ & ((\srl64[1][18]~6_combout\)))) # (\B[1]~input_o\) ) ) ) # ( !\srl64[1][20]~7_combout\ & ( 
-- \srl64[1][16]~5_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\srl64[1][14]~19_combout\))) # (\B[2]~input_o\ & (((\srl64[1][18]~6_combout\ & !\B[1]~input_o\)))) ) ) ) # ( \srl64[1][20]~7_combout\ & ( !\srl64[1][16]~5_combout\ & ( (!\B[2]~input_o\ 
-- & (\srl64[1][14]~19_combout\ & ((!\B[1]~input_o\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\) # (\srl64[1][18]~6_combout\)))) ) ) ) # ( !\srl64[1][20]~7_combout\ & ( !\srl64[1][16]~5_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & 
-- (\srl64[1][14]~19_combout\)) # (\B[2]~input_o\ & ((\srl64[1][18]~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][14]~19_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_srl64[1][18]~6_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_srl64[1][20]~7_combout\,
	dataf => \ALT_INV_srl64[1][16]~5_combout\,
	combout => \srl64[3][14]~60_combout\);

-- Location: MLABCELL_X42_Y51_N34
\sra64[6][22]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[6][22]~16_combout\ = ( \sra64[6][15]~1_combout\ & ( \sra64[0][31]~0_combout\ ) ) # ( !\sra64[6][15]~1_combout\ & ( (\B[3]~input_o\ & ((!\Mux15~0_combout\ & (\sra64[0][31]~0_combout\)) # (\Mux15~0_combout\ & ((\srl64[1][30]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][31]~0_combout\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[1][30]~3_combout\,
	dataf => \ALT_INV_sra64[6][15]~1_combout\,
	combout => \sra64[6][22]~16_combout\);

-- Location: MLABCELL_X42_Y52_N28
\Mux25~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = ( \Mux29~3_combout\ & ( ((\Y_sra[15]~2_combout\ & \srl64[3][22]~61_combout\)) # (\sra64[6][22]~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y_sra[15]~2_combout\,
	datac => \ALT_INV_srl64[3][22]~61_combout\,
	datad => \ALT_INV_sra64[6][22]~16_combout\,
	dataf => \ALT_INV_Mux29~3_combout\,
	combout => \Mux25~6_combout\);

-- Location: MLABCELL_X42_Y52_N10
\Mux25~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\srl64[1][30]~3_combout\ & \Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[1][30]~3_combout\,
	datad => \ALT_INV_Mux15~0_combout\,
	combout => \Mux25~5_combout\);

-- Location: MLABCELL_X42_Y52_N18
\Mux25~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = ( \Mux29~8_combout\ & ( \srl64[1][30]~3_combout\ & ( (!\shamt[5]~0_combout\ & (((\Mux15~0_combout\)) # (\sra64[0][31]~0_combout\))) # (\shamt[5]~0_combout\ & (((\A[31]~input_o\)))) ) ) ) # ( \Mux29~8_combout\ & ( 
-- !\srl64[1][30]~3_combout\ & ( (!\shamt[5]~0_combout\ & (\sra64[0][31]~0_combout\ & ((!\Mux15~0_combout\)))) # (\shamt[5]~0_combout\ & (((\A[31]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110000001100000000000000000100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][31]~0_combout\,
	datab => \ALT_INV_shamt[5]~0_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_Mux15~0_combout\,
	datae => \ALT_INV_Mux29~8_combout\,
	dataf => \ALT_INV_srl64[1][30]~3_combout\,
	combout => \Mux25~7_combout\);

-- Location: MLABCELL_X44_Y52_N28
\srl64[5][22]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][22]~62_combout\ = ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\srl64[3][22]~61_combout\)) # (\B[3]~input_o\ & ((\Mux25~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[3][22]~61_combout\,
	datac => \ALT_INV_Mux25~5_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \srl64[5][22]~62_combout\);

-- Location: MLABCELL_X42_Y52_N12
\Mux25~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~8_combout\ = ( !\Mux25~7_combout\ & ( \srl64[5][22]~62_combout\ & ( (!\Mux25~6_combout\ & ((!\Mux25~2_combout\ & ((!\Mux25~3_combout\) # (!\Mux25~5_combout\))) # (\Mux25~2_combout\ & (\Mux25~3_combout\)))) ) ) ) # ( !\Mux25~7_combout\ & ( 
-- !\srl64[5][22]~62_combout\ & ( (!\Mux25~6_combout\ & (((!\Mux25~3_combout\) # (!\Mux25~5_combout\)) # (\Mux25~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011010000000000000000000010110000100100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~2_combout\,
	datab => \ALT_INV_Mux25~3_combout\,
	datac => \ALT_INV_Mux25~6_combout\,
	datad => \ALT_INV_Mux25~5_combout\,
	datae => \ALT_INV_Mux25~7_combout\,
	dataf => \ALT_INV_srl64[5][22]~62_combout\,
	combout => \Mux25~8_combout\);

-- Location: MLABCELL_X37_Y50_N16
\Mux25~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = ( \B[2]~input_o\ & ( \srl64[1][12]~18_combout\ & ( (\srl64[1][10]~17_combout\) # (\B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \srl64[1][12]~18_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][6]~14_combout\))) # (\B[1]~input_o\ & 
-- (\srl64[1][8]~16_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\srl64[1][12]~18_combout\ & ( (!\B[1]~input_o\ & \srl64[1][10]~17_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\srl64[1][12]~18_combout\ & ( (!\B[1]~input_o\ & ((\srl64[1][6]~14_combout\))) # 
-- (\B[1]~input_o\ & (\srl64[1][8]~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_srl64[1][10]~17_combout\,
	datac => \ALT_INV_srl64[1][8]~16_combout\,
	datad => \ALT_INV_srl64[1][6]~14_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_srl64[1][12]~18_combout\,
	combout => \Mux25~4_combout\);

-- Location: MLABCELL_X44_Y52_N14
\Mux25~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~9_combout\ = ( \Mux25~1_combout\ & ( \Mux25~4_combout\ & ( (!\Mux25~0_combout\ & ((!\Mux25~8_combout\))) # (\Mux25~0_combout\ & (\srl64[3][22]~61_combout\)) ) ) ) # ( !\Mux25~1_combout\ & ( \Mux25~4_combout\ & ( (!\Mux25~0_combout\) # 
-- (\srl64[3][14]~60_combout\) ) ) ) # ( \Mux25~1_combout\ & ( !\Mux25~4_combout\ & ( (!\Mux25~0_combout\ & ((!\Mux25~8_combout\))) # (\Mux25~0_combout\ & (\srl64[3][22]~61_combout\)) ) ) ) # ( !\Mux25~1_combout\ & ( !\Mux25~4_combout\ & ( (\Mux25~0_combout\ 
-- & \srl64[3][14]~60_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101110110001000110101111101011111011101100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~0_combout\,
	datab => \ALT_INV_srl64[3][22]~61_combout\,
	datac => \ALT_INV_srl64[3][14]~60_combout\,
	datad => \ALT_INV_Mux25~8_combout\,
	datae => \ALT_INV_Mux25~1_combout\,
	dataf => \ALT_INV_Mux25~4_combout\,
	combout => \Mux25~9_combout\);

-- Location: MLABCELL_X44_Y52_N16
\Mux25~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~10_combout\ = ( \A[6]~input_o\ & ( \sra64[6][15]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Mux25~9_combout\))) ) ) ) # ( !\A[6]~input_o\ & ( \sra64[6][15]~1_combout\ & ( (\ShiftFN[1]~input_o\ & 
-- \Mux25~9_combout\) ) ) ) # ( \A[6]~input_o\ & ( !\sra64[6][15]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\)) # (\sll64[4][6]~11_combout\))) # (\ShiftFN[1]~input_o\ & (((\Mux25~9_combout\)))) ) ) ) # ( !\A[6]~input_o\ & ( 
-- !\sra64[6][15]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (\sll64[4][6]~11_combout\ & (\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Mux25~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111110100001101111100000000000011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][6]~11_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Mux25~9_combout\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_sra64[6][15]~1_combout\,
	combout => \Mux25~10_combout\);

-- Location: LABCELL_X43_Y52_N12
\sll64[6][0]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][0]~12_combout\ = ( !\B[4]~input_o\ & ( !\B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \sll64[6][0]~12_combout\);

-- Location: MLABCELL_X37_Y51_N26
\sll64[2][7]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][7]~13_combout\ = ( \A[5]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[6]~input_o\))) # (\B[1]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\A[5]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[6]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[4]~input_o\)) ) ) ) # ( \A[5]~input_o\ & ( !\B[0]~input_o\ & ( (\A[7]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][7]~13_combout\);

-- Location: MLABCELL_X37_Y51_N20
\sll64[6][7]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[6][7]~14_combout\ = ( \sll64[2][3]~3_combout\ & ( (\sll64[6][0]~12_combout\ & (!\shamt[5]~0_combout\ & ((\B[2]~input_o\) # (\sll64[2][7]~13_combout\)))) ) ) # ( !\sll64[2][3]~3_combout\ & ( (\sll64[6][0]~12_combout\ & (\sll64[2][7]~13_combout\ & 
-- (!\B[2]~input_o\ & !\shamt[5]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010101000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[6][0]~12_combout\,
	datab => \ALT_INV_sll64[2][7]~13_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_shamt[5]~0_combout\,
	dataf => \ALT_INV_sll64[2][3]~3_combout\,
	combout => \sll64[6][7]~14_combout\);

-- Location: MLABCELL_X42_Y50_N16
\srl64[3][15]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][15]~67_combout\ = ( \srl64[1][17]~28_combout\ & ( \srl64[1][15]~42_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & (\srl64[1][19]~29_combout\)) # (\B[1]~input_o\ & ((\srl64[1][21]~30_combout\)))) ) ) ) # ( !\srl64[1][17]~28_combout\ & ( 
-- \srl64[1][15]~42_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\srl64[1][19]~29_combout\))) # (\B[1]~input_o\ & (((\B[2]~input_o\ & \srl64[1][21]~30_combout\)))) ) ) ) # ( \srl64[1][17]~28_combout\ & ( !\srl64[1][15]~42_combout\ & ( 
-- (!\B[1]~input_o\ & (\srl64[1][19]~29_combout\ & (\B[2]~input_o\))) # (\B[1]~input_o\ & (((!\B[2]~input_o\) # (\srl64[1][21]~30_combout\)))) ) ) ) # ( !\srl64[1][17]~28_combout\ & ( !\srl64[1][15]~42_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & 
-- (\srl64[1][19]~29_combout\)) # (\B[1]~input_o\ & ((\srl64[1][21]~30_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][19]~29_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][21]~30_combout\,
	datae => \ALT_INV_srl64[1][17]~28_combout\,
	dataf => \ALT_INV_srl64[1][15]~42_combout\,
	combout => \srl64[3][15]~67_combout\);

-- Location: MLABCELL_X42_Y50_N34
\srl64[3][7]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][7]~66_combout\ = ( \srl64[1][9]~39_combout\ & ( \srl64[1][7]~37_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & ((\srl64[1][11]~40_combout\))) # (\B[1]~input_o\ & (\srl64[1][13]~41_combout\))) ) ) ) # ( !\srl64[1][9]~39_combout\ & ( 
-- \srl64[1][7]~37_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\srl64[1][11]~40_combout\)))) # (\B[1]~input_o\ & (\srl64[1][13]~41_combout\ & ((\B[2]~input_o\)))) ) ) ) # ( \srl64[1][9]~39_combout\ & ( !\srl64[1][7]~37_combout\ & ( 
-- (!\B[1]~input_o\ & (((\srl64[1][11]~40_combout\ & \B[2]~input_o\)))) # (\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\srl64[1][13]~41_combout\))) ) ) ) # ( !\srl64[1][9]~39_combout\ & ( !\srl64[1][7]~37_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\srl64[1][11]~40_combout\))) # (\B[1]~input_o\ & (\srl64[1][13]~41_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][13]~41_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_srl64[1][11]~40_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_srl64[1][9]~39_combout\,
	dataf => \ALT_INV_srl64[1][7]~37_combout\,
	combout => \srl64[3][7]~66_combout\);

-- Location: MLABCELL_X42_Y51_N36
\srl64[3][23]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][23]~64_combout\ = ( \srl64[1][25]~26_combout\ & ( \srl64[1][23]~31_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & (\srl64[1][27]~25_combout\)) # (\B[1]~input_o\ & ((\srl64[1][29]~24_combout\)))) ) ) ) # ( !\srl64[1][25]~26_combout\ & ( 
-- \srl64[1][23]~31_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\srl64[1][27]~25_combout\)) # (\B[1]~input_o\ & ((\srl64[1][29]~24_combout\))))) ) ) ) # ( \srl64[1][25]~26_combout\ & ( 
-- !\srl64[1][23]~31_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\srl64[1][27]~25_combout\)) # (\B[1]~input_o\ & ((\srl64[1][29]~24_combout\))))) ) ) ) # ( !\srl64[1][25]~26_combout\ & ( 
-- !\srl64[1][23]~31_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\srl64[1][27]~25_combout\)) # (\B[1]~input_o\ & ((\srl64[1][29]~24_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_srl64[1][27]~25_combout\,
	datac => \ALT_INV_srl64[1][29]~24_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_srl64[1][25]~26_combout\,
	dataf => \ALT_INV_srl64[1][23]~31_combout\,
	combout => \srl64[3][23]~64_combout\);

-- Location: LABCELL_X38_Y51_N20
\sra64[5][7]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[5][7]~17_combout\ = ( \B[4]~input_o\ & ( \sra64[0][31]~0_combout\ & ( (\B[3]~input_o\) # (\srl64[3][23]~64_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \sra64[0][31]~0_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][7]~66_combout\))) # (\B[3]~input_o\ & 
-- (\srl64[3][15]~67_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\sra64[0][31]~0_combout\ & ( (\srl64[3][23]~64_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\sra64[0][31]~0_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][7]~66_combout\))) # 
-- (\B[3]~input_o\ & (\srl64[3][15]~67_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][15]~67_combout\,
	datab => \ALT_INV_srl64[3][7]~66_combout\,
	datac => \ALT_INV_srl64[3][23]~64_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sra64[0][31]~0_combout\,
	combout => \sra64[5][7]~17_combout\);

-- Location: LABCELL_X38_Y51_N4
\Y_sra[7]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[7]~10_combout\ = ( !\Y_sra[15]~2_combout\ & ( (!\ExtWord~input_o\ & (((!\B[5]~input_o\ & (\sra64[5][7]~17_combout\)) # (\B[5]~input_o\ & ((\A[31]~input_o\)))))) # (\ExtWord~input_o\ & ((((\A[15]~input_o\))))) ) ) # ( \Y_sra[15]~2_combout\ & ( 
-- (!\ExtWord~input_o\ & (((!\B[5]~input_o\ & (\sra64[5][7]~17_combout\)) # (\B[5]~input_o\ & ((\A[31]~input_o\)))))) # (\ExtWord~input_o\ & ((((\srl64[3][23]~64_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100110011010101010011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[5][7]~17_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_srl64[3][23]~64_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_Y_sra[15]~2_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	datag => \ALT_INV_A[15]~input_o\,
	combout => \Y_sra[7]~10_combout\);

-- Location: LABCELL_X38_Y50_N18
\srl64[3][31]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[3][31]~63_combout\ = ( !\B[1]~input_o\ & ( \ExtWord~input_o\ & ( (\A[15]~input_o\ & (!\B[0]~input_o\ & !\B[2]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\ExtWord~input_o\ & ( (\A[31]~input_o\ & (!\B[0]~input_o\ & !\B[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000001010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \srl64[3][31]~63_combout\);

-- Location: LABCELL_X38_Y51_N22
\srl64[5][7]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][7]~68_combout\ = ( \B[4]~input_o\ & ( \srl64[3][31]~63_combout\ & ( (\srl64[3][23]~64_combout\) # (\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \srl64[3][31]~63_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][7]~66_combout\))) # (\B[3]~input_o\ & 
-- (\srl64[3][15]~67_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\srl64[3][31]~63_combout\ & ( (!\B[3]~input_o\ & \srl64[3][23]~64_combout\) ) ) ) # ( !\B[4]~input_o\ & ( !\srl64[3][31]~63_combout\ & ( (!\B[3]~input_o\ & ((\srl64[3][7]~66_combout\))) # 
-- (\B[3]~input_o\ & (\srl64[3][15]~67_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][15]~67_combout\,
	datab => \ALT_INV_srl64[3][7]~66_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][23]~64_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_srl64[3][31]~63_combout\,
	combout => \srl64[5][7]~68_combout\);

-- Location: LABCELL_X38_Y51_N38
\srl64[5][23]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][23]~65_combout\ = ( \srl64[3][31]~63_combout\ & ( (!\B[4]~input_o\ & ((\B[3]~input_o\) # (\srl64[3][23]~64_combout\))) ) ) # ( !\srl64[3][31]~63_combout\ & ( (\srl64[3][23]~64_combout\ & (!\B[3]~input_o\ & !\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][23]~64_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_srl64[3][31]~63_combout\,
	combout => \srl64[5][23]~65_combout\);

-- Location: LABCELL_X38_Y51_N36
\Y_srl[7]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[7]~2_combout\ = ( \ExtWord~input_o\ & ( \srl64[5][23]~65_combout\ ) ) # ( !\ExtWord~input_o\ & ( (\srl64[5][7]~68_combout\ & !\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[5][7]~68_combout\,
	datac => \ALT_INV_srl64[5][23]~65_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y_srl[7]~2_combout\);

-- Location: MLABCELL_X37_Y51_N8
\Mux24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \A[7]~input_o\ & ( \Y_srl[7]~2_combout\ & ( (!\ShiftFN[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & (\sll64[6][7]~14_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_sra[7]~10_combout\)))) ) ) ) # ( !\A[7]~input_o\ & ( \Y_srl[7]~2_combout\ & ( 
-- (!\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)))) # (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & (\sll64[6][7]~14_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_sra[7]~10_combout\))))) ) ) ) # ( \A[7]~input_o\ & ( !\Y_srl[7]~2_combout\ & ( 
-- (!\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\)))) # (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & (\sll64[6][7]~14_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_sra[7]~10_combout\))))) ) ) ) # ( !\A[7]~input_o\ & ( !\Y_srl[7]~2_combout\ & ( 
-- (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & (\sll64[6][7]~14_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_sra[7]~10_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[6][7]~14_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Y_sra[7]~10_combout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_Y_srl[7]~2_combout\,
	combout => \Mux24~0_combout\);

-- Location: MLABCELL_X39_Y48_N32
\sra64[5][8]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \sra64[5][8]~18_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ & ( \sra64[0][31]~0_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[4]~input_o\ & ( \srl64[3][24]~4_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[4]~input_o\ & ( \srl64[3][16]~9_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[4]~input_o\ & ( \srl64[3][8]~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][24]~4_combout\,
	datab => \ALT_INV_srl64[3][8]~20_combout\,
	datac => \ALT_INV_srl64[3][16]~9_combout\,
	datad => \ALT_INV_sra64[0][31]~0_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \sra64[5][8]~18_combout\);

-- Location: MLABCELL_X39_Y48_N8
\Y_sra[8]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[8]~6_combout\ = ( !\Y_sra[15]~2_combout\ & ( (!\ExtWord~input_o\ & ((!\B[5]~input_o\ & (((\sra64[5][8]~18_combout\)))) # (\B[5]~input_o\ & (\A[31]~input_o\)))) # (\ExtWord~input_o\ & ((((\A[15]~input_o\))))) ) ) # ( \Y_sra[15]~2_combout\ & ( 
-- (!\ExtWord~input_o\ & ((!\B[5]~input_o\ & (((\sra64[5][8]~18_combout\)))) # (\B[5]~input_o\ & (\A[31]~input_o\)))) # (\ExtWord~input_o\ & ((((\srl64[3][24]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100001111000100010000111110111011000011111011101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_srl64[3][24]~4_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_Y_sra[15]~2_combout\,
	dataf => \ALT_INV_sra64[5][8]~18_combout\,
	datag => \ALT_INV_A[15]~input_o\,
	combout => \Y_sra[8]~6_combout\);

-- Location: MLABCELL_X39_Y48_N12
\Y_srl[8]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[8]~9_combout\ = ( !\B[3]~input_o\ & ( (!\ExtWord~input_o\ & (!\B[5]~input_o\ & ((!\B[4]~input_o\ & (\srl64[3][8]~20_combout\)) # (\B[4]~input_o\ & ((\srl64[3][24]~4_combout\)))))) # (\ExtWord~input_o\ & ((((\srl64[3][24]~4_combout\ & 
-- !\B[4]~input_o\))))) ) ) # ( \B[3]~input_o\ & ( (!\B[5]~input_o\ & (((\srl64[3][16]~9_combout\ & (!\ExtWord~input_o\ & !\B[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001000001111000010100000000000001010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_srl64[3][8]~20_combout\,
	datac => \ALT_INV_srl64[3][16]~9_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	datag => \ALT_INV_srl64[3][24]~4_combout\,
	combout => \Y_srl[8]~9_combout\);

-- Location: LABCELL_X40_Y51_N2
\sll64[2][8]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][8]~15_combout\ = ( \A[6]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\)) ) ) ) # ( !\A[6]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[5]~input_o\)) ) ) ) # ( \A[6]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[8]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( !\B[0]~input_o\ & ( (\A[8]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][8]~15_combout\);

-- Location: MLABCELL_X39_Y49_N24
\sll64[4][8]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][8]~16_combout\ = ( \sll64[2][8]~15_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\sll64[2][4]~5_combout\)))) # (\B[3]~input_o\ & (\sll64[2][0]~4_combout\ & (!\B[2]~input_o\))) ) ) # ( !\sll64[2][8]~15_combout\ & ( (!\B[3]~input_o\ & 
-- (((\B[2]~input_o\ & \sll64[2][4]~5_combout\)))) # (\B[3]~input_o\ & (\sll64[2][0]~4_combout\ & (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100000001110011010000110111001101000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][0]~4_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][4]~5_combout\,
	dataf => \ALT_INV_sll64[2][8]~15_combout\,
	combout => \sll64[4][8]~16_combout\);

-- Location: MLABCELL_X39_Y48_N24
\Mux23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (((\A[8]~input_o\)))) # (\ShiftFN[0]~input_o\ & (!\sra64[6][15]~1_combout\ & (\sll64[4][8]~16_combout\)))) ) ) # ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- (((\Y_srl[8]~9_combout\)))) # (\ShiftFN[0]~input_o\ & (\Y_sra[8]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110000000111010001110111001100111111000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sra[8]~6_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y_srl[8]~9_combout\,
	datad => \ALT_INV_sll64[4][8]~16_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	datag => \ALT_INV_sra64[6][15]~1_combout\,
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X38_Y48_N30
\Mux17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\B[3]~input_o\) # (\B[5]~input_o\)) # (\ExtWord~input_o\))) ) ) # ( !\B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\B[5]~input_o\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000001110000111100000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: MLABCELL_X42_Y49_N6
\Mux22~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LABCELL_X40_Y49_N4
\Mux22~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = ( \sll64[6][0]~12_combout\ & ( (\srl64[3][25]~27_combout\ & (!\Mux25~3_combout\ & (\Mux17~0_combout\ & !\Mux22~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][25]~27_combout\,
	datab => \ALT_INV_Mux25~3_combout\,
	datac => \ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_Mux22~2_combout\,
	dataf => \ALT_INV_sll64[6][0]~12_combout\,
	combout => \Mux22~3_combout\);

-- Location: LABCELL_X38_Y48_N28
\Mux19~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & (!\ExtWord~input_o\ & !\B[3]~input_o\)) ) ) # ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[5]~input_o\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000110011110000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X38_Y49_N30
\Mux22~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \A[31]~input_o\ & ( \B[4]~input_o\ & ( (!\ExtWord~input_o\ & (((\B[3]~input_o\)) # (\B[5]~input_o\))) # (\ExtWord~input_o\ & (((\A[15]~input_o\)))) ) ) ) # ( !\A[31]~input_o\ & ( \B[4]~input_o\ & ( (\ExtWord~input_o\ & 
-- \A[15]~input_o\) ) ) ) # ( \A[31]~input_o\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\B[5]~input_o\ & (!\ExtWord~input_o\))) # (\B[3]~input_o\ & (((!\ExtWord~input_o\) # (\A[15]~input_o\)))) ) ) ) # ( !\A[31]~input_o\ & ( !\B[4]~input_o\ & ( 
-- (\B[3]~input_o\ & (\ExtWord~input_o\ & \A[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011011100000111001100000000000011110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LABCELL_X40_Y49_N6
\Mux22~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \Mux22~0_combout\ & ( (!\srl64[3][25]~27_combout\ & \Mux25~3_combout\) ) ) # ( !\Mux22~0_combout\ & ( (!\Mux25~3_combout\ & (((!\sra64[3][25]~2_combout\) # (!\Mux19~0_combout\)))) # (\Mux25~3_combout\ & (!\srl64[3][25]~27_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100010111011101110001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][25]~27_combout\,
	datab => \ALT_INV_Mux25~3_combout\,
	datac => \ALT_INV_sra64[3][25]~2_combout\,
	datad => \ALT_INV_Mux19~0_combout\,
	dataf => \ALT_INV_Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LABCELL_X40_Y51_N6
\sll64[2][9]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][9]~17_combout\ = ( \A[6]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[8]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( \B[0]~input_o\ & ( (\A[8]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[6]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( !\A[6]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][9]~17_combout\);

-- Location: LABCELL_X43_Y52_N10
\sll64[4][9]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][9]~18_combout\ = ( \sll64[2][1]~7_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\sll64[2][9]~17_combout\))) # (\B[2]~input_o\ & (\sll64[2][5]~8_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) # ( !\sll64[2][1]~7_combout\ & ( 
-- (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\sll64[2][9]~17_combout\))) # (\B[2]~input_o\ & (\sll64[2][5]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000110100111101000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][5]~8_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][9]~17_combout\,
	dataf => \ALT_INV_sll64[2][1]~7_combout\,
	combout => \sll64[4][9]~18_combout\);

-- Location: LABCELL_X40_Y49_N10
\Mux22~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = ( \A[9]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((!\sra64[6][15]~1_combout\ & \sll64[4][9]~18_combout\)))) ) ) # ( !\A[9]~input_o\ & ( (\ShiftFN[0]~input_o\ & (!\sra64[6][15]~1_combout\ & 
-- (\sll64[4][9]~18_combout\ & !\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000010101110000000001010111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_sra64[6][15]~1_combout\,
	datac => \ALT_INV_sll64[4][9]~18_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Mux22~6_combout\);

-- Location: LABCELL_X40_Y49_N8
\Mux22~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = ( !\Mux22~2_combout\ & ( !\Mux17~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux17~0_combout\,
	dataf => \ALT_INV_Mux22~2_combout\,
	combout => \Mux22~4_combout\);

-- Location: MLABCELL_X44_Y52_N2
\Mux17~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \sll64[6][0]~12_combout\ & ( \ExtWord~input_o\ ) ) # ( !\sll64[6][0]~12_combout\ & ( \ExtWord~input_o\ ) ) # ( \sll64[6][0]~12_combout\ & ( !\ExtWord~input_o\ & ( \B[5]~input_o\ ) ) ) # ( !\sll64[6][0]~12_combout\ & ( 
-- !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_sll64[6][0]~12_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux17~1_combout\);

-- Location: MLABCELL_X42_Y49_N38
\Mux22~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = ( \Mux17~1_combout\ & ( (\srl64[3][17]~32_combout\ & !\Mux25~1_combout\) ) ) # ( !\Mux17~1_combout\ & ( \srl64[3][9]~43_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][17]~32_combout\,
	datac => \ALT_INV_Mux25~1_combout\,
	datad => \ALT_INV_srl64[3][9]~43_combout\,
	dataf => \ALT_INV_Mux17~1_combout\,
	combout => \Mux22~5_combout\);

-- Location: LABCELL_X40_Y49_N34
\Mux22~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux22~5_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux22~5_combout\ & ( \Mux22~6_combout\ ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux22~5_combout\ & ( (((!\Mux22~1_combout\ & \Mux22~4_combout\)) # 
-- (\Mux22~6_combout\)) # (\Mux22~3_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux22~5_combout\ & ( \Mux22~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010111111101111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux22~3_combout\,
	datab => \ALT_INV_Mux22~1_combout\,
	datac => \ALT_INV_Mux22~6_combout\,
	datad => \ALT_INV_Mux22~4_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux22~5_combout\,
	combout => \Mux22~7_combout\);

-- Location: LABCELL_X40_Y49_N20
\Mux21~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \Mux25~1_combout\ & ( (\srl64[3][10]~45_combout\ & !\Mux17~1_combout\) ) ) # ( !\Mux25~1_combout\ & ( (!\Mux17~1_combout\ & (\srl64[3][10]~45_combout\)) # (\Mux17~1_combout\ & ((\srl64[3][18]~47_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[3][10]~45_combout\,
	datac => \ALT_INV_srl64[3][18]~47_combout\,
	datad => \ALT_INV_Mux17~1_combout\,
	dataf => \ALT_INV_Mux25~1_combout\,
	combout => \Mux21~2_combout\);

-- Location: LABCELL_X40_Y49_N22
\Mux21~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \sll64[6][0]~12_combout\ & ( (!\srl64[3][26]~46_combout\ & (!\Mux17~0_combout\ $ (!\Mux25~3_combout\))) ) ) # ( !\sll64[6][0]~12_combout\ & ( (!\Mux17~0_combout\ & (\Mux25~3_combout\ & !\srl64[3][26]~46_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~0_combout\,
	datac => \ALT_INV_Mux25~3_combout\,
	datad => \ALT_INV_srl64[3][26]~46_combout\,
	dataf => \ALT_INV_sll64[6][0]~12_combout\,
	combout => \Mux21~1_combout\);

-- Location: LABCELL_X40_Y49_N38
\Mux21~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \Mux22~0_combout\ & ( (!\Mux17~0_combout\ & !\Mux25~3_combout\) ) ) # ( !\Mux22~0_combout\ & ( (!\Mux17~0_combout\ & (\Mux19~0_combout\ & (\sra64[3][26]~5_combout\ & !\Mux25~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_Mux19~0_combout\,
	datac => \ALT_INV_sra64[3][26]~5_combout\,
	datad => \ALT_INV_Mux25~3_combout\,
	dataf => \ALT_INV_Mux22~0_combout\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X40_Y51_N30
\sll64[2][10]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][10]~19_combout\ = ( \A[7]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[9]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( \B[0]~input_o\ & ( (\A[9]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[7]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\A[10]~input_o\))) # (\B[1]~input_o\ & (\A[8]~input_o\)) ) ) ) # ( !\A[7]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[10]~input_o\))) # (\B[1]~input_o\ & (\A[8]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][10]~19_combout\);

-- Location: LABCELL_X38_Y52_N18
\sll64[4][10]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][10]~20_combout\ = ( \B[2]~input_o\ & ( (\sll64[2][6]~10_combout\ & !\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\sll64[2][10]~19_combout\))) # (\B[3]~input_o\ & (\sll64[2][2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][6]~10_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sll64[2][2]~2_combout\,
	datad => \ALT_INV_sll64[2][10]~19_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sll64[4][10]~20_combout\);

-- Location: MLABCELL_X44_Y52_N4
\Mux21~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = ( \sra64[6][15]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & \A[10]~input_o\)) ) ) # ( !\sra64[6][15]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\A[10]~input_o\)) # (\ShiftFN[0]~input_o\ & 
-- ((\sll64[4][10]~20_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_sll64[4][10]~20_combout\,
	dataf => \ALT_INV_sra64[6][15]~1_combout\,
	combout => \Mux21~3_combout\);

-- Location: LABCELL_X40_Y49_N24
\Mux21~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux21~3_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux21~3_combout\ ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux21~3_combout\ & ( ((!\Mux22~2_combout\ & ((\Mux21~0_combout\) # (\Mux21~1_combout\)))) # 
-- (\Mux21~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~2_combout\,
	datab => \ALT_INV_Mux21~1_combout\,
	datac => \ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_Mux22~2_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux21~3_combout\,
	combout => \Mux21~4_combout\);

-- Location: LABCELL_X40_Y52_N28
\Mux20~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \Mux17~0_combout\ & ( (!\Mux25~3_combout\ & (\srl64[3][27]~50_combout\ & \sll64[6][0]~12_combout\)) ) ) # ( !\Mux17~0_combout\ & ( (\Mux25~3_combout\ & \srl64[3][27]~50_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~3_combout\,
	datac => \ALT_INV_srl64[3][27]~50_combout\,
	datad => \ALT_INV_sll64[6][0]~12_combout\,
	dataf => \ALT_INV_Mux17~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LABCELL_X40_Y51_N32
\sll64[2][11]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][11]~21_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[10]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[9]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[11]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][11]~21_combout\);

-- Location: MLABCELL_X37_Y51_N34
\sll64[4][11]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][11]~22_combout\ = ( \sll64[2][3]~3_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\) # (\sll64[2][11]~21_combout\)))) # (\B[2]~input_o\ & (\sll64[2][7]~13_combout\ & ((!\B[3]~input_o\)))) ) ) # ( !\sll64[2][3]~3_combout\ & ( (!\B[3]~input_o\ & 
-- ((!\B[2]~input_o\ & ((\sll64[2][11]~21_combout\))) # (\B[2]~input_o\ & (\sll64[2][7]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000000000011011101010100001101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][7]~13_combout\,
	datac => \ALT_INV_sll64[2][11]~21_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][3]~3_combout\,
	combout => \sll64[4][11]~22_combout\);

-- Location: MLABCELL_X37_Y52_N16
\Mux20~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = ( \sra64[6][15]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (\A[11]~input_o\ & !\ShiftFN[0]~input_o\)) ) ) # ( !\sra64[6][15]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\A[11]~input_o\)) # (\ShiftFN[0]~input_o\ & 
-- ((\sll64[4][11]~22_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001000000010101000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_sll64[4][11]~22_combout\,
	dataf => \ALT_INV_sra64[6][15]~1_combout\,
	combout => \Mux20~3_combout\);

-- Location: LABCELL_X40_Y52_N30
\Mux20~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( \Mux17~1_combout\ & ( (\srl64[3][19]~51_combout\ & !\Mux25~1_combout\) ) ) # ( !\Mux17~1_combout\ & ( \srl64[3][11]~49_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[3][11]~49_combout\,
	datac => \ALT_INV_srl64[3][19]~51_combout\,
	datad => \ALT_INV_Mux25~1_combout\,
	dataf => \ALT_INV_Mux17~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LABCELL_X40_Y49_N36
\Mux20~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \Mux22~0_combout\ & ( (!\Mux17~0_combout\ & !\Mux25~3_combout\) ) ) # ( !\Mux22~0_combout\ & ( (!\Mux17~0_combout\ & (\Mux19~0_combout\ & (\sra64[3][27]~11_combout\ & !\Mux25~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_Mux19~0_combout\,
	datac => \ALT_INV_sra64[3][27]~11_combout\,
	datad => \ALT_INV_Mux25~3_combout\,
	dataf => \ALT_INV_Mux22~0_combout\,
	combout => \Mux20~0_combout\);

-- Location: MLABCELL_X37_Y52_N22
\Mux20~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux22~2_combout\ & ( (\Mux20~2_combout\) # (\Mux20~3_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux22~2_combout\ & ( \Mux20~3_combout\ ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux22~2_combout\ & ( 
-- (((\Mux20~0_combout\) # (\Mux20~2_combout\)) # (\Mux20~3_combout\)) # (\Mux20~1_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux22~2_combout\ & ( \Mux20~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011011111111111111100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~3_combout\,
	datac => \ALT_INV_Mux20~2_combout\,
	datad => \ALT_INV_Mux20~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux22~2_combout\,
	combout => \Mux20~4_combout\);

-- Location: LABCELL_X40_Y49_N0
\srl64[5][28]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][28]~70_combout\ = ( \sll64[6][0]~12_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\srl64[1][28]~1_combout\))) # (\B[1]~input_o\ & (\srl64[1][30]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000010100000011000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[1][30]~3_combout\,
	datab => \ALT_INV_srl64[1][28]~1_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_sll64[6][0]~12_combout\,
	combout => \srl64[5][28]~70_combout\);

-- Location: LABCELL_X40_Y49_N12
\Mux19~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ( \srl64[3][28]~54_combout\ & ( (!\Mux25~3_combout\ & (\Mux17~0_combout\ & \srl64[5][28]~70_combout\)) # (\Mux25~3_combout\ & (!\Mux17~0_combout\)) ) ) # ( !\srl64[3][28]~54_combout\ & ( (!\Mux25~3_combout\ & (\Mux17~0_combout\ & 
-- \srl64[5][28]~70_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000110000001111000011000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux25~3_combout\,
	datac => \ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_srl64[5][28]~70_combout\,
	dataf => \ALT_INV_srl64[3][28]~54_combout\,
	combout => \Mux19~2_combout\);

-- Location: LABCELL_X40_Y49_N14
\Mux19~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = ( \Mux25~1_combout\ & ( (\srl64[3][12]~53_combout\ & !\Mux17~1_combout\) ) ) # ( !\Mux25~1_combout\ & ( (!\Mux17~1_combout\ & (\srl64[3][12]~53_combout\)) # (\Mux17~1_combout\ & ((\srl64[3][20]~55_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][12]~53_combout\,
	datac => \ALT_INV_Mux17~1_combout\,
	datad => \ALT_INV_srl64[3][20]~55_combout\,
	dataf => \ALT_INV_Mux25~1_combout\,
	combout => \Mux19~3_combout\);

-- Location: LABCELL_X40_Y49_N28
\Mux19~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( !\Mux17~0_combout\ & ( (!\Mux25~3_combout\ & (((\Mux19~0_combout\ & \sra64[3][28]~14_combout\)) # (\Mux22~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000000010101110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux22~0_combout\,
	datab => \ALT_INV_Mux19~0_combout\,
	datac => \ALT_INV_sra64[3][28]~14_combout\,
	datad => \ALT_INV_Mux25~3_combout\,
	dataf => \ALT_INV_Mux17~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: MLABCELL_X37_Y52_N26
\sll64[2][12]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][12]~23_combout\ = ( \A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( !\A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ 
-- & (\A[9]~input_o\)) ) ) ) # ( \A[10]~input_o\ & ( !\B[0]~input_o\ & ( (\A[12]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][12]~23_combout\);

-- Location: MLABCELL_X39_Y49_N8
\sll64[4][12]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][12]~24_combout\ = ( \sll64[2][12]~23_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][4]~5_combout\))) # (\B[2]~input_o\ & (\sll64[2][0]~4_combout\)) ) ) ) # ( !\sll64[2][12]~23_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][4]~5_combout\))) # (\B[2]~input_o\ & (\sll64[2][0]~4_combout\)) ) ) ) # ( \sll64[2][12]~23_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][8]~15_combout\) ) ) ) # ( !\sll64[2][12]~23_combout\ & ( !\B[3]~input_o\ & ( 
-- (\B[2]~input_o\ & \sll64[2][8]~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][0]~4_combout\,
	datab => \ALT_INV_sll64[2][4]~5_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][8]~15_combout\,
	datae => \ALT_INV_sll64[2][12]~23_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][12]~24_combout\);

-- Location: MLABCELL_X39_Y49_N32
\Mux19~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = ( \A[12]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((!\sra64[6][15]~1_combout\ & \sll64[4][12]~24_combout\)))) ) ) # ( !\A[12]~input_o\ & ( (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & 
-- (!\sra64[6][15]~1_combout\ & \sll64[4][12]~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000010001000110010001000100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_sra64[6][15]~1_combout\,
	datad => \ALT_INV_sll64[4][12]~24_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Mux19~4_combout\);

-- Location: LABCELL_X40_Y49_N18
\Mux19~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux19~4_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux19~4_combout\ ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux19~4_combout\ & ( ((!\Mux22~2_combout\ & ((\Mux19~1_combout\) # (\Mux19~2_combout\)))) # 
-- (\Mux19~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~2_combout\,
	datab => \ALT_INV_Mux19~3_combout\,
	datac => \ALT_INV_Mux22~2_combout\,
	datad => \ALT_INV_Mux19~1_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux19~4_combout\,
	combout => \Mux19~5_combout\);

-- Location: MLABCELL_X42_Y51_N0
\srl64[5][29]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][29]~71_combout\ = ( \sll64[6][0]~12_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\srl64[1][29]~24_combout\))) # (\B[1]~input_o\ & (\srl64[2][29]~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000110100000001000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[2][29]~23_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_srl64[1][29]~24_combout\,
	dataf => \ALT_INV_sll64[6][0]~12_combout\,
	combout => \srl64[5][29]~71_combout\);

-- Location: MLABCELL_X42_Y51_N32
\Mux18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( !\Mux22~0_combout\ & ( (!\Mux19~0_combout\) # ((!\Mux15~0_combout\ & (!\sra64[0][31]~0_combout\)) # (\Mux15~0_combout\ & ((!\srl64[1][29]~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111000111111111011100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][31]~0_combout\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_srl64[1][29]~24_combout\,
	datad => \ALT_INV_Mux19~0_combout\,
	dataf => \ALT_INV_Mux22~0_combout\,
	combout => \Mux18~0_combout\);

-- Location: MLABCELL_X42_Y51_N4
\Mux18~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \Mux18~0_combout\ & ( (\Mux17~0_combout\ & (!\Mux25~3_combout\ & (\srl64[5][29]~71_combout\ & !\Mux22~2_combout\))) ) ) # ( !\Mux18~0_combout\ & ( (!\Mux25~3_combout\ & (!\Mux22~2_combout\ & ((!\Mux17~0_combout\) # 
-- (\srl64[5][29]~71_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000100011000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_Mux25~3_combout\,
	datac => \ALT_INV_srl64[5][29]~71_combout\,
	datad => \ALT_INV_Mux22~2_combout\,
	dataf => \ALT_INV_Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: MLABCELL_X37_Y52_N10
\sll64[2][13]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][13]~25_combout\ = ( \A[10]~input_o\ & ( \B[0]~input_o\ & ( (\A[12]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[12]~input_o\) ) ) ) # ( \A[10]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][13]~25_combout\);

-- Location: LABCELL_X43_Y52_N16
\sll64[4][13]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][13]~26_combout\ = ( \sll64[2][9]~17_combout\ & ( \sll64[2][1]~7_combout\ & ( ((!\B[3]~input_o\ & (\sll64[2][13]~25_combout\)) # (\B[3]~input_o\ & ((\sll64[2][5]~8_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\sll64[2][9]~17_combout\ & ( 
-- \sll64[2][1]~7_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\sll64[2][13]~25_combout\)) # (\B[3]~input_o\ & ((\sll64[2][5]~8_combout\))))) # (\B[2]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( \sll64[2][9]~17_combout\ & ( !\sll64[2][1]~7_combout\ & 
-- ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\sll64[2][13]~25_combout\)) # (\B[3]~input_o\ & ((\sll64[2][5]~8_combout\))))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( !\sll64[2][9]~17_combout\ & ( !\sll64[2][1]~7_combout\ & ( (!\B[2]~input_o\ & 
-- ((!\B[3]~input_o\ & (\sll64[2][13]~25_combout\)) # (\B[3]~input_o\ & ((\sll64[2][5]~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][13]~25_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sll64[2][5]~8_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_sll64[2][9]~17_combout\,
	dataf => \ALT_INV_sll64[2][1]~7_combout\,
	combout => \sll64[4][13]~26_combout\);

-- Location: MLABCELL_X42_Y52_N20
\Mux18~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = ( !\Mux17~1_combout\ & ( (((\srl64[3][13]~57_combout\))) ) ) # ( \Mux17~1_combout\ & ( (!\Mux25~1_combout\ & (((\srl64[3][21]~58_combout\)))) # (\Mux25~1_combout\ & (\Mux25~3_combout\ & (((\Mux26~1_combout\ & !\Mux17~0_combout\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011000001110100001111000011110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~3_combout\,
	datab => \ALT_INV_Mux25~1_combout\,
	datac => \ALT_INV_srl64[3][21]~58_combout\,
	datad => \ALT_INV_Mux26~1_combout\,
	datae => \ALT_INV_Mux17~1_combout\,
	dataf => \ALT_INV_Mux17~0_combout\,
	datag => \ALT_INV_srl64[3][13]~57_combout\,
	combout => \Mux18~6_combout\);

-- Location: LABCELL_X43_Y52_N24
\Mux18~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((\A[13]~input_o\)))) # (\ShiftFN[1]~input_o\ & ((((\Mux18~6_combout\))) # (\Mux18~1_combout\))) ) ) # ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (((!\sra64[6][15]~1_combout\ & (\sll64[4][13]~26_combout\))))) # (\ShiftFN[1]~input_o\ & ((((\Mux18~6_combout\))) # (\Mux18~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000100011101000100111111001111110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~1_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_sra64[6][15]~1_combout\,
	datad => \ALT_INV_sll64[4][13]~26_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Mux18~6_combout\,
	datag => \ALT_INV_A[13]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: MLABCELL_X37_Y52_N14
\sll64[2][14]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][14]~27_combout\ = ( \A[11]~input_o\ & ( \B[0]~input_o\ & ( (\A[13]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[11]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[13]~input_o\) ) ) ) # ( \A[11]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][14]~27_combout\);

-- Location: LABCELL_X38_Y52_N2
\sll64[4][14]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][14]~28_combout\ = ( \sll64[2][10]~19_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][6]~10_combout\))) # (\B[2]~input_o\ & (\sll64[2][2]~2_combout\)) ) ) ) # ( !\sll64[2][10]~19_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][6]~10_combout\))) # (\B[2]~input_o\ & (\sll64[2][2]~2_combout\)) ) ) ) # ( \sll64[2][10]~19_combout\ & ( !\B[3]~input_o\ & ( (\B[2]~input_o\) # (\sll64[2][14]~27_combout\) ) ) ) # ( !\sll64[2][10]~19_combout\ & ( !\B[3]~input_o\ & ( 
-- (\sll64[2][14]~27_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][14]~27_combout\,
	datab => \ALT_INV_sll64[2][2]~2_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][6]~10_combout\,
	datae => \ALT_INV_sll64[2][10]~19_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sll64[4][14]~28_combout\);

-- Location: LABCELL_X38_Y52_N8
\Mux17~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = ( \sra64[6][15]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & \A[14]~input_o\)) ) ) # ( !\sra64[6][15]~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\A[14]~input_o\)) # (\ShiftFN[0]~input_o\ & 
-- ((\sll64[4][14]~28_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_sll64[4][14]~28_combout\,
	dataf => \ALT_INV_sra64[6][15]~1_combout\,
	combout => \Mux17~5_combout\);

-- Location: MLABCELL_X44_Y52_N30
\Mux17~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = ( \Mux17~1_combout\ & ( (\srl64[3][22]~61_combout\ & !\Mux25~1_combout\) ) ) # ( !\Mux17~1_combout\ & ( \srl64[3][14]~60_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl64[3][22]~61_combout\,
	datac => \ALT_INV_Mux25~1_combout\,
	datad => \ALT_INV_srl64[3][14]~60_combout\,
	dataf => \ALT_INV_Mux17~1_combout\,
	combout => \Mux17~4_combout\);

-- Location: LABCELL_X40_Y49_N30
\Mux17~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ( \Mux15~0_combout\ & ( (!\Mux22~0_combout\ & ((!\Mux19~0_combout\) # (!\srl64[1][30]~3_combout\))) ) ) # ( !\Mux15~0_combout\ & ( (!\Mux22~0_combout\ & ((!\Mux19~0_combout\) # (!\sra64[0][31]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010001010100010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux22~0_combout\,
	datab => \ALT_INV_Mux19~0_combout\,
	datac => \ALT_INV_sra64[0][31]~0_combout\,
	datad => \ALT_INV_srl64[1][30]~3_combout\,
	dataf => \ALT_INV_Mux15~0_combout\,
	combout => \Mux17~2_combout\);

-- Location: MLABCELL_X42_Y51_N6
\Mux17~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = ( \sll64[6][0]~12_combout\ & ( (!\Mux17~0_combout\ & ((!\Mux25~3_combout\ & ((!\Mux17~2_combout\))) # (\Mux25~3_combout\ & (\Mux25~5_combout\)))) # (\Mux17~0_combout\ & (!\Mux25~3_combout\ & (\Mux25~5_combout\))) ) ) # ( 
-- !\sll64[6][0]~12_combout\ & ( (!\Mux17~0_combout\ & ((!\Mux25~3_combout\ & ((!\Mux17~2_combout\))) # (\Mux25~3_combout\ & (\Mux25~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000010100010100000001010001110000001101000111000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_Mux25~3_combout\,
	datac => \ALT_INV_Mux25~5_combout\,
	datad => \ALT_INV_Mux17~2_combout\,
	dataf => \ALT_INV_sll64[6][0]~12_combout\,
	combout => \Mux17~3_combout\);

-- Location: MLABCELL_X44_Y52_N8
\Mux17~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux17~3_combout\ & ( ((!\Mux22~2_combout\) # (\Mux17~4_combout\)) # (\Mux17~5_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux17~3_combout\ & ( \Mux17~5_combout\ ) ) ) # ( \ShiftFN[1]~input_o\ & ( 
-- !\Mux17~3_combout\ & ( (\Mux17~4_combout\) # (\Mux17~5_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux17~3_combout\ & ( \Mux17~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100111111111100110011001100111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux17~5_combout\,
	datac => \ALT_INV_Mux22~2_combout\,
	datad => \ALT_INV_Mux17~4_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux17~3_combout\,
	combout => \Mux17~6_combout\);

-- Location: LABCELL_X38_Y51_N24
\Y_srl[1]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[1]~3_combout\ = ( !\ExtWord~input_o\ & ( !\B[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y_srl[1]~3_combout\);

-- Location: LABCELL_X38_Y49_N32
\Y_srl[15]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[15]~4_combout\ = ( !\B[0]~input_o\ & ( (\A[15]~input_o\ & \ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Y_srl[15]~4_combout\);

-- Location: LABCELL_X38_Y49_N16
\Y_srl[15]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[15]~5_combout\ = ( \Mux15~0_combout\ & ( \B[4]~input_o\ & ( (\Y_srl[1]~3_combout\ & (!\B[3]~input_o\ & \srl64[2][29]~23_combout\)) ) ) ) # ( \Mux15~0_combout\ & ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & \Y_srl[15]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[1]~3_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Y_srl[15]~4_combout\,
	datad => \ALT_INV_srl64[2][29]~23_combout\,
	datae => \ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_srl[15]~5_combout\);

-- Location: LABCELL_X38_Y51_N28
\Y_srl[15]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[15]~6_combout\ = ( \B[4]~input_o\ & ( \srl64[3][15]~67_combout\ & ( \Y_srl[15]~5_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \srl64[3][15]~67_combout\ & ( ((\Y_srl[1]~3_combout\ & ((!\B[3]~input_o\) # (\srl64[3][23]~64_combout\)))) # 
-- (\Y_srl[15]~5_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\srl64[3][15]~67_combout\ & ( \Y_srl[15]~5_combout\ ) ) ) # ( !\B[4]~input_o\ & ( !\srl64[3][15]~67_combout\ & ( ((\srl64[3][23]~64_combout\ & (\Y_srl[1]~3_combout\ & \B[3]~input_o\))) # 
-- (\Y_srl[15]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001100110011001100111111001101110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][23]~64_combout\,
	datab => \ALT_INV_Y_srl[15]~5_combout\,
	datac => \ALT_INV_Y_srl[1]~3_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_srl64[3][15]~67_combout\,
	combout => \Y_srl[15]~6_combout\);

-- Location: LABCELL_X38_Y51_N10
\Y_sra[15]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[15]~3_combout\ = ( \A[15]~input_o\ & ( (\sra64[6][17]~7_combout\) # (\ExtWord~input_o\) ) ) # ( !\A[15]~input_o\ & ( (!\ExtWord~input_o\ & \sra64[6][17]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_sra64[6][17]~7_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Y_sra[15]~3_combout\);

-- Location: LABCELL_X38_Y51_N34
\Y_sra[15]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[15]~4_combout\ = ( \sra64[6][15]~1_combout\ & ( \ExtWord~input_o\ & ( \Y_sra[15]~3_combout\ ) ) ) # ( !\sra64[6][15]~1_combout\ & ( \ExtWord~input_o\ & ( \Y_sra[15]~3_combout\ ) ) ) # ( \sra64[6][15]~1_combout\ & ( !\ExtWord~input_o\ & ( 
-- \Y_sra[15]~3_combout\ ) ) ) # ( !\sra64[6][15]~1_combout\ & ( !\ExtWord~input_o\ & ( ((!\B[3]~input_o\ & ((\srl64[3][15]~67_combout\))) # (\B[3]~input_o\ & (\srl64[3][23]~64_combout\))) # (\Y_sra[15]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111110111001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][23]~64_combout\,
	datab => \ALT_INV_Y_sra[15]~3_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_srl64[3][15]~67_combout\,
	datae => \ALT_INV_sra64[6][15]~1_combout\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y_sra[15]~4_combout\);

-- Location: LABCELL_X38_Y50_N22
\sll64[2][15]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][15]~29_combout\ = ( \A[13]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( !\A[13]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[12]~input_o\))) ) ) ) # ( \A[13]~input_o\ & ( !\B[0]~input_o\ & ( (\A[15]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[13]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][15]~29_combout\);

-- Location: MLABCELL_X37_Y51_N18
\sll64[4][15]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][15]~30_combout\ = ( \sll64[2][15]~29_combout\ & ( \sll64[2][3]~3_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\sll64[2][11]~21_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\sll64[2][7]~13_combout\))) ) ) ) # ( 
-- !\sll64[2][15]~29_combout\ & ( \sll64[2][3]~3_combout\ & ( (!\B[3]~input_o\ & (((\sll64[2][11]~21_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\sll64[2][7]~13_combout\))) ) ) ) # ( \sll64[2][15]~29_combout\ & ( 
-- !\sll64[2][3]~3_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\sll64[2][11]~21_combout\)))) # (\B[3]~input_o\ & (\sll64[2][7]~13_combout\ & ((!\B[2]~input_o\)))) ) ) ) # ( !\sll64[2][15]~29_combout\ & ( !\sll64[2][3]~3_combout\ & ( 
-- (!\B[3]~input_o\ & (((\sll64[2][11]~21_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (\sll64[2][7]~13_combout\ & ((!\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_sll64[2][7]~13_combout\,
	datac => \ALT_INV_sll64[2][11]~21_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[2][15]~29_combout\,
	dataf => \ALT_INV_sll64[2][3]~3_combout\,
	combout => \sll64[4][15]~30_combout\);

-- Location: LABCELL_X38_Y51_N0
\Mux16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\A[15]~input_o\)) # (\ShiftFN[0]~input_o\ & (((!\sra64[6][15]~1_combout\ & ((\sll64[4][15]~30_combout\)))))) ) ) # ( \ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & 
-- (\Y_srl[15]~6_combout\)) # (\ShiftFN[0]~input_o\ & (((\Y_sra[15]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010001000100000011000011111101110100011101000000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y_srl[15]~6_combout\,
	datad => \ALT_INV_Y_sra[15]~4_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_sll64[4][15]~30_combout\,
	datag => \ALT_INV_sra64[6][15]~1_combout\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X38_Y48_N32
\Mux15~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = ( \B[5]~input_o\ & ( !\B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & !\ExtWord~input_o\) ) ) ) # ( !\B[5]~input_o\ & ( !\B[4]~input_o\ & ( !\ExtWord~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: LABCELL_X38_Y48_N18
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \B[4]~input_o\ & ( (!\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X39_Y49_N34
\Mux15~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = ( !\B[3]~input_o\ & ( (\Mux11~0_combout\ & \Mux15~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: LABCELL_X38_Y50_N24
\A_left[16]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[16]~0_combout\ = (!\ExtWord~input_o\ & \A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	combout => \A_left[16]~0_combout\);

-- Location: LABCELL_X38_Y50_N10
\sll64[2][16]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][16]~31_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[13]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[15]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[14]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A_left[16]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A_left[16]~0_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][16]~31_combout\);

-- Location: MLABCELL_X39_Y49_N18
\Mux15~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( \sll64[2][4]~5_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][8]~15_combout\) # (\B[2]~input_o\) ) ) ) # ( !\sll64[2][4]~5_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \sll64[2][8]~15_combout\) ) ) ) # ( \sll64[2][4]~5_combout\ & ( 
-- !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][16]~31_combout\))) # (\B[2]~input_o\ & (\sll64[2][12]~23_combout\)) ) ) ) # ( !\sll64[2][4]~5_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][16]~31_combout\))) # (\B[2]~input_o\ & 
-- (\sll64[2][12]~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][12]~23_combout\,
	datac => \ALT_INV_sll64[2][8]~15_combout\,
	datad => \ALT_INV_sll64[2][16]~31_combout\,
	datae => \ALT_INV_sll64[2][4]~5_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LABCELL_X38_Y48_N16
\Mux15~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = ( !\B[4]~input_o\ & ( (\ExtWord~input_o\ & \sll64[4][15]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_sll64[4][15]~30_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux15~4_combout\);

-- Location: MLABCELL_X39_Y49_N2
\Mux15~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = ( !\Mux15~4_combout\ & ( \B[0]~input_o\ & ( (!\Mux15~2_combout\) # (!\Mux15~1_combout\) ) ) ) # ( !\Mux15~4_combout\ & ( !\B[0]~input_o\ & ( (!\A[0]~input_o\ & ((!\Mux15~2_combout\) # ((!\Mux15~1_combout\)))) # (\A[0]~input_o\ & 
-- (!\Mux15~3_combout\ & ((!\Mux15~2_combout\) # (!\Mux15~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000000000000000000011111111110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Mux15~3_combout\,
	datad => \ALT_INV_Mux15~1_combout\,
	datae => \ALT_INV_Mux15~4_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux15~5_combout\);

-- Location: LABCELL_X38_Y49_N0
\Mux15~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = ( \ExtWord~input_o\ & ( \A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((!\srl64[2][29]~23_combout\) # (!\sll64[6][0]~0_combout\))) ) ) ) # ( !\ExtWord~input_o\ & ( \A[15]~input_o\ & ( ((!\srl64[2][29]~23_combout\) # 
-- ((!\sll64[6][0]~0_combout\) # (\ShiftFN[0]~input_o\))) # (\B[5]~input_o\) ) ) ) # ( \ExtWord~input_o\ & ( !\A[15]~input_o\ & ( (!\srl64[2][29]~23_combout\) # ((!\sll64[6][0]~0_combout\) # (\ShiftFN[0]~input_o\)) ) ) ) # ( !\ExtWord~input_o\ & ( 
-- !\A[15]~input_o\ & ( ((!\srl64[2][29]~23_combout\) # ((!\sll64[6][0]~0_combout\) # (\ShiftFN[0]~input_o\))) # (\B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111111100111111111111110111111111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_srl64[2][29]~23_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_sll64[6][0]~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Mux15~6_combout\);

-- Location: MLABCELL_X39_Y48_N0
\Mux15~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = ( !\B[3]~input_o\ & ( (!\Mux15~6_combout\) # ((\Mux29~8_combout\ & (((\srl64[3][16]~9_combout\ & !\sra64[6][15]~1_combout\)) # (\sra64[6][17]~7_combout\)))) ) ) # ( \B[3]~input_o\ & ( (!\Mux15~6_combout\) # ((\Mux29~8_combout\ & 
-- (((\srl64[3][24]~4_combout\ & !\sra64[6][15]~1_combout\)) # (\sra64[6][17]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100110111001100110011011100110011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~8_combout\,
	datab => \ALT_INV_Mux15~6_combout\,
	datac => \ALT_INV_srl64[3][24]~4_combout\,
	datad => \ALT_INV_sra64[6][15]~1_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sra64[6][17]~7_combout\,
	datag => \ALT_INV_srl64[3][16]~9_combout\,
	combout => \Mux15~8_combout\);

-- Location: MLABCELL_X44_Y52_N6
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\) ) ) # ( !\ExtWord~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X39_Y48_N16
\Mux15~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = ( \A[16]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux5~0_combout\ & ((\Mux15~8_combout\))) # (\Mux5~0_combout\ & (\srl64[5][16]~10_combout\)) ) ) ) # ( !\A[16]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux5~0_combout\ & 
-- ((\Mux15~8_combout\))) # (\Mux5~0_combout\ & (\srl64[5][16]~10_combout\)) ) ) ) # ( \A[16]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux15~5_combout\) # (\Mux5~0_combout\) ) ) ) # ( !\A[16]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux15~5_combout\ & 
-- !\Mux5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011001111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[5][16]~10_combout\,
	datab => \ALT_INV_Mux15~5_combout\,
	datac => \ALT_INV_Mux15~8_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux15~7_combout\);

-- Location: LABCELL_X40_Y50_N0
\A_left[17]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[17]~1_combout\ = ( \A[17]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \A_left[17]~1_combout\);

-- Location: LABCELL_X38_Y50_N32
\sll64[2][17]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][17]~32_combout\ = ( \B[1]~input_o\ & ( \A[15]~input_o\ & ( (!\B[0]~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[15]~input_o\ & ( (!\B[0]~input_o\ & (\A_left[17]~1_combout\)) # (\B[0]~input_o\ & ((\A_left[16]~0_combout\))) ) ) ) 
-- # ( \B[1]~input_o\ & ( !\A[15]~input_o\ & ( (\A[14]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[0]~input_o\ & (\A_left[17]~1_combout\)) # (\B[0]~input_o\ & ((\A_left[16]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[17]~1_combout\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A_left[16]~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \sll64[2][17]~32_combout\);

-- Location: LABCELL_X43_Y52_N2
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \sll64[2][13]~25_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\sll64[2][5]~8_combout\) ) ) ) # ( !\sll64[2][13]~25_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\ & \sll64[2][5]~8_combout\) ) ) ) # ( \sll64[2][13]~25_combout\ 
-- & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\sll64[2][17]~32_combout\))) # (\B[3]~input_o\ & (\sll64[2][9]~17_combout\)) ) ) ) # ( !\sll64[2][13]~25_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\sll64[2][17]~32_combout\))) # (\B[3]~input_o\ & 
-- (\sll64[2][9]~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][9]~17_combout\,
	datab => \ALT_INV_sll64[2][17]~32_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sll64[2][5]~8_combout\,
	datae => \ALT_INV_sll64[2][13]~25_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X42_Y49_N28
\Mux14~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \sll64[1][1]~1_combout\ & ( (!\Mux15~4_combout\ & (!\Mux15~3_combout\ & ((!\Mux15~2_combout\) # (!\Mux14~0_combout\)))) ) ) # ( !\sll64[1][1]~1_combout\ & ( (!\Mux15~4_combout\ & ((!\Mux15~2_combout\) # (!\Mux14~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010001010100010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~4_combout\,
	datab => \ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Mux14~0_combout\,
	datad => \ALT_INV_Mux15~3_combout\,
	dataf => \ALT_INV_sll64[1][1]~1_combout\,
	combout => \Mux14~1_combout\);

-- Location: MLABCELL_X42_Y49_N30
\Mux14~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \Mux15~6_combout\ & ( (!\Mux29~8_combout\) # (!\sra64[6][17]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux29~8_combout\,
	datad => \ALT_INV_sra64[6][17]~3_combout\,
	dataf => \ALT_INV_Mux15~6_combout\,
	combout => \Mux14~2_combout\);

-- Location: MLABCELL_X42_Y49_N34
\Mux14~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \Mux14~2_combout\ & ( \Mux5~0_combout\ & ( (!\ShiftFN[1]~input_o\ & (\A[17]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\srl64[5][17]~33_combout\))) ) ) ) # ( !\Mux14~2_combout\ & ( \Mux5~0_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\A[17]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\srl64[5][17]~33_combout\))) ) ) ) # ( \Mux14~2_combout\ & ( !\Mux5~0_combout\ & ( (!\Mux14~1_combout\ & !\ShiftFN[1]~input_o\) ) ) ) # ( !\Mux14~2_combout\ & ( !\Mux5~0_combout\ & ( (!\Mux14~1_combout\) # 
-- (\ShiftFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010100000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~1_combout\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_srl64[5][17]~33_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Mux14~2_combout\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux14~3_combout\);

-- Location: MLABCELL_X39_Y52_N10
\Mux13~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \Mux29~8_combout\ & ( (\Mux15~6_combout\ & !\sra64[6][18]~6_combout\) ) ) # ( !\Mux29~8_combout\ & ( \Mux15~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux15~6_combout\,
	datad => \ALT_INV_sra64[6][18]~6_combout\,
	dataf => \ALT_INV_Mux29~8_combout\,
	combout => \Mux13~3_combout\);

-- Location: LABCELL_X38_Y52_N4
\Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Mux11~0_combout\ & \sll64[2][2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_sll64[2][2]~2_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: MLABCELL_X39_Y50_N38
\A_left[18]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[18]~2_combout\ = ( \A[18]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \A_left[18]~2_combout\);

-- Location: LABCELL_X38_Y50_N36
\sll64[2][18]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][18]~33_combout\ = ( \A_left[17]~1_combout\ & ( \A[15]~input_o\ & ( ((!\B[1]~input_o\ & (\A_left[18]~2_combout\)) # (\B[1]~input_o\ & ((\A_left[16]~0_combout\)))) # (\B[0]~input_o\) ) ) ) # ( !\A_left[17]~1_combout\ & ( \A[15]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A_left[18]~2_combout\)) # (\B[1]~input_o\ & ((\A_left[16]~0_combout\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \A_left[17]~1_combout\ & ( !\A[15]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- (\A_left[18]~2_combout\)) # (\B[1]~input_o\ & ((\A_left[16]~0_combout\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\A_left[17]~1_combout\ & ( !\A[15]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A_left[18]~2_combout\)) # 
-- (\B[1]~input_o\ & ((\A_left[16]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[18]~2_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A_left[16]~0_combout\,
	datae => \ALT_INV_A_left[17]~1_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \sll64[2][18]~33_combout\);

-- Location: LABCELL_X38_Y52_N26
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \sll64[2][10]~19_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][6]~10_combout\) ) ) ) # ( !\sll64[2][10]~19_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][6]~10_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \sll64[2][10]~19_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][18]~33_combout\))) # (\B[2]~input_o\ & (\sll64[2][14]~27_combout\)) ) ) ) # ( !\sll64[2][10]~19_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][18]~33_combout\))) # (\B[2]~input_o\ & (\sll64[2][14]~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][6]~10_combout\,
	datab => \ALT_INV_sll64[2][14]~27_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][18]~33_combout\,
	datae => \ALT_INV_sll64[2][10]~19_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: MLABCELL_X39_Y52_N26
\Mux13~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Mux13~0_combout\ & ( (!\Mux15~4_combout\ & (!\Mux15~2_combout\ & !\Mux13~1_combout\)) ) ) # ( !\Mux13~0_combout\ & ( (!\Mux15~4_combout\ & !\Mux13~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~4_combout\,
	datac => \ALT_INV_Mux15~2_combout\,
	datad => \ALT_INV_Mux13~1_combout\,
	dataf => \ALT_INV_Mux13~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: MLABCELL_X39_Y52_N34
\Mux13~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = ( \A[18]~input_o\ & ( \Mux5~0_combout\ & ( (!\ShiftFN[1]~input_o\) # (\srl64[5][18]~48_combout\) ) ) ) # ( !\A[18]~input_o\ & ( \Mux5~0_combout\ & ( (\ShiftFN[1]~input_o\ & \srl64[5][18]~48_combout\) ) ) ) # ( \A[18]~input_o\ & ( 
-- !\Mux5~0_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\Mux13~2_combout\))) # (\ShiftFN[1]~input_o\ & (!\Mux13~3_combout\)) ) ) ) # ( !\A[18]~input_o\ & ( !\Mux5~0_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\Mux13~2_combout\))) # (\ShiftFN[1]~input_o\ & 
-- (!\Mux13~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100111001001110010000000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux13~3_combout\,
	datac => \ALT_INV_Mux13~2_combout\,
	datad => \ALT_INV_srl64[5][18]~48_combout\,
	datae => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux13~4_combout\);

-- Location: MLABCELL_X39_Y50_N36
\A_left[19]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[19]~3_combout\ = (!\ExtWord~input_o\ & \A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	combout => \A_left[19]~3_combout\);

-- Location: MLABCELL_X39_Y50_N22
\sll64[2][19]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][19]~34_combout\ = ( \A_left[19]~3_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[18]~2_combout\)) # (\B[1]~input_o\ & ((\A_left[16]~0_combout\))) ) ) ) # ( !\A_left[19]~3_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A_left[18]~2_combout\)) # (\B[1]~input_o\ & ((\A_left[16]~0_combout\))) ) ) ) # ( \A_left[19]~3_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A_left[17]~1_combout\) ) ) ) # ( !\A_left[19]~3_combout\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & 
-- \A_left[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[18]~2_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[17]~1_combout\,
	datad => \ALT_INV_A_left[16]~0_combout\,
	datae => \ALT_INV_A_left[19]~3_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][19]~34_combout\);

-- Location: MLABCELL_X37_Y51_N2
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \sll64[2][7]~13_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\) # (\sll64[2][15]~29_combout\) ) ) ) # ( !\sll64[2][7]~13_combout\ & ( \B[2]~input_o\ & ( (\sll64[2][15]~29_combout\ & !\B[3]~input_o\) ) ) ) # ( 
-- \sll64[2][7]~13_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\sll64[2][19]~34_combout\)) # (\B[3]~input_o\ & ((\sll64[2][11]~21_combout\))) ) ) ) # ( !\sll64[2][7]~13_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\sll64[2][19]~34_combout\)) 
-- # (\B[3]~input_o\ & ((\sll64[2][11]~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][19]~34_combout\,
	datab => \ALT_INV_sll64[2][15]~29_combout\,
	datac => \ALT_INV_sll64[2][11]~21_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_sll64[2][7]~13_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: MLABCELL_X37_Y51_N6
\Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( !\B[2]~input_o\ & ( (\Mux11~0_combout\ & (\sll64[2][3]~3_combout\ & !\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_sll64[2][3]~3_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LABCELL_X40_Y52_N12
\Mux12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( !\Mux12~1_combout\ & ( (!\Mux15~4_combout\ & ((!\Mux12~0_combout\) # (!\Mux15~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_Mux15~4_combout\,
	datad => \ALT_INV_Mux15~2_combout\,
	dataf => \ALT_INV_Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LABCELL_X40_Y52_N34
\Mux12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \srl64[3][19]~51_combout\ & ( \sra64[6][19]~9_combout\ & ( (\Mux15~6_combout\ & !\Mux29~8_combout\) ) ) ) # ( !\srl64[3][19]~51_combout\ & ( \sra64[6][19]~9_combout\ & ( (\Mux15~6_combout\ & !\Mux29~8_combout\) ) ) ) # ( 
-- \srl64[3][19]~51_combout\ & ( !\sra64[6][19]~9_combout\ & ( (\Mux15~6_combout\ & ((!\Mux29~8_combout\) # ((!\sra64[6][17]~7_combout\ & !\Y_sra[15]~2_combout\)))) ) ) ) # ( !\srl64[3][19]~51_combout\ & ( !\sra64[6][19]~9_combout\ & ( (\Mux15~6_combout\ & 
-- ((!\Mux29~8_combout\) # (!\sra64[6][17]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~6_combout\,
	datab => \ALT_INV_Mux29~8_combout\,
	datac => \ALT_INV_sra64[6][17]~7_combout\,
	datad => \ALT_INV_Y_sra[15]~2_combout\,
	datae => \ALT_INV_srl64[3][19]~51_combout\,
	dataf => \ALT_INV_sra64[6][19]~9_combout\,
	combout => \Mux12~3_combout\);

-- Location: LABCELL_X40_Y52_N36
\Mux12~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux5~0_combout\ & ( \srl64[5][19]~52_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux5~0_combout\ & ( \A[19]~input_o\ ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux5~0_combout\ & ( !\Mux12~3_combout\ ) ) ) # ( 
-- !\ShiftFN[1]~input_o\ & ( !\Mux5~0_combout\ & ( !\Mux12~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~2_combout\,
	datab => \ALT_INV_Mux12~3_combout\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_srl64[5][19]~52_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux12~4_combout\);

-- Location: MLABCELL_X39_Y50_N24
\A_left[20]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[20]~4_combout\ = (!\ExtWord~input_o\ & \A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	combout => \A_left[20]~4_combout\);

-- Location: MLABCELL_X39_Y50_N10
\sll64[2][20]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][20]~35_combout\ = ( \A_left[19]~3_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A_left[17]~1_combout\) ) ) ) # ( !\A_left[19]~3_combout\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A_left[17]~1_combout\) ) ) ) # ( \A_left[19]~3_combout\ & 
-- ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[20]~4_combout\))) # (\B[1]~input_o\ & (\A_left[18]~2_combout\)) ) ) ) # ( !\A_left[19]~3_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[20]~4_combout\))) # (\B[1]~input_o\ & 
-- (\A_left[18]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[18]~2_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[17]~1_combout\,
	datad => \ALT_INV_A_left[20]~4_combout\,
	datae => \ALT_INV_A_left[19]~3_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][20]~35_combout\);

-- Location: MLABCELL_X39_Y49_N4
\Mux11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \sll64[2][12]~23_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][8]~15_combout\) ) ) ) # ( !\sll64[2][12]~23_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][8]~15_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \sll64[2][12]~23_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][20]~35_combout\))) # (\B[2]~input_o\ & (\sll64[2][16]~31_combout\)) ) ) ) # ( !\sll64[2][12]~23_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][20]~35_combout\))) # (\B[2]~input_o\ & (\sll64[2][16]~31_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][16]~31_combout\,
	datab => \ALT_INV_sll64[2][8]~15_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][20]~35_combout\,
	datae => \ALT_INV_sll64[2][12]~23_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: MLABCELL_X39_Y49_N22
\Mux11~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \Mux11~0_combout\ & ( (!\sll64[4][4]~6_combout\ & (!\Mux15~4_combout\ & ((!\Mux11~1_combout\) # (!\Mux15~2_combout\)))) ) ) # ( !\Mux11~0_combout\ & ( (!\Mux15~4_combout\ & ((!\Mux11~1_combout\) # (!\Mux15~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~1_combout\,
	datab => \ALT_INV_sll64[4][4]~6_combout\,
	datac => \ALT_INV_Mux15~2_combout\,
	datad => \ALT_INV_Mux15~4_combout\,
	dataf => \ALT_INV_Mux11~0_combout\,
	combout => \Mux11~2_combout\);

-- Location: LABCELL_X40_Y52_N32
\Mux11~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = ( \srl64[3][20]~55_combout\ & ( \sra64[6][20]~12_combout\ & ( (\Mux15~6_combout\ & !\Mux29~8_combout\) ) ) ) # ( !\srl64[3][20]~55_combout\ & ( \sra64[6][20]~12_combout\ & ( (\Mux15~6_combout\ & !\Mux29~8_combout\) ) ) ) # ( 
-- \srl64[3][20]~55_combout\ & ( !\sra64[6][20]~12_combout\ & ( (\Mux15~6_combout\ & ((!\Mux29~8_combout\) # ((!\Y_sra[15]~2_combout\ & !\sra64[6][17]~7_combout\)))) ) ) ) # ( !\srl64[3][20]~55_combout\ & ( !\sra64[6][20]~12_combout\ & ( (\Mux15~6_combout\ & 
-- ((!\Mux29~8_combout\) # (!\sra64[6][17]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~6_combout\,
	datab => \ALT_INV_Mux29~8_combout\,
	datac => \ALT_INV_Y_sra[15]~2_combout\,
	datad => \ALT_INV_sra64[6][17]~7_combout\,
	datae => \ALT_INV_srl64[3][20]~55_combout\,
	dataf => \ALT_INV_sra64[6][20]~12_combout\,
	combout => \Mux11~3_combout\);

-- Location: MLABCELL_X39_Y52_N16
\Mux11~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux5~0_combout\ & ( \srl64[5][20]~56_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux5~0_combout\ & ( \A[20]~input_o\ ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux5~0_combout\ & ( !\Mux11~3_combout\ ) ) ) # ( 
-- !\ShiftFN[1]~input_o\ & ( !\Mux5~0_combout\ & ( !\Mux11~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111110000000000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[5][20]~56_combout\,
	datab => \ALT_INV_Mux11~2_combout\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_Mux11~3_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux11~4_combout\);

-- Location: MLABCELL_X42_Y52_N6
\Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \sra64[6][21]~15_combout\ & ( (!\Mux29~8_combout\ & \Mux15~6_combout\) ) ) # ( !\sra64[6][21]~15_combout\ & ( (\Mux15~6_combout\ & ((!\srl64[3][21]~58_combout\) # ((!\Y_sra[15]~2_combout\) # (!\Mux29~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][21]~58_combout\,
	datab => \ALT_INV_Y_sra[15]~2_combout\,
	datac => \ALT_INV_Mux29~8_combout\,
	datad => \ALT_INV_Mux15~6_combout\,
	dataf => \ALT_INV_sra64[6][21]~15_combout\,
	combout => \Mux10~2_combout\);

-- Location: MLABCELL_X39_Y50_N26
\A_left[21]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[21]~5_combout\ = (!\ExtWord~input_o\ & \A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	combout => \A_left[21]~5_combout\);

-- Location: MLABCELL_X39_Y50_N34
\sll64[2][21]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][21]~36_combout\ = ( \A_left[19]~3_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[20]~4_combout\))) # (\B[1]~input_o\ & (\A_left[18]~2_combout\)) ) ) ) # ( !\A_left[19]~3_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\A_left[20]~4_combout\))) # (\B[1]~input_o\ & (\A_left[18]~2_combout\)) ) ) ) # ( \A_left[19]~3_combout\ & ( !\B[0]~input_o\ & ( (\A_left[21]~5_combout\) # (\B[1]~input_o\) ) ) ) # ( !\A_left[19]~3_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- \A_left[21]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[18]~2_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[21]~5_combout\,
	datad => \ALT_INV_A_left[20]~4_combout\,
	datae => \ALT_INV_A_left[19]~3_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][21]~36_combout\);

-- Location: LABCELL_X43_Y52_N6
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \sll64[2][9]~17_combout\ & ( \sll64[2][21]~36_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\sll64[2][13]~25_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\sll64[2][17]~32_combout\))) ) ) ) # ( 
-- !\sll64[2][9]~17_combout\ & ( \sll64[2][21]~36_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\sll64[2][13]~25_combout\)))) # (\B[2]~input_o\ & (\sll64[2][17]~32_combout\ & (!\B[3]~input_o\))) ) ) ) # ( \sll64[2][9]~17_combout\ & ( 
-- !\sll64[2][21]~36_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\ & \sll64[2][13]~25_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\sll64[2][17]~32_combout\))) ) ) ) # ( !\sll64[2][9]~17_combout\ & ( !\sll64[2][21]~36_combout\ & ( 
-- (!\B[2]~input_o\ & (((\B[3]~input_o\ & \sll64[2][13]~25_combout\)))) # (\B[2]~input_o\ & (\sll64[2][17]~32_combout\ & (!\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][17]~32_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sll64[2][13]~25_combout\,
	datae => \ALT_INV_sll64[2][9]~17_combout\,
	dataf => \ALT_INV_sll64[2][21]~36_combout\,
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X42_Y52_N8
\Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \sll64[4][5]~9_combout\ & ( (!\Mux15~4_combout\ & (!\Mux11~0_combout\ & ((!\Mux10~0_combout\) # (!\Mux15~2_combout\)))) ) ) # ( !\sll64[4][5]~9_combout\ & ( (!\Mux15~4_combout\ & ((!\Mux10~0_combout\) # (!\Mux15~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~0_combout\,
	datab => \ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Mux15~4_combout\,
	datad => \ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_sll64[4][5]~9_combout\,
	combout => \Mux10~1_combout\);

-- Location: MLABCELL_X42_Y52_N36
\Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux10~1_combout\ & ( (!\Mux5~0_combout\ & ((!\Mux10~2_combout\))) # (\Mux5~0_combout\ & (\srl64[5][21]~59_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux10~1_combout\ & ( (\A[21]~input_o\ & 
-- \Mux5~0_combout\) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux10~1_combout\ & ( (!\Mux5~0_combout\ & ((!\Mux10~2_combout\))) # (\Mux5~0_combout\ & (\srl64[5][21]~59_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux10~1_combout\ & ( (!\Mux5~0_combout\) # 
-- (\A[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111110011000101010100000000000011111100110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[5][21]~59_combout\,
	datab => \ALT_INV_Mux10~2_combout\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux10~1_combout\,
	combout => \Mux10~3_combout\);

-- Location: MLABCELL_X39_Y51_N2
\A_left[22]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[22]~6_combout\ = ( \A[22]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \A_left[22]~6_combout\);

-- Location: MLABCELL_X39_Y50_N16
\sll64[2][22]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][22]~37_combout\ = ( \A_left[19]~3_combout\ & ( \B[0]~input_o\ & ( (\A_left[21]~5_combout\) # (\B[1]~input_o\) ) ) ) # ( !\A_left[19]~3_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A_left[21]~5_combout\) ) ) ) # ( \A_left[19]~3_combout\ & 
-- ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[22]~6_combout\)) # (\B[1]~input_o\ & ((\A_left[20]~4_combout\))) ) ) ) # ( !\A_left[19]~3_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[22]~6_combout\)) # (\B[1]~input_o\ & 
-- ((\A_left[20]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[22]~6_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[20]~4_combout\,
	datad => \ALT_INV_A_left[21]~5_combout\,
	datae => \ALT_INV_A_left[19]~3_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][22]~37_combout\);

-- Location: LABCELL_X38_Y52_N30
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \sll64[2][10]~19_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\sll64[2][14]~27_combout\) ) ) ) # ( !\sll64[2][10]~19_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][14]~27_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \sll64[2][10]~19_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][22]~37_combout\))) # (\B[2]~input_o\ & (\sll64[2][18]~33_combout\)) ) ) ) # ( !\sll64[2][10]~19_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][22]~37_combout\))) # (\B[2]~input_o\ & (\sll64[2][18]~33_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][18]~33_combout\,
	datab => \ALT_INV_sll64[2][14]~27_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][22]~37_combout\,
	datae => \ALT_INV_sll64[2][10]~19_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X43_Y52_N30
\Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \sll64[4][6]~11_combout\ & ( (!\Mux15~4_combout\ & (!\Mux11~0_combout\ & ((!\Mux15~2_combout\) # (!\Mux9~0_combout\)))) ) ) # ( !\sll64[4][6]~11_combout\ & ( (!\Mux15~4_combout\ & ((!\Mux15~2_combout\) # (!\Mux9~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~2_combout\,
	datab => \ALT_INV_Mux15~4_combout\,
	datac => \ALT_INV_Mux9~0_combout\,
	datad => \ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_sll64[4][6]~11_combout\,
	combout => \Mux9~1_combout\);

-- Location: MLABCELL_X42_Y51_N8
\Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \sra64[6][22]~16_combout\ & ( (\Mux15~6_combout\ & !\Mux29~8_combout\) ) ) # ( !\sra64[6][22]~16_combout\ & ( (\Mux15~6_combout\ & ((!\Y_sra[15]~2_combout\) # ((!\srl64[3][22]~61_combout\) # (!\Mux29~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~6_combout\,
	datab => \ALT_INV_Y_sra[15]~2_combout\,
	datac => \ALT_INV_srl64[3][22]~61_combout\,
	datad => \ALT_INV_Mux29~8_combout\,
	dataf => \ALT_INV_sra64[6][22]~16_combout\,
	combout => \Mux9~2_combout\);

-- Location: MLABCELL_X44_Y52_N32
\Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( \A[22]~input_o\ & ( \srl64[5][22]~62_combout\ & ( ((!\ShiftFN[1]~input_o\ & (!\Mux9~1_combout\)) # (\ShiftFN[1]~input_o\ & ((!\Mux9~2_combout\)))) # (\Mux5~0_combout\) ) ) ) # ( !\A[22]~input_o\ & ( \srl64[5][22]~62_combout\ & ( 
-- (!\Mux5~0_combout\ & ((!\ShiftFN[1]~input_o\ & (!\Mux9~1_combout\)) # (\ShiftFN[1]~input_o\ & ((!\Mux9~2_combout\))))) # (\Mux5~0_combout\ & (((\ShiftFN[1]~input_o\)))) ) ) ) # ( \A[22]~input_o\ & ( !\srl64[5][22]~62_combout\ & ( (!\Mux5~0_combout\ & 
-- ((!\ShiftFN[1]~input_o\ & (!\Mux9~1_combout\)) # (\ShiftFN[1]~input_o\ & ((!\Mux9~2_combout\))))) # (\Mux5~0_combout\ & (((!\ShiftFN[1]~input_o\)))) ) ) ) # ( !\A[22]~input_o\ & ( !\srl64[5][22]~62_combout\ & ( (!\Mux5~0_combout\ & ((!\ShiftFN[1]~input_o\ 
-- & (!\Mux9~1_combout\)) # (\ShiftFN[1]~input_o\ & ((!\Mux9~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010000000101111001011000010001111100000111011111110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~1_combout\,
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Mux9~2_combout\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_srl64[5][22]~62_combout\,
	combout => \Mux9~3_combout\);

-- Location: MLABCELL_X37_Y51_N32
\Mux8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \sll64[2][3]~3_combout\ & ( (\Mux11~0_combout\ & (!\B[3]~input_o\ & ((\sll64[2][7]~13_combout\) # (\B[2]~input_o\)))) ) ) # ( !\sll64[2][3]~3_combout\ & ( (!\B[2]~input_o\ & (\sll64[2][7]~13_combout\ & (\Mux11~0_combout\ & 
-- !\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000111000000000000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][7]~13_combout\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][3]~3_combout\,
	combout => \Mux8~1_combout\);

-- Location: MLABCELL_X39_Y51_N0
\A_left[23]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[23]~7_combout\ = (!\ExtWord~input_o\ & \A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	combout => \A_left[23]~7_combout\);

-- Location: MLABCELL_X39_Y51_N6
\sll64[2][23]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][23]~38_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A_left[20]~4_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A_left[22]~6_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A_left[21]~5_combout\ ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A_left[23]~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[22]~6_combout\,
	datab => \ALT_INV_A_left[20]~4_combout\,
	datac => \ALT_INV_A_left[21]~5_combout\,
	datad => \ALT_INV_A_left[23]~7_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][23]~38_combout\);

-- Location: MLABCELL_X37_Y51_N28
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \sll64[2][15]~29_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\sll64[2][19]~34_combout\)) # (\B[3]~input_o\ & ((\sll64[2][11]~21_combout\))) ) ) ) # ( !\sll64[2][15]~29_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\sll64[2][19]~34_combout\)) # (\B[3]~input_o\ & ((\sll64[2][11]~21_combout\))) ) ) ) # ( \sll64[2][15]~29_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\) # (\sll64[2][23]~38_combout\) ) ) ) # ( !\sll64[2][15]~29_combout\ & ( !\B[2]~input_o\ & ( 
-- (\sll64[2][23]~38_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][19]~34_combout\,
	datab => \ALT_INV_sll64[2][23]~38_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sll64[2][11]~21_combout\,
	datae => \ALT_INV_sll64[2][15]~29_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X37_Y51_N4
\Mux8~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \Mux15~2_combout\ & ( (!\Mux15~4_combout\ & (!\Mux8~1_combout\ & !\Mux8~0_combout\)) ) ) # ( !\Mux15~2_combout\ & ( (!\Mux15~4_combout\ & !\Mux8~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux15~4_combout\,
	datac => \ALT_INV_Mux8~1_combout\,
	datad => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Mux15~2_combout\,
	combout => \Mux8~2_combout\);

-- Location: LABCELL_X38_Y51_N26
\Mux8~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = ( \srl64[3][23]~64_combout\ & ( (\Mux15~6_combout\ & ((!\Mux29~8_combout\) # ((!\sra64[0][31]~0_combout\ & !\Y_sra[15]~2_combout\)))) ) ) # ( !\srl64[3][23]~64_combout\ & ( (\Mux15~6_combout\ & ((!\sra64[0][31]~0_combout\) # 
-- ((!\Mux29~8_combout\) # (\Y_sra[15]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011000000111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][31]~0_combout\,
	datab => \ALT_INV_Mux29~8_combout\,
	datac => \ALT_INV_Mux15~6_combout\,
	datad => \ALT_INV_Y_sra[15]~2_combout\,
	dataf => \ALT_INV_srl64[3][23]~64_combout\,
	combout => \Mux8~3_combout\);

-- Location: LABCELL_X38_Y51_N16
\Mux8~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux5~0_combout\ & ( \srl64[5][23]~65_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux5~0_combout\ & ( \A[23]~input_o\ ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux5~0_combout\ & ( !\Mux8~3_combout\ ) ) ) # ( 
-- !\ShiftFN[1]~input_o\ & ( !\Mux5~0_combout\ & ( !\Mux8~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111110000000000110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[5][23]~65_combout\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_Mux8~2_combout\,
	datad => \ALT_INV_Mux8~3_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux8~4_combout\);

-- Location: LABCELL_X38_Y49_N34
\Mux7~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \srl64[3][24]~4_combout\ & ( (\Mux15~6_combout\ & ((!\Mux29~8_combout\) # ((!\Y_sra[15]~2_combout\ & !\sra64[0][31]~0_combout\)))) ) ) # ( !\srl64[3][24]~4_combout\ & ( (\Mux15~6_combout\ & (((!\Mux29~8_combout\) # 
-- (!\sra64[0][31]~0_combout\)) # (\Y_sra[15]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111101000000001111110100000000111011000000000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sra[15]~2_combout\,
	datab => \ALT_INV_Mux29~8_combout\,
	datac => \ALT_INV_sra64[0][31]~0_combout\,
	datad => \ALT_INV_Mux15~6_combout\,
	dataf => \ALT_INV_srl64[3][24]~4_combout\,
	combout => \Mux7~2_combout\);

-- Location: MLABCELL_X39_Y48_N4
\srl64[5][24]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \srl64[5][24]~69_combout\ = ( \sll64[6][0]~12_combout\ & ( \srl64[3][24]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[3][24]~4_combout\,
	dataf => \ALT_INV_sll64[6][0]~12_combout\,
	combout => \srl64[5][24]~69_combout\);

-- Location: LABCELL_X40_Y51_N16
\A_left[24]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[24]~8_combout\ = (!\ExtWord~input_o\ & \A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	combout => \A_left[24]~8_combout\);

-- Location: MLABCELL_X39_Y51_N28
\sll64[2][24]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][24]~39_combout\ = ( \A_left[24]~8_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[23]~7_combout\)) # (\B[1]~input_o\ & ((\A_left[21]~5_combout\))) ) ) ) # ( !\A_left[24]~8_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A_left[23]~7_combout\)) # (\B[1]~input_o\ & ((\A_left[21]~5_combout\))) ) ) ) # ( \A_left[24]~8_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A_left[22]~6_combout\) ) ) ) # ( !\A_left[24]~8_combout\ & ( !\B[0]~input_o\ & ( 
-- (\A_left[22]~6_combout\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[22]~6_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[23]~7_combout\,
	datad => \ALT_INV_A_left[21]~5_combout\,
	datae => \ALT_INV_A_left[24]~8_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][24]~39_combout\);

-- Location: MLABCELL_X39_Y49_N30
\Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \sll64[2][24]~39_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][16]~31_combout\))) # (\B[2]~input_o\ & (\sll64[2][12]~23_combout\)) ) ) ) # ( !\sll64[2][24]~39_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][16]~31_combout\))) # (\B[2]~input_o\ & (\sll64[2][12]~23_combout\)) ) ) ) # ( \sll64[2][24]~39_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][20]~35_combout\) ) ) ) # ( !\sll64[2][24]~39_combout\ & ( !\B[3]~input_o\ & ( 
-- (\B[2]~input_o\ & \sll64[2][20]~35_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_sll64[2][12]~23_combout\,
	datac => \ALT_INV_sll64[2][20]~35_combout\,
	datad => \ALT_INV_sll64[2][16]~31_combout\,
	datae => \ALT_INV_sll64[2][24]~39_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X39_Y49_N14
\Mux7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \sll64[4][8]~16_combout\ & ( (!\Mux15~4_combout\ & (!\Mux11~0_combout\ & ((!\Mux7~0_combout\) # (!\Mux15~2_combout\)))) ) ) # ( !\sll64[4][8]~16_combout\ & ( (!\Mux15~4_combout\ & ((!\Mux7~0_combout\) # (!\Mux15~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~4_combout\,
	datab => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_Mux15~2_combout\,
	dataf => \ALT_INV_sll64[4][8]~16_combout\,
	combout => \Mux7~1_combout\);

-- Location: MLABCELL_X44_Y52_N38
\Mux7~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = ( \Mux7~1_combout\ & ( \A[24]~input_o\ & ( (!\Mux5~0_combout\ & (!\Mux7~2_combout\ & ((\ShiftFN[1]~input_o\)))) # (\Mux5~0_combout\ & (((!\ShiftFN[1]~input_o\) # (\srl64[5][24]~69_combout\)))) ) ) ) # ( !\Mux7~1_combout\ & ( 
-- \A[24]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\Mux5~0_combout\ & (!\Mux7~2_combout\)) # (\Mux5~0_combout\ & ((\srl64[5][24]~69_combout\)))) ) ) ) # ( \Mux7~1_combout\ & ( !\A[24]~input_o\ & ( (\ShiftFN[1]~input_o\ & ((!\Mux5~0_combout\ & 
-- (!\Mux7~2_combout\)) # (\Mux5~0_combout\ & ((\srl64[5][24]~69_combout\))))) ) ) ) # ( !\Mux7~1_combout\ & ( !\A[24]~input_o\ & ( (!\Mux5~0_combout\ & ((!\Mux7~2_combout\) # ((!\ShiftFN[1]~input_o\)))) # (\Mux5~0_combout\ & (((\srl64[5][24]~69_combout\ & 
-- \ShiftFN[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100011000000001010001111111111101000110000111110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~2_combout\,
	datab => \ALT_INV_srl64[5][24]~69_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Mux7~1_combout\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: MLABCELL_X42_Y51_N10
\Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \sra64[0][31]~0_combout\ & ( (!\Mux15~6_combout\) # ((\Mux29~8_combout\ & ((!\Y_sra[15]~2_combout\) # (\sra64[3][25]~2_combout\)))) ) ) # ( !\sra64[0][31]~0_combout\ & ( (!\Mux15~6_combout\) # ((\Y_sra[15]~2_combout\ & 
-- (\sra64[3][25]~2_combout\ & \Mux29~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101011101010101010101110101010111011111010101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~6_combout\,
	datab => \ALT_INV_Y_sra[15]~2_combout\,
	datac => \ALT_INV_sra64[3][25]~2_combout\,
	datad => \ALT_INV_Mux29~8_combout\,
	dataf => \ALT_INV_sra64[0][31]~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X40_Y51_N18
\A_left[25]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[25]~9_combout\ = ( \A[25]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \A_left[25]~9_combout\);

-- Location: MLABCELL_X39_Y51_N14
\sll64[2][25]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][25]~40_combout\ = ( \A_left[24]~8_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A_left[22]~6_combout\) ) ) ) # ( !\A_left[24]~8_combout\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A_left[22]~6_combout\) ) ) ) # ( \A_left[24]~8_combout\ & 
-- ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[25]~9_combout\)) # (\B[1]~input_o\ & ((\A_left[23]~7_combout\))) ) ) ) # ( !\A_left[24]~8_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[25]~9_combout\)) # (\B[1]~input_o\ & 
-- ((\A_left[23]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[25]~9_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[22]~6_combout\,
	datad => \ALT_INV_A_left[23]~7_combout\,
	datae => \ALT_INV_A_left[24]~8_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][25]~40_combout\);

-- Location: LABCELL_X43_Y52_N34
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \B[2]~input_o\ & ( \sll64[2][25]~40_combout\ & ( (!\B[3]~input_o\ & (\sll64[2][21]~36_combout\)) # (\B[3]~input_o\ & ((\sll64[2][13]~25_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \sll64[2][25]~40_combout\ & ( (!\B[3]~input_o\) # 
-- (\sll64[2][17]~32_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\sll64[2][25]~40_combout\ & ( (!\B[3]~input_o\ & (\sll64[2][21]~36_combout\)) # (\B[3]~input_o\ & ((\sll64[2][13]~25_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\sll64[2][25]~40_combout\ & ( 
-- (\sll64[2][17]~32_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][21]~36_combout\,
	datab => \ALT_INV_sll64[2][17]~32_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sll64[2][13]~25_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_sll64[2][25]~40_combout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X43_Y52_N28
\Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \sll64[4][9]~18_combout\ & ( (((\Mux15~2_combout\ & \Mux6~0_combout\)) # (\Mux11~0_combout\)) # (\Mux15~4_combout\) ) ) # ( !\sll64[4][9]~18_combout\ & ( ((\Mux15~2_combout\ & \Mux6~0_combout\)) # (\Mux15~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~2_combout\,
	datab => \ALT_INV_Mux15~4_combout\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_sll64[4][9]~18_combout\,
	combout => \Mux6~1_combout\);

-- Location: LABCELL_X43_Y52_N20
\Mux6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( !\ShiftFN[1]~input_o\ & ( ((!\Mux5~0_combout\ & (((\Mux6~1_combout\)))) # (\Mux5~0_combout\ & (\A[25]~input_o\))) ) ) # ( \ShiftFN[1]~input_o\ & ( ((!\Mux5~0_combout\ & (((\Mux6~2_combout\)))) # (\Mux5~0_combout\ & 
-- (\srl64[3][25]~27_combout\ & (\sll64[6][0]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000000000000010100001111001100111111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][25]~27_combout\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_sll64[6][0]~12_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux6~2_combout\,
	datag => \ALT_INV_Mux6~1_combout\,
	combout => \Mux6~3_combout\);

-- Location: MLABCELL_X39_Y52_N28
\Mux5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( \Mux15~6_combout\ & ( (\Mux29~8_combout\ & ((!\Y_sra[15]~2_combout\ & ((\sra64[0][31]~0_combout\))) # (\Y_sra[15]~2_combout\ & (\sra64[3][26]~5_combout\)))) ) ) # ( !\Mux15~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000011000001010000001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[3][26]~5_combout\,
	datab => \ALT_INV_sra64[0][31]~0_combout\,
	datac => \ALT_INV_Mux29~8_combout\,
	datad => \ALT_INV_Y_sra[15]~2_combout\,
	dataf => \ALT_INV_Mux15~6_combout\,
	combout => \Mux5~3_combout\);

-- Location: MLABCELL_X37_Y52_N36
\A_left[26]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[26]~10_combout\ = (!\ExtWord~input_o\ & \A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	combout => \A_left[26]~10_combout\);

-- Location: MLABCELL_X39_Y51_N16
\sll64[2][26]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][26]~41_combout\ = ( \A_left[24]~8_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[25]~9_combout\)) # (\B[1]~input_o\ & ((\A_left[23]~7_combout\))) ) ) ) # ( !\A_left[24]~8_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A_left[25]~9_combout\)) # (\B[1]~input_o\ & ((\A_left[23]~7_combout\))) ) ) ) # ( \A_left[24]~8_combout\ & ( !\B[0]~input_o\ & ( (\A_left[26]~10_combout\) # (\B[1]~input_o\) ) ) ) # ( !\A_left[24]~8_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- \A_left[26]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[25]~9_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[23]~7_combout\,
	datad => \ALT_INV_A_left[26]~10_combout\,
	datae => \ALT_INV_A_left[24]~8_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][26]~41_combout\);

-- Location: LABCELL_X38_Y52_N32
\Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \sll64[2][26]~41_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\sll64[2][18]~33_combout\))) # (\B[2]~input_o\ & (\sll64[2][14]~27_combout\)) ) ) ) # ( !\sll64[2][26]~41_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\sll64[2][18]~33_combout\))) # (\B[2]~input_o\ & (\sll64[2][14]~27_combout\)) ) ) ) # ( \sll64[2][26]~41_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\sll64[2][22]~37_combout\) ) ) ) # ( !\sll64[2][26]~41_combout\ & ( !\B[3]~input_o\ & ( 
-- (\sll64[2][22]~37_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][22]~37_combout\,
	datab => \ALT_INV_sll64[2][14]~27_combout\,
	datac => \ALT_INV_sll64[2][18]~33_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[2][26]~41_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: MLABCELL_X39_Y52_N8
\Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \Mux5~1_combout\ & ( (((\sll64[4][10]~20_combout\ & \Mux11~0_combout\)) # (\Mux15~4_combout\)) # (\Mux15~2_combout\) ) ) # ( !\Mux5~1_combout\ & ( ((\sll64[4][10]~20_combout\ & \Mux11~0_combout\)) # (\Mux15~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[4][10]~20_combout\,
	datab => \ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Mux15~4_combout\,
	datad => \ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: MLABCELL_X39_Y52_N0
\Mux5~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ( !\ShiftFN[1]~input_o\ & ( (((!\Mux5~0_combout\ & ((\Mux5~2_combout\))) # (\Mux5~0_combout\ & (\A[26]~input_o\)))) ) ) # ( \ShiftFN[1]~input_o\ & ( ((!\Mux5~0_combout\ & (((\Mux5~3_combout\)))) # (\Mux5~0_combout\ & 
-- (!\srl64[3][26]~46_combout\ & (\sll64[6][0]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000001111111101010101010101010000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_srl64[3][26]~46_combout\,
	datac => \ALT_INV_sll64[6][0]~12_combout\,
	datad => \ALT_INV_Mux5~3_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux5~0_combout\,
	datag => \ALT_INV_Mux5~2_combout\,
	combout => \Mux5~4_combout\);

-- Location: LABCELL_X40_Y52_N16
\Mux4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \sra64[3][27]~11_combout\ & ( (!\Mux15~6_combout\) # ((\Mux29~8_combout\ & ((\sra64[0][31]~0_combout\) # (\Y_sra[15]~2_combout\)))) ) ) # ( !\sra64[3][27]~11_combout\ & ( (!\Mux15~6_combout\) # ((!\Y_sra[15]~2_combout\ & 
-- (\sra64[0][31]~0_combout\ & \Mux29~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110010111100001111001011110000111101111111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_sra[15]~2_combout\,
	datab => \ALT_INV_sra64[0][31]~0_combout\,
	datac => \ALT_INV_Mux15~6_combout\,
	datad => \ALT_INV_Mux29~8_combout\,
	dataf => \ALT_INV_sra64[3][27]~11_combout\,
	combout => \Mux4~2_combout\);

-- Location: MLABCELL_X37_Y52_N38
\A_left[27]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[27]~11_combout\ = (!\ExtWord~input_o\ & \A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	combout => \A_left[27]~11_combout\);

-- Location: MLABCELL_X39_Y51_N22
\sll64[2][27]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][27]~42_combout\ = ( \A_left[24]~8_combout\ & ( \B[0]~input_o\ & ( (\A_left[26]~10_combout\) # (\B[1]~input_o\) ) ) ) # ( !\A_left[24]~8_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A_left[26]~10_combout\) ) ) ) # ( \A_left[24]~8_combout\ 
-- & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[27]~11_combout\))) # (\B[1]~input_o\ & (\A_left[25]~9_combout\)) ) ) ) # ( !\A_left[24]~8_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A_left[27]~11_combout\))) # (\B[1]~input_o\ & 
-- (\A_left[25]~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[25]~9_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[26]~10_combout\,
	datad => \ALT_INV_A_left[27]~11_combout\,
	datae => \ALT_INV_A_left[24]~8_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][27]~42_combout\);

-- Location: MLABCELL_X37_Y51_N14
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \sll64[2][15]~29_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\) # (\sll64[2][23]~38_combout\) ) ) ) # ( !\sll64[2][15]~29_combout\ & ( \B[2]~input_o\ & ( (\sll64[2][23]~38_combout\ & !\B[3]~input_o\) ) ) ) # ( 
-- \sll64[2][15]~29_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\sll64[2][27]~42_combout\))) # (\B[3]~input_o\ & (\sll64[2][19]~34_combout\)) ) ) ) # ( !\sll64[2][15]~29_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\sll64[2][27]~42_combout\))) # (\B[3]~input_o\ & (\sll64[2][19]~34_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][19]~34_combout\,
	datab => \ALT_INV_sll64[2][27]~42_combout\,
	datac => \ALT_INV_sll64[2][23]~38_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_sll64[2][15]~29_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X40_Y52_N26
\Mux4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \Mux15~2_combout\ & ( (((\sll64[4][11]~22_combout\ & \Mux11~0_combout\)) # (\Mux4~0_combout\)) # (\Mux15~4_combout\) ) ) # ( !\Mux15~2_combout\ & ( ((\sll64[4][11]~22_combout\ & \Mux11~0_combout\)) # (\Mux15~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~4_combout\,
	datab => \ALT_INV_sll64[4][11]~22_combout\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Mux15~2_combout\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X40_Y52_N20
\Mux4~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( !\ShiftFN[1]~input_o\ & ( (((!\Mux5~0_combout\ & ((\Mux4~1_combout\))) # (\Mux5~0_combout\ & (\A[27]~input_o\)))) ) ) # ( \ShiftFN[1]~input_o\ & ( ((!\Mux5~0_combout\ & (((\Mux4~2_combout\)))) # (\Mux5~0_combout\ & 
-- (\srl64[3][27]~50_combout\ & (\sll64[6][0]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000001111111100110011001100110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[3][27]~50_combout\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_sll64[6][0]~12_combout\,
	datad => \ALT_INV_Mux4~2_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux5~0_combout\,
	datag => \ALT_INV_Mux4~1_combout\,
	combout => \Mux4~3_combout\);

-- Location: MLABCELL_X42_Y49_N4
\Mux3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( \sra64[3][28]~14_combout\ & ( (\Mux15~6_combout\ & ((!\Mux29~8_combout\) # ((!\sra64[0][31]~0_combout\ & !\Y_sra[15]~2_combout\)))) ) ) # ( !\sra64[3][28]~14_combout\ & ( (\Mux15~6_combout\ & ((!\sra64[0][31]~0_combout\) # 
-- ((!\Mux29~8_combout\) # (\Y_sra[15]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011000000111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][31]~0_combout\,
	datab => \ALT_INV_Mux29~8_combout\,
	datac => \ALT_INV_Mux15~6_combout\,
	datad => \ALT_INV_Y_sra[15]~2_combout\,
	dataf => \ALT_INV_sra64[3][28]~14_combout\,
	combout => \Mux3~3_combout\);

-- Location: LABCELL_X38_Y50_N26
\A_left[28]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[28]~12_combout\ = (!\ExtWord~input_o\ & \A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	combout => \A_left[28]~12_combout\);

-- Location: MLABCELL_X39_Y51_N24
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \A_left[25]~9_combout\ & ( \B[0]~input_o\ & ( (\A_left[27]~11_combout\) # (\B[1]~input_o\) ) ) ) # ( !\A_left[25]~9_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A_left[27]~11_combout\) ) ) ) # ( \A_left[25]~9_combout\ & ( 
-- !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[28]~12_combout\)) # (\B[1]~input_o\ & ((\A_left[26]~10_combout\))) ) ) ) # ( !\A_left[25]~9_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[28]~12_combout\)) # (\B[1]~input_o\ & 
-- ((\A_left[26]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[28]~12_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[27]~11_combout\,
	datad => \ALT_INV_A_left[26]~10_combout\,
	datae => \ALT_INV_A_left[25]~9_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X39_Y49_N38
\Mux3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \sll64[2][16]~31_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\sll64[2][20]~35_combout\) ) ) ) # ( !\sll64[2][16]~31_combout\ & ( \B[3]~input_o\ & ( (\sll64[2][20]~35_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \sll64[2][16]~31_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Mux3~0_combout\)) # (\B[2]~input_o\ & ((\sll64[2][24]~39_combout\))) ) ) ) # ( !\sll64[2][16]~31_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Mux3~0_combout\)) # 
-- (\B[2]~input_o\ & ((\sll64[2][24]~39_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_sll64[2][20]~35_combout\,
	datac => \ALT_INV_sll64[2][24]~39_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_sll64[2][16]~31_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: MLABCELL_X39_Y49_N12
\Mux3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \Mux3~1_combout\ & ( (!\Mux15~4_combout\ & (!\Mux15~2_combout\ & ((!\Mux11~0_combout\) # (!\sll64[4][12]~24_combout\)))) ) ) # ( !\Mux3~1_combout\ & ( (!\Mux15~4_combout\ & ((!\Mux11~0_combout\) # (!\sll64[4][12]~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010001010100010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~4_combout\,
	datab => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_sll64[4][12]~24_combout\,
	datad => \ALT_INV_Mux15~2_combout\,
	dataf => \ALT_INV_Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: MLABCELL_X42_Y49_N16
\Mux3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux3~2_combout\ & ( (!\Mux5~0_combout\ & ((!\Mux3~3_combout\))) # (\Mux5~0_combout\ & (\srl64[5][28]~70_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux3~2_combout\ & ( (\A[28]~input_o\ & \Mux5~0_combout\) 
-- ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux3~2_combout\ & ( (!\Mux5~0_combout\ & ((!\Mux3~3_combout\))) # (\Mux5~0_combout\ & (\srl64[5][28]~70_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux3~2_combout\ & ( (!\Mux5~0_combout\) # (\A[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111100000101010100000000001100111111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[5][28]~70_combout\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_Mux3~3_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux3~2_combout\,
	combout => \Mux3~4_combout\);

-- Location: MLABCELL_X42_Y51_N14
\Mux2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \srl64[1][29]~24_combout\ & ( \Mux15~0_combout\ & ( (\Mux15~6_combout\ & ((!\Mux29~8_combout\) # ((!\sra64[0][31]~0_combout\ & !\Y_sra[15]~2_combout\)))) ) ) ) # ( !\srl64[1][29]~24_combout\ & ( \Mux15~0_combout\ & ( 
-- (\Mux15~6_combout\ & ((!\sra64[0][31]~0_combout\) # ((!\Mux29~8_combout\) # (\Y_sra[15]~2_combout\)))) ) ) ) # ( \srl64[1][29]~24_combout\ & ( !\Mux15~0_combout\ & ( (\Mux15~6_combout\ & ((!\sra64[0][31]~0_combout\) # (!\Mux29~8_combout\))) ) ) ) # ( 
-- !\srl64[1][29]~24_combout\ & ( !\Mux15~0_combout\ & ( (\Mux15~6_combout\ & ((!\sra64[0][31]~0_combout\) # (!\Mux29~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000000111110110000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra64[0][31]~0_combout\,
	datab => \ALT_INV_Y_sra[15]~2_combout\,
	datac => \ALT_INV_Mux29~8_combout\,
	datad => \ALT_INV_Mux15~6_combout\,
	datae => \ALT_INV_srl64[1][29]~24_combout\,
	dataf => \ALT_INV_Mux15~0_combout\,
	combout => \Mux2~3_combout\);

-- Location: MLABCELL_X42_Y51_N2
\A_left[29]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \A_left[29]~13_combout\ = ( !\ExtWord~input_o\ & ( \A[29]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \A_left[29]~13_combout\);

-- Location: MLABCELL_X39_Y51_N8
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \A_left[29]~13_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A_left[28]~12_combout\)) # (\B[1]~input_o\ & ((\A_left[26]~10_combout\))) ) ) ) # ( !\A_left[29]~13_combout\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A_left[28]~12_combout\)) # (\B[1]~input_o\ & ((\A_left[26]~10_combout\))) ) ) ) # ( \A_left[29]~13_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A_left[27]~11_combout\) ) ) ) # ( !\A_left[29]~13_combout\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ 
-- & \A_left[27]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[28]~12_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[27]~11_combout\,
	datad => \ALT_INV_A_left[26]~10_combout\,
	datae => \ALT_INV_A_left[29]~13_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X43_Y52_N36
\Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \Mux2~0_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\sll64[2][25]~40_combout\)) # (\B[3]~input_o\ & ((\sll64[2][17]~32_combout\))) ) ) ) # ( !\Mux2~0_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\sll64[2][25]~40_combout\)) # (\B[3]~input_o\ & ((\sll64[2][17]~32_combout\))) ) ) ) # ( \Mux2~0_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\sll64[2][21]~36_combout\) ) ) ) # ( !\Mux2~0_combout\ & ( !\B[2]~input_o\ & ( 
-- (\sll64[2][21]~36_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][21]~36_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sll64[2][25]~40_combout\,
	datad => \ALT_INV_sll64[2][17]~32_combout\,
	datae => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X43_Y52_N14
\Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \sll64[4][13]~26_combout\ & ( (!\Mux11~0_combout\ & (!\Mux15~4_combout\ & ((!\Mux2~1_combout\) # (!\Mux15~2_combout\)))) ) ) # ( !\sll64[4][13]~26_combout\ & ( (!\Mux15~4_combout\ & ((!\Mux2~1_combout\) # (!\Mux15~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~0_combout\,
	datab => \ALT_INV_Mux2~1_combout\,
	datac => \ALT_INV_Mux15~4_combout\,
	datad => \ALT_INV_Mux15~2_combout\,
	dataf => \ALT_INV_sll64[4][13]~26_combout\,
	combout => \Mux2~2_combout\);

-- Location: MLABCELL_X42_Y51_N16
\Mux2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( \Mux2~2_combout\ & ( \Mux5~0_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\A[29]~input_o\))) # (\ShiftFN[1]~input_o\ & (\srl64[5][29]~71_combout\)) ) ) ) # ( !\Mux2~2_combout\ & ( \Mux5~0_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- ((\A[29]~input_o\))) # (\ShiftFN[1]~input_o\ & (\srl64[5][29]~71_combout\)) ) ) ) # ( \Mux2~2_combout\ & ( !\Mux5~0_combout\ & ( (\ShiftFN[1]~input_o\ & !\Mux2~3_combout\) ) ) ) # ( !\Mux2~2_combout\ & ( !\Mux5~0_combout\ & ( (!\ShiftFN[1]~input_o\) # 
-- (!\Mux2~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000000011110000000000110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl64[5][29]~71_combout\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Mux2~3_combout\,
	datae => \ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: LABCELL_X38_Y49_N10
\Y_sra[30]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sra[30]~5_combout\ = ( \Mux15~0_combout\ & ( \srl64[1][30]~3_combout\ & ( (!\ExtWord~input_o\ & (((\Y_sra[15]~2_combout\) # (\A[31]~input_o\)))) # (\ExtWord~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\Mux15~0_combout\ & ( \srl64[1][30]~3_combout\ & ( 
-- (!\ExtWord~input_o\ & ((\A[31]~input_o\))) # (\ExtWord~input_o\ & (\A[15]~input_o\)) ) ) ) # ( \Mux15~0_combout\ & ( !\srl64[1][30]~3_combout\ & ( (!\ExtWord~input_o\ & (((\A[31]~input_o\ & !\Y_sra[15]~2_combout\)))) # (\ExtWord~input_o\ & 
-- (\A[15]~input_o\)) ) ) ) # ( !\Mux15~0_combout\ & ( !\srl64[1][30]~3_combout\ & ( (!\ExtWord~input_o\ & ((\A[31]~input_o\))) # (\ExtWord~input_o\ & (\A[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010000010100110101001101010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Y_sra[15]~2_combout\,
	datae => \ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_srl64[1][30]~3_combout\,
	combout => \Y_sra[30]~5_combout\);

-- Location: MLABCELL_X39_Y51_N34
\sll64[2][30]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][30]~43_combout\ = ( \A_left[27]~11_combout\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A_left[29]~13_combout\) ) ) ) # ( !\A_left[27]~11_combout\ & ( \B[0]~input_o\ & ( (\A_left[29]~13_combout\ & !\B[1]~input_o\) ) ) ) # ( 
-- \A_left[27]~11_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[30]~input_o\)) # (\B[1]~input_o\ & ((\A_left[28]~12_combout\))) ) ) ) # ( !\A_left[27]~11_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[30]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A_left[28]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[29]~13_combout\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A_left[28]~12_combout\,
	datae => \ALT_INV_A_left[27]~11_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][30]~43_combout\);

-- Location: LABCELL_X38_Y52_N38
\sll64[4][30]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][30]~44_combout\ = ( \sll64[2][26]~41_combout\ & ( \sll64[2][30]~43_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\sll64[2][22]~37_combout\)) # (\B[2]~input_o\ & ((\sll64[2][18]~33_combout\)))) ) ) ) # ( !\sll64[2][26]~41_combout\ & ( 
-- \sll64[2][30]~43_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\sll64[2][22]~37_combout\))) # (\B[2]~input_o\ & (((\B[3]~input_o\ & \sll64[2][18]~33_combout\)))) ) ) ) # ( \sll64[2][26]~41_combout\ & ( !\sll64[2][30]~43_combout\ & ( 
-- (!\B[2]~input_o\ & (\sll64[2][22]~37_combout\ & (\B[3]~input_o\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\sll64[2][18]~33_combout\)))) ) ) ) # ( !\sll64[2][26]~41_combout\ & ( !\sll64[2][30]~43_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & 
-- (\sll64[2][22]~37_combout\)) # (\B[2]~input_o\ & ((\sll64[2][18]~33_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][22]~37_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sll64[2][18]~33_combout\,
	datae => \ALT_INV_sll64[2][26]~41_combout\,
	dataf => \ALT_INV_sll64[2][30]~43_combout\,
	combout => \sll64[4][30]~44_combout\);

-- Location: LABCELL_X38_Y52_N22
\Y_sll[30]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sll[30]~0_combout\ = ( \sll64[4][30]~44_combout\ & ( (!\Mux15~4_combout\ & ((!\Y_srl[1]~3_combout\) # ((!\sll64[4][14]~28_combout\ & \B[4]~input_o\)))) ) ) # ( !\sll64[4][30]~44_combout\ & ( (!\Mux15~4_combout\ & ((!\Y_srl[1]~3_combout\) # 
-- ((!\sll64[4][14]~28_combout\) # (!\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000110011001100100010001000110010001000100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_srl[1]~3_combout\,
	datab => \ALT_INV_Mux15~4_combout\,
	datac => \ALT_INV_sll64[4][14]~28_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_sll64[4][30]~44_combout\,
	combout => \Y_sll[30]~0_combout\);

-- Location: LABCELL_X38_Y49_N4
\Y_srl[30]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[30]~7_combout\ = ( \Mux15~0_combout\ & ( \srl64[1][30]~3_combout\ & ( (\sll64[6][0]~12_combout\ & (((!\B[5]~input_o\ & !\ExtWord~input_o\)) # (\Y_srl[15]~4_combout\))) ) ) ) # ( \Mux15~0_combout\ & ( !\srl64[1][30]~3_combout\ & ( 
-- (\sll64[6][0]~12_combout\ & \Y_srl[15]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000010001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_sll64[6][0]~12_combout\,
	datac => \ALT_INV_Y_srl[15]~4_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_srl64[1][30]~3_combout\,
	combout => \Y_srl[30]~7_combout\);

-- Location: LABCELL_X38_Y49_N12
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Y_srl[30]~7_combout\ & ( \A[30]~input_o\ & ( (!\ShiftFN[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & ((!\Y_sll[30]~0_combout\))) # (\ShiftFN[1]~input_o\ & (\Y_sra[30]~5_combout\))) ) ) ) # ( !\Y_srl[30]~7_combout\ & ( \A[30]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\) # (!\Y_sll[30]~0_combout\)))) # (\ShiftFN[1]~input_o\ & (\Y_sra[30]~5_combout\ & (\ShiftFN[0]~input_o\))) ) ) ) # ( \Y_srl[30]~7_combout\ & ( !\A[30]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (((\ShiftFN[0]~input_o\ & !\Y_sll[30]~0_combout\)))) # (\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\)) # (\Y_sra[30]~5_combout\))) ) ) ) # ( !\Y_srl[30]~7_combout\ & ( !\A[30]~input_o\ & ( (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & 
-- ((!\Y_sll[30]~0_combout\))) # (\ShiftFN[1]~input_o\ & (\Y_sra[30]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100000001010110110101000110101011101000011111101111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Y_sra[30]~5_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Y_sll[30]~0_combout\,
	datae => \ALT_INV_Y_srl[30]~7_combout\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X38_Y49_N26
\Y_srl[31]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_srl[31]~8_combout\ = ( \sll64[6][0]~0_combout\ & ( \srl64[2][29]~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl64[2][29]~23_combout\,
	dataf => \ALT_INV_sll64[6][0]~0_combout\,
	combout => \Y_srl[31]~8_combout\);

-- Location: MLABCELL_X39_Y51_N36
\sll64[2][31]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[2][31]~45_combout\ = ( \A[30]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A_left[28]~12_combout\) ) ) ) # ( !\A[30]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A_left[28]~12_combout\) ) ) ) # ( \A[30]~input_o\ & ( !\B[0]~input_o\ & 
-- ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # (\B[1]~input_o\ & (\A_left[29]~13_combout\)) ) ) ) # ( !\A[30]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # (\B[1]~input_o\ & (\A_left[29]~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_left[29]~13_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A_left[28]~12_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \sll64[2][31]~45_combout\);

-- Location: MLABCELL_X37_Y51_N36
\sll64[4][31]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \sll64[4][31]~46_combout\ = ( \B[3]~input_o\ & ( \sll64[2][31]~45_combout\ & ( (!\B[2]~input_o\ & ((\sll64[2][23]~38_combout\))) # (\B[2]~input_o\ & (\sll64[2][19]~34_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \sll64[2][31]~45_combout\ & ( (!\B[2]~input_o\) 
-- # (\sll64[2][27]~42_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\sll64[2][31]~45_combout\ & ( (!\B[2]~input_o\ & ((\sll64[2][23]~38_combout\))) # (\B[2]~input_o\ & (\sll64[2][19]~34_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( !\sll64[2][31]~45_combout\ & ( 
-- (\sll64[2][27]~42_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll64[2][19]~34_combout\,
	datab => \ALT_INV_sll64[2][27]~42_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_sll64[2][23]~38_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_sll64[2][31]~45_combout\,
	combout => \sll64[4][31]~46_combout\);

-- Location: LABCELL_X38_Y49_N20
\Y_sll[31]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_sll[31]~1_combout\ = ( \sll64[4][15]~30_combout\ & ( (!\ExtWord~input_o\ & (!\B[5]~input_o\ & ((\sll64[4][31]~46_combout\) # (\B[4]~input_o\)))) # (\ExtWord~input_o\ & (!\B[4]~input_o\)) ) ) # ( !\sll64[4][15]~30_combout\ & ( (!\B[4]~input_o\ & 
-- (!\ExtWord~input_o\ & (!\B[5]~input_o\ & \sll64[4][31]~46_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000001100010111000100110001011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_sll64[4][31]~46_combout\,
	dataf => \ALT_INV_sll64[4][15]~30_combout\,
	combout => \Y_sll[31]~1_combout\);

-- Location: LABCELL_X38_Y49_N36
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \A[31]~input_o\ & ( \Y_sll[31]~1_combout\ & ( (!\ShiftFN[1]~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\Y_srl[31]~8_combout\))) # (\ShiftFN[0]~input_o\ & (\sra64[0][31]~0_combout\))) ) ) ) # ( !\A[31]~input_o\ & ( \Y_sll[31]~1_combout\ & 
-- ( (!\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Y_srl[31]~8_combout\))) # (\ShiftFN[0]~input_o\ & (\sra64[0][31]~0_combout\)))) ) ) ) # ( \A[31]~input_o\ & ( !\Y_sll[31]~1_combout\ & ( 
-- (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Y_srl[31]~8_combout\))) # (\ShiftFN[0]~input_o\ & (\sra64[0][31]~0_combout\)))) ) ) ) # ( !\A[31]~input_o\ & ( !\Y_sll[31]~1_combout\ & ( 
-- (\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Y_srl[31]~8_combout\))) # (\ShiftFN[0]~input_o\ & (\sra64[0][31]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_sra64[0][31]~0_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Y_srl[31]~8_combout\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_Y_sll[31]~1_combout\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X59_Y21_N94
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
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X41_Y0_N94
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X56_Y0_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y12_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y9_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X56_Y56_N94
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X22_Y0_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X55_Y0_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X59_Y33_N1
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X7_Y0_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X59_Y19_N32
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X33_Y0_N63
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X5_Y0_N94
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X59_Y30_N94
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

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

-- Location: IOIBUF_X5_Y0_N1
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X11_Y0_N94
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X59_Y7_N94
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X59_Y39_N94
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X59_Y21_N32
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X23_Y56_N1
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X11_Y0_N32
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X59_Y39_N63
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


