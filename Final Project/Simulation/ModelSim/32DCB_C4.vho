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

-- DATE "04/08/2026 15:10:40"

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
-- B[8]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \s64[1][18]~4_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \s64[1][18]~5_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \s64~47_combout\ : std_logic;
SIGNAL \s64~48_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \s64[1][16]~49_combout\ : std_logic;
SIGNAL \s64[1][16]~50_combout\ : std_logic;
SIGNAL \s64~51_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \s64~32_combout\ : std_logic;
SIGNAL \s64~33_combout\ : std_logic;
SIGNAL \s64[2][12]~34_combout\ : std_logic;
SIGNAL \s32[2][14]~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \s64~35_combout\ : std_logic;
SIGNAL \s64[2][12]~36_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \s64[1][22]~6_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \s64[1][22]~7_combout\ : std_logic;
SIGNAL \s64[2][20]~8_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \s64[1][20]~9_combout\ : std_logic;
SIGNAL \s64[1][20]~10_combout\ : std_logic;
SIGNAL \s64[2][20]~11_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \s64[3][16]~46_combout\ : std_logic;
SIGNAL \s64[3][16]~52_combout\ : std_logic;
SIGNAL \s64[5][0]~3_combout\ : std_logic;
SIGNAL \s64[4][16]~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \s64~42_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \s64~39_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \s64~40_combout\ : std_logic;
SIGNAL \s64[2][4]~41_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \s64~38_combout\ : std_logic;
SIGNAL \s64[2][4]~43_combout\ : std_logic;
SIGNAL \s64~30_combout\ : std_logic;
SIGNAL \s64~26_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \s64~27_combout\ : std_logic;
SIGNAL \s64~28_combout\ : std_logic;
SIGNAL \s64[2][8]~29_combout\ : std_logic;
SIGNAL \s64[2][8]~31_combout\ : std_logic;
SIGNAL \s64[3][8]~37_combout\ : std_logic;
SIGNAL \s64[3][8]~44_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \s64[1][30]~14_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \s64[1][30]~15_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \s64[1][26]~12_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \s64[1][26]~13_combout\ : std_logic;
SIGNAL \s64[2][28]~16_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \s64[1][28]~17_combout\ : std_logic;
SIGNAL \s64[1][28]~18_combout\ : std_logic;
SIGNAL \s64[2][28]~19_combout\ : std_logic;
SIGNAL \s64[3][24]~20_combout\ : std_logic;
SIGNAL \s64[2][24]~21_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \s64[1][24]~22_combout\ : std_logic;
SIGNAL \s64[1][24]~23_combout\ : std_logic;
SIGNAL \s64[2][24]~24_combout\ : std_logic;
SIGNAL \s64[3][24]~25_combout\ : std_logic;
SIGNAL \s64[4][16]~45_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \fill64~0_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \fill32~0_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \s64~54_combout\ : std_logic;
SIGNAL \s64[2][0]~57_combout\ : std_logic;
SIGNAL \s64~55_combout\ : std_logic;
SIGNAL \s64[2][0]~56_combout\ : std_logic;
SIGNAL \s64[2][0]~58_combout\ : std_logic;
SIGNAL \s64[2][0]~53_combout\ : std_logic;
SIGNAL \s64[2][0]~59_combout\ : std_logic;
SIGNAL \s64[3][0]~60_combout\ : std_logic;
SIGNAL \s64[5][0]~62_combout\ : std_logic;
SIGNAL \s64[5][0]~61_combout\ : std_logic;
SIGNAL \s64[5][0]~63_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \s64~75_combout\ : std_logic;
SIGNAL \s64~73_combout\ : std_logic;
SIGNAL \s64~72_combout\ : std_logic;
SIGNAL \s64[2][5]~74_combout\ : std_logic;
SIGNAL \s64~71_combout\ : std_logic;
SIGNAL \s64[2][5]~76_combout\ : std_logic;
SIGNAL \s64~65_combout\ : std_logic;
SIGNAL \s64~66_combout\ : std_logic;
SIGNAL \s64~67_combout\ : std_logic;
SIGNAL \s64[2][9]~68_combout\ : std_logic;
SIGNAL \s64~69_combout\ : std_logic;
SIGNAL \s64[2][9]~70_combout\ : std_logic;
SIGNAL \s64[3][9]~77_combout\ : std_logic;
SIGNAL \s64[2][15]~83_combout\ : std_logic;
SIGNAL \s64~64_combout\ : std_logic;
SIGNAL \s64[2][13]~84_combout\ : std_logic;
SIGNAL \s64[3][9]~85_combout\ : std_logic;
SIGNAL \s64[4][17]~242_combout\ : std_logic;
SIGNAL \s64~108_combout\ : std_logic;
SIGNAL \s64~109_combout\ : std_logic;
SIGNAL \s64~110_combout\ : std_logic;
SIGNAL \s64[1][23]~88_combout\ : std_logic;
SIGNAL \s64[1][23]~89_combout\ : std_logic;
SIGNAL \s64[1][19]~86_combout\ : std_logic;
SIGNAL \s64[1][19]~87_combout\ : std_logic;
SIGNAL \s64[2][21]~90_combout\ : std_logic;
SIGNAL \s64[1][21]~91_combout\ : std_logic;
SIGNAL \s64[1][21]~92_combout\ : std_logic;
SIGNAL \s64[2][21]~93_combout\ : std_logic;
SIGNAL \s64[3][17]~111_combout\ : std_logic;
SIGNAL \s64~112_combout\ : std_logic;
SIGNAL \s64~113_combout\ : std_logic;
SIGNAL \s64[1][17]~114_combout\ : std_logic;
SIGNAL \s64[1][17]~115_combout\ : std_logic;
SIGNAL \s64~116_combout\ : std_logic;
SIGNAL \s64[3][17]~117_combout\ : std_logic;
SIGNAL \s64[1][27]~94_combout\ : std_logic;
SIGNAL \s64[1][27]~95_combout\ : std_logic;
SIGNAL \s64[1][31]~96_combout\ : std_logic;
SIGNAL \s64[1][31]~97_combout\ : std_logic;
SIGNAL \s64[2][29]~98_combout\ : std_logic;
SIGNAL \s64[1][29]~99_combout\ : std_logic;
SIGNAL \s64[1][29]~100_combout\ : std_logic;
SIGNAL \s64[2][29]~101_combout\ : std_logic;
SIGNAL \s64[3][25]~102_combout\ : std_logic;
SIGNAL \s64[2][25]~103_combout\ : std_logic;
SIGNAL \s64[1][25]~104_combout\ : std_logic;
SIGNAL \s64[1][25]~105_combout\ : std_logic;
SIGNAL \s64[2][25]~106_combout\ : std_logic;
SIGNAL \s64[4][17]~107_combout\ : std_logic;
SIGNAL \s64[4][17]~118_combout\ : std_logic;
SIGNAL \Y~130_combout\ : std_logic;
SIGNAL \s64~78_combout\ : std_logic;
SIGNAL \s64~79_combout\ : std_logic;
SIGNAL \s64[2][1]~80_combout\ : std_logic;
SIGNAL \s64[2][1]~81_combout\ : std_logic;
SIGNAL \s64[3][1]~82_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \s32~1_combout\ : std_logic;
SIGNAL \s32[2][13]~2_combout\ : std_logic;
SIGNAL \s32[3][9]~3_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \Y~132_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \s64[2][18]~140_combout\ : std_logic;
SIGNAL \s64[2][18]~141_combout\ : std_logic;
SIGNAL \s64[2][22]~129_combout\ : std_logic;
SIGNAL \s64[2][22]~130_combout\ : std_logic;
SIGNAL \s64~138_combout\ : std_logic;
SIGNAL \s64[3][18]~139_combout\ : std_logic;
SIGNAL \s64[3][18]~142_combout\ : std_logic;
SIGNAL \s64[2][14]~127_combout\ : std_logic;
SIGNAL \s64[2][6]~121_combout\ : std_logic;
SIGNAL \s64[2][6]~122_combout\ : std_logic;
SIGNAL \s64[2][10]~119_combout\ : std_logic;
SIGNAL \s64[2][10]~120_combout\ : std_logic;
SIGNAL \s64[3][10]~123_combout\ : std_logic;
SIGNAL \s64[3][10]~128_combout\ : std_logic;
SIGNAL \s64[2][26]~134_combout\ : std_logic;
SIGNAL \s64[2][26]~135_combout\ : std_logic;
SIGNAL \s64[2][30]~131_combout\ : std_logic;
SIGNAL \s64[2][30]~132_combout\ : std_logic;
SIGNAL \s64[3][26]~133_combout\ : std_logic;
SIGNAL \s64[3][26]~136_combout\ : std_logic;
SIGNAL \s64[4][18]~137_combout\ : std_logic;
SIGNAL \s64[4][18]~143_combout\ : std_logic;
SIGNAL \s64[2][2]~124_combout\ : std_logic;
SIGNAL \s64[2][2]~125_combout\ : std_logic;
SIGNAL \s64[3][2]~126_combout\ : std_logic;
SIGNAL \fill64~1_combout\ : std_logic;
SIGNAL \s32[2][14]~4_combout\ : std_logic;
SIGNAL \s32[3][10]~5_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \Y~32_combout\ : std_logic;
SIGNAL \s64[2][7]~146_combout\ : std_logic;
SIGNAL \s64[2][7]~147_combout\ : std_logic;
SIGNAL \s64[2][11]~144_combout\ : std_logic;
SIGNAL \s64[2][11]~145_combout\ : std_logic;
SIGNAL \s64[3][11]~148_combout\ : std_logic;
SIGNAL \s64[2][15]~152_combout\ : std_logic;
SIGNAL \s64[3][11]~153_combout\ : std_logic;
SIGNAL \s64[2][31]~156_combout\ : std_logic;
SIGNAL \s64[2][31]~157_combout\ : std_logic;
SIGNAL \s64[2][23]~154_combout\ : std_logic;
SIGNAL \s64[2][23]~155_combout\ : std_logic;
SIGNAL \s64[3][27]~158_combout\ : std_logic;
SIGNAL \s64[2][27]~159_combout\ : std_logic;
SIGNAL \s64[2][27]~160_combout\ : std_logic;
SIGNAL \s64[3][27]~161_combout\ : std_logic;
SIGNAL \s64[4][19]~162_combout\ : std_logic;
SIGNAL \s64[2][19]~166_combout\ : std_logic;
SIGNAL \s64[2][19]~167_combout\ : std_logic;
SIGNAL \s64~163_combout\ : std_logic;
SIGNAL \s64~164_combout\ : std_logic;
SIGNAL \s64[3][19]~165_combout\ : std_logic;
SIGNAL \s64[3][19]~168_combout\ : std_logic;
SIGNAL \s64[4][19]~169_combout\ : std_logic;
SIGNAL \s64[2][3]~149_combout\ : std_logic;
SIGNAL \s64[2][3]~150_combout\ : std_logic;
SIGNAL \s64[3][3]~151_combout\ : std_logic;
SIGNAL \Y~34_combout\ : std_logic;
SIGNAL \s32[2][15]~6_combout\ : std_logic;
SIGNAL \s32[3][11]~7_combout\ : std_logic;
SIGNAL \Y~33_combout\ : std_logic;
SIGNAL \Y~35_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \s64[3][12]~170_combout\ : std_logic;
SIGNAL \s32[3][12]~8_combout\ : std_logic;
SIGNAL \s64[3][4]~171_combout\ : std_logic;
SIGNAL \s64[3][4]~172_combout\ : std_logic;
SIGNAL \Y~37_combout\ : std_logic;
SIGNAL \s64[3][12]~177_combout\ : std_logic;
SIGNAL \Y~40_combout\ : std_logic;
SIGNAL \s64[3][28]~175_combout\ : std_logic;
SIGNAL \s64[3][8]~173_combout\ : std_logic;
SIGNAL \s64[3][28]~174_combout\ : std_logic;
SIGNAL \s64[3][28]~176_combout\ : std_logic;
SIGNAL \s64[4][20]~178_combout\ : std_logic;
SIGNAL \s64[3][20]~179_combout\ : std_logic;
SIGNAL \s64[3][20]~180_combout\ : std_logic;
SIGNAL \Y~38_combout\ : std_logic;
SIGNAL \Y~39_combout\ : std_logic;
SIGNAL \Y~41_combout\ : std_logic;
SIGNAL \s64[3][13]~185_combout\ : std_logic;
SIGNAL \s64[3][13]~186_combout\ : std_logic;
SIGNAL \s64[3][29]~183_combout\ : std_logic;
SIGNAL \s64[3][29]~184_combout\ : std_logic;
SIGNAL \s64[4][21]~187_combout\ : std_logic;
SIGNAL \s64[3][21]~188_combout\ : std_logic;
SIGNAL \s64[3][21]~189_combout\ : std_logic;
SIGNAL \Y~43_combout\ : std_logic;
SIGNAL \s64[3][5]~181_combout\ : std_logic;
SIGNAL \s64[3][5]~182_combout\ : std_logic;
SIGNAL \Y~44_combout\ : std_logic;
SIGNAL \s32[3][13]~9_combout\ : std_logic;
SIGNAL \s32[3][13]~10_combout\ : std_logic;
SIGNAL \Y~42_combout\ : std_logic;
SIGNAL \Y~45_combout\ : std_logic;
SIGNAL \s64[3][30]~190_combout\ : std_logic;
SIGNAL \s64[3][30]~191_combout\ : std_logic;
SIGNAL \s64[3][14]~192_combout\ : std_logic;
SIGNAL \s64[3][14]~193_combout\ : std_logic;
SIGNAL \s64[4][22]~194_combout\ : std_logic;
SIGNAL \s64[3][22]~195_combout\ : std_logic;
SIGNAL \s64[3][22]~196_combout\ : std_logic;
SIGNAL \Y~46_combout\ : std_logic;
SIGNAL \s32[3][14]~11_combout\ : std_logic;
SIGNAL \s32[3][14]~12_combout\ : std_logic;
SIGNAL \s64[3][6]~197_combout\ : std_logic;
SIGNAL \s64[3][6]~198_combout\ : std_logic;
SIGNAL \Y~47_combout\ : std_logic;
SIGNAL \Y~48_combout\ : std_logic;
SIGNAL \Y~49_combout\ : std_logic;
SIGNAL \Y~50_combout\ : std_logic;
SIGNAL \s64[3][7]~206_combout\ : std_logic;
SIGNAL \s64[3][7]~207_combout\ : std_logic;
SIGNAL \s64[3][15]~201_combout\ : std_logic;
SIGNAL \s64[3][15]~202_combout\ : std_logic;
SIGNAL \Y~53_combout\ : std_logic;
SIGNAL \s32[3][15]~13_combout\ : std_logic;
SIGNAL \s32[3][15]~14_combout\ : std_logic;
SIGNAL \Y~52_combout\ : std_logic;
SIGNAL \Y~54_combout\ : std_logic;
SIGNAL \s64[3][31]~199_combout\ : std_logic;
SIGNAL \s64[3][31]~200_combout\ : std_logic;
SIGNAL \s64[4][23]~203_combout\ : std_logic;
SIGNAL \s64[3][23]~204_combout\ : std_logic;
SIGNAL \s64[3][23]~205_combout\ : std_logic;
SIGNAL \Y~51_combout\ : std_logic;
SIGNAL \Y~55_combout\ : std_logic;
SIGNAL \Y~133_combout\ : std_logic;
SIGNAL \s64[4][8]~210_combout\ : std_logic;
SIGNAL \s64[4][8]~211_combout\ : std_logic;
SIGNAL \s64[4][24]~208_combout\ : std_logic;
SIGNAL \s64[4][24]~209_combout\ : std_logic;
SIGNAL \Y~59_combout\ : std_logic;
SIGNAL \Y~57_combout\ : std_logic;
SIGNAL \Y~58_combout\ : std_logic;
SIGNAL \Y~60_combout\ : std_logic;
SIGNAL \Y~56_combout\ : std_logic;
SIGNAL \Y~61_combout\ : std_logic;
SIGNAL \Y~62_combout\ : std_logic;
SIGNAL \s64[4][9]~215_combout\ : std_logic;
SIGNAL \s64[4][9]~216_combout\ : std_logic;
SIGNAL \Y~63_combout\ : std_logic;
SIGNAL \Y~64_combout\ : std_logic;
SIGNAL \Y~65_combout\ : std_logic;
SIGNAL \s64[4][25]~212_combout\ : std_logic;
SIGNAL \s64[3][25]~213_combout\ : std_logic;
SIGNAL \s64[4][25]~214_combout\ : std_logic;
SIGNAL \Y~66_combout\ : std_logic;
SIGNAL \s64[4][10]~219_combout\ : std_logic;
SIGNAL \s64[4][10]~220_combout\ : std_logic;
SIGNAL \Y~67_combout\ : std_logic;
SIGNAL \Y~68_combout\ : std_logic;
SIGNAL \Y~69_combout\ : std_logic;
SIGNAL \s64[4][26]~217_combout\ : std_logic;
SIGNAL \s64[4][26]~218_combout\ : std_logic;
SIGNAL \Y~70_combout\ : std_logic;
SIGNAL \Y~71_combout\ : std_logic;
SIGNAL \Y~72_combout\ : std_logic;
SIGNAL \Y~73_combout\ : std_logic;
SIGNAL \s64[4][11]~223_combout\ : std_logic;
SIGNAL \s64[4][11]~224_combout\ : std_logic;
SIGNAL \s64[4][27]~221_combout\ : std_logic;
SIGNAL \s64[4][27]~222_combout\ : std_logic;
SIGNAL \Y~74_combout\ : std_logic;
SIGNAL \s64[4][28]~225_combout\ : std_logic;
SIGNAL \s64[4][28]~226_combout\ : std_logic;
SIGNAL \Y~75_combout\ : std_logic;
SIGNAL \Y~76_combout\ : std_logic;
SIGNAL \Y~77_combout\ : std_logic;
SIGNAL \s64[4][12]~227_combout\ : std_logic;
SIGNAL \s64[4][12]~228_combout\ : std_logic;
SIGNAL \Y~78_combout\ : std_logic;
SIGNAL \s64[4][13]~231_combout\ : std_logic;
SIGNAL \s64[4][13]~232_combout\ : std_logic;
SIGNAL \Y~79_combout\ : std_logic;
SIGNAL \Y~80_combout\ : std_logic;
SIGNAL \Y~81_combout\ : std_logic;
SIGNAL \s64[4][29]~229_combout\ : std_logic;
SIGNAL \s64[4][29]~230_combout\ : std_logic;
SIGNAL \Y~82_combout\ : std_logic;
SIGNAL \Y~83_combout\ : std_logic;
SIGNAL \Y~84_combout\ : std_logic;
SIGNAL \Y~85_combout\ : std_logic;
SIGNAL \s64[4][30]~233_combout\ : std_logic;
SIGNAL \s64[4][30]~234_combout\ : std_logic;
SIGNAL \s64[4][14]~235_combout\ : std_logic;
SIGNAL \s64[4][14]~236_combout\ : std_logic;
SIGNAL \Y~86_combout\ : std_logic;
SIGNAL \s64[4][31]~237_combout\ : std_logic;
SIGNAL \s64[4][31]~238_combout\ : std_logic;
SIGNAL \Y~87_combout\ : std_logic;
SIGNAL \Y~88_combout\ : std_logic;
SIGNAL \Y~89_combout\ : std_logic;
SIGNAL \Y~90_combout\ : std_logic;
SIGNAL \s64[4][15]~239_combout\ : std_logic;
SIGNAL \s64[4][15]~240_combout\ : std_logic;
SIGNAL \Y~91_combout\ : std_logic;
SIGNAL \Y~94_combout\ : std_logic;
SIGNAL \Y~95_combout\ : std_logic;
SIGNAL \Y~92_combout\ : std_logic;
SIGNAL \Y~93_combout\ : std_logic;
SIGNAL \Y~96_combout\ : std_logic;
SIGNAL \Y~97_combout\ : std_logic;
SIGNAL \Y~98_combout\ : std_logic;
SIGNAL \Y~131_combout\ : std_logic;
SIGNAL \Y~99_combout\ : std_logic;
SIGNAL \Y~100_combout\ : std_logic;
SIGNAL \Y~101_combout\ : std_logic;
SIGNAL \Y~102_combout\ : std_logic;
SIGNAL \Y~103_combout\ : std_logic;
SIGNAL \Y~104_combout\ : std_logic;
SIGNAL \Y~105_combout\ : std_logic;
SIGNAL \s64[4][20]~241_combout\ : std_logic;
SIGNAL \Y~106_combout\ : std_logic;
SIGNAL \Y~107_combout\ : std_logic;
SIGNAL \Y~108_combout\ : std_logic;
SIGNAL \Y~109_combout\ : std_logic;
SIGNAL \Y~110_combout\ : std_logic;
SIGNAL \Y~111_combout\ : std_logic;
SIGNAL \Y~112_combout\ : std_logic;
SIGNAL \Y~113_combout\ : std_logic;
SIGNAL \Y~114_combout\ : std_logic;
SIGNAL \Y~115_combout\ : std_logic;
SIGNAL \Y~116_combout\ : std_logic;
SIGNAL \Y~117_combout\ : std_logic;
SIGNAL \Y~118_combout\ : std_logic;
SIGNAL \Y~119_combout\ : std_logic;
SIGNAL \Y~120_combout\ : std_logic;
SIGNAL \Y~121_combout\ : std_logic;
SIGNAL \Y~122_combout\ : std_logic;
SIGNAL \Y~123_combout\ : std_logic;
SIGNAL \Y~124_combout\ : std_logic;
SIGNAL \Y~125_combout\ : std_logic;
SIGNAL \Y~126_combout\ : std_logic;
SIGNAL \Y~127_combout\ : std_logic;
SIGNAL \Y~128_combout\ : std_logic;
SIGNAL \Y~129_combout\ : std_logic;

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

-- Location: IOOBUF_X62_Y0_N16
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~21_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~28_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
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

-- Location: IOOBUF_X87_Y73_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~36_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~41_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~45_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~50_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~55_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~62_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~66_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~70_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~74_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~78_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~82_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~86_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~91_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~98_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~99_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~103_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~105_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~107_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~109_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~111_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~113_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~115_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~117_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~119_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~121_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~123_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~125_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~127_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~129_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOIBUF_X58_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X60_Y69_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X58_Y73_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X62_Y68_N0
\Y~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = (!\Equal0~0_combout\ & (\B[4]~input_o\ & (!\ExtWord~input_o\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~16_combout\);

-- Location: IOIBUF_X69_Y73_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X68_Y69_N8
\s64[1][18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][18]~4_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[19]~input_o\)))) # (!\B[0]~input_o\ & (((\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[0]~input_o\,
	datac => \A[18]~input_o\,
	datad => \A[19]~input_o\,
	combout => \s64[1][18]~4_combout\);

-- Location: IOIBUF_X91_Y73_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X67_Y69_N24
\s64[1][18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][18]~5_combout\ = (\s64[1][18]~4_combout\) # ((\B[0]~input_o\ & (\Equal0~0_combout\ & \A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \s64[1][18]~4_combout\,
	datad => \A[17]~input_o\,
	combout => \s64[1][18]~5_combout\);

-- Location: IOIBUF_X72_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X66_Y67_N22
\s64~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~47_combout\ = (\B[0]~input_o\ & ((\A[13]~input_o\))) # (!\B[0]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[13]~input_o\,
	combout => \s64~47_combout\);

-- Location: LCCOMB_X63_Y69_N6
\s64~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~48_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64~47_combout\))) # (!\Equal0~0_combout\ & (\s64[1][18]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][18]~5_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~47_combout\,
	combout => \s64~48_combout\);

-- Location: IOIBUF_X47_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X67_Y69_N20
\s64[1][16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][16]~49_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & ((\A[17]~input_o\)))) # (!\B[0]~input_o\ & (((\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \A[16]~input_o\,
	datad => \A[17]~input_o\,
	combout => \s64[1][16]~49_combout\);

-- Location: LCCOMB_X63_Y69_N0
\s64[1][16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][16]~50_combout\ = (\s64[1][16]~49_combout\) # ((\Equal0~0_combout\ & (\A[15]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[15]~input_o\,
	datac => \s64[1][16]~49_combout\,
	datad => \B[0]~input_o\,
	combout => \s64[1][16]~50_combout\);

-- Location: LCCOMB_X63_Y69_N10
\s64~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~51_combout\ = (\s64~48_combout\) # ((\s64[1][16]~50_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~48_combout\,
	datab => \s64[1][16]~50_combout\,
	datac => \B[1]~input_o\,
	combout => \s64~51_combout\);

-- Location: IOIBUF_X74_Y73_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X66_Y67_N10
\s64~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~32_combout\ = (\B[0]~input_o\ & (\A[11]~input_o\)) # (!\B[0]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[12]~input_o\,
	combout => \s64~32_combout\);

-- Location: LCCOMB_X66_Y67_N12
\s64~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~33_combout\ = (\B[0]~input_o\ & ((\A[13]~input_o\))) # (!\B[0]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[13]~input_o\,
	combout => \s64~33_combout\);

-- Location: LCCOMB_X63_Y68_N12
\s64[2][12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][12]~34_combout\ = (\Equal0~0_combout\ & ((\s64~32_combout\) # ((\B[1]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[1]~input_o\ & \s64~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~32_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~33_combout\,
	combout => \s64[2][12]~34_combout\);

-- Location: LCCOMB_X66_Y67_N0
\s32[2][14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][14]~0_combout\ = (\B[0]~input_o\ & (\A[15]~input_o\)) # (!\B[0]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	combout => \s32[2][14]~0_combout\);

-- Location: IOIBUF_X67_Y73_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X67_Y68_N18
\s64~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~35_combout\ = (\B[0]~input_o\ & ((\A[9]~input_o\))) # (!\B[0]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[9]~input_o\,
	combout => \s64~35_combout\);

-- Location: LCCOMB_X63_Y68_N22
\s64[2][12]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][12]~36_combout\ = (\s64[2][12]~34_combout\ & (((\s64~35_combout\) # (!\B[1]~input_o\)))) # (!\s64[2][12]~34_combout\ & (\s32[2][14]~0_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][12]~34_combout\,
	datab => \s32[2][14]~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~35_combout\,
	combout => \s64[2][12]~36_combout\);

-- Location: IOIBUF_X72_Y73_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

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

-- Location: LCCOMB_X68_Y69_N10
\s64[1][22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][22]~6_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[23]~input_o\)))) # (!\B[0]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[23]~input_o\,
	combout => \s64[1][22]~6_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X68_Y69_N4
\s64[1][22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][22]~7_combout\ = (\s64[1][22]~6_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][22]~6_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[21]~input_o\,
	combout => \s64[1][22]~7_combout\);

-- Location: LCCOMB_X63_Y69_N24
\s64[2][20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][20]~8_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][18]~5_combout\))) # (!\Equal0~0_combout\ & (\s64[1][22]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][22]~7_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][18]~5_combout\,
	combout => \s64[2][20]~8_combout\);

-- Location: IOIBUF_X81_Y73_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X68_Y69_N6
\s64[1][20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][20]~9_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[21]~input_o\))) # (!\B[0]~input_o\ & (((\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \A[21]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[20]~input_o\,
	combout => \s64[1][20]~9_combout\);

-- Location: LCCOMB_X68_Y69_N24
\s64[1][20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][20]~10_combout\ = (\s64[1][20]~9_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][20]~9_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[19]~input_o\,
	combout => \s64[1][20]~10_combout\);

-- Location: LCCOMB_X63_Y69_N2
\s64[2][20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][20]~11_combout\ = (\s64[2][20]~8_combout\) # ((!\B[1]~input_o\ & \s64[1][20]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][20]~8_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][20]~10_combout\,
	combout => \s64[2][20]~11_combout\);

-- Location: IOIBUF_X65_Y73_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X61_Y68_N20
\s64[3][16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][16]~46_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][12]~36_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][20]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][12]~36_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[2][20]~11_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][16]~46_combout\);

-- Location: LCCOMB_X61_Y68_N22
\s64[3][16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][16]~52_combout\ = (\s64[3][16]~46_combout\) # ((\s64~51_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~51_combout\,
	datab => \s64[3][16]~46_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][16]~52_combout\);

-- Location: LCCOMB_X60_Y68_N24
\s64[5][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][0]~3_combout\ = (\B[3]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \s64[5][0]~3_combout\);

-- Location: LCCOMB_X61_Y68_N0
\s64[4][16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][16]~2_combout\ = (\B[3]~input_o\ & (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \s64[4][16]~2_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X65_Y68_N10
\s64~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~42_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \s64~42_combout\);

-- Location: IOIBUF_X87_Y73_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X65_Y68_N8
\s64~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~39_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[4]~input_o\,
	combout => \s64~39_combout\);

-- Location: IOIBUF_X65_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X66_Y68_N22
\s64~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~40_combout\ = (\B[0]~input_o\ & ((\A[5]~input_o\))) # (!\B[0]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \s64~40_combout\);

-- Location: LCCOMB_X63_Y68_N10
\s64[2][4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][4]~41_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~39_combout\)) # (!\Equal0~0_combout\ & ((\s64~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~39_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64~40_combout\,
	combout => \s64[2][4]~41_combout\);

-- Location: IOIBUF_X69_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X66_Y68_N12
\s64~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~38_combout\ = (\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \s64~38_combout\);

-- Location: LCCOMB_X63_Y68_N28
\s64[2][4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][4]~43_combout\ = (\s64[2][4]~41_combout\ & ((\s64~42_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][4]~41_combout\ & (((\B[1]~input_o\ & \s64~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~42_combout\,
	datab => \s64[2][4]~41_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~38_combout\,
	combout => \s64[2][4]~43_combout\);

-- Location: LCCOMB_X66_Y68_N2
\s64~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~30_combout\ = (\B[0]~input_o\ & (\A[5]~input_o\)) # (!\B[0]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[6]~input_o\,
	combout => \s64~30_combout\);

-- Location: LCCOMB_X67_Y69_N2
\s64~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~26_combout\ = (\B[0]~input_o\ & ((\A[11]~input_o\))) # (!\B[0]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \s64~26_combout\);

-- Location: IOIBUF_X67_Y73_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X66_Y68_N0
\s64~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~27_combout\ = (\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[7]~input_o\,
	combout => \s64~27_combout\);

-- Location: LCCOMB_X67_Y68_N24
\s64~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~28_combout\ = (\B[0]~input_o\ & ((\A[9]~input_o\))) # (!\B[0]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[0]~input_o\,
	datad => \A[9]~input_o\,
	combout => \s64~28_combout\);

-- Location: LCCOMB_X63_Y68_N8
\s64[2][8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][8]~29_combout\ = (\Equal0~0_combout\ & ((\s64~27_combout\) # ((\B[1]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[1]~input_o\ & \s64~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~27_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~28_combout\,
	combout => \s64[2][8]~29_combout\);

-- Location: LCCOMB_X63_Y68_N2
\s64[2][8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][8]~31_combout\ = (\B[1]~input_o\ & ((\s64[2][8]~29_combout\ & (\s64~30_combout\)) # (!\s64[2][8]~29_combout\ & ((\s64~26_combout\))))) # (!\B[1]~input_o\ & (((\s64[2][8]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~30_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~26_combout\,
	datad => \s64[2][8]~29_combout\,
	combout => \s64[2][8]~31_combout\);

-- Location: LCCOMB_X63_Y68_N24
\s64[3][8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][8]~37_combout\ = (\B[2]~input_o\ & (\s64[2][12]~36_combout\ & (!\Equal0~0_combout\))) # (!\B[2]~input_o\ & (((\s64[2][8]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][12]~36_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][8]~31_combout\,
	combout => \s64[3][8]~37_combout\);

-- Location: LCCOMB_X63_Y68_N14
\s64[3][8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][8]~44_combout\ = (\s64[3][8]~37_combout\) # ((\s64[2][4]~43_combout\ & (\Equal0~0_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][4]~43_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[3][8]~37_combout\,
	combout => \s64[3][8]~44_combout\);

-- Location: IOIBUF_X67_Y73_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X66_Y69_N10
\s64[1][30]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][30]~14_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[31]~input_o\)))) # (!\B[0]~input_o\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \s64[1][30]~14_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X66_Y69_N4
\s64[1][30]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][30]~15_combout\ = (\s64[1][30]~14_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][30]~14_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \s64[1][30]~15_combout\);

-- Location: IOIBUF_X69_Y73_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X66_Y69_N16
\s64[1][26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][26]~12_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[27]~input_o\)))) # (!\B[0]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \A[27]~input_o\,
	combout => \s64[1][26]~12_combout\);

-- Location: IOIBUF_X81_Y73_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X68_Y69_N26
\s64[1][26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][26]~13_combout\ = (\s64[1][26]~12_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][26]~12_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[25]~input_o\,
	combout => \s64[1][26]~13_combout\);

-- Location: LCCOMB_X65_Y69_N0
\s64[2][28]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][28]~16_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][26]~13_combout\))) # (!\Equal0~0_combout\ & (\s64[1][30]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][30]~15_combout\,
	datab => \s64[1][26]~13_combout\,
	datac => \B[1]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[2][28]~16_combout\);

-- Location: IOIBUF_X38_Y73_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X66_Y69_N22
\s64[1][28]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][28]~17_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[29]~input_o\)))) # (!\B[0]~input_o\ & (\A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \s64[1][28]~17_combout\);

-- Location: LCCOMB_X66_Y69_N24
\s64[1][28]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][28]~18_combout\ = (\s64[1][28]~17_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][28]~17_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[27]~input_o\,
	combout => \s64[1][28]~18_combout\);

-- Location: LCCOMB_X65_Y69_N2
\s64[2][28]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][28]~19_combout\ = (\s64[2][28]~16_combout\) # ((!\B[1]~input_o\ & \s64[1][28]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][28]~16_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][28]~18_combout\,
	combout => \s64[2][28]~19_combout\);

-- Location: LCCOMB_X63_Y69_N28
\s64[3][24]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][24]~20_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][20]~11_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][28]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][20]~11_combout\,
	datac => \s64[2][28]~19_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][24]~20_combout\);

-- Location: LCCOMB_X65_Y69_N12
\s64[2][24]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][24]~21_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][22]~7_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][26]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][22]~7_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][26]~13_combout\,
	combout => \s64[2][24]~21_combout\);

-- Location: IOIBUF_X79_Y73_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X68_Y69_N12
\s64[1][24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][24]~22_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[25]~input_o\)))) # (!\B[0]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[25]~input_o\,
	combout => \s64[1][24]~22_combout\);

-- Location: LCCOMB_X68_Y69_N14
\s64[1][24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][24]~23_combout\ = (\s64[1][24]~22_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][24]~22_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[23]~input_o\,
	combout => \s64[1][24]~23_combout\);

-- Location: LCCOMB_X65_Y69_N30
\s64[2][24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][24]~24_combout\ = (\s64[2][24]~21_combout\) # ((!\B[1]~input_o\ & \s64[1][24]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][24]~21_combout\,
	datab => \B[1]~input_o\,
	datac => \s64[1][24]~23_combout\,
	combout => \s64[2][24]~24_combout\);

-- Location: LCCOMB_X60_Y68_N18
\s64[3][24]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][24]~25_combout\ = (\s64[3][24]~20_combout\) # ((\s64[2][24]~24_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][24]~20_combout\,
	datac => \s64[2][24]~24_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][24]~25_combout\);

-- Location: LCCOMB_X61_Y68_N10
\s64[4][16]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][16]~45_combout\ = (\s64[5][0]~3_combout\ & ((\s64[3][24]~25_combout\) # ((\s64[4][16]~2_combout\ & \s64[3][8]~44_combout\)))) # (!\s64[5][0]~3_combout\ & (\s64[4][16]~2_combout\ & (\s64[3][8]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][0]~3_combout\,
	datab => \s64[4][16]~2_combout\,
	datac => \s64[3][8]~44_combout\,
	datad => \s64[3][24]~25_combout\,
	combout => \s64[4][16]~45_combout\);

-- Location: LCCOMB_X61_Y68_N8
\Y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = (\Y~16_combout\ & ((\s64[4][16]~45_combout\) # ((!\B[3]~input_o\ & \s64[3][16]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y~16_combout\,
	datac => \s64[3][16]~52_combout\,
	datad => \s64[4][16]~45_combout\,
	combout => \Y~17_combout\);

-- Location: LCCOMB_X60_Y68_N4
\fill64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill64~0_combout\ = (\ShiftFN[0]~input_o\ & (\A[31]~input_o\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \fill64~0_combout\);

-- Location: LCCOMB_X62_Y68_N26
\Y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = (\fill64~0_combout\ & (!\ExtWord~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fill64~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~18_combout\);

-- Location: LCCOMB_X60_Y69_N26
\fill32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill32~0_combout\ = (\A[15]~input_o\ & (\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \fill32~0_combout\);

-- Location: LCCOMB_X62_Y68_N28
\Y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = (\Y~18_combout\) # ((\fill32~0_combout\ & (\ExtWord~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~18_combout\,
	datab => \fill32~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y~19_combout\);

-- Location: LCCOMB_X62_Y68_N22
\Y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = (!\ExtWord~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~20_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X65_Y68_N6
\s64~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~54_combout\ = (\A[0]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~54_combout\);

-- Location: LCCOMB_X65_Y68_N28
\s64[2][0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~57_combout\ = (\ShiftFN[1]~input_o\ & (\B[0]~input_o\ & ((!\B[1]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\) # ((\B[0]~input_o\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \s64[2][0]~57_combout\);

-- Location: LCCOMB_X65_Y68_N0
\s64~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~55_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \s64~55_combout\);

-- Location: LCCOMB_X65_Y68_N2
\s64[2][0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~56_combout\ = \B[1]~input_o\ $ (((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \s64[2][0]~56_combout\);

-- Location: LCCOMB_X65_Y68_N22
\s64[2][0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~58_combout\ = (\s64[2][0]~57_combout\ & (\s64~54_combout\ & ((!\s64[2][0]~56_combout\)))) # (!\s64[2][0]~57_combout\ & (((\s64~55_combout\) # (\s64[2][0]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~54_combout\,
	datab => \s64[2][0]~57_combout\,
	datac => \s64~55_combout\,
	datad => \s64[2][0]~56_combout\,
	combout => \s64[2][0]~58_combout\);

-- Location: LCCOMB_X65_Y68_N4
\s64[2][0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~53_combout\ = (\B[1]~input_o\) # ((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \s64[2][0]~53_combout\);

-- Location: LCCOMB_X65_Y68_N24
\s64[2][0]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][0]~59_combout\ = (\s64[2][0]~58_combout\ & ((\A[0]~input_o\) # ((\s64[2][0]~53_combout\)))) # (!\s64[2][0]~58_combout\ & (((!\s64[2][0]~53_combout\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][0]~58_combout\,
	datab => \A[0]~input_o\,
	datac => \s64[2][0]~53_combout\,
	datad => \A[1]~input_o\,
	combout => \s64[2][0]~59_combout\);

-- Location: LCCOMB_X60_Y68_N14
\s64[3][0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][0]~60_combout\ = (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][4]~43_combout\)))) # (!\B[2]~input_o\ & (((\s64[2][0]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][0]~59_combout\,
	datac => \s64[2][4]~43_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][0]~60_combout\);

-- Location: LCCOMB_X61_Y68_N28
\s64[5][0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][0]~62_combout\ = (\B[3]~input_o\ & (!\B[4]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \s64[5][0]~62_combout\);

-- Location: LCCOMB_X61_Y68_N2
\s64[5][0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][0]~61_combout\ = (!\B[4]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	combout => \s64[5][0]~61_combout\);

-- Location: LCCOMB_X61_Y68_N14
\s64[5][0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[5][0]~63_combout\ = (\s64[3][0]~60_combout\ & ((\s64[5][0]~61_combout\) # ((\s64[5][0]~62_combout\ & \s64[3][8]~44_combout\)))) # (!\s64[3][0]~60_combout\ & (\s64[5][0]~62_combout\ & (\s64[3][8]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][0]~60_combout\,
	datab => \s64[5][0]~62_combout\,
	datac => \s64[3][8]~44_combout\,
	datad => \s64[5][0]~61_combout\,
	combout => \s64[5][0]~63_combout\);

-- Location: LCCOMB_X62_Y68_N8
\Y~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = (\Y~17_combout\) # ((\Y~19_combout\) # ((!\Y~20_combout\ & \s64[5][0]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~17_combout\,
	datab => \Y~19_combout\,
	datac => \Y~20_combout\,
	datad => \s64[5][0]~63_combout\,
	combout => \Y~21_combout\);

-- Location: LCCOMB_X65_Y68_N26
\s64~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~75_combout\ = (\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \s64~75_combout\);

-- Location: LCCOMB_X66_Y68_N10
\s64~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~73_combout\ = (\B[0]~input_o\ & ((\A[6]~input_o\))) # (!\B[0]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[6]~input_o\,
	combout => \s64~73_combout\);

-- Location: LCCOMB_X66_Y68_N24
\s64~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~72_combout\ = (\B[0]~input_o\ & (\A[4]~input_o\)) # (!\B[0]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \s64~72_combout\);

-- Location: LCCOMB_X66_Y68_N4
\s64[2][5]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][5]~74_combout\ = (\Equal0~0_combout\ & (((\B[1]~input_o\) # (\s64~72_combout\)))) # (!\Equal0~0_combout\ & (\s64~73_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~73_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~72_combout\,
	combout => \s64[2][5]~74_combout\);

-- Location: LCCOMB_X66_Y68_N6
\s64~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~71_combout\ = (\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[7]~input_o\,
	combout => \s64~71_combout\);

-- Location: LCCOMB_X66_Y68_N30
\s64[2][5]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][5]~76_combout\ = (\s64[2][5]~74_combout\ & ((\s64~75_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][5]~74_combout\ & (((\B[1]~input_o\ & \s64~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~75_combout\,
	datab => \s64[2][5]~74_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~71_combout\,
	combout => \s64[2][5]~76_combout\);

-- Location: LCCOMB_X66_Y67_N4
\s64~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~65_combout\ = (\B[0]~input_o\ & ((\A[12]~input_o\))) # (!\B[0]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[12]~input_o\,
	combout => \s64~65_combout\);

-- Location: LCCOMB_X67_Y68_N4
\s64~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~66_combout\ = (\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[0]~input_o\,
	datad => \A[9]~input_o\,
	combout => \s64~66_combout\);

-- Location: LCCOMB_X67_Y68_N22
\s64~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~67_combout\ = (\B[0]~input_o\ & (\A[10]~input_o\)) # (!\B[0]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[9]~input_o\,
	combout => \s64~67_combout\);

-- Location: LCCOMB_X66_Y68_N8
\s64[2][9]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][9]~68_combout\ = (\Equal0~0_combout\ & ((\s64~66_combout\) # ((\B[1]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[1]~input_o\ & \s64~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~66_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~67_combout\,
	combout => \s64[2][9]~68_combout\);

-- Location: LCCOMB_X66_Y68_N18
\s64~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~69_combout\ = (\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \s64~69_combout\);

-- Location: LCCOMB_X66_Y68_N20
\s64[2][9]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][9]~70_combout\ = (\s64[2][9]~68_combout\ & (((\s64~69_combout\) # (!\B[1]~input_o\)))) # (!\s64[2][9]~68_combout\ & (\s64~65_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~65_combout\,
	datab => \s64[2][9]~68_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~69_combout\,
	combout => \s64[2][9]~70_combout\);

-- Location: LCCOMB_X61_Y67_N8
\s64[3][9]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][9]~77_combout\ = (\B[2]~input_o\ & (((!\Equal0~0_combout\)) # (!\s64[2][5]~76_combout\))) # (!\B[2]~input_o\ & (((!\s64[2][9]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][5]~76_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][9]~70_combout\,
	combout => \s64[3][9]~77_combout\);

-- Location: LCCOMB_X67_Y67_N24
\s64[2][15]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][15]~83_combout\ = (\B[0]~input_o\ & ((\A[16]~input_o\))) # (!\B[0]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[16]~input_o\,
	combout => \s64[2][15]~83_combout\);

-- Location: LCCOMB_X66_Y67_N24
\s64~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~64_combout\ = (\B[0]~input_o\ & (\A[14]~input_o\)) # (!\B[0]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[13]~input_o\,
	combout => \s64~64_combout\);

-- Location: LCCOMB_X67_Y67_N10
\s64[2][13]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][13]~84_combout\ = (\B[1]~input_o\ & (\s64[2][15]~83_combout\)) # (!\B[1]~input_o\ & ((\s64~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][15]~83_combout\,
	datac => \s64~64_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][13]~84_combout\);

-- Location: LCCOMB_X61_Y67_N6
\s64[3][9]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][9]~85_combout\ = ((!\Equal0~0_combout\ & (\B[2]~input_o\ & \s64[2][13]~84_combout\))) # (!\s64[3][9]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[3][9]~77_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][13]~84_combout\,
	combout => \s64[3][9]~85_combout\);

-- Location: LCCOMB_X60_Y67_N18
\s64[4][17]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][17]~242_combout\ = (\B[3]~input_o\ & (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & \s64[3][9]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \s64[3][9]~85_combout\,
	combout => \s64[4][17]~242_combout\);

-- Location: LCCOMB_X66_Y67_N6
\s64~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~108_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[12]~input_o\)) # (!\B[0]~input_o\ & ((\A[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[12]~input_o\,
	datad => \A[13]~input_o\,
	combout => \s64~108_combout\);

-- Location: LCCOMB_X66_Y67_N16
\s64~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~109_combout\ = (\B[0]~input_o\ & (\A[10]~input_o\)) # (!\B[0]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \s64~109_combout\);

-- Location: LCCOMB_X66_Y67_N26
\s64~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~110_combout\ = (\s64~108_combout\) # ((\s64~109_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~108_combout\,
	datab => \s64~109_combout\,
	datac => \B[1]~input_o\,
	combout => \s64~110_combout\);

-- Location: LCCOMB_X68_Y69_N28
\s64[1][23]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][23]~88_combout\ = (\B[0]~input_o\ & (\A[24]~input_o\ & (!\Equal0~0_combout\))) # (!\B[0]~input_o\ & (((\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[23]~input_o\,
	combout => \s64[1][23]~88_combout\);

-- Location: LCCOMB_X68_Y69_N30
\s64[1][23]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][23]~89_combout\ = (\s64[1][23]~88_combout\) # ((\A[22]~input_o\ & (\Equal0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \s64[1][23]~88_combout\,
	combout => \s64[1][23]~89_combout\);

-- Location: LCCOMB_X68_Y69_N16
\s64[1][19]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][19]~86_combout\ = (\B[0]~input_o\ & (((!\Equal0~0_combout\ & \A[20]~input_o\)))) # (!\B[0]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[20]~input_o\,
	combout => \s64[1][19]~86_combout\);

-- Location: LCCOMB_X68_Y69_N2
\s64[1][19]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][19]~87_combout\ = (\s64[1][19]~86_combout\) # ((\A[18]~input_o\ & (\Equal0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \s64[1][19]~86_combout\,
	combout => \s64[1][19]~87_combout\);

-- Location: LCCOMB_X67_Y67_N12
\s64[2][21]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][21]~90_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][19]~87_combout\))) # (!\Equal0~0_combout\ & (\s64[1][23]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][23]~89_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][19]~87_combout\,
	combout => \s64[2][21]~90_combout\);

-- Location: LCCOMB_X68_Y69_N0
\s64[1][21]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][21]~91_combout\ = (\B[0]~input_o\ & (\A[22]~input_o\ & (!\Equal0~0_combout\))) # (!\B[0]~input_o\ & (((\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[21]~input_o\,
	combout => \s64[1][21]~91_combout\);

-- Location: LCCOMB_X68_Y69_N18
\s64[1][21]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][21]~92_combout\ = (\s64[1][21]~91_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][21]~91_combout\,
	datac => \B[0]~input_o\,
	datad => \A[20]~input_o\,
	combout => \s64[1][21]~92_combout\);

-- Location: LCCOMB_X67_Y67_N6
\s64[2][21]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][21]~93_combout\ = (\s64[2][21]~90_combout\) # ((!\B[1]~input_o\ & \s64[1][21]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][21]~90_combout\,
	datab => \B[1]~input_o\,
	datad => \s64[1][21]~92_combout\,
	combout => \s64[2][21]~93_combout\);

-- Location: LCCOMB_X61_Y67_N12
\s64[3][17]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][17]~111_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~110_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][21]~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~110_combout\,
	datab => \B[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[2][21]~93_combout\,
	combout => \s64[3][17]~111_combout\);

-- Location: LCCOMB_X66_Y67_N28
\s64~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~112_combout\ = (\B[0]~input_o\ & ((\A[14]~input_o\))) # (!\B[0]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	combout => \s64~112_combout\);

-- Location: LCCOMB_X67_Y67_N28
\s64~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~113_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64~112_combout\))) # (!\Equal0~0_combout\ & (\s64[1][19]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][19]~87_combout\,
	datab => \s64~112_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \s64~113_combout\);

-- Location: LCCOMB_X67_Y69_N6
\s64[1][17]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][17]~114_combout\ = (\B[0]~input_o\ & (!\Equal0~0_combout\ & (\A[18]~input_o\))) # (!\B[0]~input_o\ & (((\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \A[18]~input_o\,
	datad => \A[17]~input_o\,
	combout => \s64[1][17]~114_combout\);

-- Location: LCCOMB_X67_Y67_N30
\s64[1][17]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][17]~115_combout\ = (\s64[1][17]~114_combout\) # ((\B[0]~input_o\ & (\Equal0~0_combout\ & \A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][17]~114_combout\,
	datab => \B[0]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \A[16]~input_o\,
	combout => \s64[1][17]~115_combout\);

-- Location: LCCOMB_X67_Y67_N16
\s64~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~116_combout\ = (\s64~113_combout\) # ((\s64[1][17]~115_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64~113_combout\,
	datac => \s64[1][17]~115_combout\,
	datad => \B[1]~input_o\,
	combout => \s64~116_combout\);

-- Location: LCCOMB_X60_Y67_N24
\s64[3][17]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][17]~117_combout\ = (\s64[3][17]~111_combout\) # ((!\B[2]~input_o\ & \s64~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \s64[3][17]~111_combout\,
	datad => \s64~116_combout\,
	combout => \s64[3][17]~117_combout\);

-- Location: LCCOMB_X66_Y69_N12
\s64[1][27]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][27]~94_combout\ = (\B[0]~input_o\ & (((\A[28]~input_o\ & !\Equal0~0_combout\)))) # (!\B[0]~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][27]~94_combout\);

-- Location: LCCOMB_X66_Y69_N6
\s64[1][27]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][27]~95_combout\ = (\s64[1][27]~94_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][27]~94_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[26]~input_o\,
	combout => \s64[1][27]~95_combout\);

-- Location: LCCOMB_X66_Y69_N8
\s64[1][31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][31]~96_combout\ = (\A[31]~input_o\ & (((\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)) # (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \s64[1][31]~96_combout\);

-- Location: LCCOMB_X66_Y69_N26
\s64[1][31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][31]~97_combout\ = (\s64[1][31]~96_combout\) # ((\A[30]~input_o\ & (\B[0]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \s64[1][31]~96_combout\,
	datac => \B[0]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[1][31]~97_combout\);

-- Location: LCCOMB_X66_Y69_N20
\s64[2][29]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][29]~98_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][27]~95_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][31]~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][27]~95_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[1][31]~97_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][29]~98_combout\);

-- Location: LCCOMB_X66_Y69_N30
\s64[1][29]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][29]~99_combout\ = (\B[0]~input_o\ & (\A[30]~input_o\ & (!\Equal0~0_combout\))) # (!\B[0]~input_o\ & (((\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \s64[1][29]~99_combout\);

-- Location: LCCOMB_X66_Y69_N0
\s64[1][29]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][29]~100_combout\ = (\s64[1][29]~99_combout\) # ((\Equal0~0_combout\ & (\B[0]~input_o\ & \A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][29]~99_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[28]~input_o\,
	combout => \s64[1][29]~100_combout\);

-- Location: LCCOMB_X66_Y69_N2
\s64[2][29]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][29]~101_combout\ = (\s64[2][29]~98_combout\) # ((!\B[1]~input_o\ & \s64[1][29]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[2][29]~98_combout\,
	datad => \s64[1][29]~100_combout\,
	combout => \s64[2][29]~101_combout\);

-- Location: LCCOMB_X61_Y67_N0
\s64[3][25]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][25]~102_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][21]~93_combout\))) # (!\Equal0~0_combout\ & (\s64[2][29]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][29]~101_combout\,
	datab => \B[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[2][21]~93_combout\,
	combout => \s64[3][25]~102_combout\);

-- Location: LCCOMB_X67_Y67_N0
\s64[2][25]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][25]~103_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][23]~89_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][27]~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][23]~89_combout\,
	datab => \s64[1][27]~95_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][25]~103_combout\);

-- Location: LCCOMB_X68_Y69_N20
\s64[1][25]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][25]~104_combout\ = (\B[0]~input_o\ & (\A[26]~input_o\ & (!\Equal0~0_combout\))) # (!\B[0]~input_o\ & (((\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[25]~input_o\,
	combout => \s64[1][25]~104_combout\);

-- Location: LCCOMB_X68_Y69_N22
\s64[1][25]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[1][25]~105_combout\ = (\s64[1][25]~104_combout\) # ((\A[24]~input_o\ & (\Equal0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \s64[1][25]~104_combout\,
	combout => \s64[1][25]~105_combout\);

-- Location: LCCOMB_X67_Y67_N2
\s64[2][25]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][25]~106_combout\ = (\s64[2][25]~103_combout\) # ((\s64[1][25]~105_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][25]~103_combout\,
	datac => \s64[1][25]~105_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][25]~106_combout\);

-- Location: LCCOMB_X61_Y67_N18
\s64[4][17]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][17]~107_combout\ = (\s64[5][0]~3_combout\ & ((\s64[3][25]~102_combout\) # ((!\B[2]~input_o\ & \s64[2][25]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][0]~3_combout\,
	datab => \s64[3][25]~102_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][25]~106_combout\,
	combout => \s64[4][17]~107_combout\);

-- Location: LCCOMB_X60_Y67_N26
\s64[4][17]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][17]~118_combout\ = (\s64[4][17]~242_combout\) # ((\s64[4][17]~107_combout\) # ((\s64[3][17]~117_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][17]~242_combout\,
	datab => \s64[3][17]~117_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[4][17]~107_combout\,
	combout => \s64[4][17]~118_combout\);

-- Location: LCCOMB_X60_Y67_N12
\Y~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~130_combout\ = (\s64[4][17]~118_combout\ & (\B[4]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][17]~118_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y~130_combout\);

-- Location: LCCOMB_X65_Y68_N12
\s64~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~78_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \s64~78_combout\);

-- Location: LCCOMB_X65_Y68_N14
\s64~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~79_combout\ = (\B[0]~input_o\ & ((\A[4]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[4]~input_o\,
	combout => \s64~79_combout\);

-- Location: LCCOMB_X65_Y68_N16
\s64[2][1]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][1]~80_combout\ = (\s64[2][0]~57_combout\ & (\s64~78_combout\ & ((!\s64[2][0]~56_combout\)))) # (!\s64[2][0]~57_combout\ & (((\s64~79_combout\) # (\s64[2][0]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~78_combout\,
	datab => \s64[2][0]~57_combout\,
	datac => \s64~79_combout\,
	datad => \s64[2][0]~56_combout\,
	combout => \s64[2][1]~80_combout\);

-- Location: LCCOMB_X65_Y68_N18
\s64[2][1]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][1]~81_combout\ = (\s64[2][1]~80_combout\ & ((\A[1]~input_o\) # ((\s64[2][0]~53_combout\)))) # (!\s64[2][1]~80_combout\ & (((!\s64[2][0]~53_combout\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \s64[2][1]~80_combout\,
	datac => \s64[2][0]~53_combout\,
	datad => \A[2]~input_o\,
	combout => \s64[2][1]~81_combout\);

-- Location: LCCOMB_X61_Y67_N4
\s64[3][1]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][1]~82_combout\ = (\B[2]~input_o\ & (\s64[2][5]~76_combout\ & (!\Equal0~0_combout\))) # (!\B[2]~input_o\ & (((\s64[2][1]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][5]~76_combout\,
	datab => \B[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[2][1]~81_combout\,
	combout => \s64[3][1]~82_combout\);

-- Location: LCCOMB_X60_Y67_N20
\Y~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = (\s64[3][9]~85_combout\ & ((\s64[5][0]~62_combout\) # ((\s64[5][0]~61_combout\ & \s64[3][1]~82_combout\)))) # (!\s64[3][9]~85_combout\ & (\s64[5][0]~61_combout\ & ((\s64[3][1]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][9]~85_combout\,
	datab => \s64[5][0]~61_combout\,
	datac => \s64[5][0]~62_combout\,
	datad => \s64[3][1]~82_combout\,
	combout => \Y~27_combout\);

-- Location: LCCOMB_X66_Y69_N18
\s32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32~1_combout\ = (\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \s32~1_combout\);

-- Location: LCCOMB_X66_Y67_N18
\s32[2][13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][13]~2_combout\ = (\B[1]~input_o\ & (((!\s32~1_combout\ & \A[15]~input_o\)))) # (!\B[1]~input_o\ & (\s64~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64~64_combout\,
	datac => \s32~1_combout\,
	datad => \A[15]~input_o\,
	combout => \s32[2][13]~2_combout\);

-- Location: LCCOMB_X61_Y67_N10
\s32[3][9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][9]~3_combout\ = ((!\Equal0~0_combout\ & (\B[2]~input_o\ & \s32[2][13]~2_combout\))) # (!\s64[3][9]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[3][9]~77_combout\,
	datac => \B[2]~input_o\,
	datad => \s32[2][13]~2_combout\,
	combout => \s32[3][9]~3_combout\);

-- Location: LCCOMB_X62_Y66_N8
\Y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = (!\B[4]~input_o\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~22_combout\);

-- Location: LCCOMB_X62_Y66_N2
\Y~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = (\ExtWord~input_o\ & ((\B[4]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Y~23_combout\);

-- Location: LCCOMB_X62_Y66_N12
\Y~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = (\Y~22_combout\ & (((!\Y~23_combout\)))) # (!\Y~22_combout\ & ((\Y~23_combout\ & ((\fill32~0_combout\))) # (!\Y~23_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~0_combout\,
	datab => \fill32~0_combout\,
	datac => \Y~22_combout\,
	datad => \Y~23_combout\,
	combout => \Y~24_combout\);

-- Location: LCCOMB_X62_Y66_N22
\Y~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~132_combout\ = (\ExtWord~input_o\ & (!\B[4]~input_o\ & ((!\Equal0~0_combout\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Y~132_combout\);

-- Location: LCCOMB_X61_Y66_N0
\Y~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = (\Y~24_combout\ & (((\s64[3][1]~82_combout\) # (!\Y~132_combout\)))) # (!\Y~24_combout\ & (\s32[3][9]~3_combout\ & ((\Y~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][9]~3_combout\,
	datab => \s64[3][1]~82_combout\,
	datac => \Y~24_combout\,
	datad => \Y~132_combout\,
	combout => \Y~25_combout\);

-- Location: LCCOMB_X62_Y68_N2
\Y~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = (!\ExtWord~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~26_combout\);

-- Location: LCCOMB_X60_Y67_N6
\Y~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = (\Y~26_combout\ & ((\Y~130_combout\) # ((\Y~27_combout\)))) # (!\Y~26_combout\ & (((\Y~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~130_combout\,
	datab => \Y~27_combout\,
	datac => \Y~25_combout\,
	datad => \Y~26_combout\,
	combout => \Y~28_combout\);

-- Location: LCCOMB_X63_Y69_N16
\s64[2][18]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][18]~140_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][16]~50_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][20]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][16]~50_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][20]~10_combout\,
	combout => \s64[2][18]~140_combout\);

-- Location: LCCOMB_X63_Y69_N18
\s64[2][18]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][18]~141_combout\ = (\s64[2][18]~140_combout\) # ((!\B[1]~input_o\ & \s64[1][18]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][18]~140_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][18]~5_combout\,
	combout => \s64[2][18]~141_combout\);

-- Location: LCCOMB_X63_Y69_N8
\s64[2][22]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][22]~129_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][20]~10_combout\))) # (!\Equal0~0_combout\ & (\s64[1][24]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][24]~23_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][20]~10_combout\,
	combout => \s64[2][22]~129_combout\);

-- Location: LCCOMB_X63_Y69_N26
\s64[2][22]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][22]~130_combout\ = (\s64[2][22]~129_combout\) # ((!\B[1]~input_o\ & \s64[1][22]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[1][22]~7_combout\,
	datac => \s64[2][22]~129_combout\,
	combout => \s64[2][22]~130_combout\);

-- Location: LCCOMB_X63_Y69_N12
\s64~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~138_combout\ = (\B[1]~input_o\ & (\s64~32_combout\)) # (!\B[1]~input_o\ & ((\s64~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~32_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~47_combout\,
	combout => \s64~138_combout\);

-- Location: LCCOMB_X63_Y69_N30
\s64[3][18]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][18]~139_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64~138_combout\))) # (!\Equal0~0_combout\ & (\s64[2][22]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][22]~130_combout\,
	datad => \s64~138_combout\,
	combout => \s64[3][18]~139_combout\);

-- Location: LCCOMB_X63_Y69_N4
\s64[3][18]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][18]~142_combout\ = (\s64[3][18]~139_combout\) # ((\s64[2][18]~141_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][18]~141_combout\,
	datac => \s64[3][18]~139_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][18]~142_combout\);

-- Location: LCCOMB_X63_Y69_N20
\s64[2][14]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][14]~127_combout\ = (\B[1]~input_o\ & (\s64[1][16]~50_combout\)) # (!\B[1]~input_o\ & ((\s32[2][14]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[1][16]~50_combout\,
	datac => \s32[2][14]~0_combout\,
	combout => \s64[2][14]~127_combout\);

-- Location: LCCOMB_X63_Y68_N20
\s64[2][6]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][6]~121_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64~30_combout\))) # (!\Equal0~0_combout\ & (\s64~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~38_combout\,
	datab => \B[1]~input_o\,
	datac => \s64~30_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[2][6]~121_combout\);

-- Location: LCCOMB_X63_Y68_N30
\s64[2][6]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][6]~122_combout\ = (\s64[2][6]~121_combout\ & ((\s64~39_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][6]~121_combout\ & (((\B[1]~input_o\ & \s64~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~39_combout\,
	datab => \s64[2][6]~121_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~28_combout\,
	combout => \s64[2][6]~122_combout\);

-- Location: LCCOMB_X63_Y68_N0
\s64[2][10]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][10]~119_combout\ = (\Equal0~0_combout\ & (((\B[1]~input_o\) # (\s64~35_combout\)))) # (!\Equal0~0_combout\ & (\s64~26_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~26_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~35_combout\,
	combout => \s64[2][10]~119_combout\);

-- Location: LCCOMB_X63_Y68_N26
\s64[2][10]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][10]~120_combout\ = (\s64[2][10]~119_combout\ & ((\s64~27_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][10]~119_combout\ & (((\B[1]~input_o\ & \s64~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~27_combout\,
	datab => \s64[2][10]~119_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~33_combout\,
	combout => \s64[2][10]~120_combout\);

-- Location: LCCOMB_X62_Y66_N14
\s64[3][10]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][10]~123_combout\ = (\B[2]~input_o\ & (((!\s64[2][6]~122_combout\)) # (!\Equal0~0_combout\))) # (!\B[2]~input_o\ & (((!\s64[2][10]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][6]~122_combout\,
	datad => \s64[2][10]~120_combout\,
	combout => \s64[3][10]~123_combout\);

-- Location: LCCOMB_X63_Y69_N14
\s64[3][10]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][10]~128_combout\ = ((!\Equal0~0_combout\ & (\s64[2][14]~127_combout\ & \B[2]~input_o\))) # (!\s64[3][10]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][14]~127_combout\,
	datac => \s64[3][10]~123_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][10]~128_combout\);

-- Location: LCCOMB_X65_Y69_N6
\s64[2][26]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][26]~134_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][24]~23_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][28]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[1][24]~23_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][28]~18_combout\,
	combout => \s64[2][26]~134_combout\);

-- Location: LCCOMB_X65_Y69_N24
\s64[2][26]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][26]~135_combout\ = (\s64[2][26]~134_combout\) # ((\s64[1][26]~13_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][26]~134_combout\,
	datab => \s64[1][26]~13_combout\,
	datac => \B[1]~input_o\,
	combout => \s64[2][26]~135_combout\);

-- Location: LCCOMB_X65_Y69_N16
\s64[2][30]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][30]~131_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][28]~18_combout\))) # (!\Equal0~0_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \fill64~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[1][28]~18_combout\,
	combout => \s64[2][30]~131_combout\);

-- Location: LCCOMB_X65_Y69_N26
\s64[2][30]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][30]~132_combout\ = (\s64[2][30]~131_combout\) # ((\s64[1][30]~15_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][30]~15_combout\,
	datab => \s64[2][30]~131_combout\,
	datac => \B[1]~input_o\,
	combout => \s64[2][30]~132_combout\);

-- Location: LCCOMB_X65_Y69_N4
\s64[3][26]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][26]~133_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][22]~130_combout\))) # (!\Equal0~0_combout\ & (\s64[2][30]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][30]~132_combout\,
	datab => \s64[2][22]~130_combout\,
	datac => \B[2]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][26]~133_combout\);

-- Location: LCCOMB_X65_Y69_N18
\s64[3][26]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][26]~136_combout\ = (\s64[3][26]~133_combout\) # ((\s64[2][26]~135_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][26]~135_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[3][26]~133_combout\,
	combout => \s64[3][26]~136_combout\);

-- Location: LCCOMB_X59_Y69_N28
\s64[4][18]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][18]~137_combout\ = (\s64[3][10]~128_combout\ & ((\s64[4][16]~2_combout\) # ((\s64[5][0]~3_combout\ & \s64[3][26]~136_combout\)))) # (!\s64[3][10]~128_combout\ & (\s64[5][0]~3_combout\ & ((\s64[3][26]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][10]~128_combout\,
	datab => \s64[5][0]~3_combout\,
	datac => \s64[4][16]~2_combout\,
	datad => \s64[3][26]~136_combout\,
	combout => \s64[4][18]~137_combout\);

-- Location: LCCOMB_X58_Y69_N24
\s64[4][18]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][18]~143_combout\ = (\s64[4][18]~137_combout\) # ((!\B[3]~input_o\ & \s64[3][18]~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \s64[3][18]~142_combout\,
	datad => \s64[4][18]~137_combout\,
	combout => \s64[4][18]~143_combout\);

-- Location: LCCOMB_X63_Y68_N16
\s64[2][2]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][2]~124_combout\ = (\B[1]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64~42_combout\)) # (!\Equal0~0_combout\ & ((\s64~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~42_combout\,
	datab => \s64~55_combout\,
	datac => \B[1]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[2][2]~124_combout\);

-- Location: LCCOMB_X63_Y68_N18
\s64[2][2]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][2]~125_combout\ = (\s64[2][2]~124_combout\ & ((\s64~54_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][2]~124_combout\ & (((\B[1]~input_o\ & \s64~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~54_combout\,
	datab => \s64[2][2]~124_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~40_combout\,
	combout => \s64[2][2]~125_combout\);

-- Location: LCCOMB_X62_Y66_N18
\s64[3][2]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][2]~126_combout\ = (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\s64[2][6]~122_combout\))) # (!\B[2]~input_o\ & (((\s64[2][2]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][6]~122_combout\,
	datac => \s64[2][2]~125_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][2]~126_combout\);

-- Location: LCCOMB_X60_Y69_N4
\fill64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fill64~1_combout\ = (\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \fill64~1_combout\);

-- Location: LCCOMB_X66_Y67_N30
\s32[2][14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][14]~4_combout\ = (\B[1]~input_o\ & (\fill64~1_combout\ & (\A[15]~input_o\))) # (!\B[1]~input_o\ & (((\s32[2][14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~1_combout\,
	datab => \A[15]~input_o\,
	datac => \B[1]~input_o\,
	datad => \s32[2][14]~0_combout\,
	combout => \s32[2][14]~4_combout\);

-- Location: LCCOMB_X62_Y66_N24
\s32[3][10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][10]~5_combout\ = ((!\Equal0~0_combout\ & (\B[2]~input_o\ & \s32[2][14]~4_combout\))) # (!\s64[3][10]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[3][10]~123_combout\,
	datad => \s32[2][14]~4_combout\,
	combout => \s32[3][10]~5_combout\);

-- Location: LCCOMB_X61_Y66_N2
\Y~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = (\Y~24_combout\ & ((\s64[3][2]~126_combout\) # ((!\Y~132_combout\)))) # (!\Y~24_combout\ & (((\s32[3][10]~5_combout\ & \Y~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][2]~126_combout\,
	datab => \s32[3][10]~5_combout\,
	datac => \Y~24_combout\,
	datad => \Y~132_combout\,
	combout => \Y~29_combout\);

-- Location: LCCOMB_X59_Y69_N0
\Y~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = (\B[3]~input_o\ & (((\s64[5][0]~3_combout\ & \s64[3][10]~128_combout\)))) # (!\B[3]~input_o\ & ((\s64[3][2]~126_combout\) # ((\s64[5][0]~3_combout\ & \s64[3][10]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[3][2]~126_combout\,
	datac => \s64[5][0]~3_combout\,
	datad => \s64[3][10]~128_combout\,
	combout => \Y~30_combout\);

-- Location: LCCOMB_X59_Y69_N18
\Y~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = (\Y~26_combout\ & (!\B[4]~input_o\ & ((\Y~30_combout\)))) # (!\Y~26_combout\ & (((\Y~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~26_combout\,
	datab => \B[4]~input_o\,
	datac => \Y~29_combout\,
	datad => \Y~30_combout\,
	combout => \Y~31_combout\);

-- Location: LCCOMB_X58_Y69_N2
\Y~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = (\Y~31_combout\) # ((\s64[4][18]~143_combout\ & \Y~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][18]~143_combout\,
	datac => \Y~16_combout\,
	datad => \Y~31_combout\,
	combout => \Y~32_combout\);

-- Location: LCCOMB_X66_Y68_N28
\s64[2][7]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][7]~146_combout\ = (\Equal0~0_combout\ & (((\B[1]~input_o\) # (\s64~69_combout\)))) # (!\Equal0~0_combout\ & (\s64~71_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~71_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~69_combout\,
	combout => \s64[2][7]~146_combout\);

-- Location: LCCOMB_X66_Y68_N14
\s64[2][7]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][7]~147_combout\ = (\s64[2][7]~146_combout\ & ((\s64~72_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][7]~146_combout\ & (((\B[1]~input_o\ & \s64~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][7]~146_combout\,
	datab => \s64~72_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~67_combout\,
	combout => \s64[2][7]~147_combout\);

-- Location: LCCOMB_X66_Y68_N16
\s64[2][11]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][11]~144_combout\ = (\Equal0~0_combout\ & ((\s64~109_combout\) # ((\B[1]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[1]~input_o\ & \s64~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~109_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[1]~input_o\,
	datad => \s64~65_combout\,
	combout => \s64[2][11]~144_combout\);

-- Location: LCCOMB_X66_Y68_N26
\s64[2][11]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][11]~145_combout\ = (\B[1]~input_o\ & ((\s64[2][11]~144_combout\ & (\s64~66_combout\)) # (!\s64[2][11]~144_combout\ & ((\s64~64_combout\))))) # (!\B[1]~input_o\ & (((\s64[2][11]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~66_combout\,
	datab => \s64~64_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[2][11]~144_combout\,
	combout => \s64[2][11]~145_combout\);

-- Location: LCCOMB_X63_Y67_N8
\s64[3][11]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][11]~148_combout\ = (\B[2]~input_o\ & (((!\s64[2][7]~147_combout\)) # (!\Equal0~0_combout\))) # (!\B[2]~input_o\ & (((!\s64[2][11]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][7]~147_combout\,
	datad => \s64[2][11]~145_combout\,
	combout => \s64[3][11]~148_combout\);

-- Location: LCCOMB_X67_Y67_N26
\s64[2][15]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][15]~152_combout\ = (\B[1]~input_o\ & ((\s64[1][17]~115_combout\))) # (!\B[1]~input_o\ & (\s64[2][15]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[2][15]~83_combout\,
	datac => \s64[1][17]~115_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][15]~152_combout\);

-- Location: LCCOMB_X63_Y67_N20
\s64[3][11]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][11]~153_combout\ = ((!\Equal0~0_combout\ & (\B[2]~input_o\ & \s64[2][15]~152_combout\))) # (!\s64[3][11]~148_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[3][11]~148_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][15]~152_combout\,
	combout => \s64[3][11]~153_combout\);

-- Location: LCCOMB_X66_Y69_N28
\s64[2][31]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][31]~156_combout\ = (\B[1]~input_o\ & (\fill64~0_combout\ & ((!\Equal0~0_combout\)))) # (!\B[1]~input_o\ & (((\s64[1][31]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \fill64~0_combout\,
	datac => \s64[1][31]~97_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[2][31]~156_combout\);

-- Location: LCCOMB_X66_Y69_N14
\s64[2][31]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][31]~157_combout\ = (\s64[2][31]~156_combout\) # ((\B[1]~input_o\ & (\Equal0~0_combout\ & \s64[1][29]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \s64[2][31]~156_combout\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][29]~100_combout\,
	combout => \s64[2][31]~157_combout\);

-- Location: LCCOMB_X67_Y67_N4
\s64[2][23]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][23]~154_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][21]~92_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][25]~105_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][21]~92_combout\,
	datab => \s64[1][25]~105_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][23]~154_combout\);

-- Location: LCCOMB_X67_Y67_N22
\s64[2][23]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][23]~155_combout\ = (\s64[2][23]~154_combout\) # ((\s64[1][23]~89_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][23]~89_combout\,
	datac => \s64[2][23]~154_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][23]~155_combout\);

-- Location: LCCOMB_X63_Y67_N6
\s64[3][27]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][27]~158_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][23]~155_combout\))) # (!\Equal0~0_combout\ & (\s64[2][31]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][31]~157_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][23]~155_combout\,
	combout => \s64[3][27]~158_combout\);

-- Location: LCCOMB_X67_Y67_N8
\s64[2][27]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][27]~159_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & ((\s64[1][25]~105_combout\))) # (!\Equal0~0_combout\ & (\s64[1][29]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][29]~100_combout\,
	datab => \s64[1][25]~105_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][27]~159_combout\);

-- Location: LCCOMB_X67_Y67_N18
\s64[2][27]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][27]~160_combout\ = (\s64[2][27]~159_combout\) # ((\s64[1][27]~95_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[1][27]~95_combout\,
	datac => \s64[2][27]~159_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][27]~160_combout\);

-- Location: LCCOMB_X63_Y67_N24
\s64[3][27]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][27]~161_combout\ = (\s64[3][27]~158_combout\) # ((!\B[2]~input_o\ & \s64[2][27]~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][27]~158_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][27]~160_combout\,
	combout => \s64[3][27]~161_combout\);

-- Location: LCCOMB_X62_Y67_N4
\s64[4][19]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][19]~162_combout\ = (\s64[3][11]~153_combout\ & ((\s64[4][16]~2_combout\) # ((\s64[5][0]~3_combout\ & \s64[3][27]~161_combout\)))) # (!\s64[3][11]~153_combout\ & (\s64[5][0]~3_combout\ & ((\s64[3][27]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][11]~153_combout\,
	datab => \s64[5][0]~3_combout\,
	datac => \s64[4][16]~2_combout\,
	datad => \s64[3][27]~161_combout\,
	combout => \s64[4][19]~162_combout\);

-- Location: LCCOMB_X67_Y67_N20
\s64[2][19]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][19]~166_combout\ = (\B[1]~input_o\ & ((\Equal0~0_combout\ & (\s64[1][17]~115_combout\)) # (!\Equal0~0_combout\ & ((\s64[1][21]~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][17]~115_combout\,
	datab => \B[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[1][21]~92_combout\,
	combout => \s64[2][19]~166_combout\);

-- Location: LCCOMB_X67_Y67_N14
\s64[2][19]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][19]~167_combout\ = (\s64[2][19]~166_combout\) # ((\s64[1][19]~87_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[1][19]~87_combout\,
	datab => \s64[2][19]~166_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][19]~167_combout\);

-- Location: LCCOMB_X66_Y67_N2
\s64~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~163_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[13]~input_o\)))) # (!\B[1]~input_o\ & (\A[15]~input_o\ & (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[13]~input_o\,
	combout => \s64~163_combout\);

-- Location: LCCOMB_X66_Y67_N20
\s64~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64~164_combout\ = (\B[0]~input_o\ & ((\s64~163_combout\ & ((\A[12]~input_o\))) # (!\s64~163_combout\ & (\A[14]~input_o\)))) # (!\B[0]~input_o\ & (((\s64~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[14]~input_o\,
	datac => \A[12]~input_o\,
	datad => \s64~163_combout\,
	combout => \s64~164_combout\);

-- Location: LCCOMB_X63_Y67_N18
\s64[3][19]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][19]~165_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~164_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][23]~155_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64~164_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][23]~155_combout\,
	combout => \s64[3][19]~165_combout\);

-- Location: LCCOMB_X63_Y67_N12
\s64[3][19]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][19]~168_combout\ = (\s64[3][19]~165_combout\) # ((!\B[2]~input_o\ & \s64[2][19]~167_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \s64[2][19]~167_combout\,
	datad => \s64[3][19]~165_combout\,
	combout => \s64[3][19]~168_combout\);

-- Location: LCCOMB_X62_Y67_N14
\s64[4][19]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][19]~169_combout\ = (\s64[4][19]~162_combout\) # ((\s64[3][19]~168_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][19]~162_combout\,
	datac => \s64[3][19]~168_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][19]~169_combout\);

-- Location: LCCOMB_X65_Y68_N20
\s64[2][3]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][3]~149_combout\ = (\Equal0~0_combout\ & ((\s64~75_combout\) # ((\B[1]~input_o\)))) # (!\Equal0~0_combout\ & (((\s64~79_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~75_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64~79_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][3]~149_combout\);

-- Location: LCCOMB_X65_Y68_N30
\s64[2][3]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[2][3]~150_combout\ = (\s64[2][3]~149_combout\ & ((\s64~78_combout\) # ((!\B[1]~input_o\)))) # (!\s64[2][3]~149_combout\ & (((\s64~73_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~78_combout\,
	datab => \s64[2][3]~149_combout\,
	datac => \s64~73_combout\,
	datad => \B[1]~input_o\,
	combout => \s64[2][3]~150_combout\);

-- Location: LCCOMB_X62_Y67_N8
\s64[3][3]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][3]~151_combout\ = (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][7]~147_combout\)))) # (!\B[2]~input_o\ & (((\s64[2][3]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][3]~150_combout\,
	datad => \s64[2][7]~147_combout\,
	combout => \s64[3][3]~151_combout\);

-- Location: LCCOMB_X62_Y67_N18
\Y~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = (\s64[3][11]~153_combout\ & ((\s64[5][0]~3_combout\) # ((\s64[3][3]~151_combout\ & !\B[3]~input_o\)))) # (!\s64[3][11]~153_combout\ & (((\s64[3][3]~151_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][11]~153_combout\,
	datab => \s64[5][0]~3_combout\,
	datac => \s64[3][3]~151_combout\,
	datad => \B[3]~input_o\,
	combout => \Y~34_combout\);

-- Location: LCCOMB_X66_Y67_N8
\s32[2][15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[2][15]~6_combout\ = (\A[15]~input_o\ & ((\fill64~1_combout\) # ((!\B[0]~input_o\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[1]~input_o\,
	datad => \fill64~1_combout\,
	combout => \s32[2][15]~6_combout\);

-- Location: LCCOMB_X63_Y67_N2
\s32[3][11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][11]~7_combout\ = ((!\Equal0~0_combout\ & (\B[2]~input_o\ & \s32[2][15]~6_combout\))) # (!\s64[3][11]~148_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[3][11]~148_combout\,
	datac => \B[2]~input_o\,
	datad => \s32[2][15]~6_combout\,
	combout => \s32[3][11]~7_combout\);

-- Location: LCCOMB_X62_Y70_N16
\Y~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = (\Y~24_combout\ & (((\s64[3][3]~151_combout\)) # (!\Y~132_combout\))) # (!\Y~24_combout\ & (\Y~132_combout\ & ((\s32[3][11]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~24_combout\,
	datab => \Y~132_combout\,
	datac => \s64[3][3]~151_combout\,
	datad => \s32[3][11]~7_combout\,
	combout => \Y~33_combout\);

-- Location: LCCOMB_X62_Y70_N10
\Y~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = (\Y~26_combout\ & (!\B[4]~input_o\ & (\Y~34_combout\))) # (!\Y~26_combout\ & (((\Y~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y~34_combout\,
	datac => \Y~26_combout\,
	datad => \Y~33_combout\,
	combout => \Y~35_combout\);

-- Location: LCCOMB_X62_Y70_N12
\Y~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = (\Y~35_combout\) # ((\Y~16_combout\ & \s64[4][19]~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~16_combout\,
	datac => \s64[4][19]~169_combout\,
	datad => \Y~35_combout\,
	combout => \Y~36_combout\);

-- Location: LCCOMB_X63_Y68_N4
\s64[3][12]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][12]~170_combout\ = (\B[2]~input_o\ & (((!\s64[2][8]~31_combout\) # (!\Equal0~0_combout\)))) # (!\B[2]~input_o\ & (!\s64[2][12]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][12]~36_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][8]~31_combout\,
	combout => \s64[3][12]~170_combout\);

-- Location: LCCOMB_X60_Y68_N16
\s32[3][12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][12]~8_combout\ = ((!\Equal0~0_combout\ & (\fill32~0_combout\ & \B[2]~input_o\))) # (!\s64[3][12]~170_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[3][12]~170_combout\,
	datac => \fill32~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s32[3][12]~8_combout\);

-- Location: LCCOMB_X63_Y68_N6
\s64[3][4]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][4]~171_combout\ = (\B[2]~input_o\ & (((!\Equal0~0_combout\ & \s64[2][8]~31_combout\)))) # (!\B[2]~input_o\ & (\s64[2][4]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][4]~43_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][8]~31_combout\,
	combout => \s64[3][4]~171_combout\);

-- Location: LCCOMB_X61_Y68_N16
\s64[3][4]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][4]~172_combout\ = (\s64[3][4]~171_combout\) # ((\s64[2][0]~59_combout\ & (\Equal0~0_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][4]~171_combout\,
	datab => \s64[2][0]~59_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][4]~172_combout\);

-- Location: LCCOMB_X61_Y66_N4
\Y~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~37_combout\ = (\Y~24_combout\ & (((\s64[3][4]~172_combout\) # (!\Y~132_combout\)))) # (!\Y~24_combout\ & (\s32[3][12]~8_combout\ & ((\Y~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][12]~8_combout\,
	datab => \s64[3][4]~172_combout\,
	datac => \Y~24_combout\,
	datad => \Y~132_combout\,
	combout => \Y~37_combout\);

-- Location: LCCOMB_X60_Y68_N12
\s64[3][12]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][12]~177_combout\ = ((!\Equal0~0_combout\ & (\s64~51_combout\ & \B[2]~input_o\))) # (!\s64[3][12]~170_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[3][12]~170_combout\,
	datac => \s64~51_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][12]~177_combout\);

-- Location: LCCOMB_X60_Y66_N28
\Y~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~40_combout\ = (\s64[5][0]~61_combout\ & ((\s64[3][4]~172_combout\) # ((\s64[3][12]~177_combout\ & \s64[5][0]~62_combout\)))) # (!\s64[5][0]~61_combout\ & (\s64[3][12]~177_combout\ & ((\s64[5][0]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][0]~61_combout\,
	datab => \s64[3][12]~177_combout\,
	datac => \s64[3][4]~172_combout\,
	datad => \s64[5][0]~62_combout\,
	combout => \Y~40_combout\);

-- Location: LCCOMB_X65_Y69_N22
\s64[3][28]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][28]~175_combout\ = (\ShiftFN[0]~input_o\ & (\B[2]~input_o\ & (\A[31]~input_o\ & \ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \s64[3][28]~175_combout\);

-- Location: LCCOMB_X60_Y68_N26
\s64[3][8]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][8]~173_combout\ = (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \s64[3][8]~173_combout\);

-- Location: LCCOMB_X65_Y69_N20
\s64[3][28]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][28]~174_combout\ = (\s64[3][8]~173_combout\ & ((\s64[2][24]~21_combout\) # ((\s64[1][24]~23_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][24]~21_combout\,
	datab => \s64[1][24]~23_combout\,
	datac => \B[1]~input_o\,
	datad => \s64[3][8]~173_combout\,
	combout => \s64[3][28]~174_combout\);

-- Location: LCCOMB_X65_Y69_N8
\s64[3][28]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][28]~176_combout\ = (\s64[3][28]~175_combout\) # ((\s64[3][28]~174_combout\) # ((!\B[2]~input_o\ & \s64[2][28]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][28]~175_combout\,
	datab => \s64[3][28]~174_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][28]~19_combout\,
	combout => \s64[3][28]~176_combout\);

-- Location: LCCOMB_X60_Y66_N24
\s64[4][20]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][20]~178_combout\ = (\s64[3][28]~176_combout\ & ((\s64[5][0]~3_combout\) # ((\s64[4][16]~2_combout\ & \s64[3][12]~177_combout\)))) # (!\s64[3][28]~176_combout\ & (\s64[4][16]~2_combout\ & ((\s64[3][12]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][28]~176_combout\,
	datab => \s64[4][16]~2_combout\,
	datac => \s64[5][0]~3_combout\,
	datad => \s64[3][12]~177_combout\,
	combout => \s64[4][20]~178_combout\);

-- Location: LCCOMB_X60_Y68_N30
\s64[3][20]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][20]~179_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~51_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][24]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~51_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][24]~24_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][20]~179_combout\);

-- Location: LCCOMB_X60_Y68_N8
\s64[3][20]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][20]~180_combout\ = (\s64[3][20]~179_combout\) # ((!\B[2]~input_o\ & \s64[2][20]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][20]~179_combout\,
	datab => \B[2]~input_o\,
	datad => \s64[2][20]~11_combout\,
	combout => \s64[3][20]~180_combout\);

-- Location: LCCOMB_X60_Y69_N30
\Y~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~38_combout\ = (\B[4]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y~38_combout\);

-- Location: LCCOMB_X60_Y66_N2
\Y~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~39_combout\ = (\Y~38_combout\ & ((\s64[4][20]~178_combout\) # ((!\B[3]~input_o\ & \s64[3][20]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][20]~178_combout\,
	datac => \s64[3][20]~180_combout\,
	datad => \Y~38_combout\,
	combout => \Y~39_combout\);

-- Location: LCCOMB_X60_Y66_N14
\Y~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~41_combout\ = (\Y~26_combout\ & (((\Y~40_combout\) # (\Y~39_combout\)))) # (!\Y~26_combout\ & (\Y~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~37_combout\,
	datab => \Y~40_combout\,
	datac => \Y~26_combout\,
	datad => \Y~39_combout\,
	combout => \Y~41_combout\);

-- Location: LCCOMB_X61_Y67_N30
\s64[3][13]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][13]~185_combout\ = (\B[2]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~110_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][13]~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~110_combout\,
	datab => \B[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s64[2][13]~84_combout\,
	combout => \s64[3][13]~185_combout\);

-- Location: LCCOMB_X61_Y67_N16
\s64[3][13]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][13]~186_combout\ = (\s64[3][13]~185_combout\ & ((\s64[2][9]~70_combout\) # ((!\B[2]~input_o\)))) # (!\s64[3][13]~185_combout\ & (((\B[2]~input_o\ & \s64~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][13]~185_combout\,
	datab => \s64[2][9]~70_combout\,
	datac => \B[2]~input_o\,
	datad => \s64~116_combout\,
	combout => \s64[3][13]~186_combout\);

-- Location: LCCOMB_X60_Y68_N10
\s64[3][29]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][29]~183_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][25]~106_combout\))) # (!\Equal0~0_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \fill64~0_combout\,
	datac => \s64[2][25]~106_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][29]~183_combout\);

-- Location: LCCOMB_X60_Y68_N20
\s64[3][29]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][29]~184_combout\ = (\s64[3][29]~183_combout\) # ((!\B[2]~input_o\ & \s64[2][29]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][29]~183_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][29]~101_combout\,
	combout => \s64[3][29]~184_combout\);

-- Location: LCCOMB_X60_Y66_N8
\s64[4][21]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][21]~187_combout\ = (\s64[5][0]~3_combout\ & ((\s64[3][29]~184_combout\) # ((\s64[3][13]~186_combout\ & \s64[4][16]~2_combout\)))) # (!\s64[5][0]~3_combout\ & (\s64[3][13]~186_combout\ & ((\s64[4][16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][0]~3_combout\,
	datab => \s64[3][13]~186_combout\,
	datac => \s64[3][29]~184_combout\,
	datad => \s64[4][16]~2_combout\,
	combout => \s64[4][21]~187_combout\);

-- Location: LCCOMB_X61_Y67_N2
\s64[3][21]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][21]~188_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~116_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][25]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64~116_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][25]~106_combout\,
	combout => \s64[3][21]~188_combout\);

-- Location: LCCOMB_X61_Y67_N28
\s64[3][21]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][21]~189_combout\ = (\s64[3][21]~188_combout\) # ((!\B[2]~input_o\ & \s64[2][21]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][21]~188_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][21]~93_combout\,
	combout => \s64[3][21]~189_combout\);

-- Location: LCCOMB_X60_Y66_N26
\Y~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~43_combout\ = (\Y~38_combout\ & ((\s64[4][21]~187_combout\) # ((!\B[3]~input_o\ & \s64[3][21]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][21]~187_combout\,
	datac => \s64[3][21]~189_combout\,
	datad => \Y~38_combout\,
	combout => \Y~43_combout\);

-- Location: LCCOMB_X61_Y67_N26
\s64[3][5]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][5]~181_combout\ = (\B[2]~input_o\ & (((!\Equal0~0_combout\ & \s64[2][9]~70_combout\)))) # (!\B[2]~input_o\ & (\s64[2][5]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][5]~76_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][9]~70_combout\,
	combout => \s64[3][5]~181_combout\);

-- Location: LCCOMB_X61_Y67_N20
\s64[3][5]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][5]~182_combout\ = (\s64[3][5]~181_combout\) # ((\Equal0~0_combout\ & (\B[2]~input_o\ & \s64[2][1]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][5]~181_combout\,
	datab => \Equal0~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][1]~81_combout\,
	combout => \s64[3][5]~182_combout\);

-- Location: LCCOMB_X60_Y66_N4
\Y~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~44_combout\ = (\s64[5][0]~61_combout\ & ((\s64[3][5]~182_combout\) # ((\s64[3][13]~186_combout\ & \s64[5][0]~62_combout\)))) # (!\s64[5][0]~61_combout\ & (((\s64[3][13]~186_combout\ & \s64[5][0]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][0]~61_combout\,
	datab => \s64[3][5]~182_combout\,
	datac => \s64[3][13]~186_combout\,
	datad => \s64[5][0]~62_combout\,
	combout => \Y~44_combout\);

-- Location: LCCOMB_X61_Y67_N22
\s32[3][13]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][13]~9_combout\ = (\B[2]~input_o\ & (((\Equal0~0_combout\)))) # (!\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64~110_combout\)) # (!\Equal0~0_combout\ & ((\s32[2][13]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~110_combout\,
	datab => \B[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s32[2][13]~2_combout\,
	combout => \s32[3][13]~9_combout\);

-- Location: LCCOMB_X61_Y67_N24
\s32[3][13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][13]~10_combout\ = (\s32[3][13]~9_combout\ & (((\s64[2][9]~70_combout\) # (!\B[2]~input_o\)))) # (!\s32[3][13]~9_combout\ & (\fill32~0_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][13]~9_combout\,
	datab => \fill32~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][9]~70_combout\,
	combout => \s32[3][13]~10_combout\);

-- Location: LCCOMB_X61_Y66_N6
\Y~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~42_combout\ = (\Y~24_combout\ & ((\s64[3][5]~182_combout\) # ((!\Y~132_combout\)))) # (!\Y~24_combout\ & (((\s32[3][13]~10_combout\ & \Y~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][5]~182_combout\,
	datab => \Y~24_combout\,
	datac => \s32[3][13]~10_combout\,
	datad => \Y~132_combout\,
	combout => \Y~42_combout\);

-- Location: LCCOMB_X60_Y66_N6
\Y~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~45_combout\ = (\Y~26_combout\ & ((\Y~43_combout\) # ((\Y~44_combout\)))) # (!\Y~26_combout\ & (((\Y~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~43_combout\,
	datab => \Y~44_combout\,
	datac => \Y~26_combout\,
	datad => \Y~42_combout\,
	combout => \Y~45_combout\);

-- Location: LCCOMB_X65_Y69_N10
\s64[3][30]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][30]~190_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][26]~135_combout\))) # (!\Equal0~0_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \fill64~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][26]~135_combout\,
	combout => \s64[3][30]~190_combout\);

-- Location: LCCOMB_X65_Y69_N28
\s64[3][30]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][30]~191_combout\ = (\s64[3][30]~190_combout\) # ((!\B[2]~input_o\ & \s64[2][30]~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][30]~190_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][30]~132_combout\,
	combout => \s64[3][30]~191_combout\);

-- Location: LCCOMB_X63_Y69_N22
\s64[3][14]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][14]~192_combout\ = (\Equal0~0_combout\ & ((\s64~138_combout\) # ((\B[2]~input_o\)))) # (!\Equal0~0_combout\ & (((\s64[2][14]~127_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64~138_combout\,
	datab => \s64[2][14]~127_combout\,
	datac => \Equal0~0_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][14]~192_combout\);

-- Location: LCCOMB_X62_Y69_N24
\s64[3][14]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][14]~193_combout\ = (\B[2]~input_o\ & ((\s64[3][14]~192_combout\ & (\s64[2][10]~120_combout\)) # (!\s64[3][14]~192_combout\ & ((\s64[2][18]~141_combout\))))) # (!\B[2]~input_o\ & (\s64[3][14]~192_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \s64[3][14]~192_combout\,
	datac => \s64[2][10]~120_combout\,
	datad => \s64[2][18]~141_combout\,
	combout => \s64[3][14]~193_combout\);

-- Location: LCCOMB_X62_Y69_N26
\s64[4][22]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][22]~194_combout\ = (\s64[3][30]~191_combout\ & ((\s64[5][0]~3_combout\) # ((\s64[3][14]~193_combout\ & \s64[4][16]~2_combout\)))) # (!\s64[3][30]~191_combout\ & (\s64[3][14]~193_combout\ & (\s64[4][16]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][30]~191_combout\,
	datab => \s64[3][14]~193_combout\,
	datac => \s64[4][16]~2_combout\,
	datad => \s64[5][0]~3_combout\,
	combout => \s64[4][22]~194_combout\);

-- Location: LCCOMB_X62_Y69_N12
\s64[3][22]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][22]~195_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & ((\s64[2][18]~141_combout\))) # (!\Equal0~0_combout\ & (\s64[2][26]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][26]~135_combout\,
	datab => \s64[2][18]~141_combout\,
	datac => \B[2]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][22]~195_combout\);

-- Location: LCCOMB_X62_Y69_N14
\s64[3][22]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][22]~196_combout\ = (\s64[3][22]~195_combout\) # ((\s64[2][22]~130_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][22]~195_combout\,
	datab => \s64[2][22]~130_combout\,
	datac => \B[2]~input_o\,
	combout => \s64[3][22]~196_combout\);

-- Location: LCCOMB_X62_Y69_N8
\Y~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~46_combout\ = (\Y~16_combout\ & ((\s64[4][22]~194_combout\) # ((\s64[3][22]~196_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][22]~194_combout\,
	datab => \Y~16_combout\,
	datac => \s64[3][22]~196_combout\,
	datad => \B[3]~input_o\,
	combout => \Y~46_combout\);

-- Location: LCCOMB_X62_Y66_N20
\s32[3][14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][14]~11_combout\ = (\Equal0~0_combout\ & ((\B[2]~input_o\) # ((\s64~138_combout\)))) # (!\Equal0~0_combout\ & (!\B[2]~input_o\ & ((\s32[2][14]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64~138_combout\,
	datad => \s32[2][14]~4_combout\,
	combout => \s32[3][14]~11_combout\);

-- Location: LCCOMB_X62_Y66_N6
\s32[3][14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][14]~12_combout\ = (\s32[3][14]~11_combout\ & ((\s64[2][10]~120_combout\) # ((!\B[2]~input_o\)))) # (!\s32[3][14]~11_combout\ & (((\B[2]~input_o\ & \fill32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[2][10]~120_combout\,
	datab => \s32[3][14]~11_combout\,
	datac => \B[2]~input_o\,
	datad => \fill32~0_combout\,
	combout => \s32[3][14]~12_combout\);

-- Location: LCCOMB_X62_Y66_N16
\s64[3][6]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][6]~197_combout\ = (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][10]~120_combout\)))) # (!\B[2]~input_o\ & (((\s64[2][6]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][6]~122_combout\,
	datad => \s64[2][10]~120_combout\,
	combout => \s64[3][6]~197_combout\);

-- Location: LCCOMB_X62_Y66_N10
\s64[3][6]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][6]~198_combout\ = (\s64[3][6]~197_combout\) # ((\Equal0~0_combout\ & (\s64[2][2]~125_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[3][6]~197_combout\,
	datac => \s64[2][2]~125_combout\,
	datad => \B[2]~input_o\,
	combout => \s64[3][6]~198_combout\);

-- Location: LCCOMB_X62_Y66_N4
\Y~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~47_combout\ = (\Y~132_combout\ & ((\Y~24_combout\ & ((\s64[3][6]~198_combout\))) # (!\Y~24_combout\ & (\s32[3][14]~12_combout\)))) # (!\Y~132_combout\ & (((\Y~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][14]~12_combout\,
	datab => \s64[3][6]~198_combout\,
	datac => \Y~132_combout\,
	datad => \Y~24_combout\,
	combout => \Y~47_combout\);

-- Location: LCCOMB_X62_Y69_N10
\Y~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~48_combout\ = (\B[3]~input_o\ & (\s64[5][0]~3_combout\ & ((\s64[3][14]~193_combout\)))) # (!\B[3]~input_o\ & ((\s64[3][6]~198_combout\) # ((\s64[5][0]~3_combout\ & \s64[3][14]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[5][0]~3_combout\,
	datac => \s64[3][6]~198_combout\,
	datad => \s64[3][14]~193_combout\,
	combout => \Y~48_combout\);

-- Location: LCCOMB_X62_Y69_N20
\Y~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~49_combout\ = (\Y~26_combout\ & (((!\B[4]~input_o\ & \Y~48_combout\)))) # (!\Y~26_combout\ & (\Y~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~47_combout\,
	datab => \Y~26_combout\,
	datac => \B[4]~input_o\,
	datad => \Y~48_combout\,
	combout => \Y~49_combout\);

-- Location: LCCOMB_X62_Y69_N6
\Y~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~50_combout\ = (\Y~46_combout\) # (\Y~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y~46_combout\,
	datad => \Y~49_combout\,
	combout => \Y~50_combout\);

-- Location: LCCOMB_X63_Y67_N22
\s64[3][7]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][7]~206_combout\ = (\B[2]~input_o\ & (!\Equal0~0_combout\ & ((\s64[2][11]~145_combout\)))) # (!\B[2]~input_o\ & (((\s64[2][7]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][7]~147_combout\,
	datad => \s64[2][11]~145_combout\,
	combout => \s64[3][7]~206_combout\);

-- Location: LCCOMB_X62_Y67_N0
\s64[3][7]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][7]~207_combout\ = (\s64[3][7]~206_combout\) # ((\Equal0~0_combout\ & (\s64[2][3]~150_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][3]~150_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[3][7]~206_combout\,
	combout => \s64[3][7]~207_combout\);

-- Location: LCCOMB_X63_Y67_N10
\s64[3][15]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][15]~201_combout\ = (\Equal0~0_combout\ & ((\s64~164_combout\) # ((\B[2]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[2]~input_o\ & \s64[2][15]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64~164_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][15]~152_combout\,
	combout => \s64[3][15]~201_combout\);

-- Location: LCCOMB_X63_Y67_N28
\s64[3][15]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][15]~202_combout\ = (\s64[3][15]~201_combout\ & (((\s64[2][11]~145_combout\)) # (!\B[2]~input_o\))) # (!\s64[3][15]~201_combout\ & (\B[2]~input_o\ & (\s64[2][19]~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][15]~201_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][19]~167_combout\,
	datad => \s64[2][11]~145_combout\,
	combout => \s64[3][15]~202_combout\);

-- Location: LCCOMB_X62_Y70_N20
\Y~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~53_combout\ = (\s64[3][7]~207_combout\ & (((\s64[5][0]~3_combout\ & \s64[3][15]~202_combout\)) # (!\B[3]~input_o\))) # (!\s64[3][7]~207_combout\ & (((\s64[5][0]~3_combout\ & \s64[3][15]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][7]~207_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[5][0]~3_combout\,
	datad => \s64[3][15]~202_combout\,
	combout => \Y~53_combout\);

-- Location: LCCOMB_X63_Y67_N26
\s32[3][15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][15]~13_combout\ = (\Equal0~0_combout\ & ((\s64~164_combout\) # ((\B[2]~input_o\)))) # (!\Equal0~0_combout\ & (((!\B[2]~input_o\ & \s32[2][15]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64~164_combout\,
	datac => \B[2]~input_o\,
	datad => \s32[2][15]~6_combout\,
	combout => \s32[3][15]~13_combout\);

-- Location: LCCOMB_X63_Y67_N4
\s32[3][15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s32[3][15]~14_combout\ = (\B[2]~input_o\ & ((\s32[3][15]~13_combout\ & ((\s64[2][11]~145_combout\))) # (!\s32[3][15]~13_combout\ & (\fill32~0_combout\)))) # (!\B[2]~input_o\ & (((\s32[3][15]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill32~0_combout\,
	datab => \B[2]~input_o\,
	datac => \s32[3][15]~13_combout\,
	datad => \s64[2][11]~145_combout\,
	combout => \s32[3][15]~14_combout\);

-- Location: LCCOMB_X62_Y70_N2
\Y~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~52_combout\ = (\Y~132_combout\ & ((\Y~24_combout\ & (\s64[3][7]~207_combout\)) # (!\Y~24_combout\ & ((\s32[3][15]~14_combout\))))) # (!\Y~132_combout\ & (((\Y~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][7]~207_combout\,
	datab => \Y~132_combout\,
	datac => \s32[3][15]~14_combout\,
	datad => \Y~24_combout\,
	combout => \Y~52_combout\);

-- Location: LCCOMB_X62_Y70_N30
\Y~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~54_combout\ = (\Y~26_combout\ & (!\B[4]~input_o\ & (\Y~53_combout\))) # (!\Y~26_combout\ & (((\Y~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y~53_combout\,
	datac => \Y~26_combout\,
	datad => \Y~52_combout\,
	combout => \Y~54_combout\);

-- Location: LCCOMB_X63_Y67_N30
\s64[3][31]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][31]~199_combout\ = (\B[2]~input_o\ & (!\Equal0~0_combout\ & (\fill64~0_combout\))) # (!\B[2]~input_o\ & (((\s64[2][31]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \fill64~0_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][31]~157_combout\,
	combout => \s64[3][31]~199_combout\);

-- Location: LCCOMB_X63_Y67_N0
\s64[3][31]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][31]~200_combout\ = (\s64[3][31]~199_combout\) # ((\B[2]~input_o\ & (\s64[2][27]~160_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][31]~199_combout\,
	datab => \B[2]~input_o\,
	datac => \s64[2][27]~160_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[3][31]~200_combout\);

-- Location: LCCOMB_X62_Y70_N22
\s64[4][23]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][23]~203_combout\ = (\s64[3][31]~200_combout\ & ((\s64[5][0]~3_combout\) # ((\s64[4][16]~2_combout\ & \s64[3][15]~202_combout\)))) # (!\s64[3][31]~200_combout\ & (\s64[4][16]~2_combout\ & ((\s64[3][15]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][31]~200_combout\,
	datab => \s64[4][16]~2_combout\,
	datac => \s64[5][0]~3_combout\,
	datad => \s64[3][15]~202_combout\,
	combout => \s64[4][23]~203_combout\);

-- Location: LCCOMB_X63_Y67_N14
\s64[3][23]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][23]~204_combout\ = (\B[2]~input_o\ & ((\Equal0~0_combout\ & (\s64[2][19]~167_combout\)) # (!\Equal0~0_combout\ & ((\s64[2][27]~160_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s64[2][19]~167_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][27]~160_combout\,
	combout => \s64[3][23]~204_combout\);

-- Location: LCCOMB_X63_Y67_N16
\s64[3][23]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][23]~205_combout\ = (\s64[3][23]~204_combout\) # ((!\B[2]~input_o\ & \s64[2][23]~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \s64[3][23]~204_combout\,
	datad => \s64[2][23]~155_combout\,
	combout => \s64[3][23]~205_combout\);

-- Location: LCCOMB_X62_Y70_N24
\Y~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~51_combout\ = (\Y~16_combout\ & ((\s64[4][23]~203_combout\) # ((!\B[3]~input_o\ & \s64[3][23]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][23]~203_combout\,
	datab => \B[3]~input_o\,
	datac => \Y~16_combout\,
	datad => \s64[3][23]~205_combout\,
	combout => \Y~51_combout\);

-- Location: LCCOMB_X62_Y70_N0
\Y~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~55_combout\ = (\Y~54_combout\) # (\Y~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y~54_combout\,
	datad => \Y~51_combout\,
	combout => \Y~55_combout\);

-- Location: LCCOMB_X62_Y68_N14
\Y~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~133_combout\ = (!\ExtWord~input_o\ & (!\B[5]~input_o\ & ((!\B[4]~input_o\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~133_combout\);

-- Location: LCCOMB_X61_Y68_N30
\s64[4][8]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][8]~210_combout\ = (\B[3]~input_o\ & (\s64[4][16]~2_combout\ & ((\s64[3][0]~60_combout\)))) # (!\B[3]~input_o\ & ((\s64[3][8]~44_combout\) # ((\s64[4][16]~2_combout\ & \s64[3][0]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][16]~2_combout\,
	datac => \s64[3][8]~44_combout\,
	datad => \s64[3][0]~60_combout\,
	combout => \s64[4][8]~210_combout\);

-- Location: LCCOMB_X61_Y68_N24
\s64[4][8]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][8]~211_combout\ = (\s64[4][8]~210_combout\) # ((\s64[3][16]~52_combout\ & \s64[5][0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][8]~210_combout\,
	datac => \s64[3][16]~52_combout\,
	datad => \s64[5][0]~3_combout\,
	combout => \s64[4][8]~211_combout\);

-- Location: LCCOMB_X61_Y68_N26
\s64[4][24]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][24]~208_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & ((\s64[3][16]~52_combout\))) # (!\Equal0~0_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[3][16]~52_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][24]~208_combout\);

-- Location: LCCOMB_X61_Y68_N4
\s64[4][24]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][24]~209_combout\ = (\s64[4][24]~208_combout\) # ((!\B[3]~input_o\ & \s64[3][24]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \s64[4][24]~208_combout\,
	datad => \s64[3][24]~25_combout\,
	combout => \s64[4][24]~209_combout\);

-- Location: LCCOMB_X60_Y69_N12
\Y~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~59_combout\ = (\B[3]~input_o\ & (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y~59_combout\);

-- Location: LCCOMB_X60_Y69_N8
\Y~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~57_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \s64[3][8]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datad => \s64[3][8]~44_combout\,
	combout => \Y~57_combout\);

-- Location: LCCOMB_X60_Y69_N2
\Y~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~58_combout\ = (\fill32~0_combout\ & ((\B[4]~input_o\) # ((\B[3]~input_o\ & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \fill32~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Y~58_combout\);

-- Location: LCCOMB_X60_Y69_N14
\Y~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~60_combout\ = (\Y~57_combout\) # ((\Y~58_combout\) # ((\Y~59_combout\ & \s64[3][0]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~59_combout\,
	datab => \Y~57_combout\,
	datac => \s64[3][0]~60_combout\,
	datad => \Y~58_combout\,
	combout => \Y~60_combout\);

-- Location: LCCOMB_X62_Y68_N4
\Y~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~56_combout\ = (\ExtWord~input_o\) # ((!\B[4]~input_o\ & !\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~56_combout\);

-- Location: LCCOMB_X61_Y69_N24
\Y~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~61_combout\ = (\Y~26_combout\ & (((\Y~56_combout\)))) # (!\Y~26_combout\ & ((\Y~56_combout\ & (\Y~60_combout\)) # (!\Y~56_combout\ & ((\fill64~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~60_combout\,
	datab => \Y~26_combout\,
	datac => \Y~56_combout\,
	datad => \fill64~0_combout\,
	combout => \Y~61_combout\);

-- Location: LCCOMB_X61_Y69_N26
\Y~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~62_combout\ = (\Y~133_combout\ & ((\Y~61_combout\ & (\s64[4][8]~211_combout\)) # (!\Y~61_combout\ & ((\s64[4][24]~209_combout\))))) # (!\Y~133_combout\ & (((\Y~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~133_combout\,
	datab => \s64[4][8]~211_combout\,
	datac => \s64[4][24]~209_combout\,
	datad => \Y~61_combout\,
	combout => \Y~62_combout\);

-- Location: LCCOMB_X60_Y67_N28
\s64[4][9]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][9]~215_combout\ = (\s64[3][1]~82_combout\ & ((\s64[4][16]~2_combout\) # ((!\B[3]~input_o\ & \s64[3][9]~85_combout\)))) # (!\s64[3][1]~82_combout\ & (((!\B[3]~input_o\ & \s64[3][9]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][1]~82_combout\,
	datab => \s64[4][16]~2_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][9]~85_combout\,
	combout => \s64[4][9]~215_combout\);

-- Location: LCCOMB_X60_Y67_N22
\s64[4][9]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][9]~216_combout\ = (\s64[4][9]~215_combout\) # ((\s64[5][0]~3_combout\ & \s64[3][17]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][9]~215_combout\,
	datac => \s64[5][0]~3_combout\,
	datad => \s64[3][17]~117_combout\,
	combout => \s64[4][9]~216_combout\);

-- Location: LCCOMB_X60_Y69_N24
\Y~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~63_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \s32[3][9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datad => \s32[3][9]~3_combout\,
	combout => \Y~63_combout\);

-- Location: LCCOMB_X60_Y69_N18
\Y~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~64_combout\ = (\Y~58_combout\) # ((\Y~63_combout\) # ((\Y~59_combout\ & \s64[3][1]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~59_combout\,
	datab => \Y~58_combout\,
	datac => \s64[3][1]~82_combout\,
	datad => \Y~63_combout\,
	combout => \Y~64_combout\);

-- Location: LCCOMB_X60_Y67_N16
\Y~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~65_combout\ = (\Y~56_combout\ & ((\Y~64_combout\) # ((\Y~26_combout\)))) # (!\Y~56_combout\ & (((\fill64~0_combout\ & !\Y~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~64_combout\,
	datab => \Y~56_combout\,
	datac => \fill64~0_combout\,
	datad => \Y~26_combout\,
	combout => \Y~65_combout\);

-- Location: LCCOMB_X60_Y67_N8
\s64[4][25]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][25]~212_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & ((\s64[3][17]~117_combout\))) # (!\Equal0~0_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~0_combout\,
	datab => \s64[3][17]~117_combout\,
	datac => \B[3]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \s64[4][25]~212_combout\);

-- Location: LCCOMB_X61_Y67_N14
\s64[3][25]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[3][25]~213_combout\ = (\s64[3][25]~102_combout\) # ((!\B[2]~input_o\ & \s64[2][25]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[3][25]~102_combout\,
	datac => \B[2]~input_o\,
	datad => \s64[2][25]~106_combout\,
	combout => \s64[3][25]~213_combout\);

-- Location: LCCOMB_X60_Y67_N10
\s64[4][25]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][25]~214_combout\ = (\s64[4][25]~212_combout\) # ((!\B[3]~input_o\ & \s64[3][25]~213_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][25]~212_combout\,
	datac => \s64[3][25]~213_combout\,
	combout => \s64[4][25]~214_combout\);

-- Location: LCCOMB_X60_Y67_N2
\Y~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~66_combout\ = (\Y~65_combout\ & ((\s64[4][9]~216_combout\) # ((!\Y~133_combout\)))) # (!\Y~65_combout\ & (((\Y~133_combout\ & \s64[4][25]~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][9]~216_combout\,
	datab => \Y~65_combout\,
	datac => \Y~133_combout\,
	datad => \s64[4][25]~214_combout\,
	combout => \Y~66_combout\);

-- Location: LCCOMB_X59_Y69_N10
\s64[4][10]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][10]~219_combout\ = (\B[3]~input_o\ & (\s64[3][2]~126_combout\ & (\s64[4][16]~2_combout\))) # (!\B[3]~input_o\ & ((\s64[3][10]~128_combout\) # ((\s64[3][2]~126_combout\ & \s64[4][16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[3][2]~126_combout\,
	datac => \s64[4][16]~2_combout\,
	datad => \s64[3][10]~128_combout\,
	combout => \s64[4][10]~219_combout\);

-- Location: LCCOMB_X59_Y69_N12
\s64[4][10]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][10]~220_combout\ = (\s64[4][10]~219_combout\) # ((\s64[5][0]~3_combout\ & \s64[3][18]~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][10]~219_combout\,
	datac => \s64[5][0]~3_combout\,
	datad => \s64[3][18]~142_combout\,
	combout => \s64[4][10]~220_combout\);

-- Location: LCCOMB_X61_Y66_N16
\Y~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~67_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \s32[3][10]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \s32[3][10]~5_combout\,
	combout => \Y~67_combout\);

-- Location: LCCOMB_X60_Y69_N20
\Y~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~68_combout\ = (\Y~67_combout\) # ((\Y~58_combout\) # ((\Y~59_combout\ & \s64[3][2]~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~59_combout\,
	datab => \Y~67_combout\,
	datac => \Y~58_combout\,
	datad => \s64[3][2]~126_combout\,
	combout => \Y~68_combout\);

-- Location: LCCOMB_X60_Y69_N22
\Y~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~69_combout\ = (\Y~26_combout\ & (((\Y~56_combout\)))) # (!\Y~26_combout\ & ((\Y~56_combout\ & (\Y~68_combout\)) # (!\Y~56_combout\ & ((\fill64~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~26_combout\,
	datab => \Y~68_combout\,
	datac => \fill64~0_combout\,
	datad => \Y~56_combout\,
	combout => \Y~69_combout\);

-- Location: LCCOMB_X59_Y69_N22
\s64[4][26]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][26]~217_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & ((\s64[3][18]~142_combout\))) # (!\Equal0~0_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \fill64~0_combout\,
	datad => \s64[3][18]~142_combout\,
	combout => \s64[4][26]~217_combout\);

-- Location: LCCOMB_X59_Y69_N16
\s64[4][26]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][26]~218_combout\ = (\s64[4][26]~217_combout\) # ((!\B[3]~input_o\ & \s64[3][26]~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \s64[4][26]~217_combout\,
	datad => \s64[3][26]~136_combout\,
	combout => \s64[4][26]~218_combout\);

-- Location: LCCOMB_X59_Y69_N14
\Y~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~70_combout\ = (\Y~69_combout\ & ((\s64[4][10]~220_combout\) # ((!\Y~133_combout\)))) # (!\Y~69_combout\ & (((\s64[4][26]~218_combout\ & \Y~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][10]~220_combout\,
	datab => \Y~69_combout\,
	datac => \s64[4][26]~218_combout\,
	datad => \Y~133_combout\,
	combout => \Y~70_combout\);

-- Location: LCCOMB_X62_Y70_N26
\Y~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~71_combout\ = (!\B[4]~input_o\ & (!\B[3]~input_o\ & \s32[3][11]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datad => \s32[3][11]~7_combout\,
	combout => \Y~71_combout\);

-- Location: LCCOMB_X61_Y69_N20
\Y~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~72_combout\ = (\Y~71_combout\) # ((\Y~58_combout\) # ((\s64[3][3]~151_combout\ & \Y~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][3]~151_combout\,
	datab => \Y~71_combout\,
	datac => \Y~59_combout\,
	datad => \Y~58_combout\,
	combout => \Y~72_combout\);

-- Location: LCCOMB_X61_Y69_N6
\Y~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~73_combout\ = (\Y~56_combout\ & (((\Y~72_combout\) # (\Y~26_combout\)))) # (!\Y~56_combout\ & (\fill64~0_combout\ & ((!\Y~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~0_combout\,
	datab => \Y~72_combout\,
	datac => \Y~56_combout\,
	datad => \Y~26_combout\,
	combout => \Y~73_combout\);

-- Location: LCCOMB_X62_Y67_N30
\s64[4][11]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][11]~223_combout\ = (\s64[3][11]~153_combout\ & (((\s64[4][16]~2_combout\ & \s64[3][3]~151_combout\)) # (!\B[3]~input_o\))) # (!\s64[3][11]~153_combout\ & (((\s64[4][16]~2_combout\ & \s64[3][3]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][11]~153_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[4][16]~2_combout\,
	datad => \s64[3][3]~151_combout\,
	combout => \s64[4][11]~223_combout\);

-- Location: LCCOMB_X62_Y67_N24
\s64[4][11]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][11]~224_combout\ = (\s64[4][11]~223_combout\) # ((\s64[5][0]~3_combout\ & \s64[3][19]~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][11]~223_combout\,
	datab => \s64[5][0]~3_combout\,
	datac => \s64[3][19]~168_combout\,
	combout => \s64[4][11]~224_combout\);

-- Location: LCCOMB_X62_Y67_N26
\s64[4][27]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][27]~221_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & (\s64[3][19]~168_combout\)) # (!\Equal0~0_combout\ & ((\fill64~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[3][19]~168_combout\,
	datad => \fill64~0_combout\,
	combout => \s64[4][27]~221_combout\);

-- Location: LCCOMB_X62_Y67_N28
\s64[4][27]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][27]~222_combout\ = (\s64[4][27]~221_combout\) # ((!\B[3]~input_o\ & \s64[3][27]~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \s64[4][27]~221_combout\,
	datad => \s64[3][27]~161_combout\,
	combout => \s64[4][27]~222_combout\);

-- Location: LCCOMB_X61_Y69_N8
\Y~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~74_combout\ = (\Y~73_combout\ & ((\s64[4][11]~224_combout\) # ((!\Y~133_combout\)))) # (!\Y~73_combout\ & (((\s64[4][27]~222_combout\ & \Y~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~73_combout\,
	datab => \s64[4][11]~224_combout\,
	datac => \s64[4][27]~222_combout\,
	datad => \Y~133_combout\,
	combout => \Y~74_combout\);

-- Location: LCCOMB_X60_Y68_N6
\s64[4][28]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][28]~225_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & (\s64[3][20]~180_combout\)) # (!\Equal0~0_combout\ & ((\fill64~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][20]~180_combout\,
	datab => \B[3]~input_o\,
	datac => \fill64~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[4][28]~225_combout\);

-- Location: LCCOMB_X59_Y69_N8
\s64[4][28]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][28]~226_combout\ = (\s64[4][28]~225_combout\) # ((!\B[3]~input_o\ & \s64[3][28]~176_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][28]~225_combout\,
	datad => \s64[3][28]~176_combout\,
	combout => \s64[4][28]~226_combout\);

-- Location: LCCOMB_X60_Y69_N0
\Y~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~75_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \s32[3][12]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \s32[3][12]~8_combout\,
	combout => \Y~75_combout\);

-- Location: LCCOMB_X60_Y69_N10
\Y~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~76_combout\ = (\Y~58_combout\) # ((\Y~75_combout\) # ((\Y~59_combout\ & \s64[3][4]~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~59_combout\,
	datab => \Y~58_combout\,
	datac => \s64[3][4]~172_combout\,
	datad => \Y~75_combout\,
	combout => \Y~76_combout\);

-- Location: LCCOMB_X59_Y69_N26
\Y~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~77_combout\ = (\Y~56_combout\ & ((\Y~76_combout\) # ((\Y~26_combout\)))) # (!\Y~56_combout\ & (((\fill64~0_combout\ & !\Y~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~76_combout\,
	datab => \Y~56_combout\,
	datac => \fill64~0_combout\,
	datad => \Y~26_combout\,
	combout => \Y~77_combout\);

-- Location: LCCOMB_X60_Y68_N0
\s64[4][12]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][12]~227_combout\ = (\s64[3][12]~177_combout\ & (((\s64[3][4]~172_combout\ & \s64[4][16]~2_combout\)) # (!\B[3]~input_o\))) # (!\s64[3][12]~177_combout\ & (((\s64[3][4]~172_combout\ & \s64[4][16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][12]~177_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[3][4]~172_combout\,
	datad => \s64[4][16]~2_combout\,
	combout => \s64[4][12]~227_combout\);

-- Location: LCCOMB_X60_Y68_N2
\s64[4][12]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][12]~228_combout\ = (\s64[4][12]~227_combout\) # ((\s64[3][20]~180_combout\ & \s64[5][0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][12]~227_combout\,
	datac => \s64[3][20]~180_combout\,
	datad => \s64[5][0]~3_combout\,
	combout => \s64[4][12]~228_combout\);

-- Location: LCCOMB_X59_Y69_N4
\Y~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~78_combout\ = (\Y~133_combout\ & ((\Y~77_combout\ & ((\s64[4][12]~228_combout\))) # (!\Y~77_combout\ & (\s64[4][28]~226_combout\)))) # (!\Y~133_combout\ & (((\Y~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~133_combout\,
	datab => \s64[4][28]~226_combout\,
	datac => \Y~77_combout\,
	datad => \s64[4][12]~228_combout\,
	combout => \Y~78_combout\);

-- Location: LCCOMB_X60_Y66_N12
\s64[4][13]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][13]~231_combout\ = (\B[3]~input_o\ & (\s64[3][5]~182_combout\ & ((\s64[4][16]~2_combout\)))) # (!\B[3]~input_o\ & ((\s64[3][13]~186_combout\) # ((\s64[3][5]~182_combout\ & \s64[4][16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[3][5]~182_combout\,
	datac => \s64[3][13]~186_combout\,
	datad => \s64[4][16]~2_combout\,
	combout => \s64[4][13]~231_combout\);

-- Location: LCCOMB_X60_Y66_N30
\s64[4][13]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][13]~232_combout\ = (\s64[4][13]~231_combout\) # ((\s64[3][21]~189_combout\ & \s64[5][0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][13]~231_combout\,
	datab => \s64[3][21]~189_combout\,
	datac => \s64[5][0]~3_combout\,
	combout => \s64[4][13]~232_combout\);

-- Location: LCCOMB_X60_Y69_N28
\Y~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~79_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \s32[3][13]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datad => \s32[3][13]~10_combout\,
	combout => \Y~79_combout\);

-- Location: LCCOMB_X61_Y69_N18
\Y~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~80_combout\ = (\Y~79_combout\) # ((\Y~58_combout\) # ((\Y~59_combout\ & \s64[3][5]~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~59_combout\,
	datab => \Y~79_combout\,
	datac => \s64[3][5]~182_combout\,
	datad => \Y~58_combout\,
	combout => \Y~80_combout\);

-- Location: LCCOMB_X61_Y69_N28
\Y~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~81_combout\ = (\Y~26_combout\ & (((\Y~56_combout\)))) # (!\Y~26_combout\ & ((\Y~56_combout\ & (\Y~80_combout\)) # (!\Y~56_combout\ & ((\fill64~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~26_combout\,
	datab => \Y~80_combout\,
	datac => \Y~56_combout\,
	datad => \fill64~0_combout\,
	combout => \Y~81_combout\);

-- Location: LCCOMB_X60_Y66_N16
\s64[4][29]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][29]~229_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & ((\s64[3][21]~189_combout\))) # (!\Equal0~0_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \s64[3][21]~189_combout\,
	datad => \B[3]~input_o\,
	combout => \s64[4][29]~229_combout\);

-- Location: LCCOMB_X60_Y66_N18
\s64[4][29]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][29]~230_combout\ = (\s64[4][29]~229_combout\) # ((!\B[3]~input_o\ & \s64[3][29]~184_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][29]~229_combout\,
	datac => \s64[3][29]~184_combout\,
	combout => \s64[4][29]~230_combout\);

-- Location: LCCOMB_X61_Y69_N22
\Y~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~82_combout\ = (\Y~81_combout\ & ((\s64[4][13]~232_combout\) # ((!\Y~133_combout\)))) # (!\Y~81_combout\ & (((\s64[4][29]~230_combout\ & \Y~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][13]~232_combout\,
	datab => \Y~81_combout\,
	datac => \s64[4][29]~230_combout\,
	datad => \Y~133_combout\,
	combout => \Y~82_combout\);

-- Location: LCCOMB_X62_Y66_N30
\Y~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~83_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \s32[3][14]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \s32[3][14]~12_combout\,
	combout => \Y~83_combout\);

-- Location: LCCOMB_X61_Y69_N0
\Y~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~84_combout\ = (\Y~83_combout\) # ((\Y~58_combout\) # ((\Y~59_combout\ & \s64[3][6]~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~59_combout\,
	datab => \s64[3][6]~198_combout\,
	datac => \Y~83_combout\,
	datad => \Y~58_combout\,
	combout => \Y~84_combout\);

-- Location: LCCOMB_X61_Y69_N2
\Y~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~85_combout\ = (\Y~56_combout\ & (((\Y~84_combout\) # (\Y~26_combout\)))) # (!\Y~56_combout\ & (\fill64~0_combout\ & ((!\Y~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fill64~0_combout\,
	datab => \Y~84_combout\,
	datac => \Y~56_combout\,
	datad => \Y~26_combout\,
	combout => \Y~85_combout\);

-- Location: LCCOMB_X62_Y69_N0
\s64[4][30]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][30]~233_combout\ = (\B[3]~input_o\ & ((\Equal0~0_combout\ & ((\s64[3][22]~196_combout\))) # (!\Equal0~0_combout\ & (\fill64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \fill64~0_combout\,
	datac => \s64[3][22]~196_combout\,
	datad => \Equal0~0_combout\,
	combout => \s64[4][30]~233_combout\);

-- Location: LCCOMB_X62_Y69_N2
\s64[4][30]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][30]~234_combout\ = (\s64[4][30]~233_combout\) # ((!\B[3]~input_o\ & \s64[3][30]~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][30]~233_combout\,
	datad => \s64[3][30]~191_combout\,
	combout => \s64[4][30]~234_combout\);

-- Location: LCCOMB_X62_Y69_N4
\s64[4][14]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][14]~235_combout\ = (\B[3]~input_o\ & (\s64[3][6]~198_combout\ & (\s64[4][16]~2_combout\))) # (!\B[3]~input_o\ & ((\s64[3][14]~193_combout\) # ((\s64[3][6]~198_combout\ & \s64[4][16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[3][6]~198_combout\,
	datac => \s64[4][16]~2_combout\,
	datad => \s64[3][14]~193_combout\,
	combout => \s64[4][14]~235_combout\);

-- Location: LCCOMB_X62_Y69_N30
\s64[4][14]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][14]~236_combout\ = (\s64[4][14]~235_combout\) # ((\s64[3][22]~196_combout\ & \s64[5][0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][14]~235_combout\,
	datac => \s64[3][22]~196_combout\,
	datad => \s64[5][0]~3_combout\,
	combout => \s64[4][14]~236_combout\);

-- Location: LCCOMB_X62_Y69_N16
\Y~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~86_combout\ = (\Y~85_combout\ & (((\s64[4][14]~236_combout\) # (!\Y~133_combout\)))) # (!\Y~85_combout\ & (\s64[4][30]~234_combout\ & ((\Y~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~85_combout\,
	datab => \s64[4][30]~234_combout\,
	datac => \s64[4][14]~236_combout\,
	datad => \Y~133_combout\,
	combout => \Y~86_combout\);

-- Location: LCCOMB_X62_Y67_N2
\s64[4][31]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][31]~237_combout\ = (\B[3]~input_o\ & (!\Equal0~0_combout\ & ((\fill64~0_combout\)))) # (!\B[3]~input_o\ & (((\s64[3][31]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[3][31]~200_combout\,
	datad => \fill64~0_combout\,
	combout => \s64[4][31]~237_combout\);

-- Location: LCCOMB_X62_Y68_N30
\s64[4][31]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][31]~238_combout\ = (\s64[4][31]~237_combout\) # ((\s64[3][23]~205_combout\ & \s64[4][16]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][23]~205_combout\,
	datab => \s64[4][31]~237_combout\,
	datac => \s64[4][16]~2_combout\,
	combout => \s64[4][31]~238_combout\);

-- Location: LCCOMB_X62_Y66_N0
\Y~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~87_combout\ = (\ExtWord~input_o\ & (\fill32~0_combout\ & ((\s64[5][0]~3_combout\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[5][0]~3_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \fill32~0_combout\,
	combout => \Y~87_combout\);

-- Location: LCCOMB_X62_Y66_N26
\Y~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~88_combout\ = (\Y~87_combout\) # ((\s32[3][15]~14_combout\ & (\ExtWord~input_o\ & \s64[5][0]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s32[3][15]~14_combout\,
	datab => \ExtWord~input_o\,
	datac => \s64[5][0]~61_combout\,
	datad => \Y~87_combout\,
	combout => \Y~88_combout\);

-- Location: LCCOMB_X62_Y66_N28
\Y~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~89_combout\ = (\Y~88_combout\) # ((\s64[4][16]~2_combout\ & (\Y~22_combout\ & \s64[3][7]~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~88_combout\,
	datab => \s64[4][16]~2_combout\,
	datac => \Y~22_combout\,
	datad => \s64[3][7]~207_combout\,
	combout => \Y~89_combout\);

-- Location: LCCOMB_X62_Y68_N16
\Y~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~90_combout\ = (\Y~18_combout\) # ((\Y~89_combout\) # ((\s64[4][31]~238_combout\ & \Y~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][31]~238_combout\,
	datab => \Y~16_combout\,
	datac => \Y~18_combout\,
	datad => \Y~89_combout\,
	combout => \Y~90_combout\);

-- Location: LCCOMB_X62_Y70_N28
\s64[4][15]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][15]~239_combout\ = (\s64[3][7]~207_combout\ & ((\s64[4][16]~2_combout\) # ((!\B[3]~input_o\ & \s64[3][15]~202_combout\)))) # (!\s64[3][7]~207_combout\ & (((!\B[3]~input_o\ & \s64[3][15]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][7]~207_combout\,
	datab => \s64[4][16]~2_combout\,
	datac => \B[3]~input_o\,
	datad => \s64[3][15]~202_combout\,
	combout => \s64[4][15]~239_combout\);

-- Location: LCCOMB_X62_Y70_N6
\s64[4][15]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][15]~240_combout\ = (\s64[4][15]~239_combout\) # ((\s64[5][0]~3_combout\ & \s64[3][23]~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s64[4][15]~239_combout\,
	datac => \s64[5][0]~3_combout\,
	datad => \s64[3][23]~205_combout\,
	combout => \s64[4][15]~240_combout\);

-- Location: LCCOMB_X62_Y70_N8
\Y~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~91_combout\ = (\Y~90_combout\) # ((!\B[4]~input_o\ & (\Y~26_combout\ & \s64[4][15]~240_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y~26_combout\,
	datac => \Y~90_combout\,
	datad => \s64[4][15]~240_combout\,
	combout => \Y~91_combout\);

-- Location: LCCOMB_X62_Y68_N12
\Y~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~94_combout\ = (\Equal0~0_combout\ & (\B[4]~input_o\ & (!\ExtWord~input_o\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~94_combout\);

-- Location: LCCOMB_X59_Y69_N30
\Y~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~95_combout\ = (!\B[3]~input_o\ & \Y~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Y~94_combout\,
	combout => \Y~95_combout\);

-- Location: LCCOMB_X62_Y68_N18
\Y~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~92_combout\ = (!\B[4]~input_o\ & (!\ExtWord~input_o\ & !\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~92_combout\);

-- Location: LCCOMB_X61_Y68_N18
\Y~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~93_combout\ = (\Y~92_combout\ & ((\s64[4][16]~45_combout\) # ((!\B[3]~input_o\ & \s64[3][16]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y~92_combout\,
	datac => \s64[3][16]~52_combout\,
	datad => \s64[4][16]~45_combout\,
	combout => \Y~93_combout\);

-- Location: LCCOMB_X62_Y68_N6
\Y~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~96_combout\ = (\B[5]~input_o\) # ((\B[4]~input_o\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~96_combout\);

-- Location: LCCOMB_X62_Y68_N24
\Y~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~97_combout\ = (!\Y~89_combout\ & (((\ExtWord~input_o\) # (!\Y~96_combout\)) # (!\fill64~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~89_combout\,
	datab => \fill64~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~96_combout\,
	combout => \Y~97_combout\);

-- Location: LCCOMB_X61_Y68_N12
\Y~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~98_combout\ = (\Y~93_combout\) # (((\Y~95_combout\ & \s64[3][0]~60_combout\)) # (!\Y~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~95_combout\,
	datab => \Y~93_combout\,
	datac => \Y~97_combout\,
	datad => \s64[3][0]~60_combout\,
	combout => \Y~98_combout\);

-- Location: LCCOMB_X60_Y67_N14
\Y~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~131_combout\ = ((\s64[3][1]~82_combout\ & (\Y~94_combout\ & !\B[3]~input_o\))) # (!\Y~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][1]~82_combout\,
	datab => \Y~94_combout\,
	datac => \B[3]~input_o\,
	datad => \Y~97_combout\,
	combout => \Y~131_combout\);

-- Location: LCCOMB_X60_Y67_N4
\Y~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~99_combout\ = (\Y~131_combout\) # ((\s64[4][17]~118_combout\ & \Y~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~131_combout\,
	datac => \s64[4][17]~118_combout\,
	datad => \Y~92_combout\,
	combout => \Y~99_combout\);

-- Location: LCCOMB_X62_Y67_N20
\Y~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~100_combout\ = (\Y~92_combout\ & ((\s64[4][18]~137_combout\) # ((!\B[3]~input_o\ & \s64[3][18]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~92_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[4][18]~137_combout\,
	datad => \s64[3][18]~142_combout\,
	combout => \Y~100_combout\);

-- Location: LCCOMB_X62_Y68_N10
\Y~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~101_combout\ = (!\ShiftFN[1]~input_o\ & (!\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y~101_combout\);

-- Location: LCCOMB_X60_Y68_N28
\Y~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~102_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & (\Y~101_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Y~101_combout\,
	datad => \B[2]~input_o\,
	combout => \Y~102_combout\);

-- Location: LCCOMB_X62_Y67_N22
\Y~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~103_combout\ = ((\Y~100_combout\) # ((\Y~102_combout\ & \s64[2][2]~125_combout\))) # (!\Y~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \Y~100_combout\,
	datac => \Y~102_combout\,
	datad => \s64[2][2]~125_combout\,
	combout => \Y~103_combout\);

-- Location: LCCOMB_X62_Y67_N16
\Y~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~104_combout\ = (\Y~102_combout\ & \s64[2][3]~150_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~102_combout\,
	datac => \s64[2][3]~150_combout\,
	combout => \Y~104_combout\);

-- Location: LCCOMB_X62_Y67_N10
\Y~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~105_combout\ = ((\Y~104_combout\) # ((\s64[4][19]~169_combout\ & \Y~92_combout\))) # (!\Y~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \Y~104_combout\,
	datac => \s64[4][19]~169_combout\,
	datad => \Y~92_combout\,
	combout => \Y~105_combout\);

-- Location: LCCOMB_X60_Y66_N0
\s64[4][20]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \s64[4][20]~241_combout\ = (\s64[4][20]~178_combout\) # ((!\B[3]~input_o\ & \s64[3][20]~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][20]~178_combout\,
	datad => \s64[3][20]~180_combout\,
	combout => \s64[4][20]~241_combout\);

-- Location: LCCOMB_X60_Y68_N22
\Y~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~106_combout\ = (\Y~95_combout\ & ((\s64[3][4]~171_combout\) # ((\s64[3][8]~173_combout\ & \s64[2][0]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][4]~171_combout\,
	datab => \Y~95_combout\,
	datac => \s64[3][8]~173_combout\,
	datad => \s64[2][0]~59_combout\,
	combout => \Y~106_combout\);

-- Location: LCCOMB_X60_Y66_N10
\Y~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~107_combout\ = ((\Y~106_combout\) # ((\Y~92_combout\ & \s64[4][20]~241_combout\))) # (!\Y~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~92_combout\,
	datab => \s64[4][20]~241_combout\,
	datac => \Y~97_combout\,
	datad => \Y~106_combout\,
	combout => \Y~107_combout\);

-- Location: LCCOMB_X60_Y66_N20
\Y~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~108_combout\ = (\Y~92_combout\ & ((\s64[4][21]~187_combout\) # ((\s64[3][21]~189_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~92_combout\,
	datab => \s64[3][21]~189_combout\,
	datac => \s64[4][21]~187_combout\,
	datad => \B[3]~input_o\,
	combout => \Y~108_combout\);

-- Location: LCCOMB_X61_Y69_N4
\Y~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~109_combout\ = (\Y~108_combout\) # (((\Y~95_combout\ & \s64[3][5]~182_combout\)) # (!\Y~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~95_combout\,
	datab => \Y~108_combout\,
	datac => \s64[3][5]~182_combout\,
	datad => \Y~97_combout\,
	combout => \Y~109_combout\);

-- Location: LCCOMB_X62_Y69_N18
\Y~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~110_combout\ = (\Y~92_combout\ & ((\s64[4][22]~194_combout\) # ((!\B[3]~input_o\ & \s64[3][22]~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[3][22]~196_combout\,
	datac => \s64[4][22]~194_combout\,
	datad => \Y~92_combout\,
	combout => \Y~110_combout\);

-- Location: LCCOMB_X61_Y69_N14
\Y~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~111_combout\ = ((\Y~110_combout\) # ((\Y~95_combout\ & \s64[3][6]~198_combout\))) # (!\Y~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~95_combout\,
	datab => \Y~97_combout\,
	datac => \s64[3][6]~198_combout\,
	datad => \Y~110_combout\,
	combout => \Y~111_combout\);

-- Location: LCCOMB_X62_Y70_N18
\Y~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~112_combout\ = (\Y~92_combout\ & ((\s64[4][23]~203_combout\) # ((!\B[3]~input_o\ & \s64[3][23]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][23]~203_combout\,
	datab => \B[3]~input_o\,
	datac => \Y~92_combout\,
	datad => \s64[3][23]~205_combout\,
	combout => \Y~112_combout\);

-- Location: LCCOMB_X62_Y70_N4
\Y~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~113_combout\ = ((\Y~112_combout\) # ((\s64[3][7]~207_combout\ & \Y~95_combout\))) # (!\Y~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][7]~207_combout\,
	datab => \Y~97_combout\,
	datac => \Y~95_combout\,
	datad => \Y~112_combout\,
	combout => \Y~113_combout\);

-- Location: LCCOMB_X61_Y68_N6
\Y~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~114_combout\ = (\Y~92_combout\ & ((\s64[4][24]~208_combout\) # ((!\B[3]~input_o\ & \s64[3][24]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[3][24]~25_combout\,
	datac => \s64[4][24]~208_combout\,
	datad => \Y~92_combout\,
	combout => \Y~114_combout\);

-- Location: LCCOMB_X61_Y69_N16
\Y~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~115_combout\ = (\Y~114_combout\) # (((\Y~94_combout\ & \s64[4][8]~211_combout\)) # (!\Y~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~114_combout\,
	datab => \Y~94_combout\,
	datac => \s64[4][8]~211_combout\,
	datad => \Y~97_combout\,
	combout => \Y~115_combout\);

-- Location: LCCOMB_X60_Y67_N30
\Y~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~116_combout\ = (\Y~92_combout\ & ((\s64[4][25]~212_combout\) # ((!\B[3]~input_o\ & \s64[3][25]~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][25]~212_combout\,
	datac => \s64[3][25]~213_combout\,
	datad => \Y~92_combout\,
	combout => \Y~116_combout\);

-- Location: LCCOMB_X60_Y67_N0
\Y~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~117_combout\ = (\Y~116_combout\) # (((\s64[4][9]~216_combout\ & \Y~94_combout\)) # (!\Y~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][9]~216_combout\,
	datab => \Y~94_combout\,
	datac => \Y~116_combout\,
	datad => \Y~97_combout\,
	combout => \Y~117_combout\);

-- Location: LCCOMB_X59_Y69_N24
\Y~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~118_combout\ = (\Y~92_combout\ & ((\s64[4][26]~217_combout\) # ((!\B[3]~input_o\ & \s64[3][26]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y~92_combout\,
	datac => \s64[4][26]~217_combout\,
	datad => \s64[3][26]~136_combout\,
	combout => \Y~118_combout\);

-- Location: LCCOMB_X59_Y69_N2
\Y~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~119_combout\ = (\Y~118_combout\) # (((\s64[4][10]~220_combout\ & \Y~94_combout\)) # (!\Y~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][10]~220_combout\,
	datab => \Y~118_combout\,
	datac => \Y~97_combout\,
	datad => \Y~94_combout\,
	combout => \Y~119_combout\);

-- Location: LCCOMB_X62_Y67_N12
\Y~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~120_combout\ = (\Y~92_combout\ & ((\s64[4][27]~221_combout\) # ((!\B[3]~input_o\ & \s64[3][27]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~92_combout\,
	datab => \B[3]~input_o\,
	datac => \s64[4][27]~221_combout\,
	datad => \s64[3][27]~161_combout\,
	combout => \Y~120_combout\);

-- Location: LCCOMB_X61_Y69_N10
\Y~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~121_combout\ = (\Y~120_combout\) # (((\Y~94_combout\ & \s64[4][11]~224_combout\)) # (!\Y~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~120_combout\,
	datab => \Y~94_combout\,
	datac => \s64[4][11]~224_combout\,
	datad => \Y~97_combout\,
	combout => \Y~121_combout\);

-- Location: LCCOMB_X59_Y69_N20
\Y~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~122_combout\ = (\Y~92_combout\ & ((\s64[4][28]~225_combout\) # ((!\B[3]~input_o\ & \s64[3][28]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][28]~225_combout\,
	datac => \Y~92_combout\,
	datad => \s64[3][28]~176_combout\,
	combout => \Y~122_combout\);

-- Location: LCCOMB_X59_Y69_N6
\Y~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~123_combout\ = ((\Y~122_combout\) # ((\Y~94_combout\ & \s64[4][12]~228_combout\))) # (!\Y~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \Y~122_combout\,
	datac => \Y~94_combout\,
	datad => \s64[4][12]~228_combout\,
	combout => \Y~123_combout\);

-- Location: LCCOMB_X60_Y66_N22
\Y~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~124_combout\ = (\Y~92_combout\ & ((\s64[4][29]~229_combout\) # ((\s64[3][29]~184_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[3][29]~184_combout\,
	datab => \s64[4][29]~229_combout\,
	datac => \Y~92_combout\,
	datad => \B[3]~input_o\,
	combout => \Y~124_combout\);

-- Location: LCCOMB_X61_Y69_N12
\Y~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~125_combout\ = (\Y~124_combout\) # (((\s64[4][13]~232_combout\ & \Y~94_combout\)) # (!\Y~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][13]~232_combout\,
	datab => \Y~124_combout\,
	datac => \Y~94_combout\,
	datad => \Y~97_combout\,
	combout => \Y~125_combout\);

-- Location: LCCOMB_X62_Y69_N28
\Y~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~126_combout\ = (\Y~92_combout\ & ((\s64[4][30]~233_combout\) # ((!\B[3]~input_o\ & \s64[3][30]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \s64[4][30]~233_combout\,
	datac => \Y~92_combout\,
	datad => \s64[3][30]~191_combout\,
	combout => \Y~126_combout\);

-- Location: LCCOMB_X62_Y69_N22
\Y~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~127_combout\ = ((\Y~126_combout\) # ((\s64[4][14]~236_combout\ & \Y~94_combout\))) # (!\Y~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][14]~236_combout\,
	datab => \Y~97_combout\,
	datac => \Y~94_combout\,
	datad => \Y~126_combout\,
	combout => \Y~127_combout\);

-- Location: LCCOMB_X62_Y68_N20
\Y~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~128_combout\ = (\Y~92_combout\ & ((\s64[4][31]~237_combout\) # ((\s64[4][16]~2_combout\ & \s64[3][23]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s64[4][16]~2_combout\,
	datab => \s64[4][31]~237_combout\,
	datac => \s64[3][23]~205_combout\,
	datad => \Y~92_combout\,
	combout => \Y~128_combout\);

-- Location: LCCOMB_X62_Y67_N6
\Y~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~129_combout\ = ((\Y~128_combout\) # ((\Y~94_combout\ & \s64[4][15]~240_combout\))) # (!\Y~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~97_combout\,
	datab => \Y~128_combout\,
	datac => \Y~94_combout\,
	datad => \s64[4][15]~240_combout\,
	combout => \Y~129_combout\);

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

-- Location: IOIBUF_X23_Y73_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X105_Y0_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X113_Y73_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y68_N8
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


