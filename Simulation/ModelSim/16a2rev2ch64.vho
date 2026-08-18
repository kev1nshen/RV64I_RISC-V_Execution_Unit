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

-- DATE "04/08/2026 16:01:54"

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
-- B[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \fill~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A_rev[15]~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \stage[6][15]~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \stage[6][8]~1_combout\ : std_logic;
SIGNAL \stage[6][15]~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \A_in[15]~7_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A_in[14]~6_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \stage[1][14]~7_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A_in[11]~3_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A_in[10]~2_combout\ : std_logic;
SIGNAL \stage[1][10]~5_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A_in[9]~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A_in[8]~0_combout\ : std_logic;
SIGNAL \stage[1][8]~4_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A_in[12]~4_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A_in[13]~5_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \stage[1][12]~6_combout\ : std_logic;
SIGNAL \stage[3][8]~8_combout\ : std_logic;
SIGNAL \stage[6][0]~3_combout\ : std_logic;
SIGNAL \stage[6][0]~9_combout\ : std_logic;
SIGNAL \stage[6][0]~10_combout\ : std_logic;
SIGNAL \stage[1][4]~12_combout\ : std_logic;
SIGNAL \stage[1][2]~11_combout\ : std_logic;
SIGNAL \stage[1][6]~13_combout\ : std_logic;
SIGNAL \stage[6][0]~14_combout\ : std_logic;
SIGNAL \stage[6][0]~15_combout\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \stage[6][15]~16_combout\ : std_logic;
SIGNAL \stage[6][14]~17_combout\ : std_logic;
SIGNAL \stage[1][3]~24_combout\ : std_logic;
SIGNAL \stage[1][7]~26_combout\ : std_logic;
SIGNAL \stage[1][5]~25_combout\ : std_logic;
SIGNAL \stage[6][1]~23_combout\ : std_logic;
SIGNAL \stage[6][1]~27_combout\ : std_logic;
SIGNAL \stage[1][11]~19_combout\ : std_logic;
SIGNAL \stage[1][13]~20_combout\ : std_logic;
SIGNAL \stage[1][9]~18_combout\ : std_logic;
SIGNAL \stage[1][15]~21_combout\ : std_logic;
SIGNAL \stage[3][9]~22_combout\ : std_logic;
SIGNAL \stage[6][1]~28_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \stage[6][2]~30_combout\ : std_logic;
SIGNAL \stage[3][10]~29_combout\ : std_logic;
SIGNAL \stage[6][2]~31_combout\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \stage[6][3]~33_combout\ : std_logic;
SIGNAL \stage[3][11]~32_combout\ : std_logic;
SIGNAL \stage[6][3]~34_combout\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \stage[6][4]~36_combout\ : std_logic;
SIGNAL \stage[3][12]~35_combout\ : std_logic;
SIGNAL \stage[6][4]~37_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \stage[6][5]~39_combout\ : std_logic;
SIGNAL \stage[3][13]~38_combout\ : std_logic;
SIGNAL \stage[6][5]~40_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \stage[6][6]~42_combout\ : std_logic;
SIGNAL \stage[6][6]~41_combout\ : std_logic;
SIGNAL \stage[6][6]~43_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \stage[6][8]~44_combout\ : std_logic;
SIGNAL \stage[6][7]~45_combout\ : std_logic;
SIGNAL \stage[6][7]~46_combout\ : std_logic;
SIGNAL \stage[6][7]~47_combout\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
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
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y~36_combout\ : std_logic;
SIGNAL \ALT_INV_Y~34_combout\ : std_logic;
SIGNAL \ALT_INV_Y~33_combout\ : std_logic;
SIGNAL \ALT_INV_Y~31_combout\ : std_logic;
SIGNAL \ALT_INV_Y~30_combout\ : std_logic;
SIGNAL \ALT_INV_Y~28_combout\ : std_logic;
SIGNAL \ALT_INV_Y~26_combout\ : std_logic;
SIGNAL \ALT_INV_Y~24_combout\ : std_logic;
SIGNAL \ALT_INV_Y~23_combout\ : std_logic;
SIGNAL \ALT_INV_Y~21_combout\ : std_logic;
SIGNAL \ALT_INV_Y~20_combout\ : std_logic;
SIGNAL \ALT_INV_Y~18_combout\ : std_logic;
SIGNAL \ALT_INV_Y~17_combout\ : std_logic;
SIGNAL \ALT_INV_Y~16_combout\ : std_logic;
SIGNAL \ALT_INV_Y~15_combout\ : std_logic;
SIGNAL \ALT_INV_Y~14_combout\ : std_logic;
SIGNAL \ALT_INV_Y~13_combout\ : std_logic;
SIGNAL \ALT_INV_Y~12_combout\ : std_logic;
SIGNAL \ALT_INV_Y~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][7]~47_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][7]~46_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][7]~45_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][8]~44_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][6]~43_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][6]~42_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][6]~41_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][5]~40_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][5]~39_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][13]~38_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][4]~37_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][4]~36_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][12]~35_combout\ : std_logic;
SIGNAL \ALT_INV_Y~4_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][3]~34_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][3]~33_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][11]~32_combout\ : std_logic;
SIGNAL \ALT_INV_Y~2_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][2]~31_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][2]~30_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][10]~29_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][1]~28_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][1]~27_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][7]~26_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][5]~25_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][3]~24_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][1]~23_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][9]~22_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][15]~21_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][13]~20_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][11]~19_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][9]~18_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][14]~17_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][15]~16_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~15_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~14_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][6]~13_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][4]~12_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][2]~11_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~10_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~9_combout\ : std_logic;
SIGNAL \ALT_INV_stage[3][8]~8_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][14]~7_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[15]~7_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[14]~6_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][12]~6_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[13]~5_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[12]~4_combout\ : std_logic;
SIGNAL \ALT_INV_stage[1][10]~5_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[11]~3_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[10]~2_combout\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_stage[1][8]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[9]~1_combout\ : std_logic;
SIGNAL \ALT_INV_A_in[8]~0_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][15]~2_combout\ : std_logic;
SIGNAL \ALT_INV_fill~0_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][8]~1_combout\ : std_logic;
SIGNAL \ALT_INV_stage[6][15]~0_combout\ : std_logic;
SIGNAL \ALT_INV_A_rev[15]~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Y~36_combout\ <= NOT \Y~36_combout\;
\ALT_INV_Y~34_combout\ <= NOT \Y~34_combout\;
\ALT_INV_Y~33_combout\ <= NOT \Y~33_combout\;
\ALT_INV_Y~31_combout\ <= NOT \Y~31_combout\;
\ALT_INV_Y~30_combout\ <= NOT \Y~30_combout\;
\ALT_INV_Y~28_combout\ <= NOT \Y~28_combout\;
\ALT_INV_Y~26_combout\ <= NOT \Y~26_combout\;
\ALT_INV_Y~24_combout\ <= NOT \Y~24_combout\;
\ALT_INV_Y~23_combout\ <= NOT \Y~23_combout\;
\ALT_INV_Y~21_combout\ <= NOT \Y~21_combout\;
\ALT_INV_Y~20_combout\ <= NOT \Y~20_combout\;
\ALT_INV_Y~18_combout\ <= NOT \Y~18_combout\;
\ALT_INV_Y~17_combout\ <= NOT \Y~17_combout\;
\ALT_INV_Y~16_combout\ <= NOT \Y~16_combout\;
\ALT_INV_Y~15_combout\ <= NOT \Y~15_combout\;
\ALT_INV_Y~14_combout\ <= NOT \Y~14_combout\;
\ALT_INV_Y~13_combout\ <= NOT \Y~13_combout\;
\ALT_INV_Y~12_combout\ <= NOT \Y~12_combout\;
\ALT_INV_Y~10_combout\ <= NOT \Y~10_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_stage[6][7]~47_combout\ <= NOT \stage[6][7]~47_combout\;
\ALT_INV_stage[6][7]~46_combout\ <= NOT \stage[6][7]~46_combout\;
\ALT_INV_stage[6][7]~45_combout\ <= NOT \stage[6][7]~45_combout\;
\ALT_INV_stage[6][8]~44_combout\ <= NOT \stage[6][8]~44_combout\;
\ALT_INV_stage[6][6]~43_combout\ <= NOT \stage[6][6]~43_combout\;
\ALT_INV_stage[6][6]~42_combout\ <= NOT \stage[6][6]~42_combout\;
\ALT_INV_stage[6][6]~41_combout\ <= NOT \stage[6][6]~41_combout\;
\ALT_INV_stage[6][5]~40_combout\ <= NOT \stage[6][5]~40_combout\;
\ALT_INV_stage[6][5]~39_combout\ <= NOT \stage[6][5]~39_combout\;
\ALT_INV_stage[3][13]~38_combout\ <= NOT \stage[3][13]~38_combout\;
\ALT_INV_stage[6][4]~37_combout\ <= NOT \stage[6][4]~37_combout\;
\ALT_INV_stage[6][4]~36_combout\ <= NOT \stage[6][4]~36_combout\;
\ALT_INV_stage[3][12]~35_combout\ <= NOT \stage[3][12]~35_combout\;
\ALT_INV_Y~4_combout\ <= NOT \Y~4_combout\;
\ALT_INV_stage[6][3]~34_combout\ <= NOT \stage[6][3]~34_combout\;
\ALT_INV_stage[6][3]~33_combout\ <= NOT \stage[6][3]~33_combout\;
\ALT_INV_stage[3][11]~32_combout\ <= NOT \stage[3][11]~32_combout\;
\ALT_INV_Y~2_combout\ <= NOT \Y~2_combout\;
\ALT_INV_stage[6][2]~31_combout\ <= NOT \stage[6][2]~31_combout\;
\ALT_INV_stage[6][2]~30_combout\ <= NOT \stage[6][2]~30_combout\;
\ALT_INV_stage[3][10]~29_combout\ <= NOT \stage[3][10]~29_combout\;
\ALT_INV_stage[6][1]~28_combout\ <= NOT \stage[6][1]~28_combout\;
\ALT_INV_stage[6][1]~27_combout\ <= NOT \stage[6][1]~27_combout\;
\ALT_INV_stage[1][7]~26_combout\ <= NOT \stage[1][7]~26_combout\;
\ALT_INV_stage[1][5]~25_combout\ <= NOT \stage[1][5]~25_combout\;
\ALT_INV_stage[1][3]~24_combout\ <= NOT \stage[1][3]~24_combout\;
\ALT_INV_stage[6][1]~23_combout\ <= NOT \stage[6][1]~23_combout\;
\ALT_INV_stage[3][9]~22_combout\ <= NOT \stage[3][9]~22_combout\;
\ALT_INV_stage[1][15]~21_combout\ <= NOT \stage[1][15]~21_combout\;
\ALT_INV_stage[1][13]~20_combout\ <= NOT \stage[1][13]~20_combout\;
\ALT_INV_stage[1][11]~19_combout\ <= NOT \stage[1][11]~19_combout\;
\ALT_INV_stage[1][9]~18_combout\ <= NOT \stage[1][9]~18_combout\;
\ALT_INV_stage[6][14]~17_combout\ <= NOT \stage[6][14]~17_combout\;
\ALT_INV_stage[6][15]~16_combout\ <= NOT \stage[6][15]~16_combout\;
\ALT_INV_stage[6][0]~15_combout\ <= NOT \stage[6][0]~15_combout\;
\ALT_INV_stage[6][0]~14_combout\ <= NOT \stage[6][0]~14_combout\;
\ALT_INV_stage[1][6]~13_combout\ <= NOT \stage[1][6]~13_combout\;
\ALT_INV_stage[1][4]~12_combout\ <= NOT \stage[1][4]~12_combout\;
\ALT_INV_stage[1][2]~11_combout\ <= NOT \stage[1][2]~11_combout\;
\ALT_INV_stage[6][0]~10_combout\ <= NOT \stage[6][0]~10_combout\;
\ALT_INV_stage[6][0]~9_combout\ <= NOT \stage[6][0]~9_combout\;
\ALT_INV_stage[3][8]~8_combout\ <= NOT \stage[3][8]~8_combout\;
\ALT_INV_stage[1][14]~7_combout\ <= NOT \stage[1][14]~7_combout\;
\ALT_INV_A_in[15]~7_combout\ <= NOT \A_in[15]~7_combout\;
\ALT_INV_A_in[14]~6_combout\ <= NOT \A_in[14]~6_combout\;
\ALT_INV_stage[1][12]~6_combout\ <= NOT \stage[1][12]~6_combout\;
\ALT_INV_A_in[13]~5_combout\ <= NOT \A_in[13]~5_combout\;
\ALT_INV_A_in[12]~4_combout\ <= NOT \A_in[12]~4_combout\;
\ALT_INV_stage[1][10]~5_combout\ <= NOT \stage[1][10]~5_combout\;
\ALT_INV_A_in[11]~3_combout\ <= NOT \A_in[11]~3_combout\;
\ALT_INV_A_in[10]~2_combout\ <= NOT \A_in[10]~2_combout\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_stage[1][8]~4_combout\ <= NOT \stage[1][8]~4_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_A_in[9]~1_combout\ <= NOT \A_in[9]~1_combout\;
\ALT_INV_A_in[8]~0_combout\ <= NOT \A_in[8]~0_combout\;
\ALT_INV_stage[6][0]~3_combout\ <= NOT \stage[6][0]~3_combout\;
\ALT_INV_stage[6][15]~2_combout\ <= NOT \stage[6][15]~2_combout\;
\ALT_INV_fill~0_combout\ <= NOT \fill~0_combout\;
\ALT_INV_stage[6][8]~1_combout\ <= NOT \stage[6][8]~1_combout\;
\ALT_INV_stage[6][15]~0_combout\ <= NOT \stage[6][15]~0_combout\;
\ALT_INV_A_rev[15]~0_combout\ <= NOT \A_rev[15]~0_combout\;

-- Location: IOOBUF_X33_Y56_N67
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

-- Location: IOOBUF_X33_Y56_N33
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

-- Location: IOOBUF_X46_Y56_N67
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

-- Location: IOOBUF_X38_Y56_N36
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

-- Location: IOOBUF_X44_Y56_N2
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~6_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X48_Y56_N5
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~7_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X40_Y56_N98
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~8_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X48_Y56_N98
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~9_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~11_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X42_Y56_N67
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~19_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~22_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~25_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X42_Y56_N36
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~27_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X44_Y56_N98
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~29_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X38_Y56_N98
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~32_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X31_Y56_N36
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~35_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOIBUF_X38_Y56_N63
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X38_Y56_N1
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X36_Y56_N63
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X35_Y56_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X46_Y56_N1
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X40_Y52_N4
\fill~0\ : arriaii_lcell_comb
-- Equation(s):
-- \fill~0_combout\ = ( \A[15]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & ((!\ExtWord~input_o\) # (\A[7]~input_o\)))) ) ) # ( !\A[15]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\ & \A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100010000000100010001000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \fill~0_combout\);

-- Location: IOIBUF_X40_Y56_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X40_Y52_N0
\A_rev[15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \A_rev[15]~0_combout\ = ( \A[7]~input_o\ & ( \A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((!\ExtWord~input_o\)))) # (\ShiftFN[0]~input_o\ & (((\A[0]~input_o\)) # (\ShiftFN[1]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \A[15]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (!\ExtWord~input_o\)) # (\ShiftFN[0]~input_o\ & ((\A[0]~input_o\))))) # (\ShiftFN[1]~input_o\ & (((!\ExtWord~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[15]~input_o\ & ( (\ShiftFN[0]~input_o\ & 
-- ((!\ShiftFN[1]~input_o\ & ((\A[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[15]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \A[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000010010001111010000111100101101000111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \A_rev[15]~0_combout\);

-- Location: IOIBUF_X33_Y56_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X36_Y56_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X35_Y56_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X38_Y52_N20
\stage[6][15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][15]~0_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & !\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage[6][15]~0_combout\);

-- Location: IOIBUF_X40_Y56_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X44_Y56_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X49_Y56_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X40_Y53_N22
\stage[6][8]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][8]~1_combout\ = ( \ExtWord~input_o\ & ( (!\B[3]~input_o\ & !\B[4]~input_o\) ) ) # ( !\ExtWord~input_o\ & ( (!\B[5]~input_o\ & (!\B[3]~input_o\ & !\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000111100000000000010100000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	combout => \stage[6][8]~1_combout\);

-- Location: LABCELL_X38_Y52_N22
\stage[6][15]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][15]~2_combout\ = ( \stage[6][8]~1_combout\ & ( (!\stage[6][15]~0_combout\ & (\fill~0_combout\)) # (\stage[6][15]~0_combout\ & ((\A_rev[15]~0_combout\))) ) ) # ( !\stage[6][8]~1_combout\ & ( \fill~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_A_rev[15]~0_combout\,
	datad => \ALT_INV_stage[6][15]~0_combout\,
	dataf => \ALT_INV_stage[6][8]~1_combout\,
	combout => \stage[6][15]~2_combout\);

-- Location: MLABCELL_X37_Y53_N26
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X40_Y52_N34
\A_in[15]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[15]~7_combout\ = ( \A[15]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[0]~input_o\ & (\A[7]~input_o\ & \ShiftFN[1]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & (\A[7]~input_o\ & \ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000110101010101010111010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \A_in[15]~7_combout\);

-- Location: IOIBUF_X49_Y56_N94
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X40_Y52_N10
\A_in[14]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[14]~6_combout\ = ( \A[14]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \A[7]~input_o\))) ) ) # ( !\A[14]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\A[7]~input_o\ & \ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \A_in[14]~6_combout\);

-- Location: IOIBUF_X35_Y56_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X40_Y52_N16
\stage[1][14]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][14]~7_combout\ = ( \A[1]~input_o\ & ( \A[0]~input_o\ & ( ((!\B[0]~input_o\ & ((\A_in[14]~6_combout\))) # (\B[0]~input_o\ & (\A_in[15]~7_combout\))) # (\Equal0~0_combout\) ) ) ) # ( !\A[1]~input_o\ & ( \A[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- ((!\B[0]~input_o\ & ((\A_in[14]~6_combout\))) # (\B[0]~input_o\ & (\A_in[15]~7_combout\)))) # (\Equal0~0_combout\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[1]~input_o\ & ( !\A[0]~input_o\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A_in[14]~6_combout\))) 
-- # (\B[0]~input_o\ & (\A_in[15]~7_combout\)))) # (\Equal0~0_combout\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( !\A[0]~input_o\ & ( (!\Equal0~0_combout\ & ((!\B[0]~input_o\ & ((\A_in[14]~6_combout\))) # (\B[0]~input_o\ & 
-- (\A_in[15]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[15]~7_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_in[14]~6_combout\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \stage[1][14]~7_combout\);

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

-- Location: IOIBUF_X35_Y56_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X30_Y56_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X37_Y53_N24
\A_in[11]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[11]~3_combout\ = ( \A[11]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[1]~input_o\ & (\A[7]~input_o\ & \ShiftFN[0]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & (\A[7]~input_o\ & \ShiftFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \A_in[11]~3_combout\);

-- Location: IOIBUF_X42_Y56_N1
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X40_Y53_N28
\A_in[10]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[10]~2_combout\ = ( \A[10]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \A[7]~input_o\))) ) ) # ( !\A[10]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\A[7]~input_o\ & \ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \A_in[10]~2_combout\);

-- Location: MLABCELL_X37_Y53_N34
\stage[1][10]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][10]~5_combout\ = ( \Equal0~0_combout\ & ( \A_in[10]~2_combout\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\Equal0~0_combout\ & ( \A_in[10]~2_combout\ & ( (!\B[0]~input_o\) # (\A_in[11]~3_combout\) 
-- ) ) ) # ( \Equal0~0_combout\ & ( !\A_in[10]~2_combout\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\Equal0~0_combout\ & ( !\A_in[10]~2_combout\ & ( (\B[0]~input_o\ & \A_in[11]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A_in[11]~3_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A_in[10]~2_combout\,
	combout => \stage[1][10]~5_combout\);

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

-- Location: MLABCELL_X37_Y53_N0
\A_in[9]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[9]~1_combout\ = ( \A[7]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[9]~input_o\)))) # (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\)))) ) ) # ( !\A[7]~input_o\ & ( (!\ExtWord~input_o\ & \A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000111010000110000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \A_in[9]~1_combout\);

-- Location: IOIBUF_X31_Y56_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X33_Y56_N1
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X37_Y53_N2
\A_in[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[8]~0_combout\ = ( \A[7]~input_o\ & ( (!\ExtWord~input_o\ & (((\A[8]~input_o\)))) # (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\)))) ) ) # ( !\A[7]~input_o\ & ( (!\ExtWord~input_o\ & \A[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000111010000110000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \A_in[8]~0_combout\);

-- Location: MLABCELL_X37_Y53_N30
\stage[1][8]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][8]~4_combout\ = ( \Equal0~0_combout\ & ( \A_in[8]~0_combout\ & ( (!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)) ) ) ) # ( !\Equal0~0_combout\ & ( \A_in[8]~0_combout\ & ( (!\B[0]~input_o\) # (\A_in[9]~1_combout\) ) ) 
-- ) # ( \Equal0~0_combout\ & ( !\A_in[8]~0_combout\ & ( (!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)) ) ) ) # ( !\Equal0~0_combout\ & ( !\A_in[8]~0_combout\ & ( (\A_in[9]~1_combout\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[9]~1_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A_in[8]~0_combout\,
	combout => \stage[1][8]~4_combout\);

-- Location: IOIBUF_X40_Y56_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X46_Y56_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: MLABCELL_X39_Y52_N2
\A_in[12]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[12]~4_combout\ = ( \A[12]~input_o\ & ( (!\ExtWord~input_o\) # ((\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\ & \A[7]~input_o\))) ) ) # ( !\A[12]~input_o\ & ( (\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\ & (\A[7]~input_o\ & \ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \A_in[12]~4_combout\);

-- Location: IOIBUF_X46_Y56_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: MLABCELL_X39_Y52_N26
\A_in[13]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \A_in[13]~5_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\A[13]~input_o\)) # (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\ & \A[7]~input_o\)))) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\A[13]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000110101010100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \A_in[13]~5_combout\);

-- Location: IOIBUF_X51_Y56_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X39_Y52_N8
\stage[1][12]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][12]~6_combout\ = ( \A_in[13]~5_combout\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & (((\A_in[12]~4_combout\)) # (\Equal0~0_combout\))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\) # ((\A[2]~input_o\)))) ) ) ) # ( !\A_in[13]~5_combout\ & ( 
-- \A[3]~input_o\ & ( (!\B[0]~input_o\ & (((\A_in[12]~4_combout\)) # (\Equal0~0_combout\))) # (\B[0]~input_o\ & (\Equal0~0_combout\ & (\A[2]~input_o\))) ) ) ) # ( \A_in[13]~5_combout\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (!\Equal0~0_combout\ & 
-- ((\A_in[12]~4_combout\)))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\) # ((\A[2]~input_o\)))) ) ) ) # ( !\A_in[13]~5_combout\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A_in[12]~4_combout\)))) # (\B[0]~input_o\ & 
-- (\Equal0~0_combout\ & (\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A_in[12]~4_combout\,
	datae => \ALT_INV_A_in[13]~5_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \stage[1][12]~6_combout\);

-- Location: LABCELL_X38_Y53_N2
\stage[3][8]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][8]~8_combout\ = ( \B[2]~input_o\ & ( \stage[1][12]~6_combout\ & ( (!\B[1]~input_o\) # (\stage[1][14]~7_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \stage[1][12]~6_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][8]~4_combout\))) # (\B[1]~input_o\ & 
-- (\stage[1][10]~5_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\stage[1][12]~6_combout\ & ( (\stage[1][14]~7_combout\ & \B[1]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\stage[1][12]~6_combout\ & ( (!\B[1]~input_o\ & ((\stage[1][8]~4_combout\))) # 
-- (\B[1]~input_o\ & (\stage[1][10]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][14]~7_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][10]~5_combout\,
	datad => \ALT_INV_stage[1][8]~4_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_stage[1][12]~6_combout\,
	combout => \stage[3][8]~8_combout\);

-- Location: LABCELL_X40_Y53_N4
\stage[6][0]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~3_combout\ = ( \B[5]~input_o\ & ( (\fill~0_combout\ & ((!\ExtWord~input_o\) # (\B[4]~input_o\))) ) ) # ( !\B[5]~input_o\ & ( (\fill~0_combout\ & \B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \stage[6][0]~3_combout\);

-- Location: LABCELL_X40_Y53_N34
\stage[6][0]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~9_combout\ = ( \ExtWord~input_o\ & ( (!\B[4]~input_o\ & \B[3]~input_o\) ) ) # ( !\ExtWord~input_o\ & ( (!\B[4]~input_o\ & (\B[3]~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100010001000100010000000000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	combout => \stage[6][0]~9_combout\);

-- Location: LABCELL_X40_Y52_N22
\stage[6][0]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~10_combout\ = ( \A[1]~input_o\ & ( \A[0]~input_o\ & ( (!\Equal0~0_combout\) # ((!\B[0]~input_o\ & (\A_in[15]~7_combout\)) # (\B[0]~input_o\ & ((\A_in[14]~6_combout\)))) ) ) ) # ( !\A[1]~input_o\ & ( \A[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- (((!\B[0]~input_o\)))) # (\Equal0~0_combout\ & ((!\B[0]~input_o\ & (\A_in[15]~7_combout\)) # (\B[0]~input_o\ & ((\A_in[14]~6_combout\))))) ) ) ) # ( \A[1]~input_o\ & ( !\A[0]~input_o\ & ( (!\Equal0~0_combout\ & (((\B[0]~input_o\)))) # (\Equal0~0_combout\ 
-- & ((!\B[0]~input_o\ & (\A_in[15]~7_combout\)) # (\B[0]~input_o\ & ((\A_in[14]~6_combout\))))) ) ) ) # ( !\A[1]~input_o\ & ( !\A[0]~input_o\ & ( (\Equal0~0_combout\ & ((!\B[0]~input_o\ & (\A_in[15]~7_combout\)) # (\B[0]~input_o\ & 
-- ((\A_in[14]~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[15]~7_combout\,
	datac => \ALT_INV_A_in[14]~6_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \stage[6][0]~10_combout\);

-- Location: MLABCELL_X37_Y53_N18
\stage[1][4]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][4]~12_combout\ = ( \Equal0~0_combout\ & ( \A_in[10]~2_combout\ & ( (\A_in[11]~3_combout\) # (\B[0]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( \A_in[10]~2_combout\ & ( (!\B[0]~input_o\ & (\A[4]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) 
-- ) ) ) # ( \Equal0~0_combout\ & ( !\A_in[10]~2_combout\ & ( (!\B[0]~input_o\ & \A_in[11]~3_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( !\A_in[10]~2_combout\ & ( (!\B[0]~input_o\ & (\A[4]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000001100110001000111010001110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A_in[11]~3_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A_in[10]~2_combout\,
	combout => \stage[1][4]~12_combout\);

-- Location: MLABCELL_X39_Y52_N34
\stage[1][2]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][2]~11_combout\ = ( \A_in[13]~5_combout\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & (((\A[2]~input_o\)) # (\Equal0~0_combout\))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\) # ((\A_in[12]~4_combout\)))) ) ) ) # ( !\A_in[13]~5_combout\ & ( 
-- \A[3]~input_o\ & ( (!\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[2]~input_o\)))) # (\B[0]~input_o\ & ((!\Equal0~0_combout\) # ((\A_in[12]~4_combout\)))) ) ) ) # ( \A_in[13]~5_combout\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (((\A[2]~input_o\)) # 
-- (\Equal0~0_combout\))) # (\B[0]~input_o\ & (\Equal0~0_combout\ & (\A_in[12]~4_combout\))) ) ) ) # ( !\A_in[13]~5_combout\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[2]~input_o\)))) # (\B[0]~input_o\ & (\Equal0~0_combout\ & 
-- (\A_in[12]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A_in[12]~4_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A_in[13]~5_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \stage[1][2]~11_combout\);

-- Location: MLABCELL_X37_Y53_N22
\stage[1][6]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][6]~13_combout\ = ( \Equal0~0_combout\ & ( \A_in[8]~0_combout\ & ( (\B[0]~input_o\) # (\A_in[9]~1_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( \A_in[8]~0_combout\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) 
-- ) # ( \Equal0~0_combout\ & ( !\A_in[8]~0_combout\ & ( (\A_in[9]~1_combout\ & !\B[0]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( !\A_in[8]~0_combout\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[9]~1_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A_in[8]~0_combout\,
	combout => \stage[1][6]~13_combout\);

-- Location: LABCELL_X38_Y53_N26
\stage[6][0]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~14_combout\ = ( \stage[1][6]~13_combout\ & ( \B[1]~input_o\ & ( (\stage[1][2]~11_combout\) # (\B[2]~input_o\) ) ) ) # ( !\stage[1][6]~13_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & \stage[1][2]~11_combout\) ) ) ) # ( 
-- \stage[1][6]~13_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\stage[6][0]~10_combout\)) # (\B[2]~input_o\ & ((\stage[1][4]~12_combout\))) ) ) ) # ( !\stage[1][6]~13_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\stage[6][0]~10_combout\)) # 
-- (\B[2]~input_o\ & ((\stage[1][4]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][0]~10_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_stage[1][4]~12_combout\,
	datad => \ALT_INV_stage[1][2]~11_combout\,
	datae => \ALT_INV_stage[1][6]~13_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage[6][0]~14_combout\);

-- Location: LABCELL_X40_Y53_N16
\stage[6][0]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][0]~15_combout\ = ( \stage[6][0]~14_combout\ & ( (!\stage[6][8]~1_combout\ & (!\stage[6][0]~3_combout\ & ((!\stage[3][8]~8_combout\) # (!\stage[6][0]~9_combout\)))) ) ) # ( !\stage[6][0]~14_combout\ & ( (!\stage[6][0]~3_combout\ & 
-- ((!\stage[3][8]~8_combout\) # (!\stage[6][0]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][8]~8_combout\,
	datab => \ALT_INV_stage[6][8]~1_combout\,
	datac => \ALT_INV_stage[6][0]~3_combout\,
	datad => \ALT_INV_stage[6][0]~9_combout\,
	dataf => \ALT_INV_stage[6][0]~14_combout\,
	combout => \stage[6][0]~15_combout\);

-- Location: LABCELL_X40_Y52_N6
\Y~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( \A[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\stage[6][15]~2_combout\)))) # (\ShiftFN[1]~input_o\ & (((!\stage[6][0]~15_combout\)))) ) ) # ( !\A[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & 
-- (\stage[6][15]~2_combout\))) # (\ShiftFN[1]~input_o\ & (((!\stage[6][0]~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000010010101110000001011011111100010101101111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_stage[6][15]~2_combout\,
	datad => \ALT_INV_stage[6][0]~15_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Y~0_combout\);

-- Location: LABCELL_X38_Y53_N8
\stage[6][15]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][15]~16_combout\ = ( !\B[2]~input_o\ & ( !\B[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	combout => \stage[6][15]~16_combout\);

-- Location: LABCELL_X38_Y53_N12
\stage[6][14]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][14]~17_combout\ = ( \stage[6][15]~16_combout\ & ( (!\stage[6][8]~1_combout\ & ((\fill~0_combout\))) # (\stage[6][8]~1_combout\ & (\stage[1][14]~7_combout\)) ) ) # ( !\stage[6][15]~16_combout\ & ( \fill~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datac => \ALT_INV_stage[1][14]~7_combout\,
	datad => \ALT_INV_fill~0_combout\,
	dataf => \ALT_INV_stage[6][15]~16_combout\,
	combout => \stage[6][14]~17_combout\);

-- Location: MLABCELL_X39_Y52_N22
\stage[1][3]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][3]~24_combout\ = ( \Equal0~0_combout\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[12]~4_combout\))) # (\B[0]~input_o\ & (\A_in[11]~3_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\) # (\A[4]~input_o\) ) ) ) 
-- # ( \Equal0~0_combout\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[12]~4_combout\))) # (\B[0]~input_o\ & (\A_in[11]~3_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[3]~input_o\ & ( (\B[0]~input_o\ & \A[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[11]~3_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A_in[12]~4_combout\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \stage[1][3]~24_combout\);

-- Location: MLABCELL_X37_Y53_N14
\stage[1][7]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][7]~26_combout\ = ( \ShiftFN[1]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\ & (((\A[7]~input_o\)))) # (\B[0]~input_o\ & ((!\ExtWord~input_o\) # ((\ShiftFN[0]~input_o\ & \A[7]~input_o\)))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \A[8]~input_o\ & 
-- ( (!\ShiftFN[0]~input_o\ & ((!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (!\ExtWord~input_o\)))) # (\ShiftFN[0]~input_o\ & ((!\B[0]~input_o\ & (!\ExtWord~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( 
-- !\A[8]~input_o\ & ( (\A[7]~input_o\ & ((!\B[0]~input_o\) # ((\ShiftFN[0]~input_o\ & \ExtWord~input_o\)))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\A[8]~input_o\ & ( (\A[7]~input_o\ & (!\ShiftFN[0]~input_o\ $ (\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001100110101100000111110010011000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \stage[1][7]~26_combout\);

-- Location: MLABCELL_X37_Y53_N10
\stage[1][5]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][5]~25_combout\ = ( \Equal0~0_combout\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[10]~2_combout\)) # (\B[0]~input_o\ & ((\A_in[9]~1_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( \A[6]~input_o\ & ( (\A[5]~input_o\) # (\B[0]~input_o\) ) ) ) # 
-- ( \Equal0~0_combout\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[10]~2_combout\)) # (\B[0]~input_o\ & ((\A_in[9]~1_combout\))) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & \A[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[10]~2_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A_in[9]~1_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \stage[1][5]~25_combout\);

-- Location: LABCELL_X40_Y52_N30
\stage[6][1]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][1]~23_combout\ = ( \A[1]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A[2]~input_o\)) # (\Equal0~0_combout\ & ((\A_in[13]~5_combout\))) ) ) ) # ( !\A[1]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A[2]~input_o\)) # 
-- (\Equal0~0_combout\ & ((\A_in[13]~5_combout\))) ) ) ) # ( \A[1]~input_o\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\) # (\A_in[14]~6_combout\) ) ) ) # ( !\A[1]~input_o\ & ( !\B[0]~input_o\ & ( (\Equal0~0_combout\ & \A_in[14]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[14]~6_combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A_in[13]~5_combout\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[6][1]~23_combout\);

-- Location: LABCELL_X38_Y52_N28
\stage[6][1]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][1]~27_combout\ = ( \stage[1][5]~25_combout\ & ( \stage[6][1]~23_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & (\stage[1][3]~24_combout\)) # (\B[2]~input_o\ & ((\stage[1][7]~26_combout\)))) ) ) ) # ( !\stage[1][5]~25_combout\ & ( 
-- \stage[6][1]~23_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\stage[1][3]~24_combout\)) # (\B[2]~input_o\ & ((\stage[1][7]~26_combout\))))) ) ) ) # ( \stage[1][5]~25_combout\ & ( !\stage[6][1]~23_combout\ 
-- & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\stage[1][3]~24_combout\)) # (\B[2]~input_o\ & ((\stage[1][7]~26_combout\))))) ) ) ) # ( !\stage[1][5]~25_combout\ & ( !\stage[6][1]~23_combout\ & ( (\B[1]~input_o\ & 
-- ((!\B[2]~input_o\ & (\stage[1][3]~24_combout\)) # (\B[2]~input_o\ & ((\stage[1][7]~26_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][3]~24_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_stage[1][7]~26_combout\,
	datae => \ALT_INV_stage[1][5]~25_combout\,
	dataf => \ALT_INV_stage[6][1]~23_combout\,
	combout => \stage[6][1]~27_combout\);

-- Location: MLABCELL_X39_Y52_N36
\stage[1][11]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][11]~19_combout\ = ( \Equal0~0_combout\ & ( \A[3]~input_o\ & ( (\A[4]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[11]~3_combout\)) # (\B[0]~input_o\ & ((\A_in[12]~4_combout\))) ) ) ) 
-- # ( \Equal0~0_combout\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & \A[4]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (\A_in[11]~3_combout\)) # (\B[0]~input_o\ & ((\A_in[12]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[11]~3_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A_in[12]~4_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \stage[1][11]~19_combout\);

-- Location: LABCELL_X40_Y52_N24
\stage[1][13]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][13]~20_combout\ = ( \A[1]~input_o\ & ( \B[0]~input_o\ & ( (\A_in[14]~6_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\A[1]~input_o\ & ( \B[0]~input_o\ & ( (!\Equal0~0_combout\ & \A_in[14]~6_combout\) ) ) ) # ( \A[1]~input_o\ & ( !\B[0]~input_o\ & 
-- ( (!\Equal0~0_combout\ & (\A_in[13]~5_combout\)) # (\Equal0~0_combout\ & ((\A[2]~input_o\))) ) ) ) # ( !\A[1]~input_o\ & ( !\B[0]~input_o\ & ( (!\Equal0~0_combout\ & (\A_in[13]~5_combout\)) # (\Equal0~0_combout\ & ((\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_A_in[14]~6_combout\,
	datac => \ALT_INV_A_in[13]~5_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \stage[1][13]~20_combout\);

-- Location: MLABCELL_X37_Y53_N6
\stage[1][9]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][9]~18_combout\ = ( \Equal0~0_combout\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\) # (\A[5]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[9]~1_combout\))) # (\B[0]~input_o\ & (\A_in[10]~2_combout\)) ) ) ) 
-- # ( \Equal0~0_combout\ & ( !\A[6]~input_o\ & ( (\B[0]~input_o\ & \A[5]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & ((\A_in[9]~1_combout\))) # (\B[0]~input_o\ & (\A_in[10]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000000110000001100010001110111011100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_in[10]~2_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A_in[9]~1_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \stage[1][9]~18_combout\);

-- Location: LABCELL_X40_Y52_N32
\stage[1][15]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[1][15]~21_combout\ = ( \fill~0_combout\ & ( (\A_rev[15]~0_combout\) # (\B[0]~input_o\) ) ) # ( !\fill~0_combout\ & ( (!\B[0]~input_o\ & \A_rev[15]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A_rev[15]~0_combout\,
	dataf => \ALT_INV_fill~0_combout\,
	combout => \stage[1][15]~21_combout\);

-- Location: LABCELL_X38_Y52_N26
\stage[3][9]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][9]~22_combout\ = ( \stage[1][9]~18_combout\ & ( \stage[1][15]~21_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\stage[1][13]~20_combout\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)) # (\stage[1][11]~19_combout\))) ) ) ) # ( 
-- !\stage[1][9]~18_combout\ & ( \stage[1][15]~21_combout\ & ( (!\B[1]~input_o\ & (((\stage[1][13]~20_combout\ & \B[2]~input_o\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)) # (\stage[1][11]~19_combout\))) ) ) ) # ( \stage[1][9]~18_combout\ & ( 
-- !\stage[1][15]~21_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\stage[1][13]~20_combout\)))) # (\B[1]~input_o\ & (\stage[1][11]~19_combout\ & ((!\B[2]~input_o\)))) ) ) ) # ( !\stage[1][9]~18_combout\ & ( !\stage[1][15]~21_combout\ & ( 
-- (!\B[1]~input_o\ & (((\stage[1][13]~20_combout\ & \B[2]~input_o\)))) # (\B[1]~input_o\ & (\stage[1][11]~19_combout\ & ((!\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][11]~19_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][13]~20_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_stage[1][9]~18_combout\,
	dataf => \ALT_INV_stage[1][15]~21_combout\,
	combout => \stage[3][9]~22_combout\);

-- Location: LABCELL_X38_Y53_N14
\stage[6][1]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][1]~28_combout\ = ( !\stage[6][0]~3_combout\ & ( (!\stage[6][8]~1_combout\ & (((!\stage[6][0]~9_combout\) # (!\stage[3][9]~22_combout\)))) # (\stage[6][8]~1_combout\ & (!\stage[6][1]~27_combout\ & ((!\stage[6][0]~9_combout\) # 
-- (!\stage[3][9]~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datab => \ALT_INV_stage[6][1]~27_combout\,
	datac => \ALT_INV_stage[6][0]~9_combout\,
	datad => \ALT_INV_stage[3][9]~22_combout\,
	dataf => \ALT_INV_stage[6][0]~3_combout\,
	combout => \stage[6][1]~28_combout\);

-- Location: LABCELL_X38_Y53_N36
\Y~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = ( !\ShiftFN[1]~input_o\ & ( \stage[6][1]~28_combout\ & ( (!\ShiftFN[0]~input_o\ & (\A[1]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\stage[6][14]~17_combout\))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\stage[6][1]~28_combout\ ) ) # ( 
-- !\ShiftFN[1]~input_o\ & ( !\stage[6][1]~28_combout\ & ( (!\ShiftFN[0]~input_o\ & (\A[1]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\stage[6][14]~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111111111111111111100100111001001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_stage[6][14]~17_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_stage[6][1]~28_combout\,
	combout => \Y~1_combout\);

-- Location: LABCELL_X38_Y52_N32
\Y~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = ( \stage[1][13]~20_combout\ & ( \stage[1][15]~21_combout\ & ( ((\stage[6][8]~1_combout\ & !\B[2]~input_o\)) # (\fill~0_combout\) ) ) ) # ( !\stage[1][13]~20_combout\ & ( \stage[1][15]~21_combout\ & ( (!\stage[6][8]~1_combout\ & 
-- (((\fill~0_combout\)))) # (\stage[6][8]~1_combout\ & ((!\B[2]~input_o\ & (\B[1]~input_o\)) # (\B[2]~input_o\ & ((\fill~0_combout\))))) ) ) ) # ( \stage[1][13]~20_combout\ & ( !\stage[1][15]~21_combout\ & ( (!\stage[6][8]~1_combout\ & 
-- (((\fill~0_combout\)))) # (\stage[6][8]~1_combout\ & ((!\B[2]~input_o\ & (!\B[1]~input_o\)) # (\B[2]~input_o\ & ((\fill~0_combout\))))) ) ) ) # ( !\stage[1][13]~20_combout\ & ( !\stage[1][15]~21_combout\ & ( (\fill~0_combout\ & ((!\stage[6][8]~1_combout\) 
-- # (\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111010011100000111100011011000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_stage[1][13]~20_combout\,
	dataf => \ALT_INV_stage[1][15]~21_combout\,
	combout => \Y~2_combout\);

-- Location: LABCELL_X38_Y53_N4
\stage[6][2]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][2]~30_combout\ = ( \stage[1][6]~13_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & ((\stage[1][4]~12_combout\))) # (\B[2]~input_o\ & (\stage[1][8]~4_combout\)) ) ) ) # ( !\stage[1][6]~13_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\stage[1][4]~12_combout\))) # (\B[2]~input_o\ & (\stage[1][8]~4_combout\)) ) ) ) # ( \stage[1][6]~13_combout\ & ( !\B[1]~input_o\ & ( (\B[2]~input_o\) # (\stage[1][2]~11_combout\) ) ) ) # ( !\stage[1][6]~13_combout\ & ( !\B[1]~input_o\ & ( 
-- (\stage[1][2]~11_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][2]~11_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_stage[1][8]~4_combout\,
	datad => \ALT_INV_stage[1][4]~12_combout\,
	datae => \ALT_INV_stage[1][6]~13_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage[6][2]~30_combout\);

-- Location: LABCELL_X38_Y53_N20
\stage[3][10]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][10]~29_combout\ = ( \B[2]~input_o\ & ( \B[1]~input_o\ & ( \fill~0_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[1]~input_o\ & ( \stage[1][12]~6_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[1]~input_o\ & ( \stage[1][14]~7_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[1]~input_o\ & ( \stage[1][10]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[1][12]~6_combout\,
	datac => \ALT_INV_stage[1][14]~7_combout\,
	datad => \ALT_INV_stage[1][10]~5_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage[3][10]~29_combout\);

-- Location: LABCELL_X40_Y53_N2
\stage[6][2]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][2]~31_combout\ = ( \stage[3][10]~29_combout\ & ( (!\stage[6][0]~3_combout\ & (!\stage[6][0]~9_combout\ & ((!\stage[6][8]~1_combout\) # (!\stage[6][2]~30_combout\)))) ) ) # ( !\stage[3][10]~29_combout\ & ( (!\stage[6][0]~3_combout\ & 
-- ((!\stage[6][8]~1_combout\) # (!\stage[6][2]~30_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010001010100010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][0]~3_combout\,
	datab => \ALT_INV_stage[6][8]~1_combout\,
	datac => \ALT_INV_stage[6][2]~30_combout\,
	datad => \ALT_INV_stage[6][0]~9_combout\,
	dataf => \ALT_INV_stage[3][10]~29_combout\,
	combout => \stage[6][2]~31_combout\);

-- Location: MLABCELL_X39_Y52_N0
\Y~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = ( \A[2]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Y~2_combout\)))) # (\ShiftFN[1]~input_o\ & (((!\stage[6][2]~31_combout\)))) ) ) # ( !\A[2]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & 
-- (\Y~2_combout\))) # (\ShiftFN[1]~input_o\ & (((!\stage[6][2]~31_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000100001101110000010010111111100011001011111110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Y~2_combout\,
	datad => \ALT_INV_stage[6][2]~31_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Y~3_combout\);

-- Location: LABCELL_X38_Y52_N34
\Y~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = ( \stage[1][12]~6_combout\ & ( \stage[1][14]~7_combout\ & ( ((\stage[6][8]~1_combout\ & !\B[2]~input_o\)) # (\fill~0_combout\) ) ) ) # ( !\stage[1][12]~6_combout\ & ( \stage[1][14]~7_combout\ & ( (!\stage[6][8]~1_combout\ & 
-- (((\fill~0_combout\)))) # (\stage[6][8]~1_combout\ & ((!\B[2]~input_o\ & (\B[1]~input_o\)) # (\B[2]~input_o\ & ((\fill~0_combout\))))) ) ) ) # ( \stage[1][12]~6_combout\ & ( !\stage[1][14]~7_combout\ & ( (!\stage[6][8]~1_combout\ & (((\fill~0_combout\)))) 
-- # (\stage[6][8]~1_combout\ & ((!\B[2]~input_o\ & (!\B[1]~input_o\)) # (\B[2]~input_o\ & ((\fill~0_combout\))))) ) ) ) # ( !\stage[1][12]~6_combout\ & ( !\stage[1][14]~7_combout\ & ( (\fill~0_combout\ & ((!\stage[6][8]~1_combout\) # (\B[2]~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111010000001110111100010000101111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_fill~0_combout\,
	datae => \ALT_INV_stage[1][12]~6_combout\,
	dataf => \ALT_INV_stage[1][14]~7_combout\,
	combout => \Y~4_combout\);

-- Location: LABCELL_X38_Y52_N0
\stage[6][3]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][3]~33_combout\ = ( \stage[1][9]~18_combout\ & ( \stage[1][3]~24_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\stage[1][7]~26_combout\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)) # (\stage[1][5]~25_combout\))) ) ) ) # ( 
-- !\stage[1][9]~18_combout\ & ( \stage[1][3]~24_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\stage[1][7]~26_combout\)))) # (\B[1]~input_o\ & (\stage[1][5]~25_combout\ & (!\B[2]~input_o\))) ) ) ) # ( \stage[1][9]~18_combout\ & ( 
-- !\stage[1][3]~24_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\ & \stage[1][7]~26_combout\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)) # (\stage[1][5]~25_combout\))) ) ) ) # ( !\stage[1][9]~18_combout\ & ( !\stage[1][3]~24_combout\ & ( (!\B[1]~input_o\ 
-- & (((\B[2]~input_o\ & \stage[1][7]~26_combout\)))) # (\B[1]~input_o\ & (\stage[1][5]~25_combout\ & (!\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][5]~25_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_stage[1][7]~26_combout\,
	datae => \ALT_INV_stage[1][9]~18_combout\,
	dataf => \ALT_INV_stage[1][3]~24_combout\,
	combout => \stage[6][3]~33_combout\);

-- Location: LABCELL_X38_Y52_N38
\stage[3][11]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][11]~32_combout\ = ( \fill~0_combout\ & ( \stage[1][15]~21_combout\ & ( ((!\B[1]~input_o\ & (\stage[1][11]~19_combout\)) # (\B[1]~input_o\ & ((\stage[1][13]~20_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\fill~0_combout\ & ( 
-- \stage[1][15]~21_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)) # (\stage[1][11]~19_combout\))) # (\B[1]~input_o\ & (((\stage[1][13]~20_combout\ & !\B[2]~input_o\)))) ) ) ) # ( \fill~0_combout\ & ( !\stage[1][15]~21_combout\ & ( (!\B[1]~input_o\ & 
-- (\stage[1][11]~19_combout\ & ((!\B[2]~input_o\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\) # (\stage[1][13]~20_combout\)))) ) ) ) # ( !\fill~0_combout\ & ( !\stage[1][15]~21_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & (\stage[1][11]~19_combout\)) # 
-- (\B[1]~input_o\ & ((\stage[1][13]~20_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][11]~19_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][13]~20_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_fill~0_combout\,
	dataf => \ALT_INV_stage[1][15]~21_combout\,
	combout => \stage[3][11]~32_combout\);

-- Location: MLABCELL_X39_Y53_N2
\stage[6][3]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][3]~34_combout\ = ( !\stage[6][0]~3_combout\ & ( (!\stage[6][8]~1_combout\ & ((!\stage[6][0]~9_combout\) # ((!\stage[3][11]~32_combout\)))) # (\stage[6][8]~1_combout\ & (!\stage[6][3]~33_combout\ & ((!\stage[6][0]~9_combout\) # 
-- (!\stage[3][11]~32_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datab => \ALT_INV_stage[6][0]~9_combout\,
	datac => \ALT_INV_stage[6][3]~33_combout\,
	datad => \ALT_INV_stage[3][11]~32_combout\,
	dataf => \ALT_INV_stage[6][0]~3_combout\,
	combout => \stage[6][3]~34_combout\);

-- Location: MLABCELL_X39_Y52_N4
\Y~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = ( \ShiftFN[1]~input_o\ & ( !\stage[6][3]~34_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\A[3]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Y~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_Y~4_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_stage[6][3]~34_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y~5_combout\);

-- Location: MLABCELL_X37_Y53_N36
\stage[6][4]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][4]~36_combout\ = ( \stage[1][10]~5_combout\ & ( \B[1]~input_o\ & ( (\stage[1][6]~13_combout\) # (\B[2]~input_o\) ) ) ) # ( !\stage[1][10]~5_combout\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & \stage[1][6]~13_combout\) ) ) ) # ( 
-- \stage[1][10]~5_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\stage[1][4]~12_combout\)) # (\B[2]~input_o\ & ((\stage[1][8]~4_combout\))) ) ) ) # ( !\stage[1][10]~5_combout\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\stage[1][4]~12_combout\)) # 
-- (\B[2]~input_o\ & ((\stage[1][8]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][4]~12_combout\,
	datab => \ALT_INV_stage[1][8]~4_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_stage[1][6]~13_combout\,
	datae => \ALT_INV_stage[1][10]~5_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage[6][4]~36_combout\);

-- Location: LABCELL_X38_Y53_N28
\stage[3][12]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][12]~35_combout\ = ( \B[2]~input_o\ & ( \fill~0_combout\ ) ) # ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\stage[1][12]~6_combout\))) # (\B[1]~input_o\ & (\stage[1][14]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000111100110011010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][14]~7_combout\,
	datab => \ALT_INV_stage[1][12]~6_combout\,
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][12]~35_combout\);

-- Location: MLABCELL_X39_Y53_N4
\stage[6][4]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][4]~37_combout\ = ( \stage[3][12]~35_combout\ & ( (!\stage[6][0]~3_combout\ & (!\stage[6][0]~9_combout\ & ((!\stage[6][8]~1_combout\) # (!\stage[6][4]~36_combout\)))) ) ) # ( !\stage[3][12]~35_combout\ & ( (!\stage[6][0]~3_combout\ & 
-- ((!\stage[6][8]~1_combout\) # (!\stage[6][4]~36_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011001000100011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datab => \ALT_INV_stage[6][0]~3_combout\,
	datac => \ALT_INV_stage[6][0]~9_combout\,
	datad => \ALT_INV_stage[6][4]~36_combout\,
	dataf => \ALT_INV_stage[3][12]~35_combout\,
	combout => \stage[6][4]~37_combout\);

-- Location: LABCELL_X40_Y52_N12
\Y~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = ( \stage[6][8]~1_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\stage[3][11]~32_combout\))) # (\ShiftFN[1]~input_o\ & (!\stage[6][4]~37_combout\)) ) ) ) # ( !\stage[6][8]~1_combout\ & ( \ShiftFN[0]~input_o\ & ( 
-- (!\stage[6][4]~37_combout\ & \ShiftFN[1]~input_o\) ) ) ) # ( \stage[6][8]~1_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\A[4]~input_o\))) # (\ShiftFN[1]~input_o\ & (!\stage[6][4]~37_combout\)) ) ) ) # ( !\stage[6][8]~1_combout\ & ( 
-- !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\A[4]~input_o\))) # (\ShiftFN[1]~input_o\ & (!\stage[6][4]~37_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000001010000010100000101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][4]~37_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_stage[3][11]~32_combout\,
	datae => \ALT_INV_stage[6][8]~1_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y~6_combout\);

-- Location: LABCELL_X38_Y52_N10
\stage[6][5]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][5]~39_combout\ = ( \stage[1][9]~18_combout\ & ( \stage[1][11]~19_combout\ & ( ((!\B[1]~input_o\ & (\stage[1][5]~25_combout\)) # (\B[1]~input_o\ & ((\stage[1][7]~26_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\stage[1][9]~18_combout\ & ( 
-- \stage[1][11]~19_combout\ & ( (!\B[1]~input_o\ & (\stage[1][5]~25_combout\ & ((!\B[2]~input_o\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\) # (\stage[1][7]~26_combout\)))) ) ) ) # ( \stage[1][9]~18_combout\ & ( !\stage[1][11]~19_combout\ & ( 
-- (!\B[1]~input_o\ & (((\B[2]~input_o\)) # (\stage[1][5]~25_combout\))) # (\B[1]~input_o\ & (((\stage[1][7]~26_combout\ & !\B[2]~input_o\)))) ) ) ) # ( !\stage[1][9]~18_combout\ & ( !\stage[1][11]~19_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & 
-- (\stage[1][5]~25_combout\)) # (\B[1]~input_o\ & ((\stage[1][7]~26_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][5]~25_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][7]~26_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_stage[1][9]~18_combout\,
	dataf => \ALT_INV_stage[1][11]~19_combout\,
	combout => \stage[6][5]~39_combout\);

-- Location: LABCELL_X38_Y52_N4
\stage[3][13]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[3][13]~38_combout\ = ( \B[2]~input_o\ & ( \fill~0_combout\ ) ) # ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\stage[1][13]~20_combout\)) # (\B[1]~input_o\ & ((\stage[1][15]~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][13]~20_combout\,
	datad => \ALT_INV_stage[1][15]~21_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \stage[3][13]~38_combout\);

-- Location: MLABCELL_X39_Y53_N6
\stage[6][5]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][5]~40_combout\ = ( \stage[3][13]~38_combout\ & ( (!\stage[6][0]~3_combout\ & (!\stage[6][0]~9_combout\ & ((!\stage[6][8]~1_combout\) # (!\stage[6][5]~39_combout\)))) ) ) # ( !\stage[3][13]~38_combout\ & ( (!\stage[6][0]~3_combout\ & 
-- ((!\stage[6][8]~1_combout\) # (!\stage[6][5]~39_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011001000100011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datab => \ALT_INV_stage[6][0]~3_combout\,
	datac => \ALT_INV_stage[6][0]~9_combout\,
	datad => \ALT_INV_stage[6][5]~39_combout\,
	dataf => \ALT_INV_stage[3][13]~38_combout\,
	combout => \stage[6][5]~40_combout\);

-- Location: LABCELL_X40_Y53_N24
\Y~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = ( \stage[6][8]~1_combout\ & ( \stage[3][10]~29_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\) # (\A[5]~input_o\)))) # (\ShiftFN[1]~input_o\ & (!\stage[6][5]~40_combout\)) ) ) ) # ( !\stage[6][8]~1_combout\ & ( 
-- \stage[3][10]~29_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\A[5]~input_o\ & !\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (!\stage[6][5]~40_combout\)) ) ) ) # ( \stage[6][8]~1_combout\ & ( !\stage[3][10]~29_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (((\A[5]~input_o\ & !\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (!\stage[6][5]~40_combout\)) ) ) ) # ( !\stage[6][8]~1_combout\ & ( !\stage[3][10]~29_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\A[5]~input_o\ & !\ShiftFN[0]~input_o\)))) # 
-- (\ShiftFN[1]~input_o\ & (!\stage[6][5]~40_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000001010001110100000101000111010000010100011101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][5]~40_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_stage[6][8]~1_combout\,
	dataf => \ALT_INV_stage[3][10]~29_combout\,
	combout => \Y~7_combout\);

-- Location: LABCELL_X38_Y53_N18
\stage[6][6]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][6]~42_combout\ = ( \stage[6][15]~16_combout\ & ( (\stage[6][0]~9_combout\ & \stage[1][14]~7_combout\) ) ) # ( !\stage[6][15]~16_combout\ & ( (\fill~0_combout\ & \stage[6][0]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000000011001100010001000100010000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_stage[6][0]~9_combout\,
	datad => \ALT_INV_stage[1][14]~7_combout\,
	datae => \ALT_INV_stage[6][15]~16_combout\,
	combout => \stage[6][6]~42_combout\);

-- Location: LABCELL_X38_Y53_N32
\stage[6][6]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][6]~41_combout\ = ( \stage[1][10]~5_combout\ & ( \stage[1][12]~6_combout\ & ( ((!\B[1]~input_o\ & ((\stage[1][6]~13_combout\))) # (\B[1]~input_o\ & (\stage[1][8]~4_combout\))) # (\B[2]~input_o\) ) ) ) # ( !\stage[1][10]~5_combout\ & ( 
-- \stage[1][12]~6_combout\ & ( (!\B[1]~input_o\ & (!\B[2]~input_o\ & ((\stage[1][6]~13_combout\)))) # (\B[1]~input_o\ & (((\stage[1][8]~4_combout\)) # (\B[2]~input_o\))) ) ) ) # ( \stage[1][10]~5_combout\ & ( !\stage[1][12]~6_combout\ & ( (!\B[1]~input_o\ & 
-- (((\stage[1][6]~13_combout\)) # (\B[2]~input_o\))) # (\B[1]~input_o\ & (!\B[2]~input_o\ & (\stage[1][8]~4_combout\))) ) ) ) # ( !\stage[1][10]~5_combout\ & ( !\stage[1][12]~6_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\stage[1][6]~13_combout\))) # (\B[1]~input_o\ & (\stage[1][8]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_stage[1][8]~4_combout\,
	datad => \ALT_INV_stage[1][6]~13_combout\,
	datae => \ALT_INV_stage[1][10]~5_combout\,
	dataf => \ALT_INV_stage[1][12]~6_combout\,
	combout => \stage[6][6]~41_combout\);

-- Location: MLABCELL_X39_Y53_N30
\stage[6][6]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][6]~43_combout\ = ( \stage[6][6]~41_combout\ & ( (!\stage[6][8]~1_combout\ & (!\stage[6][0]~3_combout\ & !\stage[6][6]~42_combout\)) ) ) # ( !\stage[6][6]~41_combout\ & ( (!\stage[6][0]~3_combout\ & !\stage[6][6]~42_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datab => \ALT_INV_stage[6][0]~3_combout\,
	datad => \ALT_INV_stage[6][6]~42_combout\,
	dataf => \ALT_INV_stage[6][6]~41_combout\,
	combout => \stage[6][6]~43_combout\);

-- Location: MLABCELL_X39_Y53_N12
\Y~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = ( \ShiftFN[1]~input_o\ & ( \stage[6][8]~1_combout\ & ( !\stage[6][6]~43_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \stage[6][8]~1_combout\ & ( (!\ShiftFN[0]~input_o\ & ((\A[6]~input_o\))) # (\ShiftFN[0]~input_o\ & 
-- (\stage[3][9]~22_combout\)) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\stage[6][8]~1_combout\ & ( !\stage[6][6]~43_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\stage[6][8]~1_combout\ & ( (!\ShiftFN[0]~input_o\ & \A[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000110011001100110000000101111101011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][9]~22_combout\,
	datab => \ALT_INV_stage[6][6]~43_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_stage[6][8]~1_combout\,
	combout => \Y~8_combout\);

-- Location: LABCELL_X40_Y53_N0
\stage[6][8]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][8]~44_combout\ = ( \stage[3][8]~8_combout\ & ( (\fill~0_combout\) # (\stage[6][8]~1_combout\) ) ) # ( !\stage[3][8]~8_combout\ & ( (!\stage[6][8]~1_combout\ & \fill~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_stage[6][8]~1_combout\,
	datad => \ALT_INV_fill~0_combout\,
	dataf => \ALT_INV_stage[3][8]~8_combout\,
	combout => \stage[6][8]~44_combout\);

-- Location: LABCELL_X38_Y52_N12
\stage[6][7]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][7]~45_combout\ = ( \stage[1][13]~20_combout\ & ( \stage[1][7]~26_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\stage[1][11]~19_combout\))) # (\B[1]~input_o\ & (((\B[2]~input_o\) # (\stage[1][9]~18_combout\)))) ) ) ) # ( 
-- !\stage[1][13]~20_combout\ & ( \stage[1][7]~26_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\stage[1][11]~19_combout\))) # (\B[1]~input_o\ & (((\stage[1][9]~18_combout\ & !\B[2]~input_o\)))) ) ) ) # ( \stage[1][13]~20_combout\ & ( 
-- !\stage[1][7]~26_combout\ & ( (!\B[1]~input_o\ & (\stage[1][11]~19_combout\ & ((\B[2]~input_o\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\) # (\stage[1][9]~18_combout\)))) ) ) ) # ( !\stage[1][13]~20_combout\ & ( !\stage[1][7]~26_combout\ & ( 
-- (!\B[1]~input_o\ & (\stage[1][11]~19_combout\ & ((\B[2]~input_o\)))) # (\B[1]~input_o\ & (((\stage[1][9]~18_combout\ & !\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[1][11]~19_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_stage[1][9]~18_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_stage[1][13]~20_combout\,
	dataf => \ALT_INV_stage[1][7]~26_combout\,
	combout => \stage[6][7]~45_combout\);

-- Location: LABCELL_X38_Y52_N6
\stage[6][7]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][7]~46_combout\ = ( \stage[6][15]~0_combout\ & ( \A_rev[15]~0_combout\ ) ) # ( !\stage[6][15]~0_combout\ & ( \fill~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_A_rev[15]~0_combout\,
	dataf => \ALT_INV_stage[6][15]~0_combout\,
	combout => \stage[6][7]~46_combout\);

-- Location: MLABCELL_X39_Y53_N0
\stage[6][7]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \stage[6][7]~47_combout\ = ( \stage[6][7]~46_combout\ & ( (!\stage[6][0]~9_combout\ & (!\stage[6][0]~3_combout\ & ((!\stage[6][8]~1_combout\) # (!\stage[6][7]~45_combout\)))) ) ) # ( !\stage[6][7]~46_combout\ & ( (!\stage[6][0]~3_combout\ & 
-- ((!\stage[6][8]~1_combout\) # (!\stage[6][7]~45_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datab => \ALT_INV_stage[6][0]~9_combout\,
	datac => \ALT_INV_stage[6][7]~45_combout\,
	datad => \ALT_INV_stage[6][0]~3_combout\,
	dataf => \ALT_INV_stage[6][7]~46_combout\,
	combout => \stage[6][7]~47_combout\);

-- Location: LABCELL_X40_Y53_N30
\Y~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = ( \stage[6][7]~47_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\A[7]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\stage[6][8]~44_combout\))))) ) ) # ( !\stage[6][7]~47_combout\ & ( ((!\ShiftFN[0]~input_o\ & (\A[7]~input_o\)) 
-- # (\ShiftFN[0]~input_o\ & ((\stage[6][8]~44_combout\)))) # (\ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101111111010111010111111100001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_stage[6][8]~44_combout\,
	dataf => \ALT_INV_stage[6][7]~47_combout\,
	combout => \Y~9_combout\);

-- Location: LABCELL_X40_Y53_N10
\Equal2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: MLABCELL_X39_Y53_N16
\Y~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = ( \stage[6][0]~9_combout\ & ( !\Equal2~0_combout\ & ( (((\stage[6][7]~45_combout\ & \stage[6][8]~1_combout\)) # (\stage[6][0]~3_combout\)) # (\stage[6][7]~46_combout\) ) ) ) # ( !\stage[6][0]~9_combout\ & ( !\Equal2~0_combout\ & ( 
-- ((\stage[6][7]~45_combout\ & \stage[6][8]~1_combout\)) # (\stage[6][0]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111001101111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][7]~45_combout\,
	datab => \ALT_INV_stage[6][7]~46_combout\,
	datac => \ALT_INV_stage[6][8]~1_combout\,
	datad => \ALT_INV_stage[6][0]~3_combout\,
	datae => \ALT_INV_stage[6][0]~9_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Y~10_combout\);

-- Location: LABCELL_X40_Y53_N14
\Y~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = ( \ExtWord~input_o\ & ( \Y~10_combout\ & ( ((!\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\)) # (\stage[6][8]~44_combout\) ) ) ) # ( !\ExtWord~input_o\ & ( \Y~10_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\) # 
-- (\A[8]~input_o\)))) # (\ShiftFN[1]~input_o\ & (\stage[6][8]~44_combout\)) ) ) ) # ( \ExtWord~input_o\ & ( !\Y~10_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\A[8]~input_o\))) # (\ShiftFN[0]~input_o\ & (\stage[6][8]~44_combout\)))) ) 
-- ) ) # ( !\ExtWord~input_o\ & ( !\Y~10_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\A[8]~input_o\ & !\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (\stage[6][8]~44_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010101001101010000000000111111010101011111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~44_combout\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y~10_combout\,
	combout => \Y~11_combout\);

-- Location: MLABCELL_X39_Y52_N28
\Y~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = ( \ShiftFN[1]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y~14_combout\);

-- Location: MLABCELL_X39_Y53_N20
\Y~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = ( !\stage[6][8]~1_combout\ & ( (\fill~0_combout\ & \Y~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fill~0_combout\,
	datad => \ALT_INV_Y~14_combout\,
	dataf => \ALT_INV_stage[6][8]~1_combout\,
	combout => \Y~15_combout\);

-- Location: MLABCELL_X39_Y52_N30
\Y~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = (\ExtWord~input_o\ & !\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	combout => \Y~16_combout\);

-- Location: LABCELL_X40_Y53_N18
\Y~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = ( \ExtWord~input_o\ & ( (\stage[3][8]~8_combout\ & (\stage[6][8]~1_combout\ & (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[3][8]~8_combout\,
	datab => \ALT_INV_stage[6][8]~1_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Y~36_combout\);

-- Location: LABCELL_X40_Y53_N8
\Y~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = ( !\B[5]~input_o\ & ( (\ShiftFN[1]~input_o\ & (!\B[3]~input_o\ & (!\B[4]~input_o\ & !\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y~17_combout\);

-- Location: MLABCELL_X39_Y53_N24
\Y~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = ( \A[9]~input_o\ & ( ((\Y~17_combout\ & \stage[3][9]~22_combout\)) # (\Equal2~0_combout\) ) ) # ( !\A[9]~input_o\ & ( (\Y~17_combout\ & \stage[3][9]~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~17_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_stage[3][9]~22_combout\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Y~18_combout\);

-- Location: LABCELL_X40_Y53_N6
\Y~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = (!\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y~12_combout\);

-- Location: MLABCELL_X39_Y53_N28
\Y~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = ( \Y~12_combout\ & ( (((\stage[6][8]~1_combout\ & \stage[6][6]~41_combout\)) # (\stage[6][6]~42_combout\)) # (\stage[6][0]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datab => \ALT_INV_stage[6][0]~3_combout\,
	datac => \ALT_INV_stage[6][6]~41_combout\,
	datad => \ALT_INV_stage[6][6]~42_combout\,
	dataf => \ALT_INV_Y~12_combout\,
	combout => \Y~13_combout\);

-- Location: MLABCELL_X39_Y53_N8
\Y~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = ( \Y~18_combout\ & ( \Y~13_combout\ ) ) # ( !\Y~18_combout\ & ( \Y~13_combout\ ) ) # ( \Y~18_combout\ & ( !\Y~13_combout\ ) ) # ( !\Y~18_combout\ & ( !\Y~13_combout\ & ( (((\Y~16_combout\ & \Y~10_combout\)) # (\Y~36_combout\)) # 
-- (\Y~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~15_combout\,
	datab => \ALT_INV_Y~16_combout\,
	datac => \ALT_INV_Y~36_combout\,
	datad => \ALT_INV_Y~10_combout\,
	datae => \ALT_INV_Y~18_combout\,
	dataf => \ALT_INV_Y~13_combout\,
	combout => \Y~19_combout\);

-- Location: MLABCELL_X39_Y53_N26
\Y~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = ( \A[10]~input_o\ & ( ((\Y~17_combout\ & \stage[3][10]~29_combout\)) # (\Equal2~0_combout\) ) ) # ( !\A[10]~input_o\ & ( (\Y~17_combout\ & \stage[3][10]~29_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~17_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_stage[3][10]~29_combout\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Y~21_combout\);

-- Location: MLABCELL_X39_Y53_N32
\Y~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = ( \stage[6][5]~39_combout\ & ( \stage[3][13]~38_combout\ & ( (\Y~12_combout\ & (((\stage[6][0]~9_combout\) # (\stage[6][0]~3_combout\)) # (\stage[6][8]~1_combout\))) ) ) ) # ( !\stage[6][5]~39_combout\ & ( \stage[3][13]~38_combout\ & ( 
-- (\Y~12_combout\ & ((\stage[6][0]~9_combout\) # (\stage[6][0]~3_combout\))) ) ) ) # ( \stage[6][5]~39_combout\ & ( !\stage[3][13]~38_combout\ & ( (\Y~12_combout\ & ((\stage[6][0]~3_combout\) # (\stage[6][8]~1_combout\))) ) ) ) # ( !\stage[6][5]~39_combout\ 
-- & ( !\stage[3][13]~38_combout\ & ( (\stage[6][0]~3_combout\ & \Y~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000111011100000000001111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datab => \ALT_INV_stage[6][0]~3_combout\,
	datac => \ALT_INV_stage[6][0]~9_combout\,
	datad => \ALT_INV_Y~12_combout\,
	datae => \ALT_INV_stage[6][5]~39_combout\,
	dataf => \ALT_INV_stage[3][13]~38_combout\,
	combout => \Y~20_combout\);

-- Location: MLABCELL_X39_Y53_N10
\Y~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = ( \Y~21_combout\ & ( \Y~20_combout\ ) ) # ( !\Y~21_combout\ & ( \Y~20_combout\ ) ) # ( \Y~21_combout\ & ( !\Y~20_combout\ ) ) # ( !\Y~21_combout\ & ( !\Y~20_combout\ & ( (((\Y~16_combout\ & \Y~10_combout\)) # (\Y~36_combout\)) # 
-- (\Y~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~15_combout\,
	datab => \ALT_INV_Y~16_combout\,
	datac => \ALT_INV_Y~10_combout\,
	datad => \ALT_INV_Y~36_combout\,
	datae => \ALT_INV_Y~21_combout\,
	dataf => \ALT_INV_Y~20_combout\,
	combout => \Y~22_combout\);

-- Location: MLABCELL_X39_Y53_N22
\Y~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = (!\Y~17_combout\ & (((\Equal2~0_combout\ & \A[11]~input_o\)))) # (\Y~17_combout\ & (((\Equal2~0_combout\ & \A[11]~input_o\)) # (\stage[3][11]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~17_combout\,
	datab => \ALT_INV_stage[3][11]~32_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_A[11]~input_o\,
	combout => \Y~24_combout\);

-- Location: MLABCELL_X39_Y53_N34
\Y~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = ( \stage[6][4]~36_combout\ & ( \stage[3][12]~35_combout\ & ( (\Y~12_combout\ & (((\stage[6][0]~9_combout\) # (\stage[6][0]~3_combout\)) # (\stage[6][8]~1_combout\))) ) ) ) # ( !\stage[6][4]~36_combout\ & ( \stage[3][12]~35_combout\ & ( 
-- (\Y~12_combout\ & ((\stage[6][0]~9_combout\) # (\stage[6][0]~3_combout\))) ) ) ) # ( \stage[6][4]~36_combout\ & ( !\stage[3][12]~35_combout\ & ( (\Y~12_combout\ & ((\stage[6][0]~3_combout\) # (\stage[6][8]~1_combout\))) ) ) ) # ( !\stage[6][4]~36_combout\ 
-- & ( !\stage[3][12]~35_combout\ & ( (\stage[6][0]~3_combout\ & \Y~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001110000011100000011000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stage[6][8]~1_combout\,
	datab => \ALT_INV_stage[6][0]~3_combout\,
	datac => \ALT_INV_Y~12_combout\,
	datad => \ALT_INV_stage[6][0]~9_combout\,
	datae => \ALT_INV_stage[6][4]~36_combout\,
	dataf => \ALT_INV_stage[3][12]~35_combout\,
	combout => \Y~23_combout\);

-- Location: MLABCELL_X39_Y53_N36
\Y~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = ( \Y~23_combout\ & ( \Y~10_combout\ ) ) # ( !\Y~23_combout\ & ( \Y~10_combout\ & ( (((\Y~24_combout\) # (\Y~15_combout\)) # (\Y~16_combout\)) # (\Y~36_combout\) ) ) ) # ( \Y~23_combout\ & ( !\Y~10_combout\ ) ) # ( !\Y~23_combout\ & ( 
-- !\Y~10_combout\ & ( ((\Y~24_combout\) # (\Y~15_combout\)) # (\Y~36_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~16_combout\,
	datac => \ALT_INV_Y~15_combout\,
	datad => \ALT_INV_Y~24_combout\,
	datae => \ALT_INV_Y~23_combout\,
	dataf => \ALT_INV_Y~10_combout\,
	combout => \Y~25_combout\);

-- Location: MLABCELL_X39_Y52_N6
\Y~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = ( \A[12]~input_o\ & ( ((\Y~4_combout\ & \Y~14_combout\)) # (\Equal2~0_combout\) ) ) # ( !\A[12]~input_o\ & ( (\Y~4_combout\ & \Y~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y~4_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Y~14_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Y~26_combout\);

-- Location: MLABCELL_X39_Y52_N14
\Y~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = ( \stage[6][3]~34_combout\ & ( \Y~26_combout\ ) ) # ( !\stage[6][3]~34_combout\ & ( \Y~26_combout\ ) ) # ( \stage[6][3]~34_combout\ & ( !\Y~26_combout\ & ( ((\Y~10_combout\ & \Y~16_combout\)) # (\Y~36_combout\) ) ) ) # ( 
-- !\stage[6][3]~34_combout\ & ( !\Y~26_combout\ & ( (((\Y~10_combout\ & \Y~16_combout\)) # (\Y~12_combout\)) # (\Y~36_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101111111010101010111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~10_combout\,
	datac => \ALT_INV_Y~12_combout\,
	datad => \ALT_INV_Y~16_combout\,
	datae => \ALT_INV_stage[6][3]~34_combout\,
	dataf => \ALT_INV_Y~26_combout\,
	combout => \Y~27_combout\);

-- Location: MLABCELL_X39_Y52_N24
\Y~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = ( \Equal2~0_combout\ & ( ((\Y~2_combout\ & \Y~14_combout\)) # (\A[13]~input_o\) ) ) # ( !\Equal2~0_combout\ & ( (\Y~2_combout\ & \Y~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_Y~2_combout\,
	datad => \ALT_INV_Y~14_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Y~28_combout\);

-- Location: MLABCELL_X39_Y52_N12
\Y~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = ( \stage[6][2]~31_combout\ & ( \Y~28_combout\ ) ) # ( !\stage[6][2]~31_combout\ & ( \Y~28_combout\ ) ) # ( \stage[6][2]~31_combout\ & ( !\Y~28_combout\ & ( ((\Y~10_combout\ & \Y~16_combout\)) # (\Y~36_combout\) ) ) ) # ( 
-- !\stage[6][2]~31_combout\ & ( !\Y~28_combout\ & ( (((\Y~10_combout\ & \Y~16_combout\)) # (\Y~12_combout\)) # (\Y~36_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111010101110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~36_combout\,
	datab => \ALT_INV_Y~10_combout\,
	datac => \ALT_INV_Y~16_combout\,
	datad => \ALT_INV_Y~12_combout\,
	datae => \ALT_INV_stage[6][2]~31_combout\,
	dataf => \ALT_INV_Y~28_combout\,
	combout => \Y~29_combout\);

-- Location: LABCELL_X40_Y52_N8
\Y~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = ( \A[14]~input_o\ & ( (!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Y~30_combout\);

-- Location: LABCELL_X40_Y52_N38
\Y~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = ( !\Y~30_combout\ & ( \stage[1][14]~7_combout\ & ( (!\Y~14_combout\) # ((!\fill~0_combout\ & ((!\stage[6][8]~1_combout\) # (!\stage[6][15]~16_combout\)))) ) ) ) # ( !\Y~30_combout\ & ( !\stage[1][14]~7_combout\ & ( (!\Y~14_combout\) # 
-- ((!\fill~0_combout\) # ((\stage[6][8]~1_combout\ & \stage[6][15]~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101111000000000000000011101110111010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~14_combout\,
	datab => \ALT_INV_fill~0_combout\,
	datac => \ALT_INV_stage[6][8]~1_combout\,
	datad => \ALT_INV_stage[6][15]~16_combout\,
	datae => \ALT_INV_Y~30_combout\,
	dataf => \ALT_INV_stage[1][14]~7_combout\,
	combout => \Y~31_combout\);

-- Location: MLABCELL_X39_Y52_N16
\Y~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = ( \stage[6][1]~28_combout\ & ( \Y~31_combout\ & ( ((\Y~16_combout\ & \Y~10_combout\)) # (\Y~36_combout\) ) ) ) # ( !\stage[6][1]~28_combout\ & ( \Y~31_combout\ & ( (((\Y~16_combout\ & \Y~10_combout\)) # (\Y~36_combout\)) # 
-- (\Y~12_combout\) ) ) ) # ( \stage[6][1]~28_combout\ & ( !\Y~31_combout\ ) ) # ( !\stage[6][1]~28_combout\ & ( !\Y~31_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111011111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~16_combout\,
	datab => \ALT_INV_Y~12_combout\,
	datac => \ALT_INV_Y~36_combout\,
	datad => \ALT_INV_Y~10_combout\,
	datae => \ALT_INV_stage[6][1]~28_combout\,
	dataf => \ALT_INV_Y~31_combout\,
	combout => \Y~32_combout\);

-- Location: LABCELL_X40_Y53_N38
\Y~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \A[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y~33_combout\);

-- Location: LABCELL_X38_Y52_N16
\Y~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = ( \Y~14_combout\ & ( \stage[6][8]~1_combout\ & ( (!\Y~33_combout\ & ((!\stage[6][15]~0_combout\ & (!\fill~0_combout\)) # (\stage[6][15]~0_combout\ & ((!\A_rev[15]~0_combout\))))) ) ) ) # ( !\Y~14_combout\ & ( \stage[6][8]~1_combout\ & ( 
-- !\Y~33_combout\ ) ) ) # ( \Y~14_combout\ & ( !\stage[6][8]~1_combout\ & ( (!\fill~0_combout\ & !\Y~33_combout\) ) ) ) # ( !\Y~14_combout\ & ( !\stage[6][8]~1_combout\ & ( !\Y~33_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101010100000000011111111000000001010110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fill~0_combout\,
	datab => \ALT_INV_A_rev[15]~0_combout\,
	datac => \ALT_INV_stage[6][15]~0_combout\,
	datad => \ALT_INV_Y~33_combout\,
	datae => \ALT_INV_Y~14_combout\,
	dataf => \ALT_INV_stage[6][8]~1_combout\,
	combout => \Y~34_combout\);

-- Location: MLABCELL_X39_Y52_N18
\Y~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = ( \stage[6][0]~15_combout\ & ( \Y~34_combout\ & ( ((\Y~16_combout\ & \Y~10_combout\)) # (\Y~36_combout\) ) ) ) # ( !\stage[6][0]~15_combout\ & ( \Y~34_combout\ & ( (((\Y~16_combout\ & \Y~10_combout\)) # (\Y~36_combout\)) # 
-- (\Y~12_combout\) ) ) ) # ( \stage[6][0]~15_combout\ & ( !\Y~34_combout\ ) ) # ( !\stage[6][0]~15_combout\ & ( !\Y~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110111111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y~16_combout\,
	datab => \ALT_INV_Y~12_combout\,
	datac => \ALT_INV_Y~10_combout\,
	datad => \ALT_INV_Y~36_combout\,
	datae => \ALT_INV_stage[6][0]~15_combout\,
	dataf => \ALT_INV_Y~34_combout\,
	combout => \Y~35_combout\);

-- Location: IOIBUF_X12_Y56_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X59_Y10_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X48_Y0_N94
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X59_Y7_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y51_N63
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y22_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N32
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X56_Y56_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X59_Y26_N1
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


