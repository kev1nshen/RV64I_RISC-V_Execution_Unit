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

-- DATE "04/08/2026 14:58:05"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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
-- B[6]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \A_rev[1]~2_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \fill~1_combout\ : std_logic;
SIGNAL \stage[6][0]~202_combout\ : std_logic;
SIGNAL \stage[6][0]~25_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A_rev[2]~4_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A_rev[3]~3_combout\ : std_logic;
SIGNAL \stage[1][2]~26_combout\ : std_logic;
SIGNAL \stage[6][0]~27_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A_rev[5]~7_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A_rev[4]~8_combout\ : std_logic;
SIGNAL \stage[1][4]~29_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A_rev[7]~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A_rev[6]~6_combout\ : std_logic;
SIGNAL \stage[2][4]~28_combout\ : std_logic;
SIGNAL \stage[2][4]~30_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \stage[6][0]~31_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \stage[6][2]~22_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A_rev[9]~12_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A_rev[8]~13_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A_rev[11]~14_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A_rev[10]~15_combout\ : std_logic;
SIGNAL \stage[2][8]~36_combout\ : std_logic;
SIGNAL \stage[2][8]~37_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \stage[1][14]~33_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A_rev[14]~11_combout\ : std_logic;
SIGNAL \stage[1][14]~34_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A_rev[13]~9_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A_rev[12]~10_combout\ : std_logic;
SIGNAL \stage[2][12]~32_combout\ : std_logic;
SIGNAL \stage[2][12]~35_combout\ : std_logic;
SIGNAL \stage[3][8]~38_combout\ : std_logic;
SIGNAL \stage[6][0]~39_combout\ : std_logic;
SIGNAL \stage[1][16]~51_combout\ : std_logic;
SIGNAL \stage[1][16]~52_combout\ : std_logic;
SIGNAL \fill~0_combout\ : std_logic;
SIGNAL \A_rev[17]~42_combout\ : std_logic;
SIGNAL \A_rev[17]~43_combout\ : std_logic;
SIGNAL \stage[1][16]~53_combout\ : std_logic;
SIGNAL \A_rev[19]~38_combout\ : std_logic;
SIGNAL \A_rev[19]~39_combout\ : std_logic;
SIGNAL \A_rev[18]~40_combout\ : std_logic;
SIGNAL \A_rev[18]~41_combout\ : std_logic;
SIGNAL \stage[2][16]~50_combout\ : std_logic;
SIGNAL \stage[2][16]~54_combout\ : std_logic;
SIGNAL \A_rev[21]~30_combout\ : std_logic;
SIGNAL \A_rev[21]~31_combout\ : std_logic;
SIGNAL \A_rev[20]~32_combout\ : std_logic;
SIGNAL \A_rev[20]~33_combout\ : std_logic;
SIGNAL \A_rev[22]~36_combout\ : std_logic;
SIGNAL \A_rev[22]~37_combout\ : std_logic;
SIGNAL \A_rev[23]~34_combout\ : std_logic;
SIGNAL \A_rev[23]~35_combout\ : std_logic;
SIGNAL \stage[2][20]~48_combout\ : std_logic;
SIGNAL \stage[2][20]~49_combout\ : std_logic;
SIGNAL \stage[3][16]~55_combout\ : std_logic;
SIGNAL \A_rev[26]~28_combout\ : std_logic;
SIGNAL \A_rev[26]~29_combout\ : std_logic;
SIGNAL \A_rev[27]~26_combout\ : std_logic;
SIGNAL \A_rev[27]~27_combout\ : std_logic;
SIGNAL \stage[2][24]~46_combout\ : std_logic;
SIGNAL \A_rev[25]~22_combout\ : std_logic;
SIGNAL \A_rev[25]~23_combout\ : std_logic;
SIGNAL \A_rev[24]~24_combout\ : std_logic;
SIGNAL \A_rev[24]~25_combout\ : std_logic;
SIGNAL \stage[2][24]~45_combout\ : std_logic;
SIGNAL \A_rev[29]~16_combout\ : std_logic;
SIGNAL \A_rev[29]~17_combout\ : std_logic;
SIGNAL \A_rev[28]~18_combout\ : std_logic;
SIGNAL \A_rev[28]~19_combout\ : std_logic;
SIGNAL \stage[2][28]~42_combout\ : std_logic;
SIGNAL \A_rev[31]~0_combout\ : std_logic;
SIGNAL \A_rev[31]~1_combout\ : std_logic;
SIGNAL \A_rev[30]~20_combout\ : std_logic;
SIGNAL \A_rev[30]~21_combout\ : std_logic;
SIGNAL \stage[1][30]~43_combout\ : std_logic;
SIGNAL \stage[2][28]~44_combout\ : std_logic;
SIGNAL \stage[3][24]~47_combout\ : std_logic;
SIGNAL \stage[6][2]~41_combout\ : std_logic;
SIGNAL \stage[6][0]~56_combout\ : std_logic;
SIGNAL \fill~2_combout\ : std_logic;
SIGNAL \stage[6][0]~40_combout\ : std_logic;
SIGNAL \stage[6][0]~57_combout\ : std_logic;
SIGNAL \stage[4][31]~23_combout\ : std_logic;
SIGNAL \stage[6][31]~24_combout\ : std_logic;
SIGNAL \Y~80_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \stage[3][14]~59_combout\ : std_logic;
SIGNAL \stage[6][30]~58_combout\ : std_logic;
SIGNAL \stage[6][30]~60_combout\ : std_logic;
SIGNAL \Y~81_combout\ : std_logic;
SIGNAL \stage[2][9]~84_combout\ : std_logic;
SIGNAL \stage[1][15]~81_combout\ : std_logic;
SIGNAL \stage[2][13]~82_combout\ : std_logic;
SIGNAL \stage[2][13]~80_combout\ : std_logic;
SIGNAL \stage[2][13]~83_combout\ : std_logic;
SIGNAL \stage[2][9]~85_combout\ : std_logic;
SIGNAL \stage[3][9]~86_combout\ : std_logic;
SIGNAL \stage[2][25]~77_combout\ : std_logic;
SIGNAL \stage[2][29]~74_combout\ : std_logic;
SIGNAL \stage[2][29]~75_combout\ : std_logic;
SIGNAL \stage[2][29]~76_combout\ : std_logic;
SIGNAL \stage[2][25]~78_combout\ : std_logic;
SIGNAL \stage[3][25]~79_combout\ : std_logic;
SIGNAL \stage[6][1]~87_combout\ : std_logic;
SIGNAL \shamt[5]~0_combout\ : std_logic;
SIGNAL \stage[2][17]~71_combout\ : std_logic;
SIGNAL \stage[2][21]~68_combout\ : std_logic;
SIGNAL \stage[2][21]~69_combout\ : std_logic;
SIGNAL \stage[2][17]~70_combout\ : std_logic;
SIGNAL \stage[3][17]~72_combout\ : std_logic;
SIGNAL \stage[2][5]~64_combout\ : std_logic;
SIGNAL \stage[1][5]~65_combout\ : std_logic;
SIGNAL \stage[2][5]~66_combout\ : std_logic;
SIGNAL \stage[1][3]~62_combout\ : std_logic;
SIGNAL \stage[6][1]~61_combout\ : std_logic;
SIGNAL \stage[6][1]~63_combout\ : std_logic;
SIGNAL \stage[6][1]~67_combout\ : std_logic;
SIGNAL \stage[6][1]~73_combout\ : std_logic;
SIGNAL \stage[6][1]~88_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \stage[6][3]~101_combout\ : std_logic;
SIGNAL \stage[2][6]~102_combout\ : std_logic;
SIGNAL \stage[2][6]~103_combout\ : std_logic;
SIGNAL \stage[4][29]~89_combout\ : std_logic;
SIGNAL \stage[6][2]~104_combout\ : std_logic;
SIGNAL \stage[2][10]~106_combout\ : std_logic;
SIGNAL \stage[2][10]~107_combout\ : std_logic;
SIGNAL \stage[3][10]~105_combout\ : std_logic;
SIGNAL \stage[3][10]~108_combout\ : std_logic;
SIGNAL \stage[6][2]~109_combout\ : std_logic;
SIGNAL \stage[2][18]~95_combout\ : std_logic;
SIGNAL \stage[2][18]~96_combout\ : std_logic;
SIGNAL \stage[2][22]~97_combout\ : std_logic;
SIGNAL \stage[2][22]~98_combout\ : std_logic;
SIGNAL \stage[3][18]~99_combout\ : std_logic;
SIGNAL \stage[3][26]~93_combout\ : std_logic;
SIGNAL \stage[2][26]~91_combout\ : std_logic;
SIGNAL \stage[2][26]~92_combout\ : std_logic;
SIGNAL \stage[3][26]~94_combout\ : std_logic;
SIGNAL \stage[6][2]~100_combout\ : std_logic;
SIGNAL \stage[6][2]~110_combout\ : std_logic;
SIGNAL \stage[6][29]~90_combout\ : std_logic;
SIGNAL \Y~82_combout\ : std_logic;
SIGNAL \Y~32_combout\ : std_logic;
SIGNAL \stage[6][28]~111_combout\ : std_logic;
SIGNAL \Y~83_combout\ : std_logic;
SIGNAL \stage[2][27]~124_combout\ : std_logic;
SIGNAL \stage[3][27]~122_combout\ : std_logic;
SIGNAL \stage[2][27]~123_combout\ : std_logic;
SIGNAL \stage[3][27]~125_combout\ : std_logic;
SIGNAL \stage[2][19]~128_combout\ : std_logic;
SIGNAL \stage[2][19]~129_combout\ : std_logic;
SIGNAL \stage[2][23]~126_combout\ : std_logic;
SIGNAL \stage[2][23]~127_combout\ : std_logic;
SIGNAL \stage[3][19]~130_combout\ : std_logic;
SIGNAL \stage[6][3]~131_combout\ : std_logic;
SIGNAL \stage[2][11]~117_combout\ : std_logic;
SIGNAL \stage[2][15]~115_combout\ : std_logic;
SIGNAL \stage[2][15]~116_combout\ : std_logic;
SIGNAL \stage[2][11]~118_combout\ : std_logic;
SIGNAL \stage[3][11]~119_combout\ : std_logic;
SIGNAL \stage[2][7]~112_combout\ : std_logic;
SIGNAL \stage[2][7]~113_combout\ : std_logic;
SIGNAL \stage[6][3]~114_combout\ : std_logic;
SIGNAL \stage[6][3]~120_combout\ : std_logic;
SIGNAL \stage[6][3]~121_combout\ : std_logic;
SIGNAL \stage[6][3]~132_combout\ : std_logic;
SIGNAL \Y~33_combout\ : std_logic;
SIGNAL \stage[6][27]~133_combout\ : std_logic;
SIGNAL \Y~84_combout\ : std_logic;
SIGNAL \stage[6][6]~136_combout\ : std_logic;
SIGNAL \stage[6][6]~135_combout\ : std_logic;
SIGNAL \stage[6][4]~137_combout\ : std_logic;
SIGNAL \stage[3][20]~139_combout\ : std_logic;
SIGNAL \stage[4][20]~138_combout\ : std_logic;
SIGNAL \stage[4][20]~140_combout\ : std_logic;
SIGNAL \stage[3][12]~134_combout\ : std_logic;
SIGNAL \stage[6][4]~141_combout\ : std_logic;
SIGNAL \stage[6][4]~205_combout\ : std_logic;
SIGNAL \Y~34_combout\ : std_logic;
SIGNAL \stage[2][9]~143_combout\ : std_logic;
SIGNAL \stage[3][13]~144_combout\ : std_logic;
SIGNAL \stage[6][5]~145_combout\ : std_logic;
SIGNAL \stage[3][21]~147_combout\ : std_logic;
SIGNAL \stage[4][21]~146_combout\ : std_logic;
SIGNAL \stage[4][21]~148_combout\ : std_logic;
SIGNAL \stage[6][5]~149_combout\ : std_logic;
SIGNAL \stage[6][5]~206_combout\ : std_logic;
SIGNAL \stage[6][26]~142_combout\ : std_logic;
SIGNAL \Y~85_combout\ : std_logic;
SIGNAL \Y~35_combout\ : std_logic;
SIGNAL \stage[6][6]~152_combout\ : std_logic;
SIGNAL \stage[3][22]~154_combout\ : std_logic;
SIGNAL \stage[4][22]~153_combout\ : std_logic;
SIGNAL \stage[4][22]~155_combout\ : std_logic;
SIGNAL \stage[3][14]~151_combout\ : std_logic;
SIGNAL \stage[3][14]~203_combout\ : std_logic;
SIGNAL \stage[6][6]~156_combout\ : std_logic;
SIGNAL \stage[6][6]~207_combout\ : std_logic;
SIGNAL \stage[6][25]~150_combout\ : std_logic;
SIGNAL \Y~86_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \stage[2][6]~161_combout\ : std_logic;
SIGNAL \stage[4][23]~162_combout\ : std_logic;
SIGNAL \stage[3][23]~163_combout\ : std_logic;
SIGNAL \stage[4][23]~164_combout\ : std_logic;
SIGNAL \stage[2][11]~158_combout\ : std_logic;
SIGNAL \stage[3][15]~159_combout\ : std_logic;
SIGNAL \stage[6][7]~160_combout\ : std_logic;
SIGNAL \stage[6][7]~165_combout\ : std_logic;
SIGNAL \stage[6][7]~208_combout\ : std_logic;
SIGNAL \stage[6][24]~157_combout\ : std_logic;
SIGNAL \Y~87_combout\ : std_logic;
SIGNAL \Y~37_combout\ : std_logic;
SIGNAL \stage[6][23]~166_combout\ : std_logic;
SIGNAL \Y~88_combout\ : std_logic;
SIGNAL \stage[6][14]~167_combout\ : std_logic;
SIGNAL \stage[4][24]~168_combout\ : std_logic;
SIGNAL \stage[6][8]~169_combout\ : std_logic;
SIGNAL \stage[6][8]~170_combout\ : std_logic;
SIGNAL \Y~38_combout\ : std_logic;
SIGNAL \stage[4][25]~172_combout\ : std_logic;
SIGNAL \stage[6][9]~173_combout\ : std_logic;
SIGNAL \stage[6][9]~174_combout\ : std_logic;
SIGNAL \stage[6][22]~171_combout\ : std_logic;
SIGNAL \Y~89_combout\ : std_logic;
SIGNAL \Y~39_combout\ : std_logic;
SIGNAL \stage[4][26]~176_combout\ : std_logic;
SIGNAL \stage[6][10]~177_combout\ : std_logic;
SIGNAL \stage[6][10]~178_combout\ : std_logic;
SIGNAL \stage[6][21]~175_combout\ : std_logic;
SIGNAL \Y~90_combout\ : std_logic;
SIGNAL \Y~40_combout\ : std_logic;
SIGNAL \stage[4][27]~180_combout\ : std_logic;
SIGNAL \stage[6][11]~181_combout\ : std_logic;
SIGNAL \stage[6][11]~182_combout\ : std_logic;
SIGNAL \stage[6][20]~179_combout\ : std_logic;
SIGNAL \Y~91_combout\ : std_logic;
SIGNAL \Y~41_combout\ : std_logic;
SIGNAL \stage[4][28]~204_combout\ : std_logic;
SIGNAL \stage[6][12]~185_combout\ : std_logic;
SIGNAL \stage[6][12]~186_combout\ : std_logic;
SIGNAL \stage[6][19]~183_combout\ : std_logic;
SIGNAL \stage[6][19]~184_combout\ : std_logic;
SIGNAL \Y~92_combout\ : std_logic;
SIGNAL \Y~42_combout\ : std_logic;
SIGNAL \stage[6][18]~187_combout\ : std_logic;
SIGNAL \stage[6][18]~188_combout\ : std_logic;
SIGNAL \Y~93_combout\ : std_logic;
SIGNAL \stage[4][29]~189_combout\ : std_logic;
SIGNAL \stage[6][13]~190_combout\ : std_logic;
SIGNAL \stage[6][13]~191_combout\ : std_logic;
SIGNAL \Y~43_combout\ : std_logic;
SIGNAL \stage[6][17]~192_combout\ : std_logic;
SIGNAL \stage[6][17]~193_combout\ : std_logic;
SIGNAL \Y~94_combout\ : std_logic;
SIGNAL \stage[4][30]~194_combout\ : std_logic;
SIGNAL \stage[6][14]~195_combout\ : std_logic;
SIGNAL \stage[6][14]~196_combout\ : std_logic;
SIGNAL \Y~44_combout\ : std_logic;
SIGNAL \stage[6][16]~197_combout\ : std_logic;
SIGNAL \stage[6][16]~198_combout\ : std_logic;
SIGNAL \stage[4][31]~199_combout\ : std_logic;
SIGNAL \stage[6][15]~200_combout\ : std_logic;
SIGNAL \stage[6][15]~201_combout\ : std_logic;
SIGNAL \Y_rev[15]~2_combout\ : std_logic;
SIGNAL \Y~45_combout\ : std_logic;
SIGNAL \Y~46_combout\ : std_logic;
SIGNAL \Y~47_combout\ : std_logic;
SIGNAL \Y~48_combout\ : std_logic;
SIGNAL \Y~49_combout\ : std_logic;
SIGNAL \Y~50_combout\ : std_logic;
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
SIGNAL \Y~68_combout\ : std_logic;
SIGNAL \Y~69_combout\ : std_logic;
SIGNAL \Y~70_combout\ : std_logic;
SIGNAL \Y~71_combout\ : std_logic;
SIGNAL \Y~72_combout\ : std_logic;
SIGNAL \Y~73_combout\ : std_logic;
SIGNAL \Y~74_combout\ : std_logic;
SIGNAL \Y~75_combout\ : std_logic;
SIGNAL \Y~76_combout\ : std_logic;
SIGNAL \Y~77_combout\ : std_logic;
SIGNAL \Y~78_combout\ : std_logic;
SIGNAL \Y~79_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X111_Y73_N9
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~30_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~31_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~32_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~33_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~34_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~35_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~36_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~37_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~38_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~39_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~40_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~41_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~42_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~43_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~44_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~45_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~49_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~51_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~53_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~55_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~57_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~59_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~61_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~63_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~65_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~67_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~69_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~71_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~73_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~75_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~77_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~79_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOIBUF_X87_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X85_Y71_N24
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X85_Y69_N28
\A_rev[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[1]~2_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[30]~input_o\)))) # (!\Equal2~0_combout\ & (((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[30]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[1]~2_combout\);

-- Location: IOIBUF_X74_Y73_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X85_Y69_N16
\fill~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill~1_combout\ = (\A[31]~input_o\ & (\ShiftFN[0]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \fill~1_combout\);

-- Location: LCCOMB_X86_Y69_N30
\stage[6][0]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~202_combout\ = (\ShiftFN[1]~input_o\ & (\A[0]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\fill~1_combout\) # ((\A[0]~input_o\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \fill~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \stage[6][0]~202_combout\);

-- Location: LCCOMB_X87_Y68_N26
\stage[6][0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~25_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[1]~2_combout\)) # (!\B[0]~input_o\ & ((\stage[6][0]~202_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[1]~2_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[6][0]~202_combout\,
	combout => \stage[6][0]~25_combout\);

-- Location: IOIBUF_X89_Y73_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X91_Y69_N10
\A_rev[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[2]~4_combout\ = (\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[29]~input_o\)))) # (!\Equal2~0_combout\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A[29]~input_o\,
	combout => \A_rev[2]~4_combout\);

-- Location: IOIBUF_X96_Y73_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X91_Y69_N8
\A_rev[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[3]~3_combout\ = (\Equal2~0_combout\ & (\A[28]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A[3]~input_o\,
	combout => \A_rev[3]~3_combout\);

-- Location: LCCOMB_X87_Y68_N20
\stage[1][2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][2]~26_combout\ = (\B[0]~input_o\ & ((\A_rev[3]~3_combout\))) # (!\B[0]~input_o\ & (\A_rev[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A_rev[2]~4_combout\,
	datad => \A_rev[3]~3_combout\,
	combout => \stage[1][2]~26_combout\);

-- Location: LCCOMB_X87_Y68_N22
\stage[6][0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~27_combout\ = (!\B[2]~input_o\ & ((\stage[6][0]~25_combout\) # ((\B[1]~input_o\ & \stage[1][2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \stage[6][0]~25_combout\,
	datad => \stage[1][2]~26_combout\,
	combout => \stage[6][0]~27_combout\);

-- Location: IOIBUF_X115_Y69_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X89_Y69_N2
\A_rev[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[5]~7_combout\ = (\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[26]~input_o\)))) # (!\Equal2~0_combout\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[26]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[5]~7_combout\);

-- Location: IOIBUF_X115_Y68_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X91_Y69_N4
\A_rev[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[4]~8_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[27]~input_o\))) # (!\Equal2~0_combout\ & (((\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[27]~input_o\,
	datad => \A[4]~input_o\,
	combout => \A_rev[4]~8_combout\);

-- Location: LCCOMB_X87_Y68_N16
\stage[1][4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][4]~29_combout\ = (\B[0]~input_o\ & (\A_rev[5]~7_combout\)) # (!\B[0]~input_o\ & ((\A_rev[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[5]~7_combout\,
	datac => \A_rev[4]~8_combout\,
	combout => \stage[1][4]~29_combout\);

-- Location: IOIBUF_X94_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X89_Y69_N0
\A_rev[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[7]~5_combout\ = (\Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[24]~input_o\)))) # (!\Equal2~0_combout\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[24]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[7]~5_combout\);

-- Location: IOIBUF_X105_Y73_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X85_Y67_N0
\A_rev[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[6]~6_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[25]~input_o\)))) # (!\Equal2~0_combout\ & (((\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[25]~input_o\,
	combout => \A_rev[6]~6_combout\);

-- Location: LCCOMB_X87_Y67_N8
\stage[2][4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][4]~28_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[7]~5_combout\)) # (!\B[0]~input_o\ & ((\A_rev[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[7]~5_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[6]~6_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[2][4]~28_combout\);

-- Location: LCCOMB_X87_Y67_N10
\stage[2][4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][4]~30_combout\ = (\stage[2][4]~28_combout\) # ((\stage[1][4]~29_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][4]~29_combout\,
	datab => \B[1]~input_o\,
	datac => \stage[2][4]~28_combout\,
	combout => \stage[2][4]~30_combout\);

-- Location: IOIBUF_X87_Y73_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X87_Y66_N8
\stage[6][0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~31_combout\ = (!\B[3]~input_o\ & ((\stage[6][0]~27_combout\) # ((\stage[2][4]~30_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][0]~27_combout\,
	datab => \stage[2][4]~30_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[6][0]~31_combout\);

-- Location: IOIBUF_X100_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X89_Y68_N8
\stage[6][2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~22_combout\ = (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[6][2]~22_combout\);

-- Location: IOIBUF_X74_Y73_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X85_Y67_N20
\A_rev[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[9]~12_combout\ = (\Equal2~0_combout\ & (((\A[22]~input_o\ & !\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[9]~input_o\,
	datac => \A[22]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[9]~12_combout\);

-- Location: IOIBUF_X72_Y73_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X84_Y67_N28
\A_rev[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[8]~13_combout\ = (\Equal2~0_combout\ & (\A[23]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[23]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[8]~input_o\,
	combout => \A_rev[8]~13_combout\);

-- Location: IOIBUF_X115_Y66_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X85_Y67_N14
\A_rev[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[11]~14_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[20]~input_o\))) # (!\Equal2~0_combout\ & (((\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[11]~input_o\,
	combout => \A_rev[11]~14_combout\);

-- Location: IOIBUF_X72_Y73_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X84_Y67_N22
\A_rev[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[10]~15_combout\ = (\Equal2~0_combout\ & (\A[21]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A[21]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[10]~input_o\,
	combout => \A_rev[10]~15_combout\);

-- Location: LCCOMB_X87_Y67_N16
\stage[2][8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][8]~36_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[11]~14_combout\)) # (!\B[0]~input_o\ & ((\A_rev[10]~15_combout\))))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[11]~14_combout\,
	datab => \A_rev[10]~15_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \stage[2][8]~36_combout\);

-- Location: LCCOMB_X87_Y67_N26
\stage[2][8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][8]~37_combout\ = (\B[1]~input_o\ & (((\stage[2][8]~36_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][8]~36_combout\ & (\A_rev[9]~12_combout\)) # (!\stage[2][8]~36_combout\ & ((\A_rev[8]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[9]~12_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[8]~13_combout\,
	datad => \stage[2][8]~36_combout\,
	combout => \stage[2][8]~37_combout\);

-- Location: IOIBUF_X81_Y73_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X85_Y67_N2
\stage[1][14]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][14]~33_combout\ = (\Equal2~0_combout\ & (((\A[16]~input_o\ & !\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \A[16]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[1][14]~33_combout\);

-- Location: IOIBUF_X81_Y73_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X86_Y67_N2
\A_rev[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[14]~11_combout\ = (\Equal2~0_combout\ & (\A[17]~input_o\ & (!\ExtWord~input_o\))) # (!\Equal2~0_combout\ & (((\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Equal2~0_combout\,
	datad => \A[14]~input_o\,
	combout => \A_rev[14]~11_combout\);

-- Location: LCCOMB_X86_Y67_N4
\stage[1][14]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][14]~34_combout\ = (\B[0]~input_o\ & (\stage[1][14]~33_combout\)) # (!\B[0]~input_o\ & ((\A_rev[14]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][14]~33_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[14]~11_combout\,
	combout => \stage[1][14]~34_combout\);

-- Location: IOIBUF_X115_Y66_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X86_Y67_N24
\A_rev[13]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[13]~9_combout\ = (\Equal2~0_combout\ & (((\A[18]~input_o\ & !\ExtWord~input_o\)))) # (!\Equal2~0_combout\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \A[18]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_rev[13]~9_combout\);

-- Location: IOIBUF_X81_Y73_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X84_Y67_N26
\A_rev[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[12]~10_combout\ = (\Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[19]~input_o\)))) # (!\Equal2~0_combout\ & (((\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Equal2~0_combout\,
	datac => \A[12]~input_o\,
	datad => \A[19]~input_o\,
	combout => \A_rev[12]~10_combout\);

-- Location: LCCOMB_X87_Y67_N28
\stage[2][12]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][12]~32_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[13]~9_combout\)) # (!\B[0]~input_o\ & ((\A_rev[12]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[13]~9_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[12]~10_combout\,
	combout => \stage[2][12]~32_combout\);

-- Location: LCCOMB_X87_Y67_N30
\stage[2][12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][12]~35_combout\ = (\stage[2][12]~32_combout\) # ((\stage[1][14]~34_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][14]~34_combout\,
	datab => \stage[2][12]~32_combout\,
	datac => \B[1]~input_o\,
	combout => \stage[2][12]~35_combout\);

-- Location: LCCOMB_X87_Y66_N10
\stage[3][8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][8]~38_combout\ = (\B[2]~input_o\ & ((\stage[2][12]~35_combout\))) # (!\B[2]~input_o\ & (\stage[2][8]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][8]~37_combout\,
	datac => \stage[2][12]~35_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][8]~38_combout\);

-- Location: LCCOMB_X88_Y66_N24
\stage[6][0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~39_combout\ = (\stage[6][2]~22_combout\ & ((\stage[6][0]~31_combout\) # ((\B[3]~input_o\ & \stage[3][8]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][0]~31_combout\,
	datab => \stage[6][2]~22_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[3][8]~38_combout\,
	combout => \stage[6][0]~39_combout\);

-- Location: LCCOMB_X85_Y67_N26
\stage[1][16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][16]~51_combout\ = (\A[16]~input_o\ & (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \stage[1][16]~51_combout\);

-- Location: LCCOMB_X85_Y67_N28
\stage[1][16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][16]~52_combout\ = (\A[15]~input_o\ & (\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \stage[1][16]~52_combout\);

-- Location: LCCOMB_X84_Y67_N8
\fill~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill~0_combout\ = (\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & (\A[15]~input_o\ & \ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \fill~0_combout\);

-- Location: LCCOMB_X86_Y67_N10
\A_rev[17]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[17]~42_combout\ = (\A[17]~input_o\ & (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[17]~42_combout\);

-- Location: LCCOMB_X86_Y67_N12
\A_rev[17]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[17]~43_combout\ = (\fill~0_combout\) # ((\A_rev[17]~42_combout\) # ((\Equal2~0_combout\ & \A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \A_rev[17]~42_combout\,
	datad => \A[14]~input_o\,
	combout => \A_rev[17]~43_combout\);

-- Location: LCCOMB_X85_Y67_N6
\stage[1][16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][16]~53_combout\ = (\B[0]~input_o\ & (((\A_rev[17]~43_combout\)))) # (!\B[0]~input_o\ & ((\stage[1][16]~51_combout\) # ((\stage[1][16]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][16]~51_combout\,
	datab => \stage[1][16]~52_combout\,
	datac => \A_rev[17]~43_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[1][16]~53_combout\);

-- Location: LCCOMB_X84_Y67_N10
\A_rev[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[19]~38_combout\ = (\A[19]~input_o\ & (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[19]~38_combout\);

-- Location: LCCOMB_X84_Y67_N20
\A_rev[19]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[19]~39_combout\ = (\fill~0_combout\) # ((\A_rev[19]~38_combout\) # ((\A[12]~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \fill~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \A_rev[19]~38_combout\,
	combout => \A_rev[19]~39_combout\);

-- Location: LCCOMB_X86_Y67_N6
\A_rev[18]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[18]~40_combout\ = (\A[18]~input_o\ & (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[18]~40_combout\);

-- Location: LCCOMB_X86_Y67_N0
\A_rev[18]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[18]~41_combout\ = (\A_rev[18]~40_combout\) # ((\fill~0_combout\) # ((\Equal2~0_combout\ & \A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[18]~40_combout\,
	datab => \Equal2~0_combout\,
	datac => \fill~0_combout\,
	datad => \A[13]~input_o\,
	combout => \A_rev[18]~41_combout\);

-- Location: LCCOMB_X88_Y67_N6
\stage[2][16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][16]~50_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[19]~39_combout\)) # (!\B[0]~input_o\ & ((\A_rev[18]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[19]~39_combout\,
	datab => \A_rev[18]~41_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][16]~50_combout\);

-- Location: LCCOMB_X88_Y70_N16
\stage[2][16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][16]~54_combout\ = (\stage[2][16]~50_combout\) # ((!\B[1]~input_o\ & \stage[1][16]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \stage[1][16]~53_combout\,
	datad => \stage[2][16]~50_combout\,
	combout => \stage[2][16]~54_combout\);

-- Location: LCCOMB_X84_Y67_N0
\A_rev[21]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[21]~30_combout\ = (!\ExtWord~input_o\ & (\A[21]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[21]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[21]~30_combout\);

-- Location: LCCOMB_X84_Y67_N18
\A_rev[21]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[21]~31_combout\ = (\A_rev[21]~30_combout\) # ((\fill~0_combout\) # ((\Equal2~0_combout\ & \A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A_rev[21]~30_combout\,
	datac => \fill~0_combout\,
	datad => \A[10]~input_o\,
	combout => \A_rev[21]~31_combout\);

-- Location: LCCOMB_X85_Y67_N12
\A_rev[20]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[20]~32_combout\ = (!\ExtWord~input_o\ & (\A[20]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[20]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[20]~32_combout\);

-- Location: LCCOMB_X85_Y67_N30
\A_rev[20]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[20]~33_combout\ = (\A_rev[20]~32_combout\) # ((\fill~0_combout\) # ((\Equal2~0_combout\ & \A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[20]~32_combout\,
	datab => \Equal2~0_combout\,
	datac => \fill~0_combout\,
	datad => \A[11]~input_o\,
	combout => \A_rev[20]~33_combout\);

-- Location: LCCOMB_X84_Y67_N16
\A_rev[22]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[22]~36_combout\ = (!\ExtWord~input_o\ & (\A[22]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[22]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[22]~36_combout\);

-- Location: LCCOMB_X85_Y67_N8
\A_rev[22]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[22]~37_combout\ = (\A_rev[22]~36_combout\) # ((\fill~0_combout\) # ((\A[9]~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[22]~36_combout\,
	datab => \A[9]~input_o\,
	datac => \fill~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[22]~37_combout\);

-- Location: LCCOMB_X84_Y67_N4
\A_rev[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[23]~34_combout\ = (!\ExtWord~input_o\ & (\A[23]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[23]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[23]~34_combout\);

-- Location: LCCOMB_X84_Y67_N14
\A_rev[23]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[23]~35_combout\ = (\A_rev[23]~34_combout\) # ((\fill~0_combout\) # ((\Equal2~0_combout\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A_rev[23]~34_combout\,
	datac => \fill~0_combout\,
	datad => \A[8]~input_o\,
	combout => \A_rev[23]~35_combout\);

-- Location: LCCOMB_X88_Y67_N18
\stage[2][20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][20]~48_combout\ = (\B[0]~input_o\ & (((\A_rev[23]~35_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\A_rev[22]~37_combout\ & ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[22]~37_combout\,
	datab => \A_rev[23]~35_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][20]~48_combout\);

-- Location: LCCOMB_X88_Y67_N12
\stage[2][20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][20]~49_combout\ = (\B[1]~input_o\ & (((\stage[2][20]~48_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][20]~48_combout\ & (\A_rev[21]~31_combout\)) # (!\stage[2][20]~48_combout\ & ((\A_rev[20]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[21]~31_combout\,
	datac => \A_rev[20]~33_combout\,
	datad => \stage[2][20]~48_combout\,
	combout => \stage[2][20]~49_combout\);

-- Location: LCCOMB_X88_Y66_N30
\stage[3][16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][16]~55_combout\ = (\B[2]~input_o\ & ((\stage[2][20]~49_combout\))) # (!\B[2]~input_o\ & (\stage[2][16]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][16]~54_combout\,
	datab => \B[2]~input_o\,
	datac => \stage[2][20]~49_combout\,
	combout => \stage[3][16]~55_combout\);

-- Location: LCCOMB_X89_Y69_N26
\A_rev[26]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[26]~28_combout\ = (!\ExtWord~input_o\ & (\A[26]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[26]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[26]~28_combout\);

-- Location: LCCOMB_X89_Y69_N4
\A_rev[26]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[26]~29_combout\ = (\fill~0_combout\) # ((\A_rev[26]~28_combout\) # ((\Equal2~0_combout\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \A_rev[26]~28_combout\,
	datad => \A[5]~input_o\,
	combout => \A_rev[26]~29_combout\);

-- Location: LCCOMB_X90_Y70_N0
\A_rev[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[27]~26_combout\ = (!\ExtWord~input_o\ & (\A[27]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[27]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[27]~26_combout\);

-- Location: LCCOMB_X89_Y69_N16
\A_rev[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[27]~27_combout\ = (\fill~0_combout\) # ((\A_rev[27]~26_combout\) # ((\Equal2~0_combout\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \A_rev[27]~26_combout\,
	datad => \A[4]~input_o\,
	combout => \A_rev[27]~27_combout\);

-- Location: LCCOMB_X89_Y69_N6
\stage[2][24]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][24]~46_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[27]~27_combout\))) # (!\B[0]~input_o\ & (\A_rev[26]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[26]~29_combout\,
	datad => \A_rev[27]~27_combout\,
	combout => \stage[2][24]~46_combout\);

-- Location: LCCOMB_X85_Y67_N24
\A_rev[25]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[25]~22_combout\ = (!\ExtWord~input_o\ & (\A[25]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[25]~input_o\,
	combout => \A_rev[25]~22_combout\);

-- Location: LCCOMB_X85_Y67_N18
\A_rev[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[25]~23_combout\ = (\A_rev[25]~22_combout\) # ((\fill~0_combout\) # ((\A[6]~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A_rev[25]~22_combout\,
	datac => \fill~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \A_rev[25]~23_combout\);

-- Location: LCCOMB_X89_Y69_N20
\A_rev[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[24]~24_combout\ = (!\ExtWord~input_o\ & (\A[24]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[24]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[24]~24_combout\);

-- Location: LCCOMB_X89_Y69_N14
\A_rev[24]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[24]~25_combout\ = (\fill~0_combout\) # ((\A_rev[24]~24_combout\) # ((\Equal2~0_combout\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \A[7]~input_o\,
	datad => \A_rev[24]~24_combout\,
	combout => \A_rev[24]~25_combout\);

-- Location: LCCOMB_X88_Y67_N8
\stage[2][24]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][24]~45_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[25]~23_combout\)) # (!\B[0]~input_o\ & ((\A_rev[24]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A_rev[25]~23_combout\,
	datad => \A_rev[24]~25_combout\,
	combout => \stage[2][24]~45_combout\);

-- Location: LCCOMB_X85_Y69_N14
\A_rev[29]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[29]~16_combout\ = (!\ExtWord~input_o\ & (\A[29]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[29]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[29]~16_combout\);

-- Location: LCCOMB_X88_Y69_N16
\A_rev[29]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[29]~17_combout\ = (\A_rev[29]~16_combout\) # ((\fill~0_combout\) # ((\Equal2~0_combout\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A_rev[29]~16_combout\,
	datac => \A[2]~input_o\,
	datad => \fill~0_combout\,
	combout => \A_rev[29]~17_combout\);

-- Location: LCCOMB_X89_Y69_N12
\A_rev[28]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[28]~18_combout\ = (!\ExtWord~input_o\ & (\A[28]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[28]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[28]~18_combout\);

-- Location: LCCOMB_X89_Y69_N30
\A_rev[28]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[28]~19_combout\ = (\fill~0_combout\) # ((\A_rev[28]~18_combout\) # ((\Equal2~0_combout\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \A[3]~input_o\,
	datad => \A_rev[28]~18_combout\,
	combout => \A_rev[28]~19_combout\);

-- Location: LCCOMB_X89_Y69_N8
\stage[2][28]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][28]~42_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[29]~17_combout\)) # (!\B[0]~input_o\ & ((\A_rev[28]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[29]~17_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[28]~19_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[2][28]~42_combout\);

-- Location: LCCOMB_X85_Y69_N18
\A_rev[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[31]~0_combout\ = (\A[31]~input_o\ & (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[31]~0_combout\);

-- Location: LCCOMB_X86_Y69_N18
\A_rev[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[31]~1_combout\ = (\fill~0_combout\) # ((\A_rev[31]~0_combout\) # ((\A[0]~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \fill~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \A_rev[31]~0_combout\,
	combout => \A_rev[31]~1_combout\);

-- Location: LCCOMB_X85_Y69_N8
\A_rev[30]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[30]~20_combout\ = (!\ExtWord~input_o\ & (\A[30]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[30]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_rev[30]~20_combout\);

-- Location: LCCOMB_X86_Y69_N14
\A_rev[30]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_rev[30]~21_combout\ = (\A_rev[30]~20_combout\) # ((\fill~0_combout\) # ((\Equal2~0_combout\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \A_rev[30]~20_combout\,
	datac => \fill~0_combout\,
	datad => \A[1]~input_o\,
	combout => \A_rev[30]~21_combout\);

-- Location: LCCOMB_X86_Y69_N24
\stage[1][30]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][30]~43_combout\ = (\B[0]~input_o\ & (\A_rev[31]~1_combout\)) # (!\B[0]~input_o\ & ((\A_rev[30]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[31]~1_combout\,
	datac => \A_rev[30]~21_combout\,
	combout => \stage[1][30]~43_combout\);

-- Location: LCCOMB_X89_Y69_N10
\stage[2][28]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][28]~44_combout\ = (\stage[2][28]~42_combout\) # ((\B[1]~input_o\ & \stage[1][30]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \stage[2][28]~42_combout\,
	datad => \stage[1][30]~43_combout\,
	combout => \stage[2][28]~44_combout\);

-- Location: LCCOMB_X88_Y66_N20
\stage[3][24]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][24]~47_combout\ = (\B[2]~input_o\ & (((\stage[2][28]~44_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][24]~46_combout\) # ((\stage[2][24]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][24]~46_combout\,
	datab => \stage[2][24]~45_combout\,
	datac => \stage[2][28]~44_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][24]~47_combout\);

-- Location: LCCOMB_X89_Y68_N26
\stage[6][2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~41_combout\ = (\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[6][2]~41_combout\);

-- Location: LCCOMB_X88_Y66_N8
\stage[6][0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~56_combout\ = (\stage[6][2]~41_combout\ & ((\B[3]~input_o\ & ((\stage[3][24]~47_combout\))) # (!\B[3]~input_o\ & (\stage[3][16]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][16]~55_combout\,
	datab => \stage[3][24]~47_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[6][2]~41_combout\,
	combout => \stage[6][0]~56_combout\);

-- Location: LCCOMB_X86_Y69_N8
\fill~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill~2_combout\ = (\fill~0_combout\) # ((\fill~1_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~1_combout\,
	datac => \fill~0_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \fill~2_combout\);

-- Location: LCCOMB_X88_Y66_N2
\stage[6][0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~40_combout\ = (\fill~2_combout\ & (\B[5]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[6][0]~40_combout\);

-- Location: LCCOMB_X88_Y66_N18
\stage[6][0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][0]~57_combout\ = (\stage[6][0]~39_combout\) # ((\stage[6][0]~56_combout\) # (\stage[6][0]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][0]~39_combout\,
	datac => \stage[6][0]~56_combout\,
	datad => \stage[6][0]~40_combout\,
	combout => \stage[6][0]~57_combout\);

-- Location: LCCOMB_X87_Y68_N8
\stage[4][31]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][31]~23_combout\ = (\B[0]~input_o\) # ((\B[2]~input_o\) # ((\B[1]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[4][31]~23_combout\);

-- Location: LCCOMB_X86_Y69_N20
\stage[6][31]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][31]~24_combout\ = (\stage[6][2]~22_combout\ & ((\stage[4][31]~23_combout\ & (\fill~2_combout\)) # (!\stage[4][31]~23_combout\ & ((\A_rev[31]~1_combout\))))) # (!\stage[6][2]~22_combout\ & (\fill~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datab => \stage[6][2]~22_combout\,
	datac => \stage[4][31]~23_combout\,
	datad => \A_rev[31]~1_combout\,
	combout => \stage[6][31]~24_combout\);

-- Location: LCCOMB_X86_Y69_N28
\Y~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~80_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][31]~24_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \stage[6][31]~24_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~80_combout\);

-- Location: LCCOMB_X86_Y69_N2
\Y~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = (\Y~80_combout\) # ((\stage[6][0]~57_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][0]~57_combout\,
	datab => \Y~80_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~30_combout\);

-- Location: LCCOMB_X86_Y69_N12
\stage[3][14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][14]~59_combout\ = (!\B[1]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	combout => \stage[3][14]~59_combout\);

-- Location: LCCOMB_X89_Y68_N28
\stage[6][30]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][30]~58_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \stage[6][30]~58_combout\);

-- Location: LCCOMB_X88_Y68_N0
\stage[6][30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][30]~60_combout\ = (\stage[3][14]~59_combout\ & ((\stage[6][30]~58_combout\ & (\stage[1][30]~43_combout\)) # (!\stage[6][30]~58_combout\ & ((\fill~2_combout\))))) # (!\stage[3][14]~59_combout\ & (((\fill~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][14]~59_combout\,
	datab => \stage[1][30]~43_combout\,
	datac => \fill~2_combout\,
	datad => \stage[6][30]~58_combout\,
	combout => \stage[6][30]~60_combout\);

-- Location: LCCOMB_X85_Y71_N12
\Y~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~81_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][30]~60_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][30]~60_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Y~81_combout\);

-- Location: LCCOMB_X87_Y67_N14
\stage[2][9]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][9]~84_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A_rev[12]~10_combout\))) # (!\B[1]~input_o\ & (\A_rev[10]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[10]~15_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[12]~10_combout\,
	combout => \stage[2][9]~84_combout\);

-- Location: LCCOMB_X85_Y67_N16
\stage[1][15]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][15]~81_combout\ = (\B[0]~input_o\ & (((!\ExtWord~input_o\ & \ShiftFN[1]~input_o\)) # (!\ShiftFN[0]~input_o\))) # (!\B[0]~input_o\ & (((\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \stage[1][15]~81_combout\);

-- Location: LCCOMB_X85_Y67_N10
\stage[2][13]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][13]~82_combout\ = (\stage[1][15]~81_combout\ & (((\A[16]~input_o\ & !\ExtWord~input_o\)))) # (!\stage[1][15]~81_combout\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \stage[1][15]~81_combout\,
	datac => \A[16]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[2][13]~82_combout\);

-- Location: LCCOMB_X86_Y67_N16
\stage[2][13]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][13]~80_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[14]~11_combout\))) # (!\B[0]~input_o\ & (\A_rev[13]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[13]~9_combout\,
	datab => \A_rev[14]~11_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][13]~80_combout\);

-- Location: LCCOMB_X86_Y67_N26
\stage[2][13]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][13]~83_combout\ = (\stage[2][13]~80_combout\) # ((\stage[2][13]~82_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][13]~82_combout\,
	datab => \stage[2][13]~80_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][13]~83_combout\);

-- Location: LCCOMB_X85_Y67_N4
\stage[2][9]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][9]~85_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A_rev[11]~14_combout\))) # (!\B[1]~input_o\ & (\A_rev[9]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[9]~12_combout\,
	datac => \A_rev[11]~14_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][9]~85_combout\);

-- Location: LCCOMB_X87_Y69_N30
\stage[3][9]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][9]~86_combout\ = (\B[2]~input_o\ & (((\stage[2][13]~83_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][9]~84_combout\) # ((\stage[2][9]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][9]~84_combout\,
	datab => \stage[2][13]~83_combout\,
	datac => \stage[2][9]~85_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][9]~86_combout\);

-- Location: LCCOMB_X88_Y67_N14
\stage[2][25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][25]~77_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[26]~29_combout\))) # (!\B[0]~input_o\ & (\A_rev[25]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_rev[25]~23_combout\,
	datac => \B[0]~input_o\,
	datad => \A_rev[26]~29_combout\,
	combout => \stage[2][25]~77_combout\);

-- Location: LCCOMB_X86_Y69_N6
\stage[2][29]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][29]~74_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[30]~21_combout\)) # (!\B[0]~input_o\ & ((\A_rev[29]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[30]~21_combout\,
	datad => \A_rev[29]~17_combout\,
	combout => \stage[2][29]~74_combout\);

-- Location: LCCOMB_X86_Y69_N0
\stage[2][29]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][29]~75_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\fill~2_combout\))) # (!\B[0]~input_o\ & (\A_rev[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[31]~1_combout\,
	datac => \fill~2_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][29]~75_combout\);

-- Location: LCCOMB_X88_Y69_N26
\stage[2][29]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][29]~76_combout\ = (\stage[2][29]~74_combout\) # (\stage[2][29]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage[2][29]~74_combout\,
	datad => \stage[2][29]~75_combout\,
	combout => \stage[2][29]~76_combout\);

-- Location: LCCOMB_X89_Y69_N24
\stage[2][25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][25]~78_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[28]~19_combout\)) # (!\B[0]~input_o\ & ((\A_rev[27]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[28]~19_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A_rev[27]~27_combout\,
	combout => \stage[2][25]~78_combout\);

-- Location: LCCOMB_X88_Y69_N4
\stage[3][25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][25]~79_combout\ = (\B[2]~input_o\ & (((\stage[2][29]~76_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][25]~77_combout\) # ((\stage[2][25]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][25]~77_combout\,
	datab => \B[2]~input_o\,
	datac => \stage[2][29]~76_combout\,
	datad => \stage[2][25]~78_combout\,
	combout => \stage[3][25]~79_combout\);

-- Location: LCCOMB_X87_Y69_N24
\stage[6][1]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~87_combout\ = (\B[3]~input_o\ & ((\B[4]~input_o\ & ((\stage[3][25]~79_combout\))) # (!\B[4]~input_o\ & (\stage[3][9]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][9]~86_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \stage[3][25]~79_combout\,
	combout => \stage[6][1]~87_combout\);

-- Location: LCCOMB_X88_Y66_N4
\shamt[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shamt[5]~0_combout\ = (\B[5]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \shamt[5]~0_combout\);

-- Location: LCCOMB_X88_Y67_N28
\stage[2][17]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][17]~71_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[20]~33_combout\))) # (!\B[0]~input_o\ & (\A_rev[19]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[19]~39_combout\,
	datab => \B[0]~input_o\,
	datac => \A_rev[20]~33_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][17]~71_combout\);

-- Location: LCCOMB_X88_Y67_N16
\stage[2][21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][21]~68_combout\ = (\B[0]~input_o\ & (((\A_rev[24]~25_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\A_rev[23]~35_combout\ & ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[23]~35_combout\,
	datab => \A_rev[24]~25_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][21]~68_combout\);

-- Location: LCCOMB_X88_Y67_N10
\stage[2][21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][21]~69_combout\ = (\stage[2][21]~68_combout\ & ((\A_rev[22]~37_combout\) # ((\B[1]~input_o\)))) # (!\stage[2][21]~68_combout\ & (((\A_rev[21]~31_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[22]~37_combout\,
	datab => \stage[2][21]~68_combout\,
	datac => \A_rev[21]~31_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][21]~69_combout\);

-- Location: LCCOMB_X86_Y67_N22
\stage[2][17]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][17]~70_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[18]~41_combout\))) # (!\B[0]~input_o\ & (\A_rev[17]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[17]~43_combout\,
	datab => \A_rev[18]~41_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][17]~70_combout\);

-- Location: LCCOMB_X87_Y69_N18
\stage[3][17]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][17]~72_combout\ = (\B[2]~input_o\ & (((\stage[2][21]~69_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][17]~71_combout\) # ((\stage[2][17]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][17]~71_combout\,
	datab => \B[2]~input_o\,
	datac => \stage[2][21]~69_combout\,
	datad => \stage[2][17]~70_combout\,
	combout => \stage[3][17]~72_combout\);

-- Location: LCCOMB_X87_Y67_N4
\stage[2][5]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][5]~64_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[8]~13_combout\)) # (!\B[0]~input_o\ & ((\A_rev[7]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[8]~13_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[7]~5_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[2][5]~64_combout\);

-- Location: LCCOMB_X87_Y68_N24
\stage[1][5]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][5]~65_combout\ = (\B[0]~input_o\ & (\A_rev[6]~6_combout\)) # (!\B[0]~input_o\ & ((\A_rev[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[6]~6_combout\,
	datad => \A_rev[5]~7_combout\,
	combout => \stage[1][5]~65_combout\);

-- Location: LCCOMB_X87_Y68_N10
\stage[2][5]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][5]~66_combout\ = (\stage[2][5]~64_combout\) # ((\stage[1][5]~65_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][5]~64_combout\,
	datab => \stage[1][5]~65_combout\,
	datac => \B[1]~input_o\,
	combout => \stage[2][5]~66_combout\);

-- Location: LCCOMB_X87_Y68_N4
\stage[1][3]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[1][3]~62_combout\ = (\B[0]~input_o\ & (\A_rev[4]~8_combout\)) # (!\B[0]~input_o\ & ((\A_rev[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A_rev[4]~8_combout\,
	datad => \A_rev[3]~3_combout\,
	combout => \stage[1][3]~62_combout\);

-- Location: LCCOMB_X87_Y68_N18
\stage[6][1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~61_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[2]~4_combout\)) # (!\B[0]~input_o\ & ((\A_rev[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[2]~4_combout\,
	datab => \A_rev[1]~2_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \stage[6][1]~61_combout\);

-- Location: LCCOMB_X87_Y68_N6
\stage[6][1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~63_combout\ = (!\B[2]~input_o\ & ((\stage[6][1]~61_combout\) # ((\B[1]~input_o\ & \stage[1][3]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \stage[1][3]~62_combout\,
	datac => \B[2]~input_o\,
	datad => \stage[6][1]~61_combout\,
	combout => \stage[6][1]~63_combout\);

-- Location: LCCOMB_X87_Y69_N16
\stage[6][1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~67_combout\ = (!\B[4]~input_o\ & ((\stage[6][1]~63_combout\) # ((\stage[2][5]~66_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[2][5]~66_combout\,
	datac => \stage[6][1]~63_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[6][1]~67_combout\);

-- Location: LCCOMB_X87_Y69_N20
\stage[6][1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~73_combout\ = (!\B[3]~input_o\ & ((\stage[6][1]~67_combout\) # ((\B[4]~input_o\ & \stage[3][17]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \stage[3][17]~72_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[6][1]~67_combout\,
	combout => \stage[6][1]~73_combout\);

-- Location: LCCOMB_X87_Y69_N2
\stage[6][1]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][1]~88_combout\ = (\stage[6][0]~40_combout\) # ((!\shamt[5]~0_combout\ & ((\stage[6][1]~87_combout\) # (\stage[6][1]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][0]~40_combout\,
	datab => \stage[6][1]~87_combout\,
	datac => \shamt[5]~0_combout\,
	datad => \stage[6][1]~73_combout\,
	combout => \stage[6][1]~88_combout\);

-- Location: LCCOMB_X85_Y71_N2
\Y~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = (\Y~81_combout\) # ((\ShiftFN[1]~input_o\ & \stage[6][1]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~81_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \stage[6][1]~88_combout\,
	combout => \Y~31_combout\);

-- Location: LCCOMB_X87_Y68_N12
\stage[6][3]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~101_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \stage[6][3]~101_combout\);

-- Location: LCCOMB_X87_Y67_N0
\stage[2][6]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][6]~102_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[9]~12_combout\)) # (!\B[0]~input_o\ & ((\A_rev[8]~13_combout\))))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[9]~12_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[8]~13_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[2][6]~102_combout\);

-- Location: LCCOMB_X87_Y67_N2
\stage[2][6]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][6]~103_combout\ = (\B[1]~input_o\ & (((\stage[2][6]~102_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][6]~102_combout\ & (\A_rev[7]~5_combout\)) # (!\stage[2][6]~102_combout\ & ((\A_rev[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[7]~5_combout\,
	datab => \A_rev[6]~6_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[2][6]~102_combout\,
	combout => \stage[2][6]~103_combout\);

-- Location: LCCOMB_X88_Y69_N30
\stage[4][29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][29]~89_combout\ = (\B[3]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[4][29]~89_combout\);

-- Location: LCCOMB_X87_Y68_N30
\stage[6][2]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~104_combout\ = (\stage[6][3]~101_combout\ & (((\stage[4][29]~89_combout\)))) # (!\stage[6][3]~101_combout\ & ((\stage[4][29]~89_combout\ & (\stage[2][6]~103_combout\)) # (!\stage[4][29]~89_combout\ & ((\stage[1][2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][3]~101_combout\,
	datab => \stage[2][6]~103_combout\,
	datac => \stage[4][29]~89_combout\,
	datad => \stage[1][2]~26_combout\,
	combout => \stage[6][2]~104_combout\);

-- Location: LCCOMB_X87_Y67_N20
\stage[2][10]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][10]~106_combout\ = (\B[0]~input_o\ & ((\A_rev[13]~9_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A_rev[12]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[13]~9_combout\,
	datac => \B[1]~input_o\,
	datad => \A_rev[12]~10_combout\,
	combout => \stage[2][10]~106_combout\);

-- Location: LCCOMB_X87_Y67_N22
\stage[2][10]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][10]~107_combout\ = (\B[1]~input_o\ & (((\stage[2][10]~106_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][10]~106_combout\ & (\A_rev[11]~14_combout\)) # (!\stage[2][10]~106_combout\ & ((\A_rev[10]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[11]~14_combout\,
	datab => \A_rev[10]~15_combout\,
	datac => \B[1]~input_o\,
	datad => \stage[2][10]~106_combout\,
	combout => \stage[2][10]~107_combout\);

-- Location: LCCOMB_X88_Y68_N24
\stage[3][10]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][10]~105_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\stage[1][16]~53_combout\))) # (!\B[1]~input_o\ & (\stage[1][14]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][14]~34_combout\,
	datab => \stage[1][16]~53_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[3][10]~105_combout\);

-- Location: LCCOMB_X88_Y68_N18
\stage[3][10]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][10]~108_combout\ = (\stage[3][10]~105_combout\) # ((!\B[2]~input_o\ & \stage[2][10]~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \stage[2][10]~107_combout\,
	datad => \stage[3][10]~105_combout\,
	combout => \stage[3][10]~108_combout\);

-- Location: LCCOMB_X87_Y68_N0
\stage[6][2]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~109_combout\ = (\stage[6][3]~101_combout\ & ((\stage[6][2]~104_combout\ & ((\stage[3][10]~108_combout\))) # (!\stage[6][2]~104_combout\ & (\stage[1][4]~29_combout\)))) # (!\stage[6][3]~101_combout\ & (((\stage[6][2]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][3]~101_combout\,
	datab => \stage[1][4]~29_combout\,
	datac => \stage[6][2]~104_combout\,
	datad => \stage[3][10]~108_combout\,
	combout => \stage[6][2]~109_combout\);

-- Location: LCCOMB_X88_Y67_N24
\stage[2][18]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][18]~95_combout\ = (\B[0]~input_o\ & (((\A_rev[21]~31_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\A_rev[20]~33_combout\ & ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[20]~33_combout\,
	datac => \A_rev[21]~31_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][18]~95_combout\);

-- Location: LCCOMB_X88_Y67_N2
\stage[2][18]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][18]~96_combout\ = (\stage[2][18]~95_combout\ & ((\A_rev[19]~39_combout\) # ((\B[1]~input_o\)))) # (!\stage[2][18]~95_combout\ & (((\A_rev[18]~41_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[19]~39_combout\,
	datab => \stage[2][18]~95_combout\,
	datac => \A_rev[18]~41_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][18]~96_combout\);

-- Location: LCCOMB_X88_Y67_N4
\stage[2][22]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][22]~97_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[23]~35_combout\))) # (!\B[0]~input_o\ & (\A_rev[22]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[22]~37_combout\,
	datab => \A_rev[23]~35_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][22]~97_combout\);

-- Location: LCCOMB_X88_Y67_N22
\stage[2][22]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][22]~98_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[25]~23_combout\)) # (!\B[0]~input_o\ & ((\A_rev[24]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A_rev[25]~23_combout\,
	datad => \A_rev[24]~25_combout\,
	combout => \stage[2][22]~98_combout\);

-- Location: LCCOMB_X88_Y68_N14
\stage[3][18]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][18]~99_combout\ = (\B[2]~input_o\ & (((\stage[2][22]~97_combout\) # (\stage[2][22]~98_combout\)))) # (!\B[2]~input_o\ & (\stage[2][18]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][18]~96_combout\,
	datab => \stage[2][22]~97_combout\,
	datac => \B[2]~input_o\,
	datad => \stage[2][22]~98_combout\,
	combout => \stage[3][18]~99_combout\);

-- Location: LCCOMB_X88_Y68_N26
\stage[3][26]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][26]~93_combout\ = (\B[1]~input_o\ & ((\fill~2_combout\))) # (!\B[1]~input_o\ & (\stage[1][30]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[1][30]~43_combout\,
	datac => \fill~2_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[3][26]~93_combout\);

-- Location: LCCOMB_X89_Y69_N18
\stage[2][26]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][26]~91_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[29]~17_combout\)) # (!\B[0]~input_o\ & ((\A_rev[28]~19_combout\))))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[29]~17_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[28]~19_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[2][26]~91_combout\);

-- Location: LCCOMB_X89_Y69_N28
\stage[2][26]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][26]~92_combout\ = (\stage[2][26]~91_combout\ & ((\B[1]~input_o\) # ((\A_rev[27]~27_combout\)))) # (!\stage[2][26]~91_combout\ & (!\B[1]~input_o\ & (\A_rev[26]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][26]~91_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[26]~29_combout\,
	datad => \A_rev[27]~27_combout\,
	combout => \stage[2][26]~92_combout\);

-- Location: LCCOMB_X88_Y68_N12
\stage[3][26]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][26]~94_combout\ = (\B[2]~input_o\ & (\stage[3][26]~93_combout\)) # (!\B[2]~input_o\ & ((\stage[2][26]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][26]~93_combout\,
	datac => \B[2]~input_o\,
	datad => \stage[2][26]~92_combout\,
	combout => \stage[3][26]~94_combout\);

-- Location: LCCOMB_X89_Y68_N30
\stage[6][2]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~100_combout\ = (\stage[6][2]~41_combout\ & ((\B[3]~input_o\ & ((\stage[3][26]~94_combout\))) # (!\B[3]~input_o\ & (\stage[3][18]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][18]~99_combout\,
	datab => \B[3]~input_o\,
	datac => \stage[6][2]~41_combout\,
	datad => \stage[3][26]~94_combout\,
	combout => \stage[6][2]~100_combout\);

-- Location: LCCOMB_X88_Y69_N10
\stage[6][2]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][2]~110_combout\ = (\stage[6][0]~40_combout\) # ((\stage[6][2]~100_combout\) # ((\stage[6][2]~109_combout\ & \stage[6][2]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][0]~40_combout\,
	datab => \stage[6][2]~109_combout\,
	datac => \stage[6][2]~22_combout\,
	datad => \stage[6][2]~100_combout\,
	combout => \stage[6][2]~110_combout\);

-- Location: LCCOMB_X88_Y69_N8
\stage[6][29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][29]~90_combout\ = (\stage[6][2]~22_combout\ & ((\stage[4][29]~89_combout\ & ((\fill~2_combout\))) # (!\stage[4][29]~89_combout\ & (\stage[2][29]~76_combout\)))) # (!\stage[6][2]~22_combout\ & (((\fill~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][29]~76_combout\,
	datab => \stage[6][2]~22_combout\,
	datac => \stage[4][29]~89_combout\,
	datad => \fill~2_combout\,
	combout => \stage[6][29]~90_combout\);

-- Location: LCCOMB_X88_Y69_N20
\Y~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~82_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][29]~90_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][29]~90_combout\,
	datac => \A[2]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~82_combout\);

-- Location: LCCOMB_X88_Y69_N12
\Y~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = (\Y~82_combout\) # ((\stage[6][2]~110_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][2]~110_combout\,
	datab => \Y~82_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~32_combout\);

-- Location: LCCOMB_X88_Y69_N6
\stage[6][28]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][28]~111_combout\ = (\stage[4][29]~89_combout\ & (((\fill~2_combout\)))) # (!\stage[4][29]~89_combout\ & ((\stage[6][2]~22_combout\ & (\stage[2][28]~44_combout\)) # (!\stage[6][2]~22_combout\ & ((\fill~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][29]~89_combout\,
	datab => \stage[6][2]~22_combout\,
	datac => \stage[2][28]~44_combout\,
	datad => \fill~2_combout\,
	combout => \stage[6][28]~111_combout\);

-- Location: LCCOMB_X91_Y69_N20
\Y~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~83_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][28]~111_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \stage[6][28]~111_combout\,
	datad => \A[3]~input_o\,
	combout => \Y~83_combout\);

-- Location: LCCOMB_X86_Y69_N4
\stage[2][27]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][27]~124_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[30]~21_combout\)) # (!\B[0]~input_o\ & ((\A_rev[29]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A_rev[30]~21_combout\,
	datad => \A_rev[29]~17_combout\,
	combout => \stage[2][27]~124_combout\);

-- Location: LCCOMB_X86_Y69_N10
\stage[3][27]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][27]~122_combout\ = (\B[0]~input_o\ & (((\fill~2_combout\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\fill~2_combout\))) # (!\B[1]~input_o\ & (\A_rev[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A_rev[31]~1_combout\,
	datac => \fill~2_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[3][27]~122_combout\);

-- Location: LCCOMB_X89_Y69_N22
\stage[2][27]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][27]~123_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[28]~19_combout\)) # (!\B[0]~input_o\ & ((\A_rev[27]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[28]~19_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A_rev[27]~27_combout\,
	combout => \stage[2][27]~123_combout\);

-- Location: LCCOMB_X89_Y67_N26
\stage[3][27]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][27]~125_combout\ = (\B[2]~input_o\ & (((\stage[3][27]~122_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][27]~124_combout\) # ((\stage[2][27]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][27]~124_combout\,
	datac => \stage[3][27]~122_combout\,
	datad => \stage[2][27]~123_combout\,
	combout => \stage[3][27]~125_combout\);

-- Location: LCCOMB_X88_Y67_N20
\stage[2][19]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][19]~128_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[20]~33_combout\))) # (!\B[0]~input_o\ & (\A_rev[19]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[19]~39_combout\,
	datab => \B[0]~input_o\,
	datac => \A_rev[20]~33_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][19]~128_combout\);

-- Location: LCCOMB_X88_Y67_N30
\stage[2][19]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][19]~129_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[22]~37_combout\)) # (!\B[0]~input_o\ & ((\A_rev[21]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[22]~37_combout\,
	datab => \B[0]~input_o\,
	datac => \A_rev[21]~31_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][19]~129_combout\);

-- Location: LCCOMB_X88_Y67_N0
\stage[2][23]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][23]~126_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[26]~29_combout\))) # (!\B[0]~input_o\ & (\A_rev[25]~23_combout\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A_rev[25]~23_combout\,
	datad => \A_rev[26]~29_combout\,
	combout => \stage[2][23]~126_combout\);

-- Location: LCCOMB_X88_Y67_N26
\stage[2][23]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][23]~127_combout\ = (\B[1]~input_o\ & (\stage[2][23]~126_combout\)) # (!\B[1]~input_o\ & ((\stage[2][23]~126_combout\ & ((\A_rev[24]~25_combout\))) # (!\stage[2][23]~126_combout\ & (\A_rev[23]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \stage[2][23]~126_combout\,
	datac => \A_rev[23]~35_combout\,
	datad => \A_rev[24]~25_combout\,
	combout => \stage[2][23]~127_combout\);

-- Location: LCCOMB_X89_Y67_N20
\stage[3][19]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][19]~130_combout\ = (\B[2]~input_o\ & (((\stage[2][23]~127_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][19]~128_combout\) # ((\stage[2][19]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][19]~128_combout\,
	datab => \stage[2][19]~129_combout\,
	datac => \stage[2][23]~127_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][19]~130_combout\);

-- Location: LCCOMB_X89_Y67_N14
\stage[6][3]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~131_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\stage[3][27]~125_combout\)) # (!\B[3]~input_o\ & ((\stage[3][19]~130_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][27]~125_combout\,
	datab => \stage[3][19]~130_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \stage[6][3]~131_combout\);

-- Location: LCCOMB_X87_Y67_N12
\stage[2][11]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][11]~117_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[12]~10_combout\))) # (!\B[0]~input_o\ & (\A_rev[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[11]~14_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[12]~10_combout\,
	datad => \B[0]~input_o\,
	combout => \stage[2][11]~117_combout\);

-- Location: LCCOMB_X86_Y67_N28
\stage[2][15]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][15]~115_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[18]~41_combout\))) # (!\B[0]~input_o\ & (\A_rev[17]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[17]~43_combout\,
	datab => \A_rev[18]~41_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][15]~115_combout\);

-- Location: LCCOMB_X86_Y67_N14
\stage[2][15]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][15]~116_combout\ = (\stage[2][15]~115_combout\) # ((\stage[2][13]~82_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][13]~82_combout\,
	datab => \stage[2][15]~115_combout\,
	datad => \B[1]~input_o\,
	combout => \stage[2][15]~116_combout\);

-- Location: LCCOMB_X87_Y67_N6
\stage[2][11]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][11]~118_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A_rev[14]~11_combout\)) # (!\B[0]~input_o\ & ((\A_rev[13]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[14]~11_combout\,
	datab => \A_rev[13]~9_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \stage[2][11]~118_combout\);

-- Location: LCCOMB_X89_Y67_N8
\stage[3][11]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][11]~119_combout\ = (\B[2]~input_o\ & (((\stage[2][15]~116_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][11]~117_combout\) # ((\stage[2][11]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][11]~117_combout\,
	datab => \stage[2][15]~116_combout\,
	datac => \stage[2][11]~118_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][11]~119_combout\);

-- Location: LCCOMB_X87_Y67_N24
\stage[2][7]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][7]~112_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A_rev[10]~15_combout\))) # (!\B[0]~input_o\ & (\A_rev[9]~12_combout\)))) # (!\B[1]~input_o\ & (((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[9]~12_combout\,
	datab => \A_rev[10]~15_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \stage[2][7]~112_combout\);

-- Location: LCCOMB_X87_Y67_N18
\stage[2][7]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][7]~113_combout\ = (\B[1]~input_o\ & (((\stage[2][7]~112_combout\)))) # (!\B[1]~input_o\ & ((\stage[2][7]~112_combout\ & (\A_rev[8]~13_combout\)) # (!\stage[2][7]~112_combout\ & ((\A_rev[7]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_rev[8]~13_combout\,
	datab => \B[1]~input_o\,
	datac => \A_rev[7]~5_combout\,
	datad => \stage[2][7]~112_combout\,
	combout => \stage[2][7]~113_combout\);

-- Location: LCCOMB_X87_Y68_N2
\stage[6][3]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~114_combout\ = (\stage[4][29]~89_combout\ & ((\stage[2][7]~113_combout\) # ((\stage[6][3]~101_combout\)))) # (!\stage[4][29]~89_combout\ & (((\stage[1][3]~62_combout\ & !\stage[6][3]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][7]~113_combout\,
	datab => \stage[1][3]~62_combout\,
	datac => \stage[4][29]~89_combout\,
	datad => \stage[6][3]~101_combout\,
	combout => \stage[6][3]~114_combout\);

-- Location: LCCOMB_X87_Y68_N28
\stage[6][3]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~120_combout\ = (\stage[6][3]~101_combout\ & ((\stage[6][3]~114_combout\ & ((\stage[3][11]~119_combout\))) # (!\stage[6][3]~114_combout\ & (\stage[1][5]~65_combout\)))) # (!\stage[6][3]~101_combout\ & (((\stage[6][3]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][3]~101_combout\,
	datab => \stage[1][5]~65_combout\,
	datac => \stage[3][11]~119_combout\,
	datad => \stage[6][3]~114_combout\,
	combout => \stage[6][3]~120_combout\);

-- Location: LCCOMB_X89_Y68_N16
\stage[6][3]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~121_combout\ = (!\B[4]~input_o\ & \stage[6][3]~120_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \stage[6][3]~120_combout\,
	combout => \stage[6][3]~121_combout\);

-- Location: LCCOMB_X89_Y67_N24
\stage[6][3]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][3]~132_combout\ = (\stage[6][0]~40_combout\) # ((!\shamt[5]~0_combout\ & ((\stage[6][3]~131_combout\) # (\stage[6][3]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[5]~0_combout\,
	datab => \stage[6][0]~40_combout\,
	datac => \stage[6][3]~131_combout\,
	datad => \stage[6][3]~121_combout\,
	combout => \stage[6][3]~132_combout\);

-- Location: LCCOMB_X91_Y69_N6
\Y~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = (\Y~83_combout\) # ((\stage[6][3]~132_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~83_combout\,
	datac => \stage[6][3]~132_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~33_combout\);

-- Location: LCCOMB_X89_Y67_N2
\stage[6][27]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][27]~133_combout\ = (\stage[6][30]~58_combout\ & (\stage[3][27]~125_combout\)) # (!\stage[6][30]~58_combout\ & ((\fill~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][27]~125_combout\,
	datab => \fill~2_combout\,
	datac => \stage[6][30]~58_combout\,
	combout => \stage[6][27]~133_combout\);

-- Location: LCCOMB_X90_Y69_N8
\Y~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~84_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][27]~133_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[4]~input_o\,
	datad => \stage[6][27]~133_combout\,
	combout => \Y~84_combout\);

-- Location: LCCOMB_X87_Y66_N16
\stage[6][6]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][6]~136_combout\ = (\B[4]~input_o\) # ((!\B[3]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \stage[6][6]~136_combout\);

-- Location: LCCOMB_X87_Y66_N22
\stage[6][6]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][6]~135_combout\ = (\B[3]~input_o\) # (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \stage[6][6]~135_combout\);

-- Location: LCCOMB_X87_Y66_N18
\stage[6][4]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][4]~137_combout\ = (\stage[6][6]~136_combout\ & ((\stage[2][8]~37_combout\) # ((\stage[6][6]~135_combout\)))) # (!\stage[6][6]~136_combout\ & (((!\stage[6][6]~135_combout\ & \stage[2][4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][8]~37_combout\,
	datab => \stage[6][6]~136_combout\,
	datac => \stage[6][6]~135_combout\,
	datad => \stage[2][4]~30_combout\,
	combout => \stage[6][4]~137_combout\);

-- Location: LCCOMB_X88_Y66_N14
\stage[3][20]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][20]~139_combout\ = (\B[2]~input_o\ & ((\stage[2][24]~46_combout\) # ((\stage[2][24]~45_combout\)))) # (!\B[2]~input_o\ & (((\stage[2][20]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][24]~46_combout\,
	datab => \stage[2][24]~45_combout\,
	datac => \stage[2][20]~49_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][20]~139_combout\);

-- Location: LCCOMB_X87_Y66_N20
\stage[4][20]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][20]~138_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\fill~2_combout\)) # (!\B[2]~input_o\ & ((\stage[2][28]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \stage[2][28]~44_combout\,
	combout => \stage[4][20]~138_combout\);

-- Location: LCCOMB_X87_Y66_N14
\stage[4][20]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][20]~140_combout\ = (\stage[4][20]~138_combout\) # ((!\B[3]~input_o\ & \stage[3][20]~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \stage[3][20]~139_combout\,
	datad => \stage[4][20]~138_combout\,
	combout => \stage[4][20]~140_combout\);

-- Location: LCCOMB_X87_Y66_N28
\stage[3][12]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][12]~134_combout\ = (\B[2]~input_o\ & ((\stage[2][16]~54_combout\))) # (!\B[2]~input_o\ & (\stage[2][12]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \stage[2][12]~35_combout\,
	datad => \stage[2][16]~54_combout\,
	combout => \stage[3][12]~134_combout\);

-- Location: LCCOMB_X87_Y66_N24
\stage[6][4]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][4]~141_combout\ = (\stage[6][4]~137_combout\ & ((\stage[4][20]~140_combout\) # ((!\stage[6][6]~135_combout\)))) # (!\stage[6][4]~137_combout\ & (((\stage[6][6]~135_combout\ & \stage[3][12]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][4]~137_combout\,
	datab => \stage[4][20]~140_combout\,
	datac => \stage[6][6]~135_combout\,
	datad => \stage[3][12]~134_combout\,
	combout => \stage[6][4]~141_combout\);

-- Location: LCCOMB_X90_Y69_N16
\stage[6][4]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][4]~205_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & (\stage[6][4]~141_combout\)) # (!\ExtWord~input_o\ & ((\fill~2_combout\))))) # (!\B[5]~input_o\ & (\stage[6][4]~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][4]~141_combout\,
	datab => \fill~2_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[6][4]~205_combout\);

-- Location: LCCOMB_X90_Y69_N0
\Y~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = (\Y~84_combout\) # ((\ShiftFN[1]~input_o\ & \stage[6][4]~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~84_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \stage[6][4]~205_combout\,
	combout => \Y~34_combout\);

-- Location: LCCOMB_X87_Y69_N12
\stage[2][9]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][9]~143_combout\ = (\stage[2][9]~85_combout\) # (\stage[2][9]~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage[2][9]~85_combout\,
	datad => \stage[2][9]~84_combout\,
	combout => \stage[2][9]~143_combout\);

-- Location: LCCOMB_X87_Y69_N14
\stage[3][13]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][13]~144_combout\ = (\B[2]~input_o\ & ((\stage[2][17]~71_combout\) # ((\stage[2][17]~70_combout\)))) # (!\B[2]~input_o\ & (((\stage[2][13]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][17]~71_combout\,
	datab => \stage[2][17]~70_combout\,
	datac => \stage[2][13]~83_combout\,
	datad => \B[2]~input_o\,
	combout => \stage[3][13]~144_combout\);

-- Location: LCCOMB_X87_Y69_N8
\stage[6][5]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][5]~145_combout\ = (\stage[6][6]~135_combout\ & ((\stage[3][13]~144_combout\) # ((\stage[6][6]~136_combout\)))) # (!\stage[6][6]~135_combout\ & (((\stage[2][5]~66_combout\ & !\stage[6][6]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][13]~144_combout\,
	datab => \stage[6][6]~135_combout\,
	datac => \stage[2][5]~66_combout\,
	datad => \stage[6][6]~136_combout\,
	combout => \stage[6][5]~145_combout\);

-- Location: LCCOMB_X88_Y69_N18
\stage[3][21]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][21]~147_combout\ = (\B[2]~input_o\ & ((\stage[2][25]~77_combout\) # ((\stage[2][25]~78_combout\)))) # (!\B[2]~input_o\ & (((\stage[2][21]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][25]~77_combout\,
	datab => \B[2]~input_o\,
	datac => \stage[2][21]~69_combout\,
	datad => \stage[2][25]~78_combout\,
	combout => \stage[3][21]~147_combout\);

-- Location: LCCOMB_X88_Y69_N24
\stage[4][21]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][21]~146_combout\ = (\B[2]~input_o\ & (\fill~2_combout\)) # (!\B[2]~input_o\ & (((\stage[2][29]~74_combout\) # (\stage[2][29]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datab => \B[2]~input_o\,
	datac => \stage[2][29]~74_combout\,
	datad => \stage[2][29]~75_combout\,
	combout => \stage[4][21]~146_combout\);

-- Location: LCCOMB_X88_Y69_N28
\stage[4][21]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][21]~148_combout\ = (\B[3]~input_o\ & ((\stage[4][21]~146_combout\))) # (!\B[3]~input_o\ & (\stage[3][21]~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[3][21]~147_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[4][21]~146_combout\,
	combout => \stage[4][21]~148_combout\);

-- Location: LCCOMB_X87_Y69_N26
\stage[6][5]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][5]~149_combout\ = (\stage[6][6]~136_combout\ & ((\stage[6][5]~145_combout\ & ((\stage[4][21]~148_combout\))) # (!\stage[6][5]~145_combout\ & (\stage[2][9]~143_combout\)))) # (!\stage[6][6]~136_combout\ & (((\stage[6][5]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][9]~143_combout\,
	datab => \stage[6][6]~136_combout\,
	datac => \stage[6][5]~145_combout\,
	datad => \stage[4][21]~148_combout\,
	combout => \stage[6][5]~149_combout\);

-- Location: LCCOMB_X90_Y69_N18
\stage[6][5]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][5]~206_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\stage[6][5]~149_combout\))) # (!\ExtWord~input_o\ & (\fill~2_combout\)))) # (!\B[5]~input_o\ & (((\stage[6][5]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datab => \stage[6][5]~149_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[6][5]~206_combout\);

-- Location: LCCOMB_X89_Y68_N10
\stage[6][26]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][26]~142_combout\ = (\stage[6][30]~58_combout\ & (\stage[3][26]~94_combout\)) # (!\stage[6][30]~58_combout\ & ((\fill~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][26]~94_combout\,
	datac => \fill~2_combout\,
	datad => \stage[6][30]~58_combout\,
	combout => \stage[6][26]~142_combout\);

-- Location: LCCOMB_X90_Y69_N10
\Y~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~85_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][26]~142_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \stage[6][26]~142_combout\,
	datac => \A[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~85_combout\);

-- Location: LCCOMB_X90_Y69_N26
\Y~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = (\Y~85_combout\) # ((\stage[6][5]~206_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][5]~206_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~85_combout\,
	combout => \Y~35_combout\);

-- Location: LCCOMB_X88_Y68_N22
\stage[6][6]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][6]~152_combout\ = (\stage[6][6]~135_combout\ & (((\stage[6][6]~136_combout\)))) # (!\stage[6][6]~135_combout\ & ((\stage[6][6]~136_combout\ & ((\stage[2][10]~107_combout\))) # (!\stage[6][6]~136_combout\ & (\stage[2][6]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][6]~103_combout\,
	datab => \stage[6][6]~135_combout\,
	datac => \stage[2][10]~107_combout\,
	datad => \stage[6][6]~136_combout\,
	combout => \stage[6][6]~152_combout\);

-- Location: LCCOMB_X88_Y68_N10
\stage[3][22]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][22]~154_combout\ = (\B[2]~input_o\ & (\stage[2][26]~92_combout\)) # (!\B[2]~input_o\ & (((\stage[2][22]~98_combout\) # (\stage[2][22]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[2][26]~92_combout\,
	datab => \stage[2][22]~98_combout\,
	datac => \B[2]~input_o\,
	datad => \stage[2][22]~97_combout\,
	combout => \stage[3][22]~154_combout\);

-- Location: LCCOMB_X88_Y68_N8
\stage[4][22]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][22]~153_combout\ = (\B[3]~input_o\ & ((\stage[3][14]~59_combout\ & (\stage[1][30]~43_combout\)) # (!\stage[3][14]~59_combout\ & ((\fill~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \stage[1][30]~43_combout\,
	datac => \fill~2_combout\,
	datad => \stage[3][14]~59_combout\,
	combout => \stage[4][22]~153_combout\);

-- Location: LCCOMB_X88_Y68_N4
\stage[4][22]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][22]~155_combout\ = (\stage[4][22]~153_combout\) # ((\stage[3][22]~154_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][22]~154_combout\,
	datab => \stage[4][22]~153_combout\,
	datac => \B[3]~input_o\,
	combout => \stage[4][22]~155_combout\);

-- Location: LCCOMB_X88_Y68_N28
\stage[3][14]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][14]~151_combout\ = (\B[2]~input_o\ & (((\stage[2][18]~96_combout\)))) # (!\B[2]~input_o\ & (\stage[1][16]~53_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][16]~53_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[2][18]~96_combout\,
	combout => \stage[3][14]~151_combout\);

-- Location: LCCOMB_X88_Y68_N30
\stage[3][14]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][14]~203_combout\ = (\stage[3][14]~151_combout\) # ((\stage[1][14]~34_combout\ & (!\B[1]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[1][14]~34_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage[3][14]~151_combout\,
	combout => \stage[3][14]~203_combout\);

-- Location: LCCOMB_X88_Y68_N6
\stage[6][6]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][6]~156_combout\ = (\stage[6][6]~152_combout\ & (((\stage[4][22]~155_combout\)) # (!\stage[6][6]~135_combout\))) # (!\stage[6][6]~152_combout\ & (\stage[6][6]~135_combout\ & ((\stage[3][14]~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][6]~152_combout\,
	datab => \stage[6][6]~135_combout\,
	datac => \stage[4][22]~155_combout\,
	datad => \stage[3][14]~203_combout\,
	combout => \stage[6][6]~156_combout\);

-- Location: LCCOMB_X90_Y69_N20
\stage[6][6]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][6]~207_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & (\stage[6][6]~156_combout\)) # (!\ExtWord~input_o\ & ((\fill~2_combout\))))) # (!\B[5]~input_o\ & (\stage[6][6]~156_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][6]~156_combout\,
	datab => \fill~2_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[6][6]~207_combout\);

-- Location: LCCOMB_X87_Y69_N28
\stage[6][25]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][25]~150_combout\ = (\stage[6][30]~58_combout\ & ((\stage[3][25]~79_combout\))) # (!\stage[6][30]~58_combout\ & (\fill~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datac => \stage[6][30]~58_combout\,
	datad => \stage[3][25]~79_combout\,
	combout => \stage[6][25]~150_combout\);

-- Location: LCCOMB_X90_Y69_N28
\Y~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~86_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][25]~150_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \stage[6][25]~150_combout\,
	datad => \A[6]~input_o\,
	combout => \Y~86_combout\);

-- Location: LCCOMB_X90_Y69_N4
\Y~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = (\Y~86_combout\) # ((\stage[6][6]~207_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][6]~207_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~86_combout\,
	combout => \Y~36_combout\);

-- Location: LCCOMB_X86_Y69_N22
\stage[2][6]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][6]~161_combout\ = (!\B[0]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage[2][6]~161_combout\);

-- Location: LCCOMB_X86_Y69_N16
\stage[4][23]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][23]~162_combout\ = (\B[2]~input_o\ & (((\fill~2_combout\)))) # (!\B[2]~input_o\ & ((\stage[2][6]~161_combout\ & (\A_rev[31]~1_combout\)) # (!\stage[2][6]~161_combout\ & ((\fill~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A_rev[31]~1_combout\,
	datac => \fill~2_combout\,
	datad => \stage[2][6]~161_combout\,
	combout => \stage[4][23]~162_combout\);

-- Location: LCCOMB_X89_Y67_N0
\stage[3][23]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][23]~163_combout\ = (\B[2]~input_o\ & ((\stage[2][27]~124_combout\) # ((\stage[2][27]~123_combout\)))) # (!\B[2]~input_o\ & (((\stage[2][23]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][27]~124_combout\,
	datac => \stage[2][23]~127_combout\,
	datad => \stage[2][27]~123_combout\,
	combout => \stage[3][23]~163_combout\);

-- Location: LCCOMB_X89_Y68_N12
\stage[4][23]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][23]~164_combout\ = (\B[3]~input_o\ & (\stage[4][23]~162_combout\)) # (!\B[3]~input_o\ & ((\stage[3][23]~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][23]~162_combout\,
	datab => \B[3]~input_o\,
	datad => \stage[3][23]~163_combout\,
	combout => \stage[4][23]~164_combout\);

-- Location: LCCOMB_X89_Y67_N4
\stage[2][11]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[2][11]~158_combout\ = (\stage[2][11]~118_combout\) # (\stage[2][11]~117_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage[2][11]~118_combout\,
	datad => \stage[2][11]~117_combout\,
	combout => \stage[2][11]~158_combout\);

-- Location: LCCOMB_X89_Y67_N30
\stage[3][15]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[3][15]~159_combout\ = (\B[2]~input_o\ & (((\stage[2][19]~128_combout\) # (\stage[2][19]~129_combout\)))) # (!\B[2]~input_o\ & (\stage[2][15]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \stage[2][15]~116_combout\,
	datac => \stage[2][19]~128_combout\,
	datad => \stage[2][19]~129_combout\,
	combout => \stage[3][15]~159_combout\);

-- Location: LCCOMB_X87_Y66_N2
\stage[6][7]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][7]~160_combout\ = (\stage[6][6]~135_combout\ & ((\stage[6][6]~136_combout\) # ((\stage[3][15]~159_combout\)))) # (!\stage[6][6]~135_combout\ & (!\stage[6][6]~136_combout\ & ((\stage[2][7]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][6]~135_combout\,
	datab => \stage[6][6]~136_combout\,
	datac => \stage[3][15]~159_combout\,
	datad => \stage[2][7]~113_combout\,
	combout => \stage[6][7]~160_combout\);

-- Location: LCCOMB_X87_Y66_N4
\stage[6][7]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][7]~165_combout\ = (\stage[6][6]~136_combout\ & ((\stage[6][7]~160_combout\ & (\stage[4][23]~164_combout\)) # (!\stage[6][7]~160_combout\ & ((\stage[2][11]~158_combout\))))) # (!\stage[6][6]~136_combout\ & (((\stage[6][7]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][23]~164_combout\,
	datab => \stage[6][6]~136_combout\,
	datac => \stage[2][11]~158_combout\,
	datad => \stage[6][7]~160_combout\,
	combout => \stage[6][7]~165_combout\);

-- Location: LCCOMB_X90_Y69_N30
\stage[6][7]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][7]~208_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & (\stage[6][7]~165_combout\)) # (!\ExtWord~input_o\ & ((\fill~2_combout\))))) # (!\B[5]~input_o\ & (\stage[6][7]~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][7]~165_combout\,
	datab => \fill~2_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \stage[6][7]~208_combout\);

-- Location: LCCOMB_X88_Y66_N0
\stage[6][24]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][24]~157_combout\ = (\stage[6][30]~58_combout\ & (\stage[3][24]~47_combout\)) # (!\stage[6][30]~58_combout\ & ((\fill~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[3][24]~47_combout\,
	datac => \fill~2_combout\,
	datad => \stage[6][30]~58_combout\,
	combout => \stage[6][24]~157_combout\);

-- Location: LCCOMB_X90_Y69_N6
\Y~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~87_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][24]~157_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \stage[6][24]~157_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Y~87_combout\);

-- Location: LCCOMB_X90_Y69_N22
\Y~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~37_combout\ = (\Y~87_combout\) # ((\stage[6][7]~208_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][7]~208_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~87_combout\,
	combout => \Y~37_combout\);

-- Location: LCCOMB_X89_Y68_N6
\stage[6][23]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][23]~166_combout\ = (\stage[6][2]~22_combout\ & ((\stage[4][23]~164_combout\))) # (!\stage[6][2]~22_combout\ & (\fill~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datac => \stage[6][2]~22_combout\,
	datad => \stage[4][23]~164_combout\,
	combout => \stage[6][23]~166_combout\);

-- Location: LCCOMB_X84_Y67_N12
\Y~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~88_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][23]~166_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][23]~166_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[8]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~88_combout\);

-- Location: LCCOMB_X89_Y68_N0
\stage[6][14]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][14]~167_combout\ = (\ExtWord~input_o\ & (\B[3]~input_o\ & ((!\B[4]~input_o\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\) # ((\B[3]~input_o\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \stage[6][14]~167_combout\);

-- Location: LCCOMB_X88_Y66_N26
\stage[4][24]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][24]~168_combout\ = (\B[3]~input_o\ & (\fill~2_combout\)) # (!\B[3]~input_o\ & ((\stage[3][24]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \fill~2_combout\,
	datad => \stage[3][24]~47_combout\,
	combout => \stage[4][24]~168_combout\);

-- Location: LCCOMB_X88_Y66_N12
\stage[6][8]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][8]~169_combout\ = (\stage[6][2]~22_combout\ & (\stage[3][8]~38_combout\ & ((!\stage[6][14]~167_combout\)))) # (!\stage[6][2]~22_combout\ & (((\stage[4][24]~168_combout\) # (\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][8]~38_combout\,
	datab => \stage[6][2]~22_combout\,
	datac => \stage[4][24]~168_combout\,
	datad => \stage[6][14]~167_combout\,
	combout => \stage[6][8]~169_combout\);

-- Location: LCCOMB_X88_Y66_N6
\stage[6][8]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][8]~170_combout\ = (\stage[6][14]~167_combout\ & ((\stage[6][8]~169_combout\ & ((\fill~2_combout\))) # (!\stage[6][8]~169_combout\ & (\stage[3][16]~55_combout\)))) # (!\stage[6][14]~167_combout\ & (((\stage[6][8]~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][16]~55_combout\,
	datab => \stage[6][14]~167_combout\,
	datac => \fill~2_combout\,
	datad => \stage[6][8]~169_combout\,
	combout => \stage[6][8]~170_combout\);

-- Location: LCCOMB_X84_Y67_N6
\Y~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~38_combout\ = (\Y~88_combout\) # ((\stage[6][8]~170_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~88_combout\,
	datac => \stage[6][8]~170_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~38_combout\);

-- Location: LCCOMB_X87_Y69_N22
\stage[4][25]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][25]~172_combout\ = (\B[3]~input_o\ & (\fill~2_combout\)) # (!\B[3]~input_o\ & ((\stage[3][25]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[3][25]~79_combout\,
	combout => \stage[4][25]~172_combout\);

-- Location: LCCOMB_X87_Y69_N0
\stage[6][9]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][9]~173_combout\ = (\stage[6][2]~22_combout\ & (((\stage[3][9]~86_combout\ & !\stage[6][14]~167_combout\)))) # (!\stage[6][2]~22_combout\ & ((\stage[4][25]~172_combout\) # ((\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][25]~172_combout\,
	datab => \stage[6][2]~22_combout\,
	datac => \stage[3][9]~86_combout\,
	datad => \stage[6][14]~167_combout\,
	combout => \stage[6][9]~173_combout\);

-- Location: LCCOMB_X87_Y69_N10
\stage[6][9]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][9]~174_combout\ = (\stage[6][14]~167_combout\ & ((\stage[6][9]~173_combout\ & (\fill~2_combout\)) # (!\stage[6][9]~173_combout\ & ((\stage[3][17]~72_combout\))))) # (!\stage[6][14]~167_combout\ & (((\stage[6][9]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datab => \stage[3][17]~72_combout\,
	datac => \stage[6][14]~167_combout\,
	datad => \stage[6][9]~173_combout\,
	combout => \stage[6][9]~174_combout\);

-- Location: LCCOMB_X85_Y69_N10
\stage[6][22]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][22]~171_combout\ = (\stage[6][2]~22_combout\ & (\stage[4][22]~155_combout\)) # (!\stage[6][2]~22_combout\ & ((\fill~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][22]~155_combout\,
	datab => \fill~2_combout\,
	datac => \stage[6][2]~22_combout\,
	combout => \stage[6][22]~171_combout\);

-- Location: LCCOMB_X85_Y69_N24
\Y~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~89_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][22]~171_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][22]~171_combout\,
	datab => \A[9]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~89_combout\);

-- Location: LCCOMB_X85_Y69_N12
\Y~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~39_combout\ = (\Y~89_combout\) # ((\stage[6][9]~174_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][9]~174_combout\,
	datab => \Y~89_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~39_combout\);

-- Location: LCCOMB_X89_Y68_N18
\stage[4][26]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][26]~176_combout\ = (\B[3]~input_o\ & ((\fill~2_combout\))) # (!\B[3]~input_o\ & (\stage[3][26]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][26]~94_combout\,
	datac => \fill~2_combout\,
	datad => \B[3]~input_o\,
	combout => \stage[4][26]~176_combout\);

-- Location: LCCOMB_X89_Y68_N4
\stage[6][10]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][10]~177_combout\ = (\stage[6][2]~22_combout\ & (((\stage[3][10]~108_combout\ & !\stage[6][14]~167_combout\)))) # (!\stage[6][2]~22_combout\ & ((\stage[4][26]~176_combout\) # ((\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][2]~22_combout\,
	datab => \stage[4][26]~176_combout\,
	datac => \stage[3][10]~108_combout\,
	datad => \stage[6][14]~167_combout\,
	combout => \stage[6][10]~177_combout\);

-- Location: LCCOMB_X89_Y68_N14
\stage[6][10]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][10]~178_combout\ = (\stage[6][10]~177_combout\ & (((\fill~2_combout\) # (!\stage[6][14]~167_combout\)))) # (!\stage[6][10]~177_combout\ & (\stage[3][18]~99_combout\ & ((\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][18]~99_combout\,
	datab => \stage[6][10]~177_combout\,
	datac => \fill~2_combout\,
	datad => \stage[6][14]~167_combout\,
	combout => \stage[6][10]~178_combout\);

-- Location: LCCOMB_X85_Y69_N30
\stage[6][21]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][21]~175_combout\ = (\stage[6][2]~22_combout\ & (\stage[4][21]~148_combout\)) # (!\stage[6][2]~22_combout\ & ((\fill~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][21]~148_combout\,
	datab => \fill~2_combout\,
	datac => \stage[6][2]~22_combout\,
	combout => \stage[6][21]~175_combout\);

-- Location: LCCOMB_X85_Y69_N2
\Y~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~90_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][21]~175_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \stage[6][21]~175_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~90_combout\);

-- Location: LCCOMB_X85_Y69_N0
\Y~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~40_combout\ = (\Y~90_combout\) # ((\ShiftFN[1]~input_o\ & \stage[6][10]~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][10]~178_combout\,
	datad => \Y~90_combout\,
	combout => \Y~40_combout\);

-- Location: LCCOMB_X89_Y67_N10
\stage[4][27]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][27]~180_combout\ = (\B[3]~input_o\ & (\fill~2_combout\)) # (!\B[3]~input_o\ & ((\stage[3][27]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fill~2_combout\,
	datac => \stage[3][27]~125_combout\,
	datad => \B[3]~input_o\,
	combout => \stage[4][27]~180_combout\);

-- Location: LCCOMB_X89_Y67_N12
\stage[6][11]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][11]~181_combout\ = (\stage[6][2]~22_combout\ & (((\stage[3][11]~119_combout\ & !\stage[6][14]~167_combout\)))) # (!\stage[6][2]~22_combout\ & ((\stage[4][27]~180_combout\) # ((\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][27]~180_combout\,
	datab => \stage[6][2]~22_combout\,
	datac => \stage[3][11]~119_combout\,
	datad => \stage[6][14]~167_combout\,
	combout => \stage[6][11]~181_combout\);

-- Location: LCCOMB_X89_Y67_N6
\stage[6][11]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][11]~182_combout\ = (\stage[6][11]~181_combout\ & (((\fill~2_combout\) # (!\stage[6][14]~167_combout\)))) # (!\stage[6][11]~181_combout\ & (\stage[3][19]~130_combout\ & ((\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][11]~181_combout\,
	datab => \stage[3][19]~130_combout\,
	datac => \fill~2_combout\,
	datad => \stage[6][14]~167_combout\,
	combout => \stage[6][11]~182_combout\);

-- Location: LCCOMB_X88_Y66_N16
\stage[6][20]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][20]~179_combout\ = (\stage[6][2]~22_combout\ & (\stage[4][20]~140_combout\)) # (!\stage[6][2]~22_combout\ & ((\fill~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][20]~140_combout\,
	datac => \fill~2_combout\,
	datad => \stage[6][2]~22_combout\,
	combout => \stage[6][20]~179_combout\);

-- Location: LCCOMB_X89_Y67_N22
\Y~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~91_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][20]~179_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \stage[6][20]~179_combout\,
	datac => \A[11]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~91_combout\);

-- Location: LCCOMB_X89_Y67_N16
\Y~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~41_combout\ = (\Y~91_combout\) # ((\stage[6][11]~182_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][11]~182_combout\,
	datac => \Y~91_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~41_combout\);

-- Location: LCCOMB_X87_Y66_N26
\stage[4][28]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][28]~204_combout\ = (\B[2]~input_o\ & (\fill~2_combout\)) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\fill~2_combout\)) # (!\B[3]~input_o\ & ((\stage[2][28]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \stage[2][28]~44_combout\,
	combout => \stage[4][28]~204_combout\);

-- Location: LCCOMB_X87_Y66_N30
\stage[6][12]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][12]~185_combout\ = (\stage[6][2]~22_combout\ & (((!\stage[6][14]~167_combout\ & \stage[3][12]~134_combout\)))) # (!\stage[6][2]~22_combout\ & ((\stage[4][28]~204_combout\) # ((\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[4][28]~204_combout\,
	datab => \stage[6][2]~22_combout\,
	datac => \stage[6][14]~167_combout\,
	datad => \stage[3][12]~134_combout\,
	combout => \stage[6][12]~185_combout\);

-- Location: LCCOMB_X87_Y66_N0
\stage[6][12]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][12]~186_combout\ = (\stage[6][12]~185_combout\ & (((\fill~2_combout\) # (!\stage[6][14]~167_combout\)))) # (!\stage[6][12]~185_combout\ & (\stage[3][20]~139_combout\ & ((\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][12]~185_combout\,
	datab => \stage[3][20]~139_combout\,
	datac => \fill~2_combout\,
	datad => \stage[6][14]~167_combout\,
	combout => \stage[6][12]~186_combout\);

-- Location: LCCOMB_X89_Y67_N18
\stage[6][19]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][19]~183_combout\ = (\stage[6][30]~58_combout\ & ((\stage[3][19]~130_combout\) # ((\fill~2_combout\ & !\stage[6][2]~22_combout\)))) # (!\stage[6][30]~58_combout\ & (\fill~2_combout\ & (!\stage[6][2]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][30]~58_combout\,
	datab => \fill~2_combout\,
	datac => \stage[6][2]~22_combout\,
	datad => \stage[3][19]~130_combout\,
	combout => \stage[6][19]~183_combout\);

-- Location: LCCOMB_X89_Y67_N28
\stage[6][19]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][19]~184_combout\ = (\stage[6][19]~183_combout\) # ((\stage[3][27]~125_combout\ & (\stage[6][2]~22_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][27]~125_combout\,
	datab => \stage[6][19]~183_combout\,
	datac => \stage[6][2]~22_combout\,
	datad => \B[3]~input_o\,
	combout => \stage[6][19]~184_combout\);

-- Location: LCCOMB_X84_Y67_N30
\Y~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~92_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][19]~184_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][19]~184_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[12]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~92_combout\);

-- Location: LCCOMB_X84_Y67_N24
\Y~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~42_combout\ = (\Y~92_combout\) # ((\stage[6][12]~186_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage[6][12]~186_combout\,
	datac => \Y~92_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~42_combout\);

-- Location: LCCOMB_X89_Y68_N24
\stage[6][18]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][18]~187_combout\ = (\stage[6][2]~22_combout\ & (((\B[3]~input_o\ & \stage[3][26]~94_combout\)))) # (!\stage[6][2]~22_combout\ & (\fill~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datab => \B[3]~input_o\,
	datac => \stage[6][2]~22_combout\,
	datad => \stage[3][26]~94_combout\,
	combout => \stage[6][18]~187_combout\);

-- Location: LCCOMB_X89_Y68_N2
\stage[6][18]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][18]~188_combout\ = (\stage[6][18]~187_combout\) # ((\stage[3][18]~99_combout\ & \stage[6][30]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][18]~99_combout\,
	datab => \stage[6][18]~187_combout\,
	datad => \stage[6][30]~58_combout\,
	combout => \stage[6][18]~188_combout\);

-- Location: LCCOMB_X86_Y67_N18
\Y~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~93_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][18]~188_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][18]~188_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Y~93_combout\);

-- Location: LCCOMB_X88_Y69_N22
\stage[4][29]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][29]~189_combout\ = (\stage[4][29]~89_combout\ & (\fill~2_combout\)) # (!\stage[4][29]~89_combout\ & (((\stage[2][29]~74_combout\) # (\stage[2][29]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datab => \stage[2][29]~74_combout\,
	datac => \stage[4][29]~89_combout\,
	datad => \stage[2][29]~75_combout\,
	combout => \stage[4][29]~189_combout\);

-- Location: LCCOMB_X88_Y69_N0
\stage[6][13]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][13]~190_combout\ = (\stage[6][2]~22_combout\ & (\stage[3][13]~144_combout\ & ((!\stage[6][14]~167_combout\)))) # (!\stage[6][2]~22_combout\ & (((\stage[4][29]~189_combout\) # (\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][13]~144_combout\,
	datab => \stage[6][2]~22_combout\,
	datac => \stage[4][29]~189_combout\,
	datad => \stage[6][14]~167_combout\,
	combout => \stage[6][13]~190_combout\);

-- Location: LCCOMB_X88_Y69_N2
\stage[6][13]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][13]~191_combout\ = (\stage[6][13]~190_combout\ & (((\fill~2_combout\) # (!\stage[6][14]~167_combout\)))) # (!\stage[6][13]~190_combout\ & (\stage[3][21]~147_combout\ & ((\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][13]~190_combout\,
	datab => \stage[3][21]~147_combout\,
	datac => \fill~2_combout\,
	datad => \stage[6][14]~167_combout\,
	combout => \stage[6][13]~191_combout\);

-- Location: LCCOMB_X85_Y67_N22
\Y~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~43_combout\ = (\Y~93_combout\) # ((\stage[6][13]~191_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~93_combout\,
	datac => \stage[6][13]~191_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~43_combout\);

-- Location: LCCOMB_X87_Y69_N4
\stage[6][17]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][17]~192_combout\ = (\stage[6][2]~22_combout\ & (((\B[3]~input_o\ & \stage[3][25]~79_combout\)))) # (!\stage[6][2]~22_combout\ & (\fill~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datab => \stage[6][2]~22_combout\,
	datac => \B[3]~input_o\,
	datad => \stage[3][25]~79_combout\,
	combout => \stage[6][17]~192_combout\);

-- Location: LCCOMB_X87_Y69_N6
\stage[6][17]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][17]~193_combout\ = (\stage[6][17]~192_combout\) # ((\stage[6][30]~58_combout\ & \stage[3][17]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][30]~58_combout\,
	datab => \stage[3][17]~72_combout\,
	datac => \stage[6][17]~192_combout\,
	combout => \stage[6][17]~193_combout\);

-- Location: LCCOMB_X86_Y67_N20
\Y~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~94_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\stage[6][17]~193_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \stage[6][17]~193_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~94_combout\);

-- Location: LCCOMB_X88_Y68_N16
\stage[4][30]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][30]~194_combout\ = (\B[3]~input_o\ & (((\fill~2_combout\)))) # (!\B[3]~input_o\ & ((\stage[3][14]~59_combout\ & (\stage[1][30]~43_combout\)) # (!\stage[3][14]~59_combout\ & ((\fill~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \stage[1][30]~43_combout\,
	datac => \fill~2_combout\,
	datad => \stage[3][14]~59_combout\,
	combout => \stage[4][30]~194_combout\);

-- Location: LCCOMB_X88_Y68_N2
\stage[6][14]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][14]~195_combout\ = (\stage[6][14]~167_combout\ & (((!\stage[6][2]~22_combout\)))) # (!\stage[6][14]~167_combout\ & ((\stage[6][2]~22_combout\ & (\stage[3][14]~203_combout\)) # (!\stage[6][2]~22_combout\ & ((\stage[4][30]~194_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][14]~203_combout\,
	datab => \stage[4][30]~194_combout\,
	datac => \stage[6][14]~167_combout\,
	datad => \stage[6][2]~22_combout\,
	combout => \stage[6][14]~195_combout\);

-- Location: LCCOMB_X88_Y68_N20
\stage[6][14]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][14]~196_combout\ = (\stage[6][14]~195_combout\ & ((\fill~2_combout\) # ((!\stage[6][14]~167_combout\)))) # (!\stage[6][14]~195_combout\ & (((\stage[6][14]~167_combout\ & \stage[3][22]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill~2_combout\,
	datab => \stage[6][14]~195_combout\,
	datac => \stage[6][14]~167_combout\,
	datad => \stage[3][22]~154_combout\,
	combout => \stage[6][14]~196_combout\);

-- Location: LCCOMB_X86_Y67_N8
\Y~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~44_combout\ = (\Y~94_combout\) # ((\stage[6][14]~196_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~94_combout\,
	datac => \stage[6][14]~196_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~44_combout\);

-- Location: LCCOMB_X88_Y66_N10
\stage[6][16]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][16]~197_combout\ = (\stage[6][2]~22_combout\ & (\B[3]~input_o\ & (\stage[3][24]~47_combout\))) # (!\stage[6][2]~22_combout\ & (((\fill~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \stage[3][24]~47_combout\,
	datac => \fill~2_combout\,
	datad => \stage[6][2]~22_combout\,
	combout => \stage[6][16]~197_combout\);

-- Location: LCCOMB_X88_Y66_N28
\stage[6][16]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][16]~198_combout\ = (\stage[6][16]~197_combout\) # ((\stage[3][16]~55_combout\ & \stage[6][30]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][16]~197_combout\,
	datac => \stage[3][16]~55_combout\,
	datad => \stage[6][30]~58_combout\,
	combout => \stage[6][16]~198_combout\);

-- Location: LCCOMB_X86_Y69_N26
\stage[4][31]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[4][31]~199_combout\ = (\stage[4][31]~23_combout\ & (\fill~2_combout\)) # (!\stage[4][31]~23_combout\ & ((\A_rev[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fill~2_combout\,
	datac => \stage[4][31]~23_combout\,
	datad => \A_rev[31]~1_combout\,
	combout => \stage[4][31]~199_combout\);

-- Location: LCCOMB_X89_Y68_N20
\stage[6][15]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][15]~200_combout\ = (\stage[6][2]~22_combout\ & (\stage[3][15]~159_combout\ & ((!\stage[6][14]~167_combout\)))) # (!\stage[6][2]~22_combout\ & (((\stage[4][31]~199_combout\) # (\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[3][15]~159_combout\,
	datab => \stage[6][2]~22_combout\,
	datac => \stage[4][31]~199_combout\,
	datad => \stage[6][14]~167_combout\,
	combout => \stage[6][15]~200_combout\);

-- Location: LCCOMB_X89_Y68_N22
\stage[6][15]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage[6][15]~201_combout\ = (\stage[6][15]~200_combout\ & (((\fill~2_combout\) # (!\stage[6][14]~167_combout\)))) # (!\stage[6][15]~200_combout\ & (\stage[3][23]~163_combout\ & ((\stage[6][14]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][15]~200_combout\,
	datab => \stage[3][23]~163_combout\,
	datac => \fill~2_combout\,
	datad => \stage[6][14]~167_combout\,
	combout => \stage[6][15]~201_combout\);

-- Location: LCCOMB_X91_Y69_N22
\Y_rev[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_rev[15]~2_combout\ = (\ShiftFN[1]~input_o\ & (((\stage[6][15]~201_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\stage[6][16]~198_combout\)) # (!\ShiftFN[0]~input_o\ & ((\stage[6][15]~201_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \stage[6][16]~198_combout\,
	datac => \stage[6][15]~201_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_rev[15]~2_combout\);

-- Location: LCCOMB_X84_Y67_N2
\Y~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~45_combout\ = (\ShiftFN[0]~input_o\ & (((\Y_rev[15]~2_combout\)))) # (!\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Y_rev[15]~2_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_rev[15]~2_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~45_combout\);

-- Location: LCCOMB_X85_Y69_N26
\Y~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~46_combout\ = (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~46_combout\);

-- Location: LCCOMB_X85_Y69_N4
\Y~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~47_combout\ = (\ExtWord~input_o\) # ((!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~47_combout\);

-- Location: LCCOMB_X91_Y69_N24
\Y~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~48_combout\ = (\Y~47_combout\ & ((\Y_rev[15]~2_combout\) # ((\Y~46_combout\)))) # (!\Y~47_combout\ & (((!\Y~46_combout\ & \stage[6][16]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[15]~2_combout\,
	datab => \Y~47_combout\,
	datac => \Y~46_combout\,
	datad => \stage[6][16]~198_combout\,
	combout => \Y~48_combout\);

-- Location: LCCOMB_X91_Y69_N2
\Y~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~49_combout\ = (\Y~46_combout\ & ((\Y~48_combout\ & ((\A[16]~input_o\))) # (!\Y~48_combout\ & (\stage[6][15]~201_combout\)))) # (!\Y~46_combout\ & (((\Y~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~46_combout\,
	datab => \stage[6][15]~201_combout\,
	datac => \A[16]~input_o\,
	datad => \Y~48_combout\,
	combout => \Y~49_combout\);

-- Location: LCCOMB_X84_Y69_N16
\Y~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~50_combout\ = (\Y~46_combout\ & ((\stage[6][14]~196_combout\) # ((\Y~47_combout\)))) # (!\Y~46_combout\ & (((!\Y~47_combout\ & \stage[6][17]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][14]~196_combout\,
	datab => \Y~46_combout\,
	datac => \Y~47_combout\,
	datad => \stage[6][17]~193_combout\,
	combout => \Y~50_combout\);

-- Location: LCCOMB_X84_Y69_N2
\Y~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~51_combout\ = (\Y~47_combout\ & ((\Y~50_combout\ & ((\A[17]~input_o\))) # (!\Y~50_combout\ & (\Y_rev[15]~2_combout\)))) # (!\Y~47_combout\ & (((\Y~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[15]~2_combout\,
	datab => \A[17]~input_o\,
	datac => \Y~47_combout\,
	datad => \Y~50_combout\,
	combout => \Y~51_combout\);

-- Location: LCCOMB_X84_Y69_N12
\Y~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~52_combout\ = (\Y~46_combout\ & (((\Y~47_combout\)))) # (!\Y~46_combout\ & ((\Y~47_combout\ & (\Y_rev[15]~2_combout\)) # (!\Y~47_combout\ & ((\stage[6][18]~188_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[15]~2_combout\,
	datab => \Y~46_combout\,
	datac => \Y~47_combout\,
	datad => \stage[6][18]~188_combout\,
	combout => \Y~52_combout\);

-- Location: LCCOMB_X88_Y70_N18
\Y~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~53_combout\ = (\Y~52_combout\ & ((\A[18]~input_o\) # ((!\Y~46_combout\)))) # (!\Y~52_combout\ & (((\Y~46_combout\ & \stage[6][13]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~52_combout\,
	datab => \A[18]~input_o\,
	datac => \Y~46_combout\,
	datad => \stage[6][13]~191_combout\,
	combout => \Y~53_combout\);

-- Location: LCCOMB_X84_Y69_N6
\Y~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~54_combout\ = (\Y~46_combout\ & ((\stage[6][12]~186_combout\) # ((\Y~47_combout\)))) # (!\Y~46_combout\ & (((!\Y~47_combout\ & \stage[6][19]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][12]~186_combout\,
	datab => \Y~46_combout\,
	datac => \Y~47_combout\,
	datad => \stage[6][19]~184_combout\,
	combout => \Y~54_combout\);

-- Location: LCCOMB_X84_Y69_N8
\Y~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~55_combout\ = (\Y~47_combout\ & ((\Y~54_combout\ & (\A[19]~input_o\)) # (!\Y~54_combout\ & ((\Y_rev[15]~2_combout\))))) # (!\Y~47_combout\ & (((\Y~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \Y~47_combout\,
	datac => \Y_rev[15]~2_combout\,
	datad => \Y~54_combout\,
	combout => \Y~55_combout\);

-- Location: LCCOMB_X84_Y69_N26
\Y~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~56_combout\ = (\Y~46_combout\ & (((\Y~47_combout\)))) # (!\Y~46_combout\ & ((\Y~47_combout\ & (\Y_rev[15]~2_combout\)) # (!\Y~47_combout\ & ((\stage[6][20]~179_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[15]~2_combout\,
	datab => \Y~46_combout\,
	datac => \Y~47_combout\,
	datad => \stage[6][20]~179_combout\,
	combout => \Y~56_combout\);

-- Location: LCCOMB_X91_Y69_N12
\Y~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~57_combout\ = (\Y~56_combout\ & (((\A[20]~input_o\) # (!\Y~46_combout\)))) # (!\Y~56_combout\ & (\stage[6][11]~182_combout\ & (\Y~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][11]~182_combout\,
	datab => \Y~56_combout\,
	datac => \Y~46_combout\,
	datad => \A[20]~input_o\,
	combout => \Y~57_combout\);

-- Location: LCCOMB_X85_Y69_N6
\Y~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~58_combout\ = (\Y~46_combout\ & ((\Y~47_combout\) # ((\stage[6][10]~178_combout\)))) # (!\Y~46_combout\ & (!\Y~47_combout\ & (\stage[6][21]~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~46_combout\,
	datab => \Y~47_combout\,
	datac => \stage[6][21]~175_combout\,
	datad => \stage[6][10]~178_combout\,
	combout => \Y~58_combout\);

-- Location: LCCOMB_X84_Y69_N28
\Y~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~59_combout\ = (\Y~47_combout\ & ((\Y~58_combout\ & ((\A[21]~input_o\))) # (!\Y~58_combout\ & (\Y_rev[15]~2_combout\)))) # (!\Y~47_combout\ & (((\Y~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[15]~2_combout\,
	datab => \A[21]~input_o\,
	datac => \Y~47_combout\,
	datad => \Y~58_combout\,
	combout => \Y~59_combout\);

-- Location: LCCOMB_X84_Y69_N30
\Y~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~60_combout\ = (\Y~47_combout\ & ((\Y_rev[15]~2_combout\) # ((\Y~46_combout\)))) # (!\Y~47_combout\ & (((\stage[6][22]~171_combout\ & !\Y~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[15]~2_combout\,
	datab => \stage[6][22]~171_combout\,
	datac => \Y~47_combout\,
	datad => \Y~46_combout\,
	combout => \Y~60_combout\);

-- Location: LCCOMB_X84_Y69_N0
\Y~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~61_combout\ = (\Y~60_combout\ & (((\A[22]~input_o\)) # (!\Y~46_combout\))) # (!\Y~60_combout\ & (\Y~46_combout\ & ((\stage[6][9]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~60_combout\,
	datab => \Y~46_combout\,
	datac => \A[22]~input_o\,
	datad => \stage[6][9]~174_combout\,
	combout => \Y~61_combout\);

-- Location: LCCOMB_X84_Y69_N10
\Y~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~62_combout\ = (\Y~46_combout\ & ((\Y~47_combout\) # ((\stage[6][8]~170_combout\)))) # (!\Y~46_combout\ & (!\Y~47_combout\ & (\stage[6][23]~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~46_combout\,
	datab => \Y~47_combout\,
	datac => \stage[6][23]~166_combout\,
	datad => \stage[6][8]~170_combout\,
	combout => \Y~62_combout\);

-- Location: LCCOMB_X84_Y69_N4
\Y~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~63_combout\ = (\Y~62_combout\ & (((\A[23]~input_o\)) # (!\Y~47_combout\))) # (!\Y~62_combout\ & (\Y~47_combout\ & (\Y_rev[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~62_combout\,
	datab => \Y~47_combout\,
	datac => \Y_rev[15]~2_combout\,
	datad => \A[23]~input_o\,
	combout => \Y~63_combout\);

-- Location: LCCOMB_X84_Y69_N14
\Y~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~64_combout\ = (\Y~46_combout\ & (((\Y~47_combout\)))) # (!\Y~46_combout\ & ((\Y~47_combout\ & (\Y_rev[15]~2_combout\)) # (!\Y~47_combout\ & ((\stage[6][24]~157_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[15]~2_combout\,
	datab => \Y~46_combout\,
	datac => \Y~47_combout\,
	datad => \stage[6][24]~157_combout\,
	combout => \Y~64_combout\);

-- Location: LCCOMB_X90_Y69_N24
\Y~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~65_combout\ = (\Y~46_combout\ & ((\Y~64_combout\ & (\A[24]~input_o\)) # (!\Y~64_combout\ & ((\stage[6][7]~208_combout\))))) # (!\Y~46_combout\ & (((\Y~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Y~46_combout\,
	datac => \stage[6][7]~208_combout\,
	datad => \Y~64_combout\,
	combout => \Y~65_combout\);

-- Location: LCCOMB_X90_Y69_N2
\Y~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~66_combout\ = (\Y~47_combout\ & (\Y~46_combout\)) # (!\Y~47_combout\ & ((\Y~46_combout\ & ((\stage[6][6]~207_combout\))) # (!\Y~46_combout\ & (\stage[6][25]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~47_combout\,
	datab => \Y~46_combout\,
	datac => \stage[6][25]~150_combout\,
	datad => \stage[6][6]~207_combout\,
	combout => \Y~66_combout\);

-- Location: LCCOMB_X91_Y69_N14
\Y~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~67_combout\ = (\Y~66_combout\ & (((\A[25]~input_o\)) # (!\Y~47_combout\))) # (!\Y~66_combout\ & (\Y~47_combout\ & (\Y_rev[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~66_combout\,
	datab => \Y~47_combout\,
	datac => \Y_rev[15]~2_combout\,
	datad => \A[25]~input_o\,
	combout => \Y~67_combout\);

-- Location: LCCOMB_X91_Y69_N0
\Y~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~68_combout\ = (\Y~46_combout\ & (((\Y~47_combout\)))) # (!\Y~46_combout\ & ((\Y~47_combout\ & ((\Y_rev[15]~2_combout\))) # (!\Y~47_combout\ & (\stage[6][26]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~46_combout\,
	datab => \stage[6][26]~142_combout\,
	datac => \Y~47_combout\,
	datad => \Y_rev[15]~2_combout\,
	combout => \Y~68_combout\);

-- Location: LCCOMB_X90_Y69_N12
\Y~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~69_combout\ = (\Y~68_combout\ & ((\A[26]~input_o\) # ((!\Y~46_combout\)))) # (!\Y~68_combout\ & (((\stage[6][5]~206_combout\ & \Y~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \stage[6][5]~206_combout\,
	datac => \Y~68_combout\,
	datad => \Y~46_combout\,
	combout => \Y~69_combout\);

-- Location: LCCOMB_X90_Y69_N14
\Y~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~70_combout\ = (\Y~46_combout\ & (((\stage[6][4]~205_combout\) # (\Y~47_combout\)))) # (!\Y~46_combout\ & (\stage[6][27]~133_combout\ & ((!\Y~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][27]~133_combout\,
	datab => \stage[6][4]~205_combout\,
	datac => \Y~46_combout\,
	datad => \Y~47_combout\,
	combout => \Y~70_combout\);

-- Location: LCCOMB_X91_Y69_N18
\Y~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~71_combout\ = (\Y~70_combout\ & ((\A[27]~input_o\) # ((!\Y~47_combout\)))) # (!\Y~70_combout\ & (((\Y~47_combout\ & \Y_rev[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \A[27]~input_o\,
	datac => \Y~47_combout\,
	datad => \Y_rev[15]~2_combout\,
	combout => \Y~71_combout\);

-- Location: LCCOMB_X91_Y69_N28
\Y~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~72_combout\ = (\Y~47_combout\ & ((\Y_rev[15]~2_combout\) # ((\Y~46_combout\)))) # (!\Y~47_combout\ & (((\stage[6][28]~111_combout\ & !\Y~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[15]~2_combout\,
	datab => \Y~47_combout\,
	datac => \stage[6][28]~111_combout\,
	datad => \Y~46_combout\,
	combout => \Y~72_combout\);

-- Location: LCCOMB_X91_Y69_N30
\Y~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~73_combout\ = (\Y~46_combout\ & ((\Y~72_combout\ & ((\A[28]~input_o\))) # (!\Y~72_combout\ & (\stage[6][3]~132_combout\)))) # (!\Y~46_combout\ & (\Y~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~46_combout\,
	datab => \Y~72_combout\,
	datac => \stage[6][3]~132_combout\,
	datad => \A[28]~input_o\,
	combout => \Y~73_combout\);

-- Location: LCCOMB_X91_Y69_N16
\Y~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~74_combout\ = (\Y~46_combout\ & ((\stage[6][2]~110_combout\) # ((\Y~47_combout\)))) # (!\Y~46_combout\ & (((!\Y~47_combout\ & \stage[6][29]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~46_combout\,
	datab => \stage[6][2]~110_combout\,
	datac => \Y~47_combout\,
	datad => \stage[6][29]~90_combout\,
	combout => \Y~74_combout\);

-- Location: LCCOMB_X91_Y69_N26
\Y~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~75_combout\ = (\Y~74_combout\ & (((\A[29]~input_o\) # (!\Y~47_combout\)))) # (!\Y~74_combout\ & (\Y_rev[15]~2_combout\ & (\Y~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[15]~2_combout\,
	datab => \Y~74_combout\,
	datac => \Y~47_combout\,
	datad => \A[29]~input_o\,
	combout => \Y~75_combout\);

-- Location: LCCOMB_X84_Y69_N24
\Y~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~76_combout\ = (\Y~47_combout\ & (((\Y_rev[15]~2_combout\) # (\Y~46_combout\)))) # (!\Y~47_combout\ & (\stage[6][30]~60_combout\ & ((!\Y~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][30]~60_combout\,
	datab => \Y~47_combout\,
	datac => \Y_rev[15]~2_combout\,
	datad => \Y~46_combout\,
	combout => \Y~76_combout\);

-- Location: LCCOMB_X84_Y69_N18
\Y~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~77_combout\ = (\Y~46_combout\ & ((\Y~76_combout\ & (\A[30]~input_o\)) # (!\Y~76_combout\ & ((\stage[6][1]~88_combout\))))) # (!\Y~46_combout\ & (((\Y~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Y~46_combout\,
	datac => \stage[6][1]~88_combout\,
	datad => \Y~76_combout\,
	combout => \Y~77_combout\);

-- Location: LCCOMB_X84_Y69_N20
\Y~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~78_combout\ = (\Y~46_combout\ & (((\Y~47_combout\) # (\stage[6][0]~57_combout\)))) # (!\Y~46_combout\ & (\stage[6][31]~24_combout\ & (!\Y~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage[6][31]~24_combout\,
	datab => \Y~46_combout\,
	datac => \Y~47_combout\,
	datad => \stage[6][0]~57_combout\,
	combout => \Y~78_combout\);

-- Location: LCCOMB_X84_Y69_N22
\Y~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~79_combout\ = (\Y~47_combout\ & ((\Y~78_combout\ & ((\A[31]~input_o\))) # (!\Y~78_combout\ & (\Y_rev[15]~2_combout\)))) # (!\Y~47_combout\ & (((\Y~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_rev[15]~2_combout\,
	datab => \A[31]~input_o\,
	datac => \Y~47_combout\,
	datad => \Y~78_combout\,
	combout => \Y~79_combout\);

-- Location: IOIBUF_X58_Y0_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y61_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X115_Y57_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X115_Y26_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X115_Y54_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X115_Y49_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\B[31]~input\ : cycloneive_io_ibuf
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


