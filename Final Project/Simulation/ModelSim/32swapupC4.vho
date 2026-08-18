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

-- DATE "04/08/2026 14:28:12"

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
-- B[8]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \srl64[2][11]~52_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \srl64[2][12]~51_combout\ : std_logic;
SIGNAL \srl64[2][12]~53_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \srl64[2][5]~49_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \srl64[2][4]~48_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \srl64[4][0]~50_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \srl64[4][0]~54_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \srl64[1][22]~33_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \srl64[1][22]~34_combout\ : std_logic;
SIGNAL \srl64[1][22]~35_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \srl64[1][19]~40_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \srl64[1][20]~39_combout\ : std_logic;
SIGNAL \srl64[1][20]~41_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \srl64[1][16]~42_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \srl64[1][16]~43_combout\ : std_logic;
SIGNAL \srl64[1][16]~44_combout\ : std_logic;
SIGNAL \srl64[3][16]~45_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \srl64[1][17]~37_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \srl64[1][18]~36_combout\ : std_logic;
SIGNAL \srl64[1][18]~38_combout\ : std_logic;
SIGNAL \srl64[3][16]~46_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \srl64[1][25]~21_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \srl64[1][26]~20_combout\ : std_logic;
SIGNAL \srl64[1][26]~22_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \srl64[1][23]~24_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \srl64[1][24]~23_combout\ : std_logic;
SIGNAL \srl64[1][24]~25_combout\ : std_logic;
SIGNAL \srl64[3][24]~26_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \srl64[1][28]~29_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \srl64[1][29]~27_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \sra64[0][31]~2_combout\ : std_logic;
SIGNAL \srl64[1][30]~28_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \srl64[1][28]~30_combout\ : std_logic;
SIGNAL \srl64[2][28]~159_combout\ : std_logic;
SIGNAL \srl64[3][24]~32_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Y_srl[0]~0_combout\ : std_logic;
SIGNAL \srl64[2][9]~58_combout\ : std_logic;
SIGNAL \srl64[2][8]~59_combout\ : std_logic;
SIGNAL \srl64[2][8]~60_combout\ : std_logic;
SIGNAL \srl64[4][0]~55_combout\ : std_logic;
SIGNAL \srl64[3][1]~56_combout\ : std_logic;
SIGNAL \srl64[4][0]~57_combout\ : std_logic;
SIGNAL \Y_srl[0]~1_combout\ : std_logic;
SIGNAL \Y_srl[0]~2_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \sll64[6][0]~8_combout\ : std_logic;
SIGNAL \srl64[6][16]~47_combout\ : std_logic;
SIGNAL \Y_srl[0]~3_combout\ : std_logic;
SIGNAL \sra64[6][16]~3_combout\ : std_logic;
SIGNAL \sra64[6][16]~4_combout\ : std_logic;
SIGNAL \Y_sra[0]~2_combout\ : std_logic;
SIGNAL \Y_sra[0]~3_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \sll64[4][0]~9_combout\ : std_logic;
SIGNAL \sll64[6][0]~10_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \srl64[1][27]~61_combout\ : std_logic;
SIGNAL \srl64[1][27]~62_combout\ : std_logic;
SIGNAL \sll64[3][4]~14_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \srl64[1][28]~65_combout\ : std_logic;
SIGNAL \srl64[1][29]~66_combout\ : std_logic;
SIGNAL \sra64[3][25]~5_combout\ : std_logic;
SIGNAL \srl64[1][25]~63_combout\ : std_logic;
SIGNAL \sra64[3][25]~6_combout\ : std_logic;
SIGNAL \srl64[1][21]~73_combout\ : std_logic;
SIGNAL \srl64[1][20]~74_combout\ : std_logic;
SIGNAL \srl64[3][15]~75_combout\ : std_logic;
SIGNAL \srl64[1][17]~76_combout\ : std_logic;
SIGNAL \srl64[3][15]~77_combout\ : std_logic;
SIGNAL \srl64[1][19]~71_combout\ : std_logic;
SIGNAL \srl64[1][22]~69_combout\ : std_logic;
SIGNAL \srl64[1][23]~70_combout\ : std_logic;
SIGNAL \srl64[3][17]~72_combout\ : std_logic;
SIGNAL \srl64[3][17]~78_combout\ : std_logic;
SIGNAL \Y_sra[1]~10_combout\ : std_logic;
SIGNAL \sra64[6][17]~8_combout\ : std_logic;
SIGNAL \srl64[2][10]~88_combout\ : std_logic;
SIGNAL \srl64[2][9]~89_combout\ : std_logic;
SIGNAL \srl64[2][13]~86_combout\ : std_logic;
SIGNAL \srl64[1][15]~84_combout\ : std_logic;
SIGNAL \srl64[1][15]~85_combout\ : std_logic;
SIGNAL \srl64[2][13]~87_combout\ : std_logic;
SIGNAL \srl64[3][9]~90_combout\ : std_logic;
SIGNAL \srl64[3][1]~82_combout\ : std_logic;
SIGNAL \srl64[3][1]~83_combout\ : std_logic;
SIGNAL \srl64[2][6]~80_combout\ : std_logic;
SIGNAL \srl64[3][1]~81_combout\ : std_logic;
SIGNAL \Y_srl[1]~5_combout\ : std_logic;
SIGNAL \Y_sra[1]~4_combout\ : std_logic;
SIGNAL \Y_sra[1]~5_combout\ : std_logic;
SIGNAL \Y_sra[1]~6_combout\ : std_logic;
SIGNAL \srl64[3][25]~64_combout\ : std_logic;
SIGNAL \srl64[2][29]~67_combout\ : std_logic;
SIGNAL \srl64[3][25]~68_combout\ : std_logic;
SIGNAL \Y_srl[1]~4_combout\ : std_logic;
SIGNAL \Y_srl[1]~6_combout\ : std_logic;
SIGNAL \srl64[6][17]~79_combout\ : std_logic;
SIGNAL \Y_srl[1]~7_combout\ : std_logic;
SIGNAL \sll64[1][1]~12_combout\ : std_logic;
SIGNAL \sll64[4][8]~11_combout\ : std_logic;
SIGNAL \sll64[6][1]~13_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \srl64[1][4]~91_combout\ : std_logic;
SIGNAL \srl64[2][14]~95_combout\ : std_logic;
SIGNAL \srl64[2][14]~96_combout\ : std_logic;
SIGNAL \srl64[2][10]~97_combout\ : std_logic;
SIGNAL \srl64[2][10]~98_combout\ : std_logic;
SIGNAL \srl64[3][10]~99_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \srl64[2][6]~92_combout\ : std_logic;
SIGNAL \srl64[2][6]~93_combout\ : std_logic;
SIGNAL \sra64[4][28]~9_combout\ : std_logic;
SIGNAL \srl64[1][2]~94_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \srl64[3][18]~100_combout\ : std_logic;
SIGNAL \sra64[3][26]~10_combout\ : std_logic;
SIGNAL \sra64[3][26]~11_combout\ : std_logic;
SIGNAL \sra64[3][26]~12_combout\ : std_logic;
SIGNAL \srl64[3][18]~101_combout\ : std_logic;
SIGNAL \srl64[4][18]~102_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \sra64[3][26]~13_combout\ : std_logic;
SIGNAL \sra64[4][18]~14_combout\ : std_logic;
SIGNAL \sra64[6][18]~15_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \srl64[6][18]~161_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \srl64[6][28]~160_combout\ : std_logic;
SIGNAL \sll64[2][2]~15_combout\ : std_logic;
SIGNAL \sll64[2][2]~16_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \srl64[1][3]~110_combout\ : std_logic;
SIGNAL \srl64[2][7]~109_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \srl64[2][11]~112_combout\ : std_logic;
SIGNAL \srl64[3][11]~111_combout\ : std_logic;
SIGNAL \srl64[3][11]~113_combout\ : std_logic;
SIGNAL \srl64[1][5]~108_combout\ : std_logic;
SIGNAL \Mux28~12_combout\ : std_logic;
SIGNAL \Mux28~13_combout\ : std_logic;
SIGNAL \srl64[3][19]~103_combout\ : std_logic;
SIGNAL \srl64[3][19]~104_combout\ : std_logic;
SIGNAL \srl64[3][19]~105_combout\ : std_logic;
SIGNAL \sra64[3][27]~17_combout\ : std_logic;
SIGNAL \sra64[3][25]~16_combout\ : std_logic;
SIGNAL \sra64[4][19]~18_combout\ : std_logic;
SIGNAL \srl64[3][27]~106_combout\ : std_logic;
SIGNAL \srl64[4][19]~107_combout\ : std_logic;
SIGNAL \sra64[6][19]~19_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \srl64[6][19]~114_combout\ : std_logic;
SIGNAL \Mux28~14_combout\ : std_logic;
SIGNAL \sll64[2][3]~17_combout\ : std_logic;
SIGNAL \sll64[2][3]~18_combout\ : std_logic;
SIGNAL \Mux28~15_combout\ : std_logic;
SIGNAL \srl64[3][20]~117_combout\ : std_logic;
SIGNAL \srl64[3][20]~118_combout\ : std_logic;
SIGNAL \srl64[3][20]~116_combout\ : std_logic;
SIGNAL \srl64[3][20]~115_combout\ : std_logic;
SIGNAL \srl64[3][20]~119_combout\ : std_logic;
SIGNAL \srl64[3][20]~120_combout\ : std_logic;
SIGNAL \srl64[4][20]~121_combout\ : std_logic;
SIGNAL \srl64[6][20]~162_combout\ : std_logic;
SIGNAL \sll64[2][4]~21_combout\ : std_logic;
SIGNAL \sll64[2][4]~20_combout\ : std_logic;
SIGNAL \sll64[2][4]~22_combout\ : std_logic;
SIGNAL \sll64[3][4]~19_combout\ : std_logic;
SIGNAL \sll64[3][4]~112_combout\ : std_logic;
SIGNAL \sll64[4][4]~23_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \sra64[4][20]~43_combout\ : std_logic;
SIGNAL \sra64[4][20]~20_combout\ : std_logic;
SIGNAL \sra64[6][20]~21_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \srl64[2][4]~123_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \srl64[2][8]~122_combout\ : std_logic;
SIGNAL \srl64[3][12]~124_combout\ : std_logic;
SIGNAL \srl64[3][12]~125_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~combout\ : std_logic;
SIGNAL \srl64[3][21]~126_combout\ : std_logic;
SIGNAL \srl64[3][21]~127_combout\ : std_logic;
SIGNAL \srl64[3][21]~128_combout\ : std_logic;
SIGNAL \srl64[4][21]~129_combout\ : std_logic;
SIGNAL \srl64[6][21]~163_combout\ : std_logic;
SIGNAL \sll64[2][5]~24_combout\ : std_logic;
SIGNAL \sll64[2][5]~25_combout\ : std_logic;
SIGNAL \sll64[4][13]~113_combout\ : std_logic;
SIGNAL \sll64[4][5]~26_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \srl64[3][13]~131_combout\ : std_logic;
SIGNAL \srl64[3][13]~132_combout\ : std_logic;
SIGNAL \sra64[4][21]~22_combout\ : std_logic;
SIGNAL \sra64[4][21]~23_combout\ : std_logic;
SIGNAL \sra64[6][21]~24_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \srl64[2][5]~130_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~combout\ : std_logic;
SIGNAL \srl64[3][22]~133_combout\ : std_logic;
SIGNAL \sra64[4][22]~25_combout\ : std_logic;
SIGNAL \srl64[1][28]~31_combout\ : std_logic;
SIGNAL \srl64[3][22]~134_combout\ : std_logic;
SIGNAL \sra64[4][22]~26_combout\ : std_logic;
SIGNAL \srl64[3][22]~135_combout\ : std_logic;
SIGNAL \srl64[4][22]~136_combout\ : std_logic;
SIGNAL \sra64[6][22]~27_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \srl64[3][14]~137_combout\ : std_logic;
SIGNAL \srl64[3][14]~138_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \sll64[2][6]~27_combout\ : std_logic;
SIGNAL \sll64[2][6]~28_combout\ : std_logic;
SIGNAL \sll64[4][6]~29_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \srl64[6][22]~164_combout\ : std_logic;
SIGNAL \Mux25~combout\ : std_logic;
SIGNAL \srl64[3][23]~140_combout\ : std_logic;
SIGNAL \srl64[3][23]~141_combout\ : std_logic;
SIGNAL \sra64[4][23]~28_combout\ : std_logic;
SIGNAL \srl64[3][23]~143_combout\ : std_logic;
SIGNAL \sra64[6][23]~29_combout\ : std_logic;
SIGNAL \srl64[4][23]~139_combout\ : std_logic;
SIGNAL \srl64[4][23]~142_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \srl64[3][15]~144_combout\ : std_logic;
SIGNAL \srl64[3][15]~145_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \srl64[6][23]~165_combout\ : std_logic;
SIGNAL \sll64[2][7]~30_combout\ : std_logic;
SIGNAL \sll64[2][7]~31_combout\ : std_logic;
SIGNAL \sll64[4][7]~32_combout\ : std_logic;
SIGNAL \Mux24~8_combout\ : std_logic;
SIGNAL \Mux24~combout\ : std_logic;
SIGNAL \srl64[4][24]~146_combout\ : std_logic;
SIGNAL \sra64[6][24]~31_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \sra64[4][24]~30_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \srl64[3][8]~147_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \srl64[6][24]~148_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \sll64[2][8]~33_combout\ : std_logic;
SIGNAL \sll64[2][8]~34_combout\ : std_logic;
SIGNAL \sll64[3][8]~35_combout\ : std_logic;
SIGNAL \sll64[4][8]~36_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \sra64[3][25]~7_combout\ : std_logic;
SIGNAL \sra64[6][25]~33_combout\ : std_logic;
SIGNAL \srl64[4][25]~149_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \sra64[4][25]~32_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \srl64[6][25]~150_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \sll64[2][10]~37_combout\ : std_logic;
SIGNAL \sll64[2][9]~38_combout\ : std_logic;
SIGNAL \sll64[3][9]~39_combout\ : std_logic;
SIGNAL \sll64[4][9]~40_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \srl64[6][26]~152_combout\ : std_logic;
SIGNAL \sra64[6][26]~34_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \srl64[3][18]~151_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \sll64[2][10]~41_combout\ : std_logic;
SIGNAL \sll64[2][10]~42_combout\ : std_logic;
SIGNAL \sll64[3][10]~43_combout\ : std_logic;
SIGNAL \sll64[4][10]~44_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \sra64[4][27]~35_combout\ : std_logic;
SIGNAL \sra64[6][27]~36_combout\ : std_logic;
SIGNAL \srl64[4][27]~153_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \srl64[6][27]~154_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \sll64[2][11]~45_combout\ : std_logic;
SIGNAL \sll64[2][11]~46_combout\ : std_logic;
SIGNAL \sll64[3][11]~47_combout\ : std_logic;
SIGNAL \sll64[4][11]~48_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \sll64[2][12]~49_combout\ : std_logic;
SIGNAL \sll64[2][12]~50_combout\ : std_logic;
SIGNAL \sll64[3][12]~51_combout\ : std_logic;
SIGNAL \sll64[4][12]~52_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \sra64[4][28]~37_combout\ : std_logic;
SIGNAL \sra64[6][28]~38_combout\ : std_logic;
SIGNAL \srl64[4][28]~155_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \srl64[6][28]~156_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \sra64[4][29]~39_combout\ : std_logic;
SIGNAL \srl64[4][29]~166_combout\ : std_logic;
SIGNAL \sra64[6][29]~40_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \srl64[6][29]~157_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \sll64[2][14]~53_combout\ : std_logic;
SIGNAL \sll64[2][13]~54_combout\ : std_logic;
SIGNAL \sll64[3][13]~55_combout\ : std_logic;
SIGNAL \sll64[4][13]~56_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \srl64[6][30]~158_combout\ : std_logic;
SIGNAL \srl64[4][30]~167_combout\ : std_logic;
SIGNAL \sra64[4][30]~41_combout\ : std_logic;
SIGNAL \sra64[6][30]~42_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \sll64[2][15]~58_combout\ : std_logic;
SIGNAL \sll64[2][14]~59_combout\ : std_logic;
SIGNAL \sll64[3][14]~60_combout\ : std_logic;
SIGNAL \sll64[4][14]~57_combout\ : std_logic;
SIGNAL \sll64[4][14]~61_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Y_sra[15]~7_combout\ : std_logic;
SIGNAL \Y_sra[15]~8_combout\ : std_logic;
SIGNAL \sll64[4][15]~62_combout\ : std_logic;
SIGNAL \sll64[2][15]~63_combout\ : std_logic;
SIGNAL \sll64[2][15]~64_combout\ : std_logic;
SIGNAL \sll64[3][15]~65_combout\ : std_logic;
SIGNAL \Y_sll[15]~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Y_srl[15]~9_combout\ : std_logic;
SIGNAL \Y_srl[15]~10_combout\ : std_logic;
SIGNAL \Y_srl[31]~8_combout\ : std_logic;
SIGNAL \Y_srl[15]~11_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \sll64[4][0]~69_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \sll64[2][16]~66_combout\ : std_logic;
SIGNAL \sll64[2][16]~67_combout\ : std_logic;
SIGNAL \sll64[3][16]~68_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \sll64[4][1]~114_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \sll64[2][17]~70_combout\ : std_logic;
SIGNAL \sll64[2][17]~71_combout\ : std_logic;
SIGNAL \sll64[2][17]~72_combout\ : std_logic;
SIGNAL \sll64[3][17]~73_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \sll64[4][2]~115_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \sll64[2][18]~75_combout\ : std_logic;
SIGNAL \sll64[2][18]~74_combout\ : std_logic;
SIGNAL \sll64[2][18]~76_combout\ : std_logic;
SIGNAL \sll64[3][18]~77_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \sll64[4][3]~82_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \sll64[2][20]~79_combout\ : std_logic;
SIGNAL \sll64[2][19]~78_combout\ : std_logic;
SIGNAL \sll64[2][19]~80_combout\ : std_logic;
SIGNAL \sll64[3][19]~81_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \sll64[2][20]~83_combout\ : std_logic;
SIGNAL \sll64[2][20]~84_combout\ : std_logic;
SIGNAL \sll64[3][20]~85_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \sll64[2][21]~86_combout\ : std_logic;
SIGNAL \sll64[2][21]~87_combout\ : std_logic;
SIGNAL \sll64[3][21]~88_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \sll64[2][22]~89_combout\ : std_logic;
SIGNAL \sll64[2][22]~90_combout\ : std_logic;
SIGNAL \sll64[3][22]~91_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \sll64[2][24]~92_combout\ : std_logic;
SIGNAL \sll64[3][23]~93_combout\ : std_logic;
SIGNAL \sll64[3][23]~94_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \sll64[2][24]~95_combout\ : std_logic;
SIGNAL \sll64[2][24]~96_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~combout\ : std_logic;
SIGNAL \sll64[2][25]~97_combout\ : std_logic;
SIGNAL \sll64[2][25]~98_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~combout\ : std_logic;
SIGNAL \sll64[2][27]~99_combout\ : std_logic;
SIGNAL \sll64[2][26]~100_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \sll64[2][27]~102_combout\ : std_logic;
SIGNAL \sll64[2][27]~103_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \sll64[2][23]~101_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \sll64[1][28]~105_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \sll64[1][26]~104_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \sll64[1][29]~107_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \sll64[1][27]~106_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Y_sra[30]~9_combout\ : std_logic;
SIGNAL \sll64[3][30]~110_combout\ : std_logic;
SIGNAL \sll64[3][30]~108_combout\ : std_logic;
SIGNAL \sll64[3][30]~109_combout\ : std_logic;
SIGNAL \sll64[3][30]~111_combout\ : std_logic;
SIGNAL \Y_sll[30]~1_combout\ : std_logic;
SIGNAL \Y_sll[30]~2_combout\ : std_logic;
SIGNAL \Y_sll[30]~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Y_srl[30]~12_combout\ : std_logic;
SIGNAL \Y_srl[30]~13_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Y_sll[31]~5_combout\ : std_logic;
SIGNAL \Y_sll[31]~6_combout\ : std_logic;
SIGNAL \Y_sll[31]~7_combout\ : std_logic;
SIGNAL \Y_sll[31]~8_combout\ : std_logic;
SIGNAL \Y_sll[31]~4_combout\ : std_logic;
SIGNAL \Y_sll[31]~9_combout\ : std_logic;
SIGNAL \Y_sll[31]~10_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

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

-- Location: IOOBUF_X98_Y73_N23
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~1_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~6_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~15_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~5_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~5_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~6_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~6_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~5_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~5_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~5_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~1_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~7_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~5_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~5_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~5_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~5_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~5_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~5_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~5_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~6_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~8_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

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

-- Location: IOIBUF_X52_Y73_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X68_Y63_N2
\srl64[2][11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][11]~52_combout\ = (\B[1]~input_o\ & ((\A[14]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[1]~input_o\,
	combout => \srl64[2][11]~52_combout\);

-- Location: IOIBUF_X52_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X68_Y63_N8
\srl64[2][12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][12]~51_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[15]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][12]~51_combout\);

-- Location: LCCOMB_X68_Y63_N28
\srl64[2][12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][12]~53_combout\ = (\srl64[2][12]~51_combout\) # ((!\B[0]~input_o\ & \srl64[2][11]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[2][11]~52_combout\,
	datac => \srl64[2][12]~51_combout\,
	combout => \srl64[2][12]~53_combout\);

-- Location: IOIBUF_X58_Y73_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X96_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X72_Y67_N24
\srl64[2][5]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][5]~49_combout\ = (\B[1]~input_o\ & (\A[7]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[5]~input_o\,
	combout => \srl64[2][5]~49_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X72_Y63_N12
\srl64[2][4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][4]~48_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[6]~input_o\))) # (!\B[1]~input_o\ & (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][4]~48_combout\);

-- Location: IOIBUF_X72_Y73_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X69_Y63_N24
\srl64[4][0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][0]~50_combout\ = (!\B[3]~input_o\ & ((\srl64[2][4]~48_combout\) # ((\srl64[2][5]~49_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][5]~49_combout\,
	datab => \srl64[2][4]~48_combout\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \srl64[4][0]~50_combout\);

-- Location: IOIBUF_X83_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X69_Y62_N26
\srl64[4][0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][0]~54_combout\ = (\B[2]~input_o\ & ((\srl64[4][0]~50_combout\) # ((\srl64[2][12]~53_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][12]~53_combout\,
	datab => \srl64[4][0]~50_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \srl64[4][0]~54_combout\);

-- Location: IOIBUF_X67_Y73_N1
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X72_Y63_N0
\srl64[1][22]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][22]~33_combout\ = (!\B[0]~input_o\ & ((\ExtWord~input_o\ & (\A[6]~input_o\)) # (!\ExtWord~input_o\ & ((\A[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[22]~input_o\,
	combout => \srl64[1][22]~33_combout\);

-- Location: IOIBUF_X85_Y73_N22
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X69_Y65_N22
\srl64[1][22]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][22]~34_combout\ = (\B[0]~input_o\ & ((\ExtWord~input_o\ & (\A[7]~input_o\)) # (!\ExtWord~input_o\ & ((\A[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[23]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][22]~34_combout\);

-- Location: LCCOMB_X69_Y65_N8
\srl64[1][22]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][22]~35_combout\ = (\srl64[1][22]~33_combout\) # (\srl64[1][22]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][22]~33_combout\,
	datac => \srl64[1][22]~34_combout\,
	combout => \srl64[1][22]~35_combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X73_Y68_N8
\srl64[1][19]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][19]~40_combout\ = (\ExtWord~input_o\ & ((\A[4]~input_o\))) # (!\ExtWord~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[4]~input_o\,
	combout => \srl64[1][19]~40_combout\);

-- Location: IOIBUF_X83_Y73_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X72_Y63_N2
\srl64[1][20]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][20]~39_combout\ = (\B[0]~input_o\ & ((\ExtWord~input_o\ & ((\A[5]~input_o\))) # (!\ExtWord~input_o\ & (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[1][20]~39_combout\);

-- Location: LCCOMB_X69_Y65_N18
\srl64[1][20]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][20]~41_combout\ = (\srl64[1][20]~39_combout\) # ((!\B[0]~input_o\ & \srl64[1][19]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \srl64[1][19]~40_combout\,
	datad => \srl64[1][20]~39_combout\,
	combout => \srl64[1][20]~41_combout\);

-- Location: IOIBUF_X115_Y62_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X73_Y63_N26
\srl64[1][16]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][16]~42_combout\ = (!\B[0]~input_o\ & ((\ExtWord~input_o\ & (\A[0]~input_o\)) # (!\ExtWord~input_o\ & ((\A[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[16]~input_o\,
	combout => \srl64[1][16]~42_combout\);

-- Location: IOIBUF_X83_Y73_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X73_Y63_N12
\srl64[1][16]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][16]~43_combout\ = (\ExtWord~input_o\ & ((\A[1]~input_o\))) # (!\ExtWord~input_o\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[1]~input_o\,
	combout => \srl64[1][16]~43_combout\);

-- Location: LCCOMB_X73_Y63_N30
\srl64[1][16]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][16]~44_combout\ = (\srl64[1][16]~42_combout\) # ((\B[0]~input_o\ & \srl64[1][16]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][16]~42_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][16]~43_combout\,
	combout => \srl64[1][16]~44_combout\);

-- Location: LCCOMB_X69_Y61_N26
\srl64[3][16]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][16]~45_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\) # ((\srl64[1][20]~41_combout\)))) # (!\B[2]~input_o\ & (!\B[1]~input_o\ & ((\srl64[1][16]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \srl64[1][20]~41_combout\,
	datad => \srl64[1][16]~44_combout\,
	combout => \srl64[3][16]~45_combout\);

-- Location: IOIBUF_X89_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X73_Y63_N0
\srl64[1][17]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][17]~37_combout\ = (\ExtWord~input_o\ & (\A[2]~input_o\)) # (!\ExtWord~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[18]~input_o\,
	combout => \srl64[1][17]~37_combout\);

-- Location: IOIBUF_X83_Y73_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X75_Y65_N16
\srl64[1][18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][18]~36_combout\ = (\ExtWord~input_o\ & ((\A[3]~input_o\))) # (!\ExtWord~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[19]~input_o\,
	datad => \A[3]~input_o\,
	combout => \srl64[1][18]~36_combout\);

-- Location: LCCOMB_X70_Y63_N8
\srl64[1][18]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][18]~38_combout\ = (\B[0]~input_o\ & ((\srl64[1][18]~36_combout\))) # (!\B[0]~input_o\ & (\srl64[1][17]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \srl64[1][17]~37_combout\,
	datad => \srl64[1][18]~36_combout\,
	combout => \srl64[1][18]~38_combout\);

-- Location: LCCOMB_X69_Y61_N12
\srl64[3][16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][16]~46_combout\ = (\B[1]~input_o\ & ((\srl64[3][16]~45_combout\ & (\srl64[1][22]~35_combout\)) # (!\srl64[3][16]~45_combout\ & ((\srl64[1][18]~38_combout\))))) # (!\B[1]~input_o\ & (((\srl64[3][16]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][22]~35_combout\,
	datab => \B[1]~input_o\,
	datac => \srl64[3][16]~45_combout\,
	datad => \srl64[1][18]~38_combout\,
	combout => \srl64[3][16]~46_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X69_Y65_N16
\srl64[1][25]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][25]~21_combout\ = (\ExtWord~input_o\ & (\A[10]~input_o\)) # (!\ExtWord~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \A[26]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][25]~21_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X70_Y66_N16
\srl64[1][26]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][26]~20_combout\ = (\B[0]~input_o\ & ((\ExtWord~input_o\ & (\A[11]~input_o\)) # (!\ExtWord~input_o\ & ((\A[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[27]~input_o\,
	combout => \srl64[1][26]~20_combout\);

-- Location: LCCOMB_X69_Y65_N26
\srl64[1][26]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][26]~22_combout\ = (\srl64[1][26]~20_combout\) # ((\srl64[1][25]~21_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][25]~21_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][26]~20_combout\,
	combout => \srl64[1][26]~22_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X73_Y69_N24
\srl64[1][23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][23]~24_combout\ = (\ExtWord~input_o\ & (\A[8]~input_o\)) # (!\ExtWord~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[24]~input_o\,
	combout => \srl64[1][23]~24_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X68_Y65_N8
\srl64[1][24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][24]~23_combout\ = (\ExtWord~input_o\ & ((\A[9]~input_o\))) # (!\ExtWord~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[9]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \srl64[1][24]~23_combout\);

-- Location: LCCOMB_X69_Y65_N4
\srl64[1][24]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][24]~25_combout\ = (\B[0]~input_o\ & ((\srl64[1][24]~23_combout\))) # (!\B[0]~input_o\ & (\srl64[1][23]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \srl64[1][23]~24_combout\,
	datad => \srl64[1][24]~23_combout\,
	combout => \srl64[1][24]~25_combout\);

-- Location: LCCOMB_X69_Y61_N0
\srl64[3][24]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][24]~26_combout\ = (!\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][26]~22_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][24]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][26]~22_combout\,
	datab => \B[1]~input_o\,
	datac => \srl64[1][24]~25_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][24]~26_combout\);

-- Location: IOIBUF_X65_Y73_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X70_Y66_N2
\srl64[1][28]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][28]~29_combout\ = (!\B[0]~input_o\ & ((\ExtWord~input_o\ & (\A[12]~input_o\)) # (!\ExtWord~input_o\ & ((\A[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[28]~input_o\,
	combout => \srl64[1][28]~29_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X72_Y65_N8
\srl64[1][29]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][29]~27_combout\ = (\ExtWord~input_o\ & ((\A[14]~input_o\))) # (!\ExtWord~input_o\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \A[14]~input_o\,
	combout => \srl64[1][29]~27_combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X74_Y62_N24
\sra64[0][31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[0][31]~2_combout\ = (\ExtWord~input_o\ & (\A[15]~input_o\)) # (!\ExtWord~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[31]~input_o\,
	combout => \sra64[0][31]~2_combout\);

-- Location: LCCOMB_X72_Y65_N2
\srl64[1][30]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][30]~28_combout\ = (\B[0]~input_o\ & ((\sra64[0][31]~2_combout\))) # (!\B[0]~input_o\ & (\srl64[1][29]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][29]~27_combout\,
	datac => \B[0]~input_o\,
	datad => \sra64[0][31]~2_combout\,
	combout => \srl64[1][30]~28_combout\);

-- Location: IOIBUF_X67_Y73_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X70_Y66_N12
\srl64[1][28]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][28]~30_combout\ = (\B[0]~input_o\ & ((\ExtWord~input_o\ & (\A[13]~input_o\)) # (!\ExtWord~input_o\ & ((\A[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][28]~30_combout\);

-- Location: LCCOMB_X70_Y65_N12
\srl64[2][28]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][28]~159_combout\ = (\B[1]~input_o\ & (((\srl64[1][30]~28_combout\)))) # (!\B[1]~input_o\ & ((\srl64[1][28]~29_combout\) # ((\srl64[1][28]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][28]~29_combout\,
	datac => \srl64[1][30]~28_combout\,
	datad => \srl64[1][28]~30_combout\,
	combout => \srl64[2][28]~159_combout\);

-- Location: LCCOMB_X70_Y62_N18
\srl64[3][24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][24]~32_combout\ = (\srl64[3][24]~26_combout\) # ((\B[2]~input_o\ & \srl64[2][28]~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][24]~26_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][28]~159_combout\,
	combout => \srl64[3][24]~32_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X69_Y62_N28
\Y_srl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[0]~0_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\srl64[3][24]~32_combout\))) # (!\B[3]~input_o\ & (\srl64[3][16]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][16]~46_combout\,
	datab => \srl64[3][24]~32_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Y_srl[0]~0_combout\);

-- Location: LCCOMB_X68_Y65_N26
\srl64[2][9]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][9]~58_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[11]~input_o\,
	combout => \srl64[2][9]~58_combout\);

-- Location: LCCOMB_X69_Y63_N10
\srl64[2][8]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][8]~59_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[10]~input_o\,
	combout => \srl64[2][8]~59_combout\);

-- Location: LCCOMB_X69_Y63_N20
\srl64[2][8]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][8]~60_combout\ = (\B[0]~input_o\ & (\srl64[2][9]~58_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][8]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][9]~58_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[2][8]~59_combout\,
	combout => \srl64[2][8]~60_combout\);

-- Location: LCCOMB_X75_Y65_N10
\srl64[4][0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][0]~55_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[2]~input_o\)) # (!\B[1]~input_o\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \srl64[4][0]~55_combout\);

-- Location: LCCOMB_X75_Y65_N28
\srl64[3][1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][1]~56_combout\ = (\B[1]~input_o\ & ((\A[3]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \srl64[3][1]~56_combout\);

-- Location: LCCOMB_X75_Y65_N14
\srl64[4][0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][0]~57_combout\ = (!\B[3]~input_o\ & ((\srl64[4][0]~55_combout\) # ((\B[0]~input_o\ & \srl64[3][1]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][0]~55_combout\,
	datab => \B[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \srl64[3][1]~56_combout\,
	combout => \srl64[4][0]~57_combout\);

-- Location: LCCOMB_X69_Y62_N6
\Y_srl[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[0]~1_combout\ = (!\B[2]~input_o\ & ((\srl64[4][0]~57_combout\) # ((\srl64[2][8]~60_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][8]~60_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[4][0]~57_combout\,
	combout => \Y_srl[0]~1_combout\);

-- Location: LCCOMB_X69_Y62_N16
\Y_srl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[0]~2_combout\ = (\Y_srl[0]~0_combout\) # ((!\B[4]~input_o\ & ((\srl64[4][0]~54_combout\) # (\Y_srl[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][0]~54_combout\,
	datab => \Y_srl[0]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_srl[0]~1_combout\,
	combout => \Y_srl[0]~2_combout\);

-- Location: IOIBUF_X69_Y73_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X70_Y62_N24
\sll64[6][0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[6][0]~8_combout\ = (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \sll64[6][0]~8_combout\);

-- Location: LCCOMB_X69_Y62_N0
\srl64[6][16]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][16]~47_combout\ = (\sll64[6][0]~8_combout\ & ((\B[3]~input_o\ & ((\srl64[3][24]~32_combout\))) # (!\B[3]~input_o\ & (\srl64[3][16]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][16]~46_combout\,
	datab => \srl64[3][24]~32_combout\,
	datac => \sll64[6][0]~8_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[6][16]~47_combout\);

-- Location: LCCOMB_X74_Y62_N10
\Y_srl[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[0]~3_combout\ = (\ExtWord~input_o\ & (((\srl64[6][16]~47_combout\)))) # (!\ExtWord~input_o\ & (\Y_srl[0]~2_combout\ & ((!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[0]~2_combout\,
	datab => \srl64[6][16]~47_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y_srl[0]~3_combout\);

-- Location: LCCOMB_X70_Y62_N20
\sra64[6][16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][16]~3_combout\ = (\sra64[0][31]~2_combout\ & ((\B[4]~input_o\) # ((!\ExtWord~input_o\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[6][16]~3_combout\);

-- Location: LCCOMB_X74_Y62_N14
\sra64[6][16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][16]~4_combout\ = (\srl64[6][16]~47_combout\) # (\sra64[6][16]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \srl64[6][16]~47_combout\,
	datad => \sra64[6][16]~3_combout\,
	combout => \sra64[6][16]~4_combout\);

-- Location: LCCOMB_X74_Y62_N0
\Y_sra[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[0]~2_combout\ = (\ExtWord~input_o\ & (((\sra64[6][16]~4_combout\)))) # (!\ExtWord~input_o\ & (\B[5]~input_o\ & ((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \sra64[6][16]~4_combout\,
	datac => \A[31]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y_sra[0]~2_combout\);

-- Location: LCCOMB_X74_Y62_N18
\Y_sra[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[0]~3_combout\ = (\Y_sra[0]~2_combout\) # ((\Y_srl[0]~2_combout\ & (!\ExtWord~input_o\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[0]~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \Y_sra[0]~2_combout\,
	combout => \Y_sra[0]~3_combout\);

-- Location: IOIBUF_X72_Y73_N22
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X73_Y61_N24
\sll64[4][0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][0]~9_combout\ = (\B[1]~input_o\) # ((\B[3]~input_o\) # ((\B[2]~input_o\) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \sll64[4][0]~9_combout\);

-- Location: LCCOMB_X73_Y61_N10
\sll64[6][0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[6][0]~10_combout\ = (\sll64[6][0]~8_combout\ & (!\sll64[4][0]~9_combout\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \sll64[4][0]~9_combout\,
	datad => \A[0]~input_o\,
	combout => \sll64[6][0]~10_combout\);

-- Location: IOIBUF_X62_Y73_N15
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X74_Y62_N20
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\ShiftFN[0]~input_o\ & (((\sll64[6][0]~10_combout\) # (\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (\A[0]~input_o\ & ((!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sll64[6][0]~10_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X74_Y62_N4
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux31~0_combout\ & (((\Y_sra[0]~3_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux31~0_combout\ & (\Y_srl[0]~3_combout\ & ((\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[0]~3_combout\,
	datab => \Y_sra[0]~3_combout\,
	datac => \Mux31~0_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X70_Y66_N14
\srl64[1][27]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][27]~61_combout\ = (\B[0]~input_o\ & (((\A[12]~input_o\) # (!\ExtWord~input_o\)))) # (!\B[0]~input_o\ & (\A[11]~input_o\ & ((\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][27]~61_combout\);

-- Location: LCCOMB_X70_Y66_N8
\srl64[1][27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][27]~62_combout\ = (\ExtWord~input_o\ & (\srl64[1][27]~61_combout\)) # (!\ExtWord~input_o\ & ((\srl64[1][27]~61_combout\ & (\A[28]~input_o\)) # (!\srl64[1][27]~61_combout\ & ((\A[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[1][27]~61_combout\,
	datac => \A[28]~input_o\,
	datad => \A[27]~input_o\,
	combout => \srl64[1][27]~62_combout\);

-- Location: LCCOMB_X70_Y65_N4
\sll64[3][4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][4]~14_combout\ = (\B[2]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[3][4]~14_combout\);

-- Location: LCCOMB_X73_Y61_N12
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (!\B[2]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X73_Y65_N24
\srl64[1][28]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][28]~65_combout\ = (\ExtWord~input_o\ & ((\A[13]~input_o\))) # (!\ExtWord~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \A[13]~input_o\,
	combout => \srl64[1][28]~65_combout\);

-- Location: LCCOMB_X72_Y65_N4
\srl64[1][29]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][29]~66_combout\ = (\B[0]~input_o\ & (\srl64[1][29]~27_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][28]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][29]~27_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][28]~65_combout\,
	combout => \srl64[1][29]~66_combout\);

-- Location: LCCOMB_X70_Y65_N6
\sra64[3][25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][25]~5_combout\ = (\srl64[1][27]~62_combout\ & ((\Mux28~0_combout\) # ((\sll64[3][4]~14_combout\ & \srl64[1][29]~66_combout\)))) # (!\srl64[1][27]~62_combout\ & (\sll64[3][4]~14_combout\ & ((\srl64[1][29]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][27]~62_combout\,
	datab => \sll64[3][4]~14_combout\,
	datac => \Mux28~0_combout\,
	datad => \srl64[1][29]~66_combout\,
	combout => \sra64[3][25]~5_combout\);

-- Location: LCCOMB_X69_Y65_N12
\srl64[1][25]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][25]~63_combout\ = (\B[0]~input_o\ & ((\srl64[1][25]~21_combout\))) # (!\B[0]~input_o\ & (\srl64[1][24]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][24]~23_combout\,
	datab => \srl64[1][25]~21_combout\,
	datac => \B[0]~input_o\,
	combout => \srl64[1][25]~63_combout\);

-- Location: LCCOMB_X70_Y65_N0
\sra64[3][25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][25]~6_combout\ = (\B[1]~input_o\ & (\sra64[0][31]~2_combout\ & (\B[2]~input_o\))) # (!\B[1]~input_o\ & (((!\B[2]~input_o\ & \srl64[1][25]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \sra64[0][31]~2_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][25]~63_combout\,
	combout => \sra64[3][25]~6_combout\);

-- Location: LCCOMB_X72_Y63_N30
\srl64[1][21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][21]~73_combout\ = (\ExtWord~input_o\ & (\A[6]~input_o\)) # (!\ExtWord~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[22]~input_o\,
	combout => \srl64[1][21]~73_combout\);

-- Location: LCCOMB_X72_Y63_N8
\srl64[1][20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][20]~74_combout\ = (\ExtWord~input_o\ & ((\A[5]~input_o\))) # (!\ExtWord~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[5]~input_o\,
	combout => \srl64[1][20]~74_combout\);

-- Location: LCCOMB_X72_Y62_N2
\srl64[3][15]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][15]~75_combout\ = (\B[2]~input_o\ & ((\B[0]~input_o\ & (\srl64[1][21]~73_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][20]~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \srl64[1][21]~73_combout\,
	datad => \srl64[1][20]~74_combout\,
	combout => \srl64[3][15]~75_combout\);

-- Location: LCCOMB_X73_Y63_N8
\srl64[1][17]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][17]~76_combout\ = (\B[0]~input_o\ & ((\srl64[1][17]~37_combout\))) # (!\B[0]~input_o\ & (\srl64[1][16]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][16]~43_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][17]~37_combout\,
	combout => \srl64[1][17]~76_combout\);

-- Location: LCCOMB_X72_Y62_N20
\srl64[3][15]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][15]~77_combout\ = (\srl64[3][15]~75_combout\) # ((!\B[2]~input_o\ & \srl64[1][17]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][15]~75_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][17]~76_combout\,
	combout => \srl64[3][15]~77_combout\);

-- Location: LCCOMB_X69_Y65_N24
\srl64[1][19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][19]~71_combout\ = (\B[0]~input_o\ & (\srl64[1][19]~40_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][18]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][19]~40_combout\,
	datab => \srl64[1][18]~36_combout\,
	datac => \B[0]~input_o\,
	combout => \srl64[1][19]~71_combout\);

-- Location: LCCOMB_X68_Y65_N28
\srl64[1][22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][22]~69_combout\ = (\ExtWord~input_o\ & (\A[7]~input_o\)) # (!\ExtWord~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[23]~input_o\,
	combout => \srl64[1][22]~69_combout\);

-- Location: LCCOMB_X69_Y65_N6
\srl64[1][23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][23]~70_combout\ = (\B[0]~input_o\ & (\srl64[1][23]~24_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][22]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][23]~24_combout\,
	datab => \srl64[1][22]~69_combout\,
	datac => \B[0]~input_o\,
	combout => \srl64[1][23]~70_combout\);

-- Location: LCCOMB_X72_Y62_N24
\srl64[3][17]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][17]~72_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & ((\srl64[1][23]~70_combout\))) # (!\B[2]~input_o\ & (\srl64[1][19]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \srl64[1][19]~71_combout\,
	datad => \srl64[1][23]~70_combout\,
	combout => \srl64[3][17]~72_combout\);

-- Location: LCCOMB_X72_Y62_N14
\srl64[3][17]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][17]~78_combout\ = (\srl64[3][17]~72_combout\) # ((!\B[1]~input_o\ & \srl64[3][15]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[3][15]~77_combout\,
	datad => \srl64[3][17]~72_combout\,
	combout => \srl64[3][17]~78_combout\);

-- Location: LCCOMB_X73_Y62_N6
\Y_sra[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[1]~10_combout\ = (\B[3]~input_o\ & ((\sra64[3][25]~5_combout\) # ((\sra64[3][25]~6_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][17]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][25]~5_combout\,
	datab => \B[3]~input_o\,
	datac => \sra64[3][25]~6_combout\,
	datad => \srl64[3][17]~78_combout\,
	combout => \Y_sra[1]~10_combout\);

-- Location: LCCOMB_X73_Y62_N12
\sra64[6][17]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][17]~8_combout\ = (\sra64[6][16]~3_combout\) # ((\sll64[6][0]~8_combout\ & \Y_sra[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][16]~3_combout\,
	datac => \sll64[6][0]~8_combout\,
	datad => \Y_sra[1]~10_combout\,
	combout => \sra64[6][17]~8_combout\);

-- Location: LCCOMB_X68_Y63_N16
\srl64[2][10]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][10]~88_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \srl64[2][10]~88_combout\);

-- Location: LCCOMB_X69_Y63_N16
\srl64[2][9]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][9]~89_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\srl64[2][10]~88_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][9]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[2][10]~88_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[2][9]~58_combout\,
	combout => \srl64[2][9]~89_combout\);

-- Location: LCCOMB_X68_Y63_N30
\srl64[2][13]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][13]~86_combout\ = (\B[0]~input_o\ & ((\A[14]~input_o\))) # (!\B[0]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][13]~86_combout\);

-- Location: LCCOMB_X73_Y63_N18
\srl64[1][15]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][15]~84_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\A[16]~input_o\))) # (!\B[0]~input_o\ & (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[16]~input_o\,
	combout => \srl64[1][15]~84_combout\);

-- Location: LCCOMB_X73_Y63_N20
\srl64[1][15]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][15]~85_combout\ = (\srl64[1][15]~84_combout\) # ((\ExtWord~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \srl64[1][15]~84_combout\,
	combout => \srl64[1][15]~85_combout\);

-- Location: LCCOMB_X72_Y62_N8
\srl64[2][13]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][13]~87_combout\ = (\B[1]~input_o\ & (((\srl64[1][15]~85_combout\)))) # (!\B[1]~input_o\ & (\srl64[2][13]~86_combout\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][13]~86_combout\,
	datab => \ExtWord~input_o\,
	datac => \srl64[1][15]~85_combout\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][13]~87_combout\);

-- Location: LCCOMB_X72_Y62_N26
\srl64[3][9]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][9]~90_combout\ = (\B[2]~input_o\ & ((\srl64[2][13]~87_combout\))) # (!\B[2]~input_o\ & (\srl64[2][9]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][9]~89_combout\,
	datab => \srl64[2][13]~87_combout\,
	datac => \B[2]~input_o\,
	combout => \srl64[3][9]~90_combout\);

-- Location: LCCOMB_X75_Y65_N0
\srl64[3][1]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][1]~82_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[4]~input_o\))) # (!\B[1]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \srl64[3][1]~82_combout\);

-- Location: LCCOMB_X75_Y65_N2
\srl64[3][1]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][1]~83_combout\ = (!\B[2]~input_o\ & ((\srl64[3][1]~82_combout\) # ((!\B[0]~input_o\ & \srl64[3][1]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[3][1]~56_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[3][1]~82_combout\,
	combout => \srl64[3][1]~83_combout\);

-- Location: LCCOMB_X72_Y63_N10
\srl64[2][6]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][6]~80_combout\ = (\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][6]~80_combout\);

-- Location: LCCOMB_X69_Y63_N30
\srl64[3][1]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][1]~81_combout\ = (\B[2]~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][6]~80_combout\))) # (!\B[0]~input_o\ & (\srl64[2][5]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][5]~49_combout\,
	datab => \srl64[2][6]~80_combout\,
	datac => \B[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][1]~81_combout\);

-- Location: LCCOMB_X73_Y62_N20
\Y_srl[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[1]~5_combout\ = (\B[3]~input_o\ & (\srl64[3][9]~90_combout\)) # (!\B[3]~input_o\ & (((\srl64[3][1]~83_combout\) # (\srl64[3][1]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][9]~90_combout\,
	datab => \B[3]~input_o\,
	datac => \srl64[3][1]~83_combout\,
	datad => \srl64[3][1]~81_combout\,
	combout => \Y_srl[1]~5_combout\);

-- Location: LCCOMB_X73_Y62_N14
\Y_sra[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[1]~4_combout\ = (\B[4]~input_o\ & (\Y_sra[1]~10_combout\)) # (!\B[4]~input_o\ & ((\Y_srl[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sra[1]~10_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_srl[1]~5_combout\,
	combout => \Y_sra[1]~4_combout\);

-- Location: LCCOMB_X74_Y62_N6
\Y_sra[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[1]~5_combout\ = (\B[5]~input_o\ & (\A[31]~input_o\)) # (!\B[5]~input_o\ & ((\Y_sra[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Y_sra[1]~4_combout\,
	combout => \Y_sra[1]~5_combout\);

-- Location: LCCOMB_X73_Y65_N30
\Y_sra[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[1]~6_combout\ = (\ExtWord~input_o\ & (\sra64[6][17]~8_combout\)) # (!\ExtWord~input_o\ & ((\Y_sra[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][17]~8_combout\,
	datab => \ExtWord~input_o\,
	datac => \Y_sra[1]~5_combout\,
	combout => \Y_sra[1]~6_combout\);

-- Location: LCCOMB_X70_Y65_N18
\srl64[3][25]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][25]~64_combout\ = (!\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][27]~62_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][25]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][27]~62_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][25]~63_combout\,
	combout => \srl64[3][25]~64_combout\);

-- Location: LCCOMB_X70_Y64_N16
\srl64[2][29]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][29]~67_combout\ = (\B[1]~input_o\ & (((!\B[0]~input_o\ & \sra64[0][31]~2_combout\)))) # (!\B[1]~input_o\ & (\srl64[1][29]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][29]~66_combout\,
	datab => \B[0]~input_o\,
	datac => \sra64[0][31]~2_combout\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][29]~67_combout\);

-- Location: LCCOMB_X70_Y64_N26
\srl64[3][25]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][25]~68_combout\ = (\srl64[3][25]~64_combout\) # ((\srl64[2][29]~67_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][25]~64_combout\,
	datac => \srl64[2][29]~67_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][25]~68_combout\);

-- Location: LCCOMB_X73_Y62_N10
\Y_srl[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[1]~4_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\srl64[3][25]~68_combout\))) # (!\B[3]~input_o\ & (\srl64[3][17]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][17]~78_combout\,
	datab => \srl64[3][25]~68_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Y_srl[1]~4_combout\);

-- Location: LCCOMB_X73_Y62_N30
\Y_srl[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[1]~6_combout\ = (\Y_srl[1]~4_combout\) # ((!\B[4]~input_o\ & \Y_srl[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[1]~4_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_srl[1]~5_combout\,
	combout => \Y_srl[1]~6_combout\);

-- Location: LCCOMB_X73_Y62_N24
\srl64[6][17]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][17]~79_combout\ = (\sll64[6][0]~8_combout\ & ((\B[3]~input_o\ & ((\srl64[3][25]~68_combout\))) # (!\B[3]~input_o\ & (\srl64[3][17]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][17]~78_combout\,
	datab => \srl64[3][25]~68_combout\,
	datac => \sll64[6][0]~8_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[6][17]~79_combout\);

-- Location: LCCOMB_X73_Y62_N16
\Y_srl[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[1]~7_combout\ = (\ExtWord~input_o\ & (((\srl64[6][17]~79_combout\)))) # (!\ExtWord~input_o\ & (\Y_srl[1]~6_combout\ & (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[1]~6_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \srl64[6][17]~79_combout\,
	combout => \Y_srl[1]~7_combout\);

-- Location: LCCOMB_X73_Y63_N6
\sll64[1][1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][1]~12_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \sll64[1][1]~12_combout\);

-- Location: LCCOMB_X73_Y67_N8
\sll64[4][8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][8]~11_combout\ = (!\B[1]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \sll64[4][8]~11_combout\);

-- Location: LCCOMB_X73_Y65_N26
\sll64[6][1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[6][1]~13_combout\ = (\sll64[6][0]~8_combout\ & (\sll64[1][1]~12_combout\ & (!\B[3]~input_o\ & \sll64[4][8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \sll64[1][1]~12_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[4][8]~11_combout\,
	combout => \sll64[6][1]~13_combout\);

-- Location: LCCOMB_X73_Y65_N28
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\) # ((\sll64[6][1]~13_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & ((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \sll64[6][1]~13_combout\,
	datad => \A[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X73_Y65_N16
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux30~0_combout\ & (\Y_sra[1]~6_combout\)) # (!\Mux30~0_combout\ & ((\Y_srl[1]~7_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sra[1]~6_combout\,
	datab => \Y_srl[1]~7_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux30~0_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X72_Y63_N20
\srl64[1][4]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][4]~91_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[5]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \srl64[1][4]~91_combout\);

-- Location: LCCOMB_X68_Y63_N10
\srl64[2][14]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][14]~95_combout\ = (\B[0]~input_o\ & (\A[15]~input_o\)) # (!\B[0]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][14]~95_combout\);

-- Location: LCCOMB_X68_Y63_N20
\srl64[2][14]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][14]~96_combout\ = (\B[1]~input_o\ & (((\srl64[1][16]~44_combout\)))) # (!\B[1]~input_o\ & (\srl64[2][14]~95_combout\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][14]~95_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[1]~input_o\,
	datad => \srl64[1][16]~44_combout\,
	combout => \srl64[2][14]~96_combout\);

-- Location: LCCOMB_X68_Y63_N6
\srl64[2][10]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][10]~97_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[11]~input_o\,
	combout => \srl64[2][10]~97_combout\);

-- Location: LCCOMB_X68_Y63_N0
\srl64[2][10]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][10]~98_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\srl64[2][10]~97_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][10]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][10]~97_combout\,
	datab => \ExtWord~input_o\,
	datac => \srl64[2][10]~88_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][10]~98_combout\);

-- Location: LCCOMB_X69_Y64_N18
\srl64[3][10]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][10]~99_combout\ = (\B[2]~input_o\ & (\srl64[2][14]~96_combout\)) # (!\B[2]~input_o\ & ((\srl64[2][10]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][14]~96_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][10]~98_combout\,
	combout => \srl64[3][10]~99_combout\);

-- Location: LCCOMB_X72_Y66_N16
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X68_Y65_N6
\srl64[2][6]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][6]~92_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[7]~input_o\,
	combout => \srl64[2][6]~92_combout\);

-- Location: LCCOMB_X69_Y63_N2
\srl64[2][6]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][6]~93_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\srl64[2][6]~92_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][6]~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[2][6]~92_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[2][6]~80_combout\,
	combout => \srl64[2][6]~93_combout\);

-- Location: LCCOMB_X73_Y67_N18
\sra64[4][28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][28]~9_combout\ = (!\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \sra64[4][28]~9_combout\);

-- Location: LCCOMB_X75_Y65_N24
\srl64[1][2]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][2]~94_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\A[3]~input_o\))) # (!\B[0]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \srl64[1][2]~94_combout\);

-- Location: LCCOMB_X69_Y64_N0
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\sra64[4][28]~9_combout\ & (((!\Mux28~1_combout\ & \srl64[1][2]~94_combout\)))) # (!\sra64[4][28]~9_combout\ & ((\srl64[2][6]~93_combout\) # ((\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][6]~93_combout\,
	datab => \sra64[4][28]~9_combout\,
	datac => \Mux28~1_combout\,
	datad => \srl64[1][2]~94_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X69_Y64_N4
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux28~1_combout\ & ((\Mux29~0_combout\ & ((\srl64[3][10]~99_combout\))) # (!\Mux29~0_combout\ & (\srl64[1][4]~91_combout\)))) # (!\Mux28~1_combout\ & (((\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][4]~91_combout\,
	datab => \srl64[3][10]~99_combout\,
	datac => \Mux28~1_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X72_Y61_N10
\Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\) # ((\B[4]~input_o\) # (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X74_Y66_N16
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\B[4]~input_o\) # ((\ExtWord~input_o\) # (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X72_Y61_N0
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\ShiftFN[1]~input_o\ & (((\ExtWord~input_o\ & !\ShiftFN[0]~input_o\)) # (!\Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux28~2_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X69_Y61_N22
\srl64[3][18]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][18]~100_combout\ = (\Mux28~0_combout\ & ((\srl64[1][20]~41_combout\) # ((\srl64[1][18]~38_combout\ & \sll64[4][8]~11_combout\)))) # (!\Mux28~0_combout\ & (\srl64[1][18]~38_combout\ & ((\sll64[4][8]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \srl64[1][18]~38_combout\,
	datac => \srl64[1][20]~41_combout\,
	datad => \sll64[4][8]~11_combout\,
	combout => \srl64[3][18]~100_combout\);

-- Location: LCCOMB_X70_Y65_N2
\sra64[3][26]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][26]~10_combout\ = (\B[1]~input_o\ & (!\B[2]~input_o\ & ((\srl64[1][28]~29_combout\) # (\srl64[1][28]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][28]~29_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][28]~30_combout\,
	combout => \sra64[3][26]~10_combout\);

-- Location: LCCOMB_X69_Y65_N2
\sra64[3][26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][26]~11_combout\ = (\sll64[4][8]~11_combout\ & ((\srl64[1][26]~20_combout\) # ((\srl64[1][25]~21_combout\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][26]~20_combout\,
	datab => \srl64[1][25]~21_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[4][8]~11_combout\,
	combout => \sra64[3][26]~11_combout\);

-- Location: LCCOMB_X69_Y65_N28
\sra64[3][26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][26]~12_combout\ = (!\sra64[3][26]~10_combout\ & (!\sra64[3][26]~11_combout\ & ((!\srl64[1][30]~28_combout\) # (!\sll64[3][4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][26]~10_combout\,
	datab => \sll64[3][4]~14_combout\,
	datac => \srl64[1][30]~28_combout\,
	datad => \sra64[3][26]~11_combout\,
	combout => \sra64[3][26]~12_combout\);

-- Location: LCCOMB_X69_Y61_N24
\srl64[3][18]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][18]~101_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][24]~25_combout\))) # (!\B[1]~input_o\ & (\srl64[1][22]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][22]~35_combout\,
	datab => \B[1]~input_o\,
	datac => \srl64[1][24]~25_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][18]~101_combout\);

-- Location: LCCOMB_X69_Y64_N10
\srl64[4][18]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][18]~102_combout\ = (\B[3]~input_o\ & (((!\sra64[3][26]~12_combout\)))) # (!\B[3]~input_o\ & ((\srl64[3][18]~100_combout\) # ((\srl64[3][18]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][18]~100_combout\,
	datab => \sra64[3][26]~12_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][18]~101_combout\,
	combout => \srl64[4][18]~102_combout\);

-- Location: LCCOMB_X72_Y64_N24
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\ExtWord~input_o\) # ((!\B[5]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X74_Y66_N10
\Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\ShiftFN[0]~input_o\ & ((\B[5]~input_o\) # (\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X69_Y64_N6
\sra64[3][26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][26]~13_combout\ = ((\B[1]~input_o\ & (\B[2]~input_o\ & \sra64[0][31]~2_combout\))) # (!\sra64[3][26]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \sra64[3][26]~12_combout\,
	datac => \B[2]~input_o\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[3][26]~13_combout\);

-- Location: LCCOMB_X69_Y64_N16
\sra64[4][18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][18]~14_combout\ = (\B[3]~input_o\ & (\sra64[3][26]~13_combout\)) # (!\B[3]~input_o\ & (((\srl64[3][18]~101_combout\) # (\srl64[3][18]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][26]~13_combout\,
	datab => \srl64[3][18]~101_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][18]~100_combout\,
	combout => \sra64[4][18]~14_combout\);

-- Location: LCCOMB_X70_Y61_N16
\sra64[6][18]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][18]~15_combout\ = (\sra64[6][16]~3_combout\) # ((\sll64[6][0]~8_combout\ & \sra64[4][18]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datac => \sra64[4][18]~14_combout\,
	datad => \sra64[6][16]~3_combout\,
	combout => \sra64[6][18]~15_combout\);

-- Location: LCCOMB_X70_Y61_N10
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & ((\sra64[6][18]~15_combout\))) # (!\Mux28~6_combout\ & (\srl64[4][18]~102_combout\)))) # (!\Mux28~5_combout\ & (((\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][18]~102_combout\,
	datab => \Mux28~5_combout\,
	datac => \Mux28~6_combout\,
	datad => \sra64[6][18]~15_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X72_Y65_N30
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\ExtWord~input_o\) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X70_Y61_N20
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux29~2_combout\ & ((\sra64[0][31]~2_combout\) # ((\Mux28~4_combout\)))) # (!\Mux29~2_combout\ & (((\sra64[4][18]~14_combout\ & !\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \sra64[0][31]~2_combout\,
	datac => \sra64[4][18]~14_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X72_Y61_N20
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Mux28~7_combout\ & ((\Mux28~3_combout\) # ((\Mux29~3_combout\)))) # (!\Mux28~7_combout\ & (!\Mux28~3_combout\ & ((\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \Mux28~3_combout\,
	datac => \Mux29~3_combout\,
	datad => \A[2]~input_o\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X72_Y61_N4
\srl64[6][18]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][18]~161_combout\ = (!\B[4]~input_o\ & (\srl64[4][18]~102_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \srl64[4][18]~102_combout\,
	combout => \srl64[6][18]~161_combout\);

-- Location: LCCOMB_X72_Y61_N14
\Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux29~4_combout\ & (((\srl64[6][18]~161_combout\) # (!\Mux28~3_combout\)))) # (!\Mux29~4_combout\ & (\Mux29~1_combout\ & ((\Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux29~4_combout\,
	datac => \srl64[6][18]~161_combout\,
	datad => \Mux28~3_combout\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X73_Y69_N18
\Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X72_Y61_N2
\srl64[6][28]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][28]~160_combout\ = (!\B[4]~input_o\ & (\sra64[4][28]~9_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \sra64[4][28]~9_combout\,
	combout => \srl64[6][28]~160_combout\);

-- Location: LCCOMB_X75_Y65_N12
\sll64[2][2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][2]~15_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[0]~input_o\))) # (!\B[1]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \sll64[2][2]~15_combout\);

-- Location: LCCOMB_X75_Y65_N22
\sll64[2][2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][2]~16_combout\ = (\sll64[2][2]~15_combout\) # ((!\B[1]~input_o\ & (\B[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][2]~15_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \sll64[2][2]~16_combout\);

-- Location: LCCOMB_X74_Y65_N0
\Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\Mux28~8_combout\ & (((\srl64[6][28]~160_combout\ & \sll64[2][2]~16_combout\)))) # (!\Mux28~8_combout\ & (\Mux29~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~5_combout\,
	datab => \Mux28~8_combout\,
	datac => \srl64[6][28]~160_combout\,
	datad => \sll64[2][2]~16_combout\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X72_Y61_N26
\srl64[1][3]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][3]~110_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[4]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[3]~input_o\,
	combout => \srl64[1][3]~110_combout\);

-- Location: LCCOMB_X69_Y63_N4
\srl64[2][7]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][7]~109_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][8]~59_combout\))) # (!\B[0]~input_o\ & (\srl64[2][6]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[2][6]~92_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[2][8]~59_combout\,
	combout => \srl64[2][7]~109_combout\);

-- Location: LCCOMB_X72_Y61_N12
\Mux28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (\Mux28~1_combout\ & (((!\sra64[4][28]~9_combout\)))) # (!\Mux28~1_combout\ & ((\sra64[4][28]~9_combout\ & (\srl64[1][3]~110_combout\)) # (!\sra64[4][28]~9_combout\ & ((\srl64[2][7]~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][3]~110_combout\,
	datab => \srl64[2][7]~109_combout\,
	datac => \Mux28~1_combout\,
	datad => \sra64[4][28]~9_combout\,
	combout => \Mux28~11_combout\);

-- Location: LCCOMB_X68_Y63_N26
\srl64[2][11]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][11]~112_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\srl64[2][11]~52_combout\))) # (!\B[0]~input_o\ & (\srl64[2][10]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][10]~97_combout\,
	datab => \srl64[2][11]~52_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][11]~112_combout\);

-- Location: LCCOMB_X72_Y62_N0
\srl64[3][11]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][11]~111_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][17]~76_combout\))) # (!\B[1]~input_o\ & (\srl64[1][15]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][15]~85_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][17]~76_combout\,
	combout => \srl64[3][11]~111_combout\);

-- Location: LCCOMB_X72_Y62_N10
\srl64[3][11]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][11]~113_combout\ = (\srl64[3][11]~111_combout\) # ((\srl64[2][11]~112_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][11]~112_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[3][11]~111_combout\,
	combout => \srl64[3][11]~113_combout\);

-- Location: LCCOMB_X72_Y63_N14
\srl64[1][5]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][5]~108_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\A[6]~input_o\))) # (!\B[0]~input_o\ & (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[1][5]~108_combout\);

-- Location: LCCOMB_X72_Y61_N30
\Mux28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~12_combout\ = (\Mux28~11_combout\ & ((\srl64[3][11]~113_combout\) # ((!\Mux28~1_combout\)))) # (!\Mux28~11_combout\ & (((\Mux28~1_combout\ & \srl64[1][5]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~11_combout\,
	datab => \srl64[3][11]~113_combout\,
	datac => \Mux28~1_combout\,
	datad => \srl64[1][5]~108_combout\,
	combout => \Mux28~12_combout\);

-- Location: LCCOMB_X72_Y61_N8
\Mux28~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~13_combout\ = (\Mux28~7_combout\ & (\Mux28~3_combout\)) # (!\Mux28~7_combout\ & ((\Mux28~3_combout\ & (\Mux28~12_combout\)) # (!\Mux28~3_combout\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \Mux28~3_combout\,
	datac => \Mux28~12_combout\,
	datad => \A[3]~input_o\,
	combout => \Mux28~13_combout\);

-- Location: LCCOMB_X72_Y62_N12
\srl64[3][19]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][19]~103_combout\ = (\Mux28~0_combout\ & ((\B[0]~input_o\ & ((\srl64[1][21]~73_combout\))) # (!\B[0]~input_o\ & (\srl64[1][20]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[1][20]~74_combout\,
	datac => \srl64[1][21]~73_combout\,
	datad => \Mux28~0_combout\,
	combout => \srl64[3][19]~103_combout\);

-- Location: LCCOMB_X70_Y65_N20
\srl64[3][19]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][19]~104_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][25]~63_combout\))) # (!\B[1]~input_o\ & (\srl64[1][23]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][23]~70_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][25]~63_combout\,
	combout => \srl64[3][19]~104_combout\);

-- Location: LCCOMB_X72_Y62_N22
\srl64[3][19]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][19]~105_combout\ = (\srl64[3][19]~103_combout\) # ((\srl64[3][19]~104_combout\) # ((\srl64[1][19]~71_combout\ & \sll64[4][8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][19]~103_combout\,
	datab => \srl64[3][19]~104_combout\,
	datac => \srl64[1][19]~71_combout\,
	datad => \sll64[4][8]~11_combout\,
	combout => \srl64[3][19]~105_combout\);

-- Location: LCCOMB_X70_Y65_N30
\sra64[3][27]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][27]~17_combout\ = (\sll64[4][8]~11_combout\ & ((\srl64[1][27]~62_combout\) # ((\Mux28~0_combout\ & \srl64[1][29]~66_combout\)))) # (!\sll64[4][8]~11_combout\ & (\Mux28~0_combout\ & ((\srl64[1][29]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][8]~11_combout\,
	datab => \Mux28~0_combout\,
	datac => \srl64[1][27]~62_combout\,
	datad => \srl64[1][29]~66_combout\,
	combout => \sra64[3][27]~17_combout\);

-- Location: LCCOMB_X74_Y62_N16
\sra64[3][25]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][25]~16_combout\ = (\B[2]~input_o\ & ((\ExtWord~input_o\ & ((\A[15]~input_o\))) # (!\ExtWord~input_o\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[2]~input_o\,
	combout => \sra64[3][25]~16_combout\);

-- Location: LCCOMB_X74_Y62_N26
\sra64[4][19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][19]~18_combout\ = (\B[3]~input_o\ & (((\sra64[3][27]~17_combout\) # (\sra64[3][25]~16_combout\)))) # (!\B[3]~input_o\ & (\srl64[3][19]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][19]~105_combout\,
	datac => \sra64[3][27]~17_combout\,
	datad => \sra64[3][25]~16_combout\,
	combout => \sra64[4][19]~18_combout\);

-- Location: LCCOMB_X73_Y61_N22
\srl64[3][27]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][27]~106_combout\ = (\sra64[3][27]~17_combout\) # ((!\B[0]~input_o\ & (\sra64[0][31]~2_combout\ & \sll64[3][4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][27]~17_combout\,
	datab => \B[0]~input_o\,
	datac => \sra64[0][31]~2_combout\,
	datad => \sll64[3][4]~14_combout\,
	combout => \srl64[3][27]~106_combout\);

-- Location: LCCOMB_X73_Y61_N16
\srl64[4][19]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][19]~107_combout\ = (\B[3]~input_o\ & (\srl64[3][27]~106_combout\)) # (!\B[3]~input_o\ & ((\srl64[3][19]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][27]~106_combout\,
	datab => \B[3]~input_o\,
	datac => \srl64[3][19]~105_combout\,
	combout => \srl64[4][19]~107_combout\);

-- Location: LCCOMB_X74_Y61_N24
\sra64[6][19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][19]~19_combout\ = (\sra64[6][16]~3_combout\) # ((\sll64[6][0]~8_combout\ & \sra64[4][19]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datac => \sra64[6][16]~3_combout\,
	datad => \sra64[4][19]~18_combout\,
	combout => \sra64[6][19]~19_combout\);

-- Location: LCCOMB_X70_Y61_N30
\Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & ((\sra64[6][19]~19_combout\))) # (!\Mux28~6_combout\ & (\srl64[4][19]~107_combout\)))) # (!\Mux28~5_combout\ & (((\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][19]~107_combout\,
	datab => \Mux28~5_combout\,
	datac => \Mux28~6_combout\,
	datad => \sra64[6][19]~19_combout\,
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X72_Y61_N16
\Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (\Mux28~9_combout\ & (((\sra64[0][31]~2_combout\) # (\Mux28~4_combout\)))) # (!\Mux28~9_combout\ & (\sra64[4][19]~18_combout\ & ((!\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[4][19]~18_combout\,
	datab => \Mux28~9_combout\,
	datac => \sra64[0][31]~2_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X73_Y61_N26
\srl64[6][19]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][19]~114_combout\ = (\sll64[6][0]~8_combout\ & ((\B[3]~input_o\ & ((\srl64[3][27]~106_combout\))) # (!\B[3]~input_o\ & (\srl64[3][19]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \srl64[3][19]~105_combout\,
	datac => \srl64[3][27]~106_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[6][19]~114_combout\);

-- Location: LCCOMB_X72_Y61_N18
\Mux28~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~14_combout\ = (\Mux28~7_combout\ & ((\Mux28~13_combout\ & ((\srl64[6][19]~114_combout\))) # (!\Mux28~13_combout\ & (\Mux28~10_combout\)))) # (!\Mux28~7_combout\ & (\Mux28~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \Mux28~13_combout\,
	datac => \Mux28~10_combout\,
	datad => \srl64[6][19]~114_combout\,
	combout => \Mux28~14_combout\);

-- Location: LCCOMB_X75_Y65_N26
\sll64[2][3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][3]~17_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[2]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \sll64[2][3]~17_combout\);

-- Location: LCCOMB_X73_Y67_N28
\sll64[2][3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][3]~18_combout\ = (\sll64[2][3]~17_combout\) # ((\B[1]~input_o\ & \sll64[1][1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \sll64[2][3]~17_combout\,
	datad => \sll64[1][1]~12_combout\,
	combout => \sll64[2][3]~18_combout\);

-- Location: LCCOMB_X72_Y61_N28
\Mux28~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~15_combout\ = (\Mux28~8_combout\ & (\srl64[6][28]~160_combout\ & ((\sll64[2][3]~18_combout\)))) # (!\Mux28~8_combout\ & (((\Mux28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[6][28]~160_combout\,
	datab => \Mux28~14_combout\,
	datac => \Mux28~8_combout\,
	datad => \sll64[2][3]~18_combout\,
	combout => \Mux28~15_combout\);

-- Location: LCCOMB_X73_Y61_N20
\srl64[3][20]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][20]~117_combout\ = (\B[2]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[3][20]~117_combout\);

-- Location: LCCOMB_X69_Y65_N10
\srl64[3][20]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][20]~118_combout\ = (\srl64[3][20]~117_combout\ & ((\srl64[1][26]~20_combout\) # ((!\B[0]~input_o\ & \srl64[1][25]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[1][25]~21_combout\,
	datac => \srl64[3][20]~117_combout\,
	datad => \srl64[1][26]~20_combout\,
	combout => \srl64[3][20]~118_combout\);

-- Location: LCCOMB_X69_Y65_N0
\srl64[3][20]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][20]~116_combout\ = (\sll64[4][8]~11_combout\ & ((\srl64[1][20]~39_combout\) # ((!\B[0]~input_o\ & \srl64[1][19]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[4][8]~11_combout\,
	datac => \srl64[1][19]~40_combout\,
	datad => \srl64[1][20]~39_combout\,
	combout => \srl64[3][20]~116_combout\);

-- Location: LCCOMB_X69_Y65_N30
\srl64[3][20]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][20]~115_combout\ = (\B[1]~input_o\ & (!\B[2]~input_o\ & ((\srl64[1][22]~33_combout\) # (\srl64[1][22]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][22]~33_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][22]~34_combout\,
	combout => \srl64[3][20]~115_combout\);

-- Location: LCCOMB_X69_Y65_N20
\srl64[3][20]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][20]~119_combout\ = (\sll64[3][4]~14_combout\ & ((\B[0]~input_o\ & ((\srl64[1][24]~23_combout\))) # (!\B[0]~input_o\ & (\srl64[1][23]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[3][4]~14_combout\,
	datac => \srl64[1][23]~24_combout\,
	datad => \srl64[1][24]~23_combout\,
	combout => \srl64[3][20]~119_combout\);

-- Location: LCCOMB_X69_Y65_N14
\srl64[3][20]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][20]~120_combout\ = (\srl64[3][20]~118_combout\) # ((\srl64[3][20]~116_combout\) # ((\srl64[3][20]~115_combout\) # (\srl64[3][20]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][20]~118_combout\,
	datab => \srl64[3][20]~116_combout\,
	datac => \srl64[3][20]~115_combout\,
	datad => \srl64[3][20]~119_combout\,
	combout => \srl64[3][20]~120_combout\);

-- Location: LCCOMB_X70_Y62_N30
\srl64[4][20]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][20]~121_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\) # (!\srl64[2][28]~159_combout\)))) # (!\B[3]~input_o\ & (!\srl64[3][20]~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][20]~120_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \srl64[2][28]~159_combout\,
	combout => \srl64[4][20]~121_combout\);

-- Location: LCCOMB_X70_Y62_N4
\srl64[6][20]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][20]~162_combout\ = (!\B[4]~input_o\ & (!\srl64[4][20]~121_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \srl64[4][20]~121_combout\,
	datad => \ExtWord~input_o\,
	combout => \srl64[6][20]~162_combout\);

-- Location: LCCOMB_X75_Y65_N6
\sll64[2][4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][4]~21_combout\ = (\B[1]~input_o\ & (\A[2]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \sll64[2][4]~21_combout\);

-- Location: LCCOMB_X75_Y65_N20
\sll64[2][4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][4]~20_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[1]~input_o\)) # (!\B[1]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \sll64[2][4]~20_combout\);

-- Location: LCCOMB_X75_Y65_N8
\sll64[2][4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][4]~22_combout\ = (\sll64[2][4]~20_combout\) # ((\sll64[2][4]~21_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][4]~21_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][4]~20_combout\,
	combout => \sll64[2][4]~22_combout\);

-- Location: LCCOMB_X73_Y63_N16
\sll64[3][4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][4]~19_combout\ = (!\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \sll64[3][4]~19_combout\);

-- Location: LCCOMB_X72_Y66_N6
\sll64[3][4]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][4]~112_combout\ = (\B[2]~input_o\ & (((\sll64[3][4]~19_combout\ & !\B[1]~input_o\)))) # (!\B[2]~input_o\ & (\sll64[2][4]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][4]~22_combout\,
	datab => \sll64[3][4]~19_combout\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][4]~112_combout\);

-- Location: LCCOMB_X72_Y66_N26
\sll64[4][4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][4]~23_combout\ = (\sll64[3][4]~112_combout\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][4]~112_combout\,
	datad => \B[3]~input_o\,
	combout => \sll64[4][4]~23_combout\);

-- Location: LCCOMB_X73_Y65_N18
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\sll64[6][0]~8_combout\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sll64[6][0]~8_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X70_Y63_N6
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & !\ShiftFN[0]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X70_Y63_N0
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux24~2_combout\ & ((\Mux24~3_combout\ & (\sll64[4][4]~23_combout\)) # (!\Mux24~3_combout\ & ((\A[4]~input_o\))))) # (!\Mux24~2_combout\ & (((!\Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][4]~23_combout\,
	datab => \Mux24~2_combout\,
	datac => \A[4]~input_o\,
	datad => \Mux24~3_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X70_Y62_N22
\sra64[4][20]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][20]~43_combout\ = ((\B[2]~input_o\ & (\B[3]~input_o\ & \sra64[0][31]~2_combout\))) # (!\srl64[4][20]~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][20]~121_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[4][20]~43_combout\);

-- Location: LCCOMB_X70_Y62_N8
\sra64[4][20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][20]~20_combout\ = (\B[3]~input_o\ & (\B[2]~input_o\ & \sra64[0][31]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[4][20]~20_combout\);

-- Location: LCCOMB_X70_Y62_N26
\sra64[6][20]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][20]~21_combout\ = (\sra64[6][16]~3_combout\) # ((\sll64[6][0]~8_combout\ & ((\sra64[4][20]~20_combout\) # (!\srl64[4][20]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][20]~121_combout\,
	datab => \sra64[4][20]~20_combout\,
	datac => \sll64[6][0]~8_combout\,
	datad => \sra64[6][16]~3_combout\,
	combout => \sra64[6][20]~21_combout\);

-- Location: LCCOMB_X70_Y62_N12
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & ((\sra64[6][20]~21_combout\))) # (!\Mux28~6_combout\ & (!\srl64[4][20]~121_combout\)))) # (!\Mux28~5_combout\ & (((\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][20]~121_combout\,
	datab => \sra64[6][20]~21_combout\,
	datac => \Mux28~5_combout\,
	datad => \Mux28~6_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X70_Y62_N14
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\ & (((\Mux28~4_combout\) # (\sra64[0][31]~2_combout\)))) # (!\Mux27~0_combout\ & (\sra64[4][20]~43_combout\ & (!\Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[4][20]~43_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux28~4_combout\,
	datad => \sra64[0][31]~2_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X69_Y63_N0
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!\Mux28~2_combout\ & ((\B[3]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Mux28~2_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X70_Y63_N18
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\B[3]~input_o\) # ((\B[5]~input_o\) # ((\B[4]~input_o\) # (\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X69_Y63_N18
\srl64[2][4]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][4]~123_combout\ = (!\ExtWord~input_o\ & ((\srl64[2][4]~48_combout\) # ((\B[0]~input_o\ & \srl64[2][5]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[2][4]~48_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[2][5]~49_combout\,
	combout => \srl64[2][4]~123_combout\);

-- Location: LCCOMB_X69_Y63_N12
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux24~0_combout\ & (((\Mux24~1_combout\)))) # (!\Mux24~0_combout\ & ((\Mux24~1_combout\ & (\Mux27~1_combout\)) # (!\Mux24~1_combout\ & ((\srl64[2][4]~123_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux24~0_combout\,
	datac => \Mux24~1_combout\,
	datad => \srl64[2][4]~123_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X69_Y63_N22
\srl64[2][8]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][8]~122_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\srl64[2][9]~58_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][8]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[2][9]~58_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[2][8]~59_combout\,
	combout => \srl64[2][8]~122_combout\);

-- Location: LCCOMB_X72_Y62_N28
\srl64[3][12]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][12]~124_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][18]~38_combout\))) # (!\B[1]~input_o\ & (\srl64[1][16]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][16]~44_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][18]~38_combout\,
	combout => \srl64[3][12]~124_combout\);

-- Location: LCCOMB_X69_Y62_N10
\srl64[3][12]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][12]~125_combout\ = (\srl64[3][12]~124_combout\) # ((\srl64[2][12]~53_combout\ & (!\ExtWord~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][12]~53_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[3][12]~124_combout\,
	combout => \srl64[3][12]~125_combout\);

-- Location: LCCOMB_X70_Y63_N28
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux27~2_combout\ & (((\srl64[3][12]~125_combout\) # (!\Mux24~0_combout\)))) # (!\Mux27~2_combout\ & (\srl64[2][8]~122_combout\ & (\Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \srl64[2][8]~122_combout\,
	datac => \Mux24~0_combout\,
	datad => \srl64[3][12]~125_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X70_Y63_N26
Mux27 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~combout\ = (\Mux27~4_combout\ & (((\Mux27~3_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux27~4_combout\ & (\srl64[6][20]~162_combout\ & (\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[6][20]~162_combout\,
	datab => \Mux27~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux27~3_combout\,
	combout => \Mux27~combout\);

-- Location: LCCOMB_X70_Y65_N16
\srl64[3][21]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][21]~126_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & (\srl64[1][27]~62_combout\)) # (!\B[2]~input_o\ & ((\srl64[1][23]~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][27]~62_combout\,
	datab => \srl64[1][23]~70_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[3][21]~126_combout\);

-- Location: LCCOMB_X72_Y62_N6
\srl64[3][21]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][21]~127_combout\ = (\sll64[4][8]~11_combout\ & ((\B[0]~input_o\ & ((\srl64[1][21]~73_combout\))) # (!\B[0]~input_o\ & (\srl64[1][20]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[1][20]~74_combout\,
	datac => \srl64[1][21]~73_combout\,
	datad => \sll64[4][8]~11_combout\,
	combout => \srl64[3][21]~127_combout\);

-- Location: LCCOMB_X70_Y65_N26
\srl64[3][21]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][21]~128_combout\ = (\srl64[3][21]~126_combout\) # ((\srl64[3][21]~127_combout\) # ((\srl64[1][25]~63_combout\ & \sll64[3][4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][25]~63_combout\,
	datab => \srl64[3][21]~126_combout\,
	datac => \sll64[3][4]~14_combout\,
	datad => \srl64[3][21]~127_combout\,
	combout => \srl64[3][21]~128_combout\);

-- Location: LCCOMB_X70_Y64_N28
\srl64[4][21]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][21]~129_combout\ = (\B[3]~input_o\ & (!\B[2]~input_o\ & (\srl64[2][29]~67_combout\))) # (!\B[3]~input_o\ & (((\srl64[3][21]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \srl64[2][29]~67_combout\,
	datad => \srl64[3][21]~128_combout\,
	combout => \srl64[4][21]~129_combout\);

-- Location: LCCOMB_X72_Y64_N22
\srl64[6][21]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][21]~163_combout\ = (\srl64[4][21]~129_combout\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[4][21]~129_combout\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \srl64[6][21]~163_combout\);

-- Location: LCCOMB_X75_Y65_N18
\sll64[2][5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][5]~24_combout\ = (\B[1]~input_o\ & ((\A[3]~input_o\))) # (!\B[1]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \sll64[2][5]~24_combout\);

-- Location: LCCOMB_X75_Y65_N4
\sll64[2][5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][5]~25_combout\ = (\B[0]~input_o\ & ((\sll64[2][4]~21_combout\))) # (!\B[0]~input_o\ & (\sll64[2][5]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][5]~24_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][4]~21_combout\,
	combout => \sll64[2][5]~25_combout\);

-- Location: LCCOMB_X73_Y67_N12
\sll64[4][13]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][13]~113_combout\ = (\B[2]~input_o\ & (\sll64[1][1]~12_combout\ & (!\B[1]~input_o\))) # (!\B[2]~input_o\ & (((\sll64[2][5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][1]~12_combout\,
	datab => \B[1]~input_o\,
	datac => \sll64[2][5]~25_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[4][13]~113_combout\);

-- Location: LCCOMB_X73_Y67_N6
\sll64[4][5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][5]~26_combout\ = (!\B[3]~input_o\ & \sll64[4][13]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \sll64[4][13]~113_combout\,
	combout => \sll64[4][5]~26_combout\);

-- Location: LCCOMB_X72_Y64_N2
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Mux24~2_combout\ & ((\Mux24~3_combout\ & (\sll64[4][5]~26_combout\)) # (!\Mux24~3_combout\ & ((\A[5]~input_o\))))) # (!\Mux24~2_combout\ & (((!\Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][5]~26_combout\,
	datab => \Mux24~2_combout\,
	datac => \A[5]~input_o\,
	datad => \Mux24~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X72_Y62_N16
\srl64[3][13]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][13]~131_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][19]~71_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][17]~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \srl64[1][19]~71_combout\,
	datad => \srl64[1][17]~76_combout\,
	combout => \srl64[3][13]~131_combout\);

-- Location: LCCOMB_X72_Y62_N18
\srl64[3][13]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][13]~132_combout\ = (\srl64[3][13]~131_combout\) # ((\srl64[2][13]~87_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][13]~87_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[3][13]~131_combout\,
	combout => \srl64[3][13]~132_combout\);

-- Location: LCCOMB_X70_Y61_N24
\sra64[4][21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][21]~22_combout\ = (\B[3]~input_o\ & ((\sll64[4][8]~11_combout\ & (\srl64[1][29]~66_combout\)) # (!\sll64[4][8]~11_combout\ & ((\sra64[0][31]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[1][29]~66_combout\,
	datac => \sll64[4][8]~11_combout\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[4][21]~22_combout\);

-- Location: LCCOMB_X70_Y65_N28
\sra64[4][21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][21]~23_combout\ = (\sra64[4][21]~22_combout\) # ((\srl64[3][21]~128_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][21]~128_combout\,
	datab => \sra64[4][21]~22_combout\,
	datad => \B[3]~input_o\,
	combout => \sra64[4][21]~23_combout\);

-- Location: LCCOMB_X72_Y64_N10
\sra64[6][21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][21]~24_combout\ = (\sra64[6][16]~3_combout\) # ((\sll64[6][0]~8_combout\ & \sra64[4][21]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][16]~3_combout\,
	datab => \sll64[6][0]~8_combout\,
	datad => \sra64[4][21]~23_combout\,
	combout => \sra64[6][21]~24_combout\);

-- Location: LCCOMB_X72_Y64_N12
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux28~6_combout\ & ((\sra64[6][21]~24_combout\) # ((!\Mux28~5_combout\)))) # (!\Mux28~6_combout\ & (((\srl64[4][21]~129_combout\ & \Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][21]~24_combout\,
	datab => \srl64[4][21]~129_combout\,
	datac => \Mux28~6_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X72_Y64_N30
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & ((\Mux28~4_combout\) # ((\sra64[0][31]~2_combout\)))) # (!\Mux26~0_combout\ & (!\Mux28~4_combout\ & ((\sra64[4][21]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux28~4_combout\,
	datac => \sra64[0][31]~2_combout\,
	datad => \sra64[4][21]~23_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X69_Y63_N6
\srl64[2][5]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][5]~130_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\srl64[2][6]~80_combout\)) # (!\B[0]~input_o\ & ((\srl64[2][5]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[2][6]~80_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[2][5]~49_combout\,
	combout => \srl64[2][5]~130_combout\);

-- Location: LCCOMB_X69_Y63_N8
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux24~1_combout\ & (((\Mux24~0_combout\)))) # (!\Mux24~1_combout\ & ((\Mux24~0_combout\ & ((\srl64[2][9]~89_combout\))) # (!\Mux24~0_combout\ & (\srl64[2][5]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][5]~130_combout\,
	datab => \srl64[2][9]~89_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X72_Y64_N8
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux24~1_combout\ & ((\Mux26~2_combout\ & (\srl64[3][13]~132_combout\)) # (!\Mux26~2_combout\ & ((\Mux26~1_combout\))))) # (!\Mux24~1_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][13]~132_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux26~1_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X72_Y64_N20
Mux26 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~combout\ = (\Mux26~4_combout\ & (((\Mux26~3_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux26~4_combout\ & (\srl64[6][21]~163_combout\ & ((\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[6][21]~163_combout\,
	datab => \Mux26~4_combout\,
	datac => \Mux26~3_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux26~combout\);

-- Location: LCCOMB_X69_Y61_N10
\srl64[3][22]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][22]~133_combout\ = (\srl64[1][22]~35_combout\ & ((\sll64[4][8]~11_combout\) # ((\srl64[1][24]~25_combout\ & \Mux28~0_combout\)))) # (!\srl64[1][22]~35_combout\ & (\srl64[1][24]~25_combout\ & (\Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][22]~35_combout\,
	datab => \srl64[1][24]~25_combout\,
	datac => \Mux28~0_combout\,
	datad => \sll64[4][8]~11_combout\,
	combout => \srl64[3][22]~133_combout\);

-- Location: LCCOMB_X69_Y61_N2
\sra64[4][22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][22]~25_combout\ = (\B[3]~input_o\ & ((\sll64[4][8]~11_combout\ & (\srl64[1][30]~28_combout\)) # (!\sll64[4][8]~11_combout\ & ((\sra64[0][31]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][8]~11_combout\,
	datab => \B[3]~input_o\,
	datac => \srl64[1][30]~28_combout\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[4][22]~25_combout\);

-- Location: LCCOMB_X70_Y65_N24
\srl64[1][28]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][28]~31_combout\ = (\srl64[1][28]~29_combout\) # (\srl64[1][28]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][28]~29_combout\,
	datad => \srl64[1][28]~30_combout\,
	combout => \srl64[1][28]~31_combout\);

-- Location: LCCOMB_X69_Y61_N4
\srl64[3][22]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][22]~134_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][28]~31_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][26]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][28]~31_combout\,
	datab => \B[1]~input_o\,
	datac => \srl64[1][26]~22_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][22]~134_combout\);

-- Location: LCCOMB_X69_Y61_N20
\sra64[4][22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][22]~26_combout\ = (\sra64[4][22]~25_combout\) # ((!\B[3]~input_o\ & ((\srl64[3][22]~133_combout\) # (\srl64[3][22]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][22]~133_combout\,
	datab => \sra64[4][22]~25_combout\,
	datac => \srl64[3][22]~134_combout\,
	datad => \B[3]~input_o\,
	combout => \sra64[4][22]~26_combout\);

-- Location: LCCOMB_X69_Y61_N30
\srl64[3][22]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][22]~135_combout\ = (\srl64[3][22]~134_combout\) # (\srl64[3][22]~133_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \srl64[3][22]~134_combout\,
	datad => \srl64[3][22]~133_combout\,
	combout => \srl64[3][22]~135_combout\);

-- Location: LCCOMB_X69_Y61_N16
\srl64[4][22]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][22]~136_combout\ = (\B[3]~input_o\ & (\srl64[1][30]~28_combout\ & ((\sll64[4][8]~11_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][22]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][30]~28_combout\,
	datab => \B[3]~input_o\,
	datac => \srl64[3][22]~135_combout\,
	datad => \sll64[4][8]~11_combout\,
	combout => \srl64[4][22]~136_combout\);

-- Location: LCCOMB_X74_Y61_N18
\sra64[6][22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][22]~27_combout\ = (\sra64[6][16]~3_combout\) # ((\sra64[4][22]~26_combout\ & \sll64[6][0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[4][22]~26_combout\,
	datac => \sra64[6][16]~3_combout\,
	datad => \sll64[6][0]~8_combout\,
	combout => \sra64[6][22]~27_combout\);

-- Location: LCCOMB_X70_Y61_N26
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & ((\sra64[6][22]~27_combout\))) # (!\Mux28~6_combout\ & (\srl64[4][22]~136_combout\)))) # (!\Mux28~5_combout\ & (((\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][22]~136_combout\,
	datab => \Mux28~5_combout\,
	datac => \Mux28~6_combout\,
	datad => \sra64[6][22]~27_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X70_Y61_N12
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux28~4_combout\ & (((\Mux25~0_combout\)))) # (!\Mux28~4_combout\ & ((\Mux25~0_combout\ & ((\sra64[0][31]~2_combout\))) # (!\Mux25~0_combout\ & (\sra64[4][22]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \sra64[4][22]~26_combout\,
	datac => \Mux25~0_combout\,
	datad => \sra64[0][31]~2_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X70_Y63_N4
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux24~1_combout\ & (((\Mux24~0_combout\) # (\Mux25~1_combout\)))) # (!\Mux24~1_combout\ & (\srl64[2][6]~93_combout\ & (!\Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][6]~93_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X69_Y61_N6
\srl64[3][14]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][14]~137_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\srl64[1][20]~41_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][18]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \srl64[1][20]~41_combout\,
	datad => \srl64[1][18]~38_combout\,
	combout => \srl64[3][14]~137_combout\);

-- Location: LCCOMB_X69_Y61_N8
\srl64[3][14]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][14]~138_combout\ = (\srl64[3][14]~137_combout\) # ((\srl64[2][14]~96_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][14]~137_combout\,
	datab => \srl64[2][14]~96_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[3][14]~138_combout\);

-- Location: LCCOMB_X69_Y63_N26
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux25~2_combout\ & ((\srl64[3][14]~138_combout\) # ((!\Mux24~0_combout\)))) # (!\Mux25~2_combout\ & (((\srl64[2][10]~98_combout\ & \Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~2_combout\,
	datab => \srl64[3][14]~138_combout\,
	datac => \srl64[2][10]~98_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X72_Y63_N24
\sll64[2][6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][6]~27_combout\ = (\B[1]~input_o\ & ((\A[4]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[4]~input_o\,
	combout => \sll64[2][6]~27_combout\);

-- Location: LCCOMB_X75_Y65_N30
\sll64[2][6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][6]~28_combout\ = (\B[0]~input_o\ & ((\sll64[2][5]~24_combout\))) # (!\B[0]~input_o\ & (\sll64[2][6]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \sll64[2][6]~27_combout\,
	datad => \sll64[2][5]~24_combout\,
	combout => \sll64[2][6]~28_combout\);

-- Location: LCCOMB_X74_Y65_N2
\sll64[4][6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][6]~29_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][2]~16_combout\))) # (!\B[2]~input_o\ & (\sll64[2][6]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sll64[2][6]~28_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][2]~16_combout\,
	combout => \sll64[4][6]~29_combout\);

-- Location: LCCOMB_X70_Y63_N14
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Mux24~3_combout\ & (\sll64[4][6]~29_combout\ & ((\Mux24~2_combout\)))) # (!\Mux24~3_combout\ & (((\A[6]~input_o\) # (!\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \sll64[4][6]~29_combout\,
	datac => \A[6]~input_o\,
	datad => \Mux24~2_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X70_Y63_N20
\srl64[6][22]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][22]~164_combout\ = (!\B[4]~input_o\ & (\srl64[4][22]~136_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \srl64[4][22]~136_combout\,
	combout => \srl64[6][22]~164_combout\);

-- Location: LCCOMB_X70_Y63_N24
Mux25 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~combout\ = (\Mux25~4_combout\ & ((\Mux25~3_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux25~4_combout\ & (((\ShiftFN[1]~input_o\ & \srl64[6][22]~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~3_combout\,
	datab => \Mux25~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \srl64[6][22]~164_combout\,
	combout => \Mux25~combout\);

-- Location: LCCOMB_X70_Y65_N22
\srl64[3][23]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][23]~140_combout\ = (\Mux28~0_combout\ & ((\srl64[1][25]~63_combout\) # ((\srl64[1][23]~70_combout\ & \sll64[4][8]~11_combout\)))) # (!\Mux28~0_combout\ & (\srl64[1][23]~70_combout\ & (\sll64[4][8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \srl64[1][23]~70_combout\,
	datac => \sll64[4][8]~11_combout\,
	datad => \srl64[1][25]~63_combout\,
	combout => \srl64[3][23]~140_combout\);

-- Location: LCCOMB_X70_Y65_N8
\srl64[3][23]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][23]~141_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][29]~66_combout\))) # (!\B[1]~input_o\ & (\srl64[1][27]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \srl64[1][27]~62_combout\,
	datad => \srl64[1][29]~66_combout\,
	combout => \srl64[3][23]~141_combout\);

-- Location: LCCOMB_X70_Y61_N18
\sra64[4][23]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][23]~28_combout\ = (\B[3]~input_o\ & (((\sra64[0][31]~2_combout\)))) # (!\B[3]~input_o\ & ((\srl64[3][23]~140_combout\) # ((\srl64[3][23]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][23]~140_combout\,
	datac => \srl64[3][23]~141_combout\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[4][23]~28_combout\);

-- Location: LCCOMB_X70_Y61_N28
\srl64[3][23]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][23]~143_combout\ = (\srl64[3][23]~141_combout\) # (\srl64[3][23]~140_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][23]~141_combout\,
	datad => \srl64[3][23]~140_combout\,
	combout => \srl64[3][23]~143_combout\);

-- Location: LCCOMB_X73_Y61_N14
\sra64[6][23]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][23]~29_combout\ = (\sll64[6][0]~8_combout\ & ((\B[3]~input_o\ & ((\sra64[0][31]~2_combout\))) # (!\B[3]~input_o\ & (\srl64[3][23]~143_combout\)))) # (!\sll64[6][0]~8_combout\ & (((\sra64[0][31]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \srl64[3][23]~143_combout\,
	datac => \sra64[0][31]~2_combout\,
	datad => \B[3]~input_o\,
	combout => \sra64[6][23]~29_combout\);

-- Location: LCCOMB_X70_Y61_N22
\srl64[4][23]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][23]~139_combout\ = (!\B[0]~input_o\ & (\sll64[4][8]~11_combout\ & (\B[3]~input_o\ & \sra64[0][31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[4][8]~11_combout\,
	datac => \B[3]~input_o\,
	datad => \sra64[0][31]~2_combout\,
	combout => \srl64[4][23]~139_combout\);

-- Location: LCCOMB_X70_Y61_N0
\srl64[4][23]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][23]~142_combout\ = (\srl64[4][23]~139_combout\) # ((!\B[3]~input_o\ & ((\srl64[3][23]~141_combout\) # (\srl64[3][23]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][23]~139_combout\,
	datab => \srl64[3][23]~141_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][23]~140_combout\,
	combout => \srl64[4][23]~142_combout\);

-- Location: LCCOMB_X70_Y61_N6
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & (\sra64[6][23]~29_combout\)) # (!\Mux28~6_combout\ & ((\srl64[4][23]~142_combout\))))) # (!\Mux28~5_combout\ & (((\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][23]~29_combout\,
	datab => \Mux28~5_combout\,
	datac => \Mux28~6_combout\,
	datad => \srl64[4][23]~142_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X70_Y61_N8
\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux28~4_combout\ & (((\Mux24~4_combout\)))) # (!\Mux28~4_combout\ & ((\Mux24~4_combout\ & ((\sra64[0][31]~2_combout\))) # (!\Mux24~4_combout\ & (\sra64[4][23]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \sra64[4][23]~28_combout\,
	datac => \Mux24~4_combout\,
	datad => \sra64[0][31]~2_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X69_Y63_N28
\Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\Mux24~1_combout\ & (((\Mux24~0_combout\)))) # (!\Mux24~1_combout\ & ((\Mux24~0_combout\ & ((\srl64[2][11]~112_combout\))) # (!\Mux24~0_combout\ & (\srl64[2][7]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \srl64[2][7]~109_combout\,
	datac => \srl64[2][11]~112_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X72_Y62_N4
\srl64[3][15]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][15]~144_combout\ = (!\B[1]~input_o\ & ((\B[2]~input_o\ & (\srl64[1][19]~71_combout\)) # (!\B[2]~input_o\ & ((\srl64[1][15]~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][19]~71_combout\,
	datab => \srl64[1][15]~85_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[3][15]~144_combout\);

-- Location: LCCOMB_X72_Y62_N30
\srl64[3][15]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][15]~145_combout\ = (\srl64[3][15]~144_combout\) # ((\B[1]~input_o\ & \srl64[3][15]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[3][15]~77_combout\,
	datac => \srl64[3][15]~144_combout\,
	combout => \srl64[3][15]~145_combout\);

-- Location: LCCOMB_X69_Y63_N14
\Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux24~6_combout\ & (((\srl64[3][15]~145_combout\) # (!\Mux24~1_combout\)))) # (!\Mux24~6_combout\ & (\Mux24~5_combout\ & (\Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~5_combout\,
	datab => \Mux24~6_combout\,
	datac => \Mux24~1_combout\,
	datad => \srl64[3][15]~145_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X70_Y63_N30
\srl64[6][23]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][23]~165_combout\ = (!\B[4]~input_o\ & (\srl64[4][23]~142_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \srl64[4][23]~142_combout\,
	combout => \srl64[6][23]~165_combout\);

-- Location: LCCOMB_X72_Y67_N2
\sll64[2][7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][7]~30_combout\ = (\B[1]~input_o\ & ((\A[5]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[5]~input_o\,
	combout => \sll64[2][7]~30_combout\);

-- Location: LCCOMB_X72_Y67_N28
\sll64[2][7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][7]~31_combout\ = (\B[0]~input_o\ & (\sll64[2][6]~27_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][7]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][6]~27_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][7]~30_combout\,
	combout => \sll64[2][7]~31_combout\);

-- Location: LCCOMB_X70_Y63_N2
\sll64[4][7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][7]~32_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\sll64[2][3]~18_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][7]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][3]~18_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \sll64[2][7]~31_combout\,
	combout => \sll64[4][7]~32_combout\);

-- Location: LCCOMB_X70_Y63_N12
\Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~8_combout\ = (\Mux24~3_combout\ & (\sll64[4][7]~32_combout\ & ((\Mux24~2_combout\)))) # (!\Mux24~3_combout\ & (((\A[7]~input_o\) # (!\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \sll64[4][7]~32_combout\,
	datac => \A[7]~input_o\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~8_combout\);

-- Location: LCCOMB_X70_Y63_N22
Mux24 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~combout\ = (\ShiftFN[1]~input_o\ & ((\Mux24~8_combout\ & (\Mux24~7_combout\)) # (!\Mux24~8_combout\ & ((\srl64[6][23]~165_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux24~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux24~7_combout\,
	datac => \srl64[6][23]~165_combout\,
	datad => \Mux24~8_combout\,
	combout => \Mux24~combout\);

-- Location: LCCOMB_X70_Y62_N0
\srl64[4][24]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][24]~146_combout\ = (!\B[3]~input_o\ & ((\srl64[3][24]~26_combout\) # ((\B[2]~input_o\ & \srl64[2][28]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][24]~26_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][28]~159_combout\,
	combout => \srl64[4][24]~146_combout\);

-- Location: LCCOMB_X70_Y62_N28
\sra64[6][24]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][24]~31_combout\ = (\sll64[6][0]~8_combout\ & ((\srl64[4][24]~146_combout\) # ((\B[3]~input_o\ & \sra64[0][31]~2_combout\)))) # (!\sll64[6][0]~8_combout\ & (((\sra64[0][31]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \srl64[4][24]~146_combout\,
	datac => \B[3]~input_o\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[6][24]~31_combout\);

-- Location: LCCOMB_X70_Y62_N6
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & ((\sra64[6][24]~31_combout\))) # (!\Mux28~6_combout\ & (\srl64[4][24]~146_combout\)))) # (!\Mux28~5_combout\ & (((\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][24]~146_combout\,
	datab => \sra64[6][24]~31_combout\,
	datac => \Mux28~5_combout\,
	datad => \Mux28~6_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X70_Y62_N10
\sra64[4][24]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][24]~30_combout\ = (\srl64[4][24]~146_combout\) # ((\B[3]~input_o\ & \sra64[0][31]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[4][24]~146_combout\,
	datac => \B[3]~input_o\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[4][24]~30_combout\);

-- Location: LCCOMB_X69_Y62_N22
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & ((\Mux28~4_combout\) # ((\sra64[0][31]~2_combout\)))) # (!\Mux23~0_combout\ & (!\Mux28~4_combout\ & (\sra64[4][24]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \Mux28~4_combout\,
	datac => \sra64[4][24]~30_combout\,
	datad => \sra64[0][31]~2_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X69_Y62_N4
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\ShiftFN[0]~input_o\ & (((!\Mux28~2_combout\ & \B[3]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\) # ((!\Mux28~2_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Mux28~2_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X69_Y62_N24
\srl64[3][8]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][8]~147_combout\ = (!\ExtWord~input_o\ & ((\B[2]~input_o\ & ((\srl64[2][12]~53_combout\))) # (!\B[2]~input_o\ & (\srl64[2][8]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][8]~60_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][12]~53_combout\,
	combout => \srl64[3][8]~147_combout\);

-- Location: LCCOMB_X69_Y62_N18
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux20~0_combout\ & (((\Mux28~2_combout\)))) # (!\Mux20~0_combout\ & ((\Mux28~2_combout\ & (\Mux23~1_combout\)) # (!\Mux28~2_combout\ & ((\srl64[3][8]~147_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux20~0_combout\,
	datac => \Mux28~2_combout\,
	datad => \srl64[3][8]~147_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X69_Y62_N20
\srl64[6][24]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][24]~148_combout\ = (\srl64[3][24]~32_combout\ & (\sll64[6][0]~8_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][24]~32_combout\,
	datac => \sll64[6][0]~8_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[6][24]~148_combout\);

-- Location: LCCOMB_X69_Y62_N30
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux23~2_combout\ & (((\srl64[6][24]~148_combout\) # (!\Mux20~0_combout\)))) # (!\Mux23~2_combout\ & (\srl64[3][16]~46_combout\ & (\Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][16]~46_combout\,
	datab => \Mux23~2_combout\,
	datac => \Mux20~0_combout\,
	datad => \srl64[6][24]~148_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X72_Y63_N26
\sll64[2][8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][8]~33_combout\ = (\B[1]~input_o\ & ((\A[6]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][8]~33_combout\);

-- Location: LCCOMB_X72_Y67_N22
\sll64[2][8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][8]~34_combout\ = (\B[0]~input_o\ & ((\sll64[2][7]~30_combout\))) # (!\B[0]~input_o\ & (\sll64[2][8]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][8]~33_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][7]~30_combout\,
	combout => \sll64[2][8]~34_combout\);

-- Location: LCCOMB_X72_Y67_N8
\sll64[3][8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][8]~35_combout\ = (\B[2]~input_o\ & ((\sll64[2][4]~22_combout\))) # (!\B[2]~input_o\ & (\sll64[2][8]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][8]~34_combout\,
	datab => \sll64[2][4]~22_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][8]~35_combout\);

-- Location: LCCOMB_X73_Y66_N8
\sll64[4][8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][8]~36_combout\ = (\B[3]~input_o\ & (\sll64[3][4]~19_combout\ & (\sll64[4][8]~11_combout\))) # (!\B[3]~input_o\ & (((\sll64[3][8]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][4]~19_combout\,
	datab => \B[3]~input_o\,
	datac => \sll64[4][8]~11_combout\,
	datad => \sll64[3][8]~35_combout\,
	combout => \sll64[4][8]~36_combout\);

-- Location: LCCOMB_X72_Y63_N28
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][0]~8_combout\ & (\sll64[4][8]~36_combout\))) # (!\ShiftFN[0]~input_o\ & (((\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \sll64[4][8]~36_combout\,
	datad => \A[8]~input_o\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X72_Y63_N22
\Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\ShiftFN[1]~input_o\ & (\Mux23~3_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux23~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => \ShiftFN[1]~input_o\,
	datad => \Mux23~4_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X73_Y62_N26
\sra64[3][25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][25]~7_combout\ = (\sra64[3][25]~6_combout\) # (\sra64[3][25]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sra64[3][25]~6_combout\,
	datad => \sra64[3][25]~5_combout\,
	combout => \sra64[3][25]~7_combout\);

-- Location: LCCOMB_X73_Y62_N2
\sra64[6][25]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][25]~33_combout\ = (\B[3]~input_o\ & (((\sra64[0][31]~2_combout\)))) # (!\B[3]~input_o\ & ((\sll64[6][0]~8_combout\ & (\sra64[3][25]~7_combout\)) # (!\sll64[6][0]~8_combout\ & ((\sra64[0][31]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][25]~7_combout\,
	datab => \B[3]~input_o\,
	datac => \sra64[0][31]~2_combout\,
	datad => \sll64[6][0]~8_combout\,
	combout => \sra64[6][25]~33_combout\);

-- Location: LCCOMB_X70_Y64_N6
\srl64[4][25]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][25]~149_combout\ = (!\B[3]~input_o\ & ((\srl64[3][25]~64_combout\) # ((\srl64[2][29]~67_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[3][25]~64_combout\,
	datac => \srl64[2][29]~67_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[4][25]~149_combout\);

-- Location: LCCOMB_X70_Y61_N2
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & (\sra64[6][25]~33_combout\)) # (!\Mux28~6_combout\ & ((\srl64[4][25]~149_combout\))))) # (!\Mux28~5_combout\ & (((\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][25]~33_combout\,
	datab => \Mux28~5_combout\,
	datac => \Mux28~6_combout\,
	datad => \srl64[4][25]~149_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X73_Y62_N8
\sra64[4][25]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][25]~32_combout\ = (\B[3]~input_o\ & (((\sra64[0][31]~2_combout\)))) # (!\B[3]~input_o\ & ((\sra64[3][25]~5_combout\) # ((\sra64[3][25]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][25]~5_combout\,
	datab => \sra64[3][25]~6_combout\,
	datac => \sra64[0][31]~2_combout\,
	datad => \B[3]~input_o\,
	combout => \sra64[4][25]~32_combout\);

-- Location: LCCOMB_X70_Y62_N16
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & (((\Mux28~4_combout\) # (\sra64[0][31]~2_combout\)))) # (!\Mux22~0_combout\ & (\sra64[4][25]~32_combout\ & (!\Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \sra64[4][25]~32_combout\,
	datac => \Mux28~4_combout\,
	datad => \sra64[0][31]~2_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X69_Y62_N8
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux20~0_combout\ & (((\Mux28~2_combout\)))) # (!\Mux20~0_combout\ & ((\Mux28~2_combout\ & ((\Mux22~1_combout\))) # (!\Mux28~2_combout\ & (\srl64[3][9]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][9]~90_combout\,
	datab => \Mux20~0_combout\,
	datac => \Mux28~2_combout\,
	datad => \Mux22~1_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X73_Y62_N28
\srl64[6][25]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][25]~150_combout\ = (\srl64[3][25]~68_combout\ & (\sll64[6][0]~8_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][25]~68_combout\,
	datac => \sll64[6][0]~8_combout\,
	datad => \B[3]~input_o\,
	combout => \srl64[6][25]~150_combout\);

-- Location: LCCOMB_X73_Y62_N22
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux22~2_combout\ & (((\srl64[6][25]~150_combout\) # (!\Mux20~0_combout\)))) # (!\Mux22~2_combout\ & (\srl64[3][17]~78_combout\ & (\Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][17]~78_combout\,
	datab => \Mux22~2_combout\,
	datac => \Mux20~0_combout\,
	datad => \srl64[6][25]~150_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X68_Y65_N0
\sll64[2][10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][10]~37_combout\ = (\B[1]~input_o\ & ((\A[7]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[7]~input_o\,
	combout => \sll64[2][10]~37_combout\);

-- Location: LCCOMB_X72_Y67_N18
\sll64[2][9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][9]~38_combout\ = (\B[0]~input_o\ & ((\sll64[2][8]~33_combout\))) # (!\B[0]~input_o\ & (\sll64[2][10]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][10]~37_combout\,
	datab => \B[0]~input_o\,
	datac => \sll64[2][8]~33_combout\,
	combout => \sll64[2][9]~38_combout\);

-- Location: LCCOMB_X73_Y66_N10
\sll64[3][9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][9]~39_combout\ = (\B[2]~input_o\ & (\sll64[2][5]~25_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][9]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][5]~25_combout\,
	datab => \sll64[2][9]~38_combout\,
	datac => \B[2]~input_o\,
	combout => \sll64[3][9]~39_combout\);

-- Location: LCCOMB_X73_Y66_N28
\sll64[4][9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][9]~40_combout\ = (\B[3]~input_o\ & (\sll64[1][1]~12_combout\ & (\sll64[4][8]~11_combout\))) # (!\B[3]~input_o\ & (((\sll64[3][9]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][1]~12_combout\,
	datab => \B[3]~input_o\,
	datac => \sll64[4][8]~11_combout\,
	datad => \sll64[3][9]~39_combout\,
	combout => \sll64[4][9]~40_combout\);

-- Location: LCCOMB_X73_Y65_N12
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][0]~8_combout\ & ((\sll64[4][9]~40_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \A[9]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sll64[4][9]~40_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X73_Y65_N22
\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\ShiftFN[1]~input_o\ & (\Mux22~3_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux22~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \Mux22~3_combout\,
	datad => \Mux22~4_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X69_Y64_N8
\srl64[6][26]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][26]~152_combout\ = (!\sra64[3][26]~12_combout\ & (!\B[3]~input_o\ & \sll64[6][0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sra64[3][26]~12_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[6][0]~8_combout\,
	combout => \srl64[6][26]~152_combout\);

-- Location: LCCOMB_X69_Y64_N22
\sra64[6][26]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][26]~34_combout\ = (\sll64[6][0]~8_combout\ & ((\B[3]~input_o\ & ((\sra64[0][31]~2_combout\))) # (!\B[3]~input_o\ & (\sra64[3][26]~13_combout\)))) # (!\sll64[6][0]~8_combout\ & (((\sra64[0][31]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][26]~13_combout\,
	datab => \sll64[6][0]~8_combout\,
	datac => \B[3]~input_o\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[6][26]~34_combout\);

-- Location: LCCOMB_X69_Y64_N24
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & ((!\sra64[6][26]~34_combout\))) # (!\Mux28~6_combout\ & (!\sra64[3][26]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \sra64[3][26]~12_combout\,
	datac => \sra64[6][26]~34_combout\,
	datad => \Mux28~6_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X69_Y64_N2
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\B[3]~input_o\ & (((!\Mux21~0_combout\ & \Mux28~6_combout\)) # (!\Mux28~4_combout\))) # (!\B[3]~input_o\ & (\Mux21~0_combout\ $ (((\Mux28~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux28~4_combout\,
	datac => \B[3]~input_o\,
	datad => \Mux28~6_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X69_Y64_N12
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux21~1_combout\ & (((\Mux28~4_combout\) # (\sra64[0][31]~2_combout\)))) # (!\Mux21~1_combout\ & (\sra64[3][26]~13_combout\ & (!\Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][26]~13_combout\,
	datab => \Mux21~1_combout\,
	datac => \Mux28~4_combout\,
	datad => \sra64[0][31]~2_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X69_Y64_N30
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux20~0_combout\ & (((\Mux28~2_combout\)))) # (!\Mux20~0_combout\ & ((\Mux28~2_combout\ & (\Mux21~2_combout\)) # (!\Mux28~2_combout\ & ((\srl64[3][10]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \srl64[3][10]~99_combout\,
	datac => \Mux20~0_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X69_Y64_N28
\srl64[3][18]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][18]~151_combout\ = (\srl64[3][18]~100_combout\) # (\srl64[3][18]~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][18]~100_combout\,
	datad => \srl64[3][18]~101_combout\,
	combout => \srl64[3][18]~151_combout\);

-- Location: LCCOMB_X69_Y64_N26
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux20~0_combout\ & ((\Mux21~3_combout\ & (\srl64[6][26]~152_combout\)) # (!\Mux21~3_combout\ & ((\srl64[3][18]~151_combout\))))) # (!\Mux20~0_combout\ & (((\Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \srl64[6][26]~152_combout\,
	datac => \Mux21~3_combout\,
	datad => \srl64[3][18]~151_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X73_Y67_N24
\sll64[2][10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][10]~41_combout\ = (\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[1]~input_o\,
	combout => \sll64[2][10]~41_combout\);

-- Location: LCCOMB_X72_Y67_N4
\sll64[2][10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][10]~42_combout\ = (\B[0]~input_o\ & (\sll64[2][10]~37_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][10]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][10]~37_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][10]~41_combout\,
	combout => \sll64[2][10]~42_combout\);

-- Location: LCCOMB_X74_Y65_N28
\sll64[3][10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][10]~43_combout\ = (\B[2]~input_o\ & ((\sll64[2][6]~28_combout\))) # (!\B[2]~input_o\ & (\sll64[2][10]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][10]~42_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][6]~28_combout\,
	combout => \sll64[3][10]~43_combout\);

-- Location: LCCOMB_X74_Y65_N6
\sll64[4][10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][10]~44_combout\ = (\B[3]~input_o\ & (((!\B[2]~input_o\ & \sll64[2][2]~16_combout\)))) # (!\B[3]~input_o\ & (\sll64[3][10]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sll64[3][10]~43_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][2]~16_combout\,
	combout => \sll64[4][10]~44_combout\);

-- Location: LCCOMB_X72_Y63_N16
\Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][0]~8_combout\ & ((\sll64[4][10]~44_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[10]~input_o\,
	datad => \sll64[4][10]~44_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X72_Y63_N18
\Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\ShiftFN[1]~input_o\ & (\Mux21~4_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux21~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux21~4_combout\,
	datad => \Mux21~5_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X70_Y64_N0
\sra64[4][27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][27]~35_combout\ = (\B[3]~input_o\ & (\sra64[0][31]~2_combout\)) # (!\B[3]~input_o\ & ((\sra64[3][27]~17_combout\) # ((\sra64[0][31]~2_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sra64[0][31]~2_combout\,
	datac => \sra64[3][27]~17_combout\,
	datad => \B[2]~input_o\,
	combout => \sra64[4][27]~35_combout\);

-- Location: LCCOMB_X69_Y66_N0
\sra64[6][27]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][27]~36_combout\ = (\sra64[6][16]~3_combout\) # ((\sra64[4][27]~35_combout\ & \sll64[6][0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[4][27]~35_combout\,
	datab => \sra64[6][16]~3_combout\,
	datac => \sll64[6][0]~8_combout\,
	combout => \sra64[6][27]~36_combout\);

-- Location: LCCOMB_X73_Y61_N8
\srl64[4][27]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][27]~153_combout\ = (!\B[3]~input_o\ & \srl64[3][27]~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \srl64[3][27]~106_combout\,
	combout => \srl64[4][27]~153_combout\);

-- Location: LCCOMB_X70_Y64_N2
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & (\sra64[6][27]~36_combout\)) # (!\Mux28~6_combout\ & ((\srl64[4][27]~153_combout\))))) # (!\Mux28~5_combout\ & (((\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \sra64[6][27]~36_combout\,
	datac => \srl64[4][27]~153_combout\,
	datad => \Mux28~6_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X70_Y64_N12
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux28~4_combout\ & (((\Mux20~1_combout\)))) # (!\Mux28~4_combout\ & ((\Mux20~1_combout\ & ((\sra64[0][31]~2_combout\))) # (!\Mux20~1_combout\ & (\sra64[4][27]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \sra64[4][27]~35_combout\,
	datac => \sra64[0][31]~2_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X70_Y64_N22
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux20~0_combout\ & (((\Mux28~2_combout\)))) # (!\Mux20~0_combout\ & ((\Mux28~2_combout\ & (\Mux20~2_combout\)) # (!\Mux28~2_combout\ & ((\srl64[3][11]~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~2_combout\,
	datab => \srl64[3][11]~113_combout\,
	datac => \Mux20~0_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X73_Y65_N0
\srl64[6][27]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][27]~154_combout\ = (\sll64[6][0]~8_combout\ & (!\B[3]~input_o\ & \srl64[3][27]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][27]~106_combout\,
	combout => \srl64[6][27]~154_combout\);

-- Location: LCCOMB_X70_Y64_N8
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux20~3_combout\ & (((\srl64[6][27]~154_combout\) # (!\Mux20~0_combout\)))) # (!\Mux20~3_combout\ & (\srl64[3][19]~105_combout\ & (\Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \srl64[3][19]~105_combout\,
	datac => \Mux20~0_combout\,
	datad => \srl64[6][27]~154_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X68_Y65_N2
\sll64[2][11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][11]~45_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[11]~input_o\,
	combout => \sll64[2][11]~45_combout\);

-- Location: LCCOMB_X72_Y67_N14
\sll64[2][11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][11]~46_combout\ = (\B[0]~input_o\ & ((\sll64[2][10]~41_combout\))) # (!\B[0]~input_o\ & (\sll64[2][11]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][11]~45_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][10]~41_combout\,
	combout => \sll64[2][11]~46_combout\);

-- Location: LCCOMB_X70_Y63_N16
\sll64[3][11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][11]~47_combout\ = (\B[2]~input_o\ & (\sll64[2][7]~31_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][11]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][7]~31_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][11]~46_combout\,
	combout => \sll64[3][11]~47_combout\);

-- Location: LCCOMB_X73_Y67_N10
\sll64[4][11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][11]~48_combout\ = (\B[3]~input_o\ & (\sll64[2][3]~18_combout\ & ((!\B[2]~input_o\)))) # (!\B[3]~input_o\ & (((\sll64[3][11]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sll64[2][3]~18_combout\,
	datac => \sll64[3][11]~47_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[4][11]~48_combout\);

-- Location: LCCOMB_X74_Y61_N28
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][0]~8_combout\ & ((\sll64[4][11]~48_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[11]~input_o\,
	datad => \sll64[4][11]~48_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X74_Y61_N22
\Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\ShiftFN[1]~input_o\ & (\Mux20~4_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux20~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux20~5_combout\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X68_Y63_N4
\sll64[2][12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][12]~49_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \sll64[2][12]~49_combout\);

-- Location: LCCOMB_X72_Y67_N0
\sll64[2][12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][12]~50_combout\ = (\B[0]~input_o\ & (\sll64[2][11]~45_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][12]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][11]~45_combout\,
	datab => \B[0]~input_o\,
	datac => \sll64[2][12]~49_combout\,
	combout => \sll64[2][12]~50_combout\);

-- Location: LCCOMB_X72_Y67_N26
\sll64[3][12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][12]~51_combout\ = (\B[2]~input_o\ & (\sll64[2][8]~34_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][12]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][8]~34_combout\,
	datab => \sll64[2][12]~50_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][12]~51_combout\);

-- Location: LCCOMB_X72_Y66_N28
\sll64[4][12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][12]~52_combout\ = (\B[3]~input_o\ & (\sll64[3][4]~112_combout\)) # (!\B[3]~input_o\ & ((\sll64[3][12]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][4]~112_combout\,
	datac => \sll64[3][12]~51_combout\,
	datad => \B[3]~input_o\,
	combout => \sll64[4][12]~52_combout\);

-- Location: LCCOMB_X69_Y66_N14
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][0]~8_combout\ & (\sll64[4][12]~52_combout\))) # (!\ShiftFN[0]~input_o\ & (((\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \sll64[4][12]~52_combout\,
	datac => \A[12]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X70_Y62_N2
\sra64[4][28]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][28]~37_combout\ = (\B[2]~input_o\ & (((\sra64[0][31]~2_combout\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\sra64[0][31]~2_combout\))) # (!\B[3]~input_o\ & (\srl64[2][28]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][28]~159_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[4][28]~37_combout\);

-- Location: LCCOMB_X69_Y66_N26
\sra64[6][28]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][28]~38_combout\ = (\sra64[6][16]~3_combout\) # ((\sra64[4][28]~37_combout\ & \sll64[6][0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[4][28]~37_combout\,
	datac => \sll64[6][0]~8_combout\,
	datad => \sra64[6][16]~3_combout\,
	combout => \sra64[6][28]~38_combout\);

-- Location: LCCOMB_X70_Y61_N4
\srl64[4][28]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][28]~155_combout\ = (\sra64[4][28]~9_combout\ & ((\B[1]~input_o\ & (\srl64[1][30]~28_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][28]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][30]~28_combout\,
	datac => \srl64[1][28]~31_combout\,
	datad => \sra64[4][28]~9_combout\,
	combout => \srl64[4][28]~155_combout\);

-- Location: LCCOMB_X70_Y61_N14
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux28~6_combout\ & ((\sra64[6][28]~38_combout\) # ((!\Mux28~5_combout\)))) # (!\Mux28~6_combout\ & (((\srl64[4][28]~155_combout\ & \Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][28]~38_combout\,
	datab => \srl64[4][28]~155_combout\,
	datac => \Mux28~6_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X69_Y62_N2
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux28~4_combout\ & (((\Mux19~0_combout\)))) # (!\Mux28~4_combout\ & ((\Mux19~0_combout\ & ((\sra64[0][31]~2_combout\))) # (!\Mux19~0_combout\ & (\sra64[4][28]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[4][28]~37_combout\,
	datab => \Mux28~4_combout\,
	datac => \Mux19~0_combout\,
	datad => \sra64[0][31]~2_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X69_Y62_N12
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux20~0_combout\ & (((\Mux28~2_combout\)))) # (!\Mux20~0_combout\ & ((\Mux28~2_combout\ & ((\Mux19~1_combout\))) # (!\Mux28~2_combout\ & (\srl64[3][12]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][12]~125_combout\,
	datab => \Mux20~0_combout\,
	datac => \Mux28~2_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X70_Y65_N10
\srl64[6][28]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][28]~156_combout\ = (\srl64[6][28]~160_combout\ & ((\B[1]~input_o\ & ((\srl64[1][30]~28_combout\))) # (!\B[1]~input_o\ & (\srl64[1][28]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][28]~31_combout\,
	datac => \srl64[1][30]~28_combout\,
	datad => \srl64[6][28]~160_combout\,
	combout => \srl64[6][28]~156_combout\);

-- Location: LCCOMB_X69_Y66_N28
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux20~0_combout\ & ((\Mux19~2_combout\ & ((\srl64[6][28]~156_combout\))) # (!\Mux19~2_combout\ & (\srl64[3][20]~120_combout\)))) # (!\Mux20~0_combout\ & (\Mux19~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \Mux19~2_combout\,
	datac => \srl64[3][20]~120_combout\,
	datad => \srl64[6][28]~156_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X69_Y66_N8
\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux19~3_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux19~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux19~4_combout\,
	datad => \Mux19~3_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X70_Y64_N10
\sra64[4][29]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][29]~39_combout\ = (\sll64[4][8]~11_combout\ & ((\B[3]~input_o\ & ((\sra64[0][31]~2_combout\))) # (!\B[3]~input_o\ & (\srl64[1][29]~66_combout\)))) # (!\sll64[4][8]~11_combout\ & (((\sra64[0][31]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][29]~66_combout\,
	datab => \sll64[4][8]~11_combout\,
	datac => \sra64[0][31]~2_combout\,
	datad => \B[3]~input_o\,
	combout => \sra64[4][29]~39_combout\);

-- Location: LCCOMB_X70_Y64_N30
\srl64[4][29]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][29]~166_combout\ = (!\B[3]~input_o\ & (\srl64[2][29]~67_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[2][29]~67_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[4][29]~166_combout\);

-- Location: LCCOMB_X69_Y66_N18
\sra64[6][29]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][29]~40_combout\ = (\sra64[6][16]~3_combout\) # ((\sll64[6][0]~8_combout\ & \sra64[4][29]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sra64[6][16]~3_combout\,
	datac => \sll64[6][0]~8_combout\,
	datad => \sra64[4][29]~39_combout\,
	combout => \sra64[6][29]~40_combout\);

-- Location: LCCOMB_X70_Y64_N4
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & ((\sra64[6][29]~40_combout\))) # (!\Mux28~6_combout\ & (\srl64[4][29]~166_combout\)))) # (!\Mux28~5_combout\ & (((\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][29]~166_combout\,
	datab => \sra64[6][29]~40_combout\,
	datac => \Mux28~5_combout\,
	datad => \Mux28~6_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X70_Y64_N14
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (((\sra64[0][31]~2_combout\) # (\Mux28~4_combout\)))) # (!\Mux18~0_combout\ & (\sra64[4][29]~39_combout\ & ((!\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[4][29]~39_combout\,
	datab => \sra64[0][31]~2_combout\,
	datac => \Mux18~0_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X70_Y64_N24
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux20~0_combout\ & (((\Mux28~2_combout\)))) # (!\Mux20~0_combout\ & ((\Mux28~2_combout\ & ((\Mux18~1_combout\))) # (!\Mux28~2_combout\ & (\srl64[3][13]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][13]~132_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux20~0_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X70_Y64_N18
\srl64[6][29]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][29]~157_combout\ = (\srl64[2][29]~67_combout\ & \srl64[6][28]~160_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][29]~67_combout\,
	datac => \srl64[6][28]~160_combout\,
	combout => \srl64[6][29]~157_combout\);

-- Location: LCCOMB_X70_Y64_N20
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux18~2_combout\ & (((\srl64[6][29]~157_combout\) # (!\Mux20~0_combout\)))) # (!\Mux18~2_combout\ & (\srl64[3][21]~128_combout\ & (\Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][21]~128_combout\,
	datab => \Mux18~2_combout\,
	datac => \Mux20~0_combout\,
	datad => \srl64[6][29]~157_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X68_Y63_N22
\sll64[2][14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][14]~53_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[11]~input_o\,
	combout => \sll64[2][14]~53_combout\);

-- Location: LCCOMB_X72_Y67_N12
\sll64[2][13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][13]~54_combout\ = (\B[0]~input_o\ & (\sll64[2][12]~49_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][14]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][12]~49_combout\,
	datab => \sll64[2][14]~53_combout\,
	datac => \B[0]~input_o\,
	combout => \sll64[2][13]~54_combout\);

-- Location: LCCOMB_X73_Y67_N4
\sll64[3][13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][13]~55_combout\ = (\B[2]~input_o\ & ((\sll64[2][9]~38_combout\))) # (!\B[2]~input_o\ & (\sll64[2][13]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][13]~54_combout\,
	datab => \sll64[2][9]~38_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][13]~55_combout\);

-- Location: LCCOMB_X73_Y67_N30
\sll64[4][13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][13]~56_combout\ = (\B[3]~input_o\ & ((\sll64[4][13]~113_combout\))) # (!\B[3]~input_o\ & (\sll64[3][13]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[3][13]~55_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[4][13]~113_combout\,
	combout => \sll64[4][13]~56_combout\);

-- Location: LCCOMB_X73_Y65_N2
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][0]~8_combout\ & (\sll64[4][13]~56_combout\))) # (!\ShiftFN[0]~input_o\ & (((\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \sll64[4][13]~56_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X73_Y65_N4
\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\ShiftFN[1]~input_o\ & (\Mux18~3_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \Mux18~3_combout\,
	datad => \Mux18~4_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X69_Y61_N28
\srl64[6][30]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][30]~158_combout\ = (\srl64[1][30]~28_combout\ & (!\B[3]~input_o\ & (\sll64[6][0]~8_combout\ & \sll64[4][8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][30]~28_combout\,
	datab => \B[3]~input_o\,
	datac => \sll64[6][0]~8_combout\,
	datad => \sll64[4][8]~11_combout\,
	combout => \srl64[6][30]~158_combout\);

-- Location: LCCOMB_X70_Y65_N14
\srl64[4][30]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][30]~167_combout\ = (\srl64[1][30]~28_combout\ & (!\B[3]~input_o\ & (!\B[2]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][30]~28_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[4][30]~167_combout\);

-- Location: LCCOMB_X72_Y65_N0
\sra64[4][30]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[4][30]~41_combout\ = (\sll64[4][8]~11_combout\ & ((\B[3]~input_o\ & ((\sra64[0][31]~2_combout\))) # (!\B[3]~input_o\ & (\srl64[1][30]~28_combout\)))) # (!\sll64[4][8]~11_combout\ & (((\sra64[0][31]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][30]~28_combout\,
	datab => \sll64[4][8]~11_combout\,
	datac => \B[3]~input_o\,
	datad => \sra64[0][31]~2_combout\,
	combout => \sra64[4][30]~41_combout\);

-- Location: LCCOMB_X72_Y65_N10
\sra64[6][30]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][30]~42_combout\ = (\sra64[6][16]~3_combout\) # ((\sll64[6][0]~8_combout\ & \sra64[4][30]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][16]~3_combout\,
	datac => \sll64[6][0]~8_combout\,
	datad => \sra64[4][30]~41_combout\,
	combout => \sra64[6][30]~42_combout\);

-- Location: LCCOMB_X72_Y65_N12
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux28~6_combout\ & (((\sra64[6][30]~42_combout\) # (!\Mux28~5_combout\)))) # (!\Mux28~6_combout\ & (\srl64[4][30]~167_combout\ & (\Mux28~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[4][30]~167_combout\,
	datab => \Mux28~6_combout\,
	datac => \Mux28~5_combout\,
	datad => \sra64[6][30]~42_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X72_Y65_N14
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & (((\Mux28~4_combout\) # (\sra64[0][31]~2_combout\)))) # (!\Mux17~0_combout\ & (\sra64[4][30]~41_combout\ & (!\Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \sra64[4][30]~41_combout\,
	datac => \Mux28~4_combout\,
	datad => \sra64[0][31]~2_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X69_Y61_N18
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux20~0_combout\ & (((\Mux28~2_combout\)))) # (!\Mux20~0_combout\ & ((\Mux28~2_combout\ & ((\Mux17~1_combout\))) # (!\Mux28~2_combout\ & (\srl64[3][14]~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \srl64[3][14]~138_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X69_Y61_N14
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux20~0_combout\ & ((\Mux17~2_combout\ & (\srl64[6][30]~158_combout\)) # (!\Mux17~2_combout\ & ((\srl64[3][22]~135_combout\))))) # (!\Mux20~0_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \srl64[6][30]~158_combout\,
	datac => \srl64[3][22]~135_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X68_Y63_N24
\sll64[2][15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][15]~58_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[1]~input_o\,
	combout => \sll64[2][15]~58_combout\);

-- Location: LCCOMB_X72_Y67_N6
\sll64[2][14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][14]~59_combout\ = (\B[0]~input_o\ & ((\sll64[2][14]~53_combout\))) # (!\B[0]~input_o\ & (\sll64[2][15]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][15]~58_combout\,
	datab => \sll64[2][14]~53_combout\,
	datac => \B[0]~input_o\,
	combout => \sll64[2][14]~59_combout\);

-- Location: LCCOMB_X74_Y65_N10
\sll64[3][14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][14]~60_combout\ = (\B[2]~input_o\ & ((\sll64[2][10]~42_combout\))) # (!\B[2]~input_o\ & (\sll64[2][14]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][14]~59_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][10]~42_combout\,
	combout => \sll64[3][14]~60_combout\);

-- Location: LCCOMB_X74_Y65_N24
\sll64[4][14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][14]~57_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][2]~16_combout\))) # (!\B[2]~input_o\ & (\sll64[2][6]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sll64[2][6]~28_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][2]~16_combout\,
	combout => \sll64[4][14]~57_combout\);

-- Location: LCCOMB_X74_Y65_N4
\sll64[4][14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][14]~61_combout\ = (\sll64[4][14]~57_combout\) # ((\sll64[3][14]~60_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][14]~60_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[4][14]~57_combout\,
	combout => \sll64[4][14]~61_combout\);

-- Location: LCCOMB_X73_Y65_N14
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][0]~8_combout\ & ((\sll64[4][14]~61_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \A[14]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sll64[4][14]~61_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X73_Y65_N8
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\ShiftFN[1]~input_o\ & (\Mux17~3_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux17~3_combout\,
	datac => \Mux17~4_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X73_Y61_N18
\Y_sra[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[15]~7_combout\ = (\sll64[6][0]~8_combout\ & ((\B[3]~input_o\ & (\srl64[3][23]~143_combout\)) # (!\B[3]~input_o\ & ((\srl64[3][15]~145_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \srl64[3][23]~143_combout\,
	datac => \srl64[3][15]~145_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_sra[15]~7_combout\);

-- Location: LCCOMB_X72_Y65_N26
\Y_sra[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[15]~8_combout\ = (\ExtWord~input_o\ & (\A[15]~input_o\)) # (!\ExtWord~input_o\ & (((\sra64[6][16]~3_combout\) # (\Y_sra[15]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \sra64[6][16]~3_combout\,
	datad => \Y_sra[15]~7_combout\,
	combout => \Y_sra[15]~8_combout\);

-- Location: LCCOMB_X70_Y63_N10
\sll64[4][15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][15]~62_combout\ = (\B[2]~input_o\ & (\sll64[2][3]~18_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][7]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][3]~18_combout\,
	datab => \sll64[2][7]~31_combout\,
	datac => \B[2]~input_o\,
	combout => \sll64[4][15]~62_combout\);

-- Location: LCCOMB_X68_Y63_N18
\sll64[2][15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][15]~63_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[1]~input_o\,
	combout => \sll64[2][15]~63_combout\);

-- Location: LCCOMB_X72_Y67_N16
\sll64[2][15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][15]~64_combout\ = (\B[0]~input_o\ & (\sll64[2][15]~58_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][15]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][15]~58_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][15]~63_combout\,
	combout => \sll64[2][15]~64_combout\);

-- Location: LCCOMB_X73_Y68_N10
\sll64[3][15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][15]~65_combout\ = (\B[2]~input_o\ & (\sll64[2][11]~46_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][15]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][11]~46_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][15]~64_combout\,
	combout => \sll64[3][15]~65_combout\);

-- Location: LCCOMB_X74_Y66_N20
\Y_sll[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[15]~0_combout\ = (\sll64[6][0]~8_combout\ & ((\B[3]~input_o\ & (\sll64[4][15]~62_combout\)) # (!\B[3]~input_o\ & ((\sll64[3][15]~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~8_combout\,
	datab => \B[3]~input_o\,
	datac => \sll64[4][15]~62_combout\,
	datad => \sll64[3][15]~65_combout\,
	combout => \Y_sll[15]~0_combout\);

-- Location: LCCOMB_X72_Y65_N16
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Y_sll[15]~0_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Y_sll[15]~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X73_Y61_N28
\Y_srl[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[15]~9_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((\srl64[3][23]~143_combout\))) # (!\B[3]~input_o\ & (\srl64[3][15]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][15]~145_combout\,
	datab => \srl64[3][23]~143_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Y_srl[15]~9_combout\);

-- Location: LCCOMB_X73_Y61_N30
\Y_srl[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[15]~10_combout\ = (\Y_srl[15]~9_combout\) # ((\sra64[0][31]~2_combout\ & (!\sll64[4][0]~9_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][31]~2_combout\,
	datab => \sll64[4][0]~9_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_srl[15]~9_combout\,
	combout => \Y_srl[15]~10_combout\);

-- Location: LCCOMB_X73_Y61_N2
\Y_srl[31]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[31]~8_combout\ = (\sra64[0][31]~2_combout\ & (!\sll64[4][0]~9_combout\ & \sll64[6][0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][31]~2_combout\,
	datab => \sll64[4][0]~9_combout\,
	datad => \sll64[6][0]~8_combout\,
	combout => \Y_srl[31]~8_combout\);

-- Location: LCCOMB_X73_Y61_N0
\Y_srl[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[15]~11_combout\ = (\ExtWord~input_o\ & (((\Y_srl[31]~8_combout\)))) # (!\ExtWord~input_o\ & (\Y_srl[15]~10_combout\ & (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[15]~10_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \Y_srl[31]~8_combout\,
	combout => \Y_srl[15]~11_combout\);

-- Location: LCCOMB_X72_Y65_N28
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & ((\Y_sra[15]~8_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux16~0_combout\ & (((\ShiftFN[1]~input_o\ & \Y_srl[15]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sra[15]~8_combout\,
	datab => \Mux16~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_srl[15]~11_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X74_Y62_N22
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[31]~8_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][16]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[31]~8_combout\,
	datab => \srl64[6][16]~47_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X74_Y62_N8
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux15~5_combout\ & (((\A[15]~input_o\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux15~5_combout\ & (\sra64[6][16]~4_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \sra64[6][16]~4_combout\,
	datac => \A[15]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X73_Y61_N4
\sll64[4][0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][0]~69_combout\ = (!\sll64[4][0]~9_combout\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[4][0]~9_combout\,
	datad => \A[0]~input_o\,
	combout => \sll64[4][0]~69_combout\);

-- Location: LCCOMB_X74_Y66_N8
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\ExtWord~input_o\) # ((!\B[4]~input_o\ & (!\B[5]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X74_Y66_N14
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\ExtWord~input_o\) # ((\B[4]~input_o\ & !\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X74_Y66_N18
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux15~1_combout\ & (((\Y_sll[15]~0_combout\) # (!\Mux15~0_combout\)))) # (!\Mux15~1_combout\ & (\sll64[4][0]~69_combout\ & (\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][0]~69_combout\,
	datab => \Mux15~1_combout\,
	datac => \Mux15~0_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X73_Y63_N2
\sll64[2][16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][16]~66_combout\ = (\B[1]~input_o\ & (((\A[14]~input_o\)))) # (!\B[1]~input_o\ & (!\ExtWord~input_o\ & ((\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[16]~input_o\,
	combout => \sll64[2][16]~66_combout\);

-- Location: LCCOMB_X72_Y67_N10
\sll64[2][16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][16]~67_combout\ = (\B[0]~input_o\ & (\sll64[2][15]~63_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][16]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][15]~63_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][16]~66_combout\,
	combout => \sll64[2][16]~67_combout\);

-- Location: LCCOMB_X72_Y67_N20
\sll64[3][16]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][16]~68_combout\ = (\B[2]~input_o\ & ((\sll64[2][12]~50_combout\))) # (!\B[2]~input_o\ & (\sll64[2][16]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][16]~67_combout\,
	datab => \sll64[2][12]~50_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][16]~68_combout\);

-- Location: LCCOMB_X73_Y66_N30
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux28~2_combout\ & (\Mux15~2_combout\)) # (!\Mux28~2_combout\ & ((\Mux15~2_combout\ & ((\sll64[3][8]~35_combout\))) # (!\Mux15~2_combout\ & (\sll64[3][16]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \Mux15~2_combout\,
	datac => \sll64[3][16]~68_combout\,
	datad => \sll64[3][8]~35_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X74_Y62_N12
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux15~3_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux15~3_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[16]~input_o\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X74_Y62_N2
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux15~4_combout\) # ((\ShiftFN[1]~input_o\ & \Mux15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux15~6_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X73_Y67_N14
\sll64[4][1]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][1]~114_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & (!\B[1]~input_o\ & \sll64[1][1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \sll64[1][1]~12_combout\,
	combout => \sll64[4][1]~114_combout\);

-- Location: LCCOMB_X74_Y66_N4
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux15~1_combout\ & (((\Y_sll[15]~0_combout\) # (!\Mux15~0_combout\)))) # (!\Mux15~1_combout\ & (\sll64[4][1]~114_combout\ & (\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][1]~114_combout\,
	datab => \Mux15~1_combout\,
	datac => \Mux15~0_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X73_Y63_N4
\sll64[2][17]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][17]~70_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[14]~input_o\)) # (!\B[0]~input_o\ & ((\A[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \sll64[2][17]~70_combout\);

-- Location: LCCOMB_X73_Y63_N14
\sll64[2][17]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][17]~71_combout\ = (\B[0]~input_o\ & ((\A[16]~input_o\))) # (!\B[0]~input_o\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[16]~input_o\,
	combout => \sll64[2][17]~71_combout\);

-- Location: LCCOMB_X73_Y63_N24
\sll64[2][17]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][17]~72_combout\ = (\sll64[2][17]~70_combout\) # ((!\ExtWord~input_o\ & (\sll64[2][17]~71_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sll64[2][17]~70_combout\,
	datac => \sll64[2][17]~71_combout\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][17]~72_combout\);

-- Location: LCCOMB_X72_Y67_N30
\sll64[3][17]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][17]~73_combout\ = (\B[2]~input_o\ & (\sll64[2][13]~54_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][17]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][13]~54_combout\,
	datab => \B[2]~input_o\,
	datac => \sll64[2][17]~72_combout\,
	combout => \sll64[3][17]~73_combout\);

-- Location: LCCOMB_X73_Y66_N16
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & ((\sll64[3][9]~39_combout\) # ((\Mux28~2_combout\)))) # (!\Mux14~0_combout\ & (((\sll64[3][17]~73_combout\ & !\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][9]~39_combout\,
	datab => \Mux14~0_combout\,
	datac => \sll64[3][17]~73_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X73_Y65_N10
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux14~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux14~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X73_Y62_N0
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[31]~8_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][17]~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Y_srl[31]~8_combout\,
	datad => \srl64[6][17]~79_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X73_Y65_N20
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux14~3_combout\ & ((\A[15]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux14~3_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[6][17]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \A[15]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[6][17]~8_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X73_Y65_N6
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux14~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X72_Y61_N6
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_srl[31]~8_combout\))) # (!\ExtWord~input_o\ & (\srl64[6][18]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \srl64[6][18]~161_combout\,
	datac => \Y_srl[31]~8_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X74_Y61_N10
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux13~3_combout\ & ((\A[15]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux13~3_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[6][18]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \A[15]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[6][18]~15_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X74_Y65_N22
\sll64[4][2]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][2]~115_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & \sll64[2][2]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][2]~16_combout\,
	combout => \sll64[4][2]~115_combout\);

-- Location: LCCOMB_X74_Y66_N30
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux15~1_combout\ & (((\Y_sll[15]~0_combout\) # (!\Mux15~0_combout\)))) # (!\Mux15~1_combout\ & (\sll64[4][2]~115_combout\ & (\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][2]~115_combout\,
	datab => \Mux15~1_combout\,
	datac => \Mux15~0_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X73_Y63_N28
\sll64[2][18]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][18]~75_combout\ = (\B[0]~input_o\ & (\A[17]~input_o\)) # (!\B[0]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[18]~input_o\,
	combout => \sll64[2][18]~75_combout\);

-- Location: LCCOMB_X73_Y63_N10
\sll64[2][18]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][18]~74_combout\ = (\B[0]~input_o\ & (\A[15]~input_o\)) # (!\B[0]~input_o\ & (((!\ExtWord~input_o\ & \A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[16]~input_o\,
	combout => \sll64[2][18]~74_combout\);

-- Location: LCCOMB_X73_Y63_N22
\sll64[2][18]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][18]~76_combout\ = (\B[1]~input_o\ & (((\sll64[2][18]~74_combout\)))) # (!\B[1]~input_o\ & (!\ExtWord~input_o\ & (\sll64[2][18]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sll64[2][18]~75_combout\,
	datac => \B[1]~input_o\,
	datad => \sll64[2][18]~74_combout\,
	combout => \sll64[2][18]~76_combout\);

-- Location: LCCOMB_X74_Y65_N30
\sll64[3][18]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][18]~77_combout\ = (\B[2]~input_o\ & (\sll64[2][14]~59_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][18]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][14]~59_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][18]~76_combout\,
	combout => \sll64[3][18]~77_combout\);

-- Location: LCCOMB_X74_Y65_N8
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\sll64[3][10]~43_combout\) # ((\Mux28~2_combout\)))) # (!\Mux13~0_combout\ & (((!\Mux28~2_combout\ & \sll64[3][18]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \sll64[3][10]~43_combout\,
	datac => \Mux28~2_combout\,
	datad => \sll64[3][18]~77_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X74_Y61_N0
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux13~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X74_Y61_N4
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux13~2_combout\) # ((\Mux13~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X73_Y67_N16
\sll64[4][3]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[4][3]~82_combout\ = (\sra64[4][28]~9_combout\ & ((\sll64[2][3]~17_combout\) # ((\sll64[1][1]~12_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][1]~12_combout\,
	datab => \B[1]~input_o\,
	datac => \sll64[2][3]~17_combout\,
	datad => \sra64[4][28]~9_combout\,
	combout => \sll64[4][3]~82_combout\);

-- Location: LCCOMB_X73_Y67_N26
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Y_sll[15]~0_combout\))) # (!\Mux15~1_combout\ & (\sll64[4][3]~82_combout\)))) # (!\Mux15~0_combout\ & (((\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \sll64[4][3]~82_combout\,
	datac => \Mux15~1_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X73_Y68_N6
\sll64[2][20]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][20]~79_combout\ = (\B[1]~input_o\ & ((\A[17]~input_o\))) # (!\B[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	combout => \sll64[2][20]~79_combout\);

-- Location: LCCOMB_X73_Y68_N12
\sll64[2][19]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][19]~78_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[16]~input_o\))) # (!\B[1]~input_o\ & (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[18]~input_o\,
	datad => \A[16]~input_o\,
	combout => \sll64[2][19]~78_combout\);

-- Location: LCCOMB_X73_Y68_N16
\sll64[2][19]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][19]~80_combout\ = (\sll64[2][19]~78_combout\) # ((\sll64[2][20]~79_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][20]~79_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][19]~78_combout\,
	combout => \sll64[2][19]~80_combout\);

-- Location: LCCOMB_X73_Y68_N18
\sll64[3][19]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][19]~81_combout\ = (\B[2]~input_o\ & (\sll64[2][15]~64_combout\)) # (!\B[2]~input_o\ & (((!\ExtWord~input_o\ & \sll64[2][19]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][15]~64_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][19]~80_combout\,
	combout => \sll64[3][19]~81_combout\);

-- Location: LCCOMB_X73_Y67_N20
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & ((\sll64[3][11]~47_combout\) # ((\Mux28~2_combout\)))) # (!\Mux12~0_combout\ & (((\sll64[3][19]~81_combout\ & !\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \sll64[3][11]~47_combout\,
	datac => \sll64[3][19]~81_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X74_Y61_N30
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux12~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[19]~input_o\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X72_Y61_N24
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_srl[31]~8_combout\))) # (!\ExtWord~input_o\ & (\srl64[6][19]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \srl64[6][19]~114_combout\,
	datac => \Y_srl[31]~8_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X74_Y61_N8
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux12~3_combout\ & ((\A[15]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux12~3_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[6][19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~3_combout\,
	datab => \A[15]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[6][19]~19_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X74_Y61_N26
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~2_combout\) # ((\Mux12~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux12~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X72_Y64_N0
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\ExtWord~input_o\ & ((\Y_srl[31]~8_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\ & (((\srl64[6][20]~162_combout\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[31]~8_combout\,
	datab => \srl64[6][20]~162_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X72_Y64_N26
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux11~3_combout\ & ((\A[15]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux11~3_combout\ & (((\sra64[6][20]~21_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Mux11~3_combout\,
	datac => \sra64[6][20]~21_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X74_Y66_N24
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux15~1_combout\ & (((\Y_sll[15]~0_combout\) # (!\Mux15~0_combout\)))) # (!\Mux15~1_combout\ & (\sll64[4][4]~23_combout\ & (\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][4]~23_combout\,
	datab => \Mux15~1_combout\,
	datac => \Mux15~0_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X73_Y68_N4
\sll64[2][20]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][20]~83_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[18]~input_o\,
	datad => \A[20]~input_o\,
	combout => \sll64[2][20]~83_combout\);

-- Location: LCCOMB_X73_Y68_N30
\sll64[2][20]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][20]~84_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\sll64[2][20]~79_combout\))) # (!\B[0]~input_o\ & (\sll64[2][20]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \sll64[2][20]~83_combout\,
	datad => \sll64[2][20]~79_combout\,
	combout => \sll64[2][20]~84_combout\);

-- Location: LCCOMB_X72_Y66_N22
\sll64[3][20]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][20]~85_combout\ = (\B[2]~input_o\ & (\sll64[2][16]~67_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][20]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][16]~67_combout\,
	datac => \sll64[2][20]~84_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][20]~85_combout\);

-- Location: LCCOMB_X72_Y66_N24
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & ((\sll64[3][12]~51_combout\) # ((\Mux28~2_combout\)))) # (!\Mux11~0_combout\ & (((\sll64[3][20]~85_combout\ & !\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \sll64[3][12]~51_combout\,
	datac => \sll64[3][20]~85_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X72_Y64_N6
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux11~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[20]~input_o\,
	datac => \Mux11~1_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X72_Y64_N4
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux11~2_combout\) # ((\Mux11~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X72_Y64_N16
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_srl[31]~8_combout\))) # (!\ExtWord~input_o\ & (\srl64[6][21]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[6][21]~163_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_srl[31]~8_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X72_Y64_N18
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux10~3_combout\ & ((\A[15]~input_o\))) # (!\Mux10~3_combout\ & (\sra64[6][21]~24_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][21]~24_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux10~3_combout\,
	datad => \A[15]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X73_Y68_N24
\sll64[2][21]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][21]~86_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[19]~input_o\,
	datad => \A[21]~input_o\,
	combout => \sll64[2][21]~86_combout\);

-- Location: LCCOMB_X73_Y68_N2
\sll64[2][21]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][21]~87_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\sll64[2][20]~83_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][21]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \sll64[2][20]~83_combout\,
	datad => \sll64[2][21]~86_combout\,
	combout => \sll64[2][21]~87_combout\);

-- Location: LCCOMB_X73_Y67_N22
\sll64[3][21]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][21]~88_combout\ = (\B[2]~input_o\ & (\sll64[2][17]~72_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][21]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][17]~72_combout\,
	datac => \sll64[2][21]~87_combout\,
	datad => \B[2]~input_o\,
	combout => \sll64[3][21]~88_combout\);

-- Location: LCCOMB_X73_Y67_N0
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Y_sll[15]~0_combout\))) # (!\Mux15~1_combout\ & (\sll64[4][5]~26_combout\)))) # (!\Mux15~0_combout\ & (((\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \sll64[4][5]~26_combout\,
	datac => \Mux15~1_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X73_Y67_N2
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & (((\sll64[3][13]~55_combout\) # (\Mux28~2_combout\)))) # (!\Mux10~0_combout\ & (\sll64[3][21]~88_combout\ & ((!\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][21]~88_combout\,
	datab => \Mux10~0_combout\,
	datac => \sll64[3][13]~55_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X72_Y64_N14
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux10~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[21]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X72_Y64_N28
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux10~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux10~4_combout\,
	datac => \Mux10~2_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X73_Y68_N20
\sll64[2][22]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][22]~89_combout\ = (\B[1]~input_o\ & ((\A[20]~input_o\))) # (!\B[1]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[22]~input_o\,
	datad => \A[20]~input_o\,
	combout => \sll64[2][22]~89_combout\);

-- Location: LCCOMB_X73_Y68_N14
\sll64[2][22]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][22]~90_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\sll64[2][21]~86_combout\))) # (!\B[0]~input_o\ & (\sll64[2][22]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sll64[2][22]~89_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][21]~86_combout\,
	combout => \sll64[2][22]~90_combout\);

-- Location: LCCOMB_X74_Y65_N18
\sll64[3][22]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][22]~91_combout\ = (\B[2]~input_o\ & (\sll64[2][18]~76_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][22]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][18]~76_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][22]~90_combout\,
	combout => \sll64[3][22]~91_combout\);

-- Location: LCCOMB_X74_Y66_N26
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Y_sll[15]~0_combout\))) # (!\Mux15~1_combout\ & (\sll64[4][6]~29_combout\)))) # (!\Mux15~0_combout\ & (((\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][6]~29_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X74_Y65_N12
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux28~2_combout\ & (((\Mux9~0_combout\)))) # (!\Mux28~2_combout\ & ((\Mux9~0_combout\ & (\sll64[3][14]~60_combout\)) # (!\Mux9~0_combout\ & ((\sll64[3][22]~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][14]~60_combout\,
	datab => \sll64[3][22]~91_combout\,
	datac => \Mux28~2_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X72_Y63_N4
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux9~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X74_Y61_N20
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\) # (\Y_srl[31]~8_combout\)))) # (!\ExtWord~input_o\ & (\srl64[6][22]~164_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[6][22]~164_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_srl[31]~8_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X74_Y61_N14
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux9~3_combout\ & ((\A[15]~input_o\))) # (!\Mux9~3_combout\ & (\sra64[6][22]~27_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][22]~27_combout\,
	datab => \A[15]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X72_Y63_N6
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux9~2_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X74_Y61_N16
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\) # (\Y_srl[31]~8_combout\)))) # (!\ExtWord~input_o\ & (\srl64[6][23]~165_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[6][23]~165_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_srl[31]~8_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X74_Y61_N2
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux8~3_combout\ & ((\A[15]~input_o\))) # (!\Mux8~3_combout\ & (\sra64[6][23]~29_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][23]~29_combout\,
	datab => \A[15]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X74_Y66_N28
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & ((\Y_sll[15]~0_combout\))) # (!\Mux15~1_combout\ & (\sll64[4][7]~32_combout\)))) # (!\Mux15~0_combout\ & (((\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][7]~32_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X73_Y68_N0
\sll64[2][24]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][24]~92_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[23]~input_o\,
	combout => \sll64[2][24]~92_combout\);

-- Location: LCCOMB_X73_Y68_N26
\sll64[3][23]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][23]~93_combout\ = (!\B[2]~input_o\ & ((\B[0]~input_o\ & (\sll64[2][22]~89_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][24]~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[2][22]~89_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][24]~92_combout\,
	combout => \sll64[3][23]~93_combout\);

-- Location: LCCOMB_X73_Y68_N28
\sll64[3][23]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][23]~94_combout\ = (!\ExtWord~input_o\ & ((\sll64[3][23]~93_combout\) # ((\B[2]~input_o\ & \sll64[2][19]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][23]~93_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][19]~80_combout\,
	combout => \sll64[3][23]~94_combout\);

-- Location: LCCOMB_X74_Y66_N22
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux28~2_combout\ & (\Mux8~0_combout\)) # (!\Mux28~2_combout\ & ((\Mux8~0_combout\ & ((\sll64[3][15]~65_combout\))) # (!\Mux8~0_combout\ & (\sll64[3][23]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \Mux8~0_combout\,
	datac => \sll64[3][23]~94_combout\,
	datad => \sll64[3][15]~65_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X74_Y64_N16
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux8~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[23]~input_o\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X74_Y61_N12
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~2_combout\) # ((\Mux8~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X69_Y66_N4
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X73_Y66_N12
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\B[4]~input_o\) # ((\B[2]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X73_Y66_N2
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\B[4]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X73_Y69_N28
\sll64[2][24]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][24]~95_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \sll64[2][24]~95_combout\);

-- Location: LCCOMB_X70_Y66_N18
\sll64[2][24]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][24]~96_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\sll64[2][24]~92_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][24]~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sll64[2][24]~92_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][24]~95_combout\,
	combout => \sll64[2][24]~96_combout\);

-- Location: LCCOMB_X73_Y66_N6
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~1_combout\ & ((\Mux7~0_combout\) # ((\sll64[2][20]~84_combout\)))) # (!\Mux7~1_combout\ & (!\Mux7~0_combout\ & (\sll64[2][24]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~0_combout\,
	datac => \sll64[2][24]~96_combout\,
	datad => \sll64[2][20]~84_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X73_Y66_N24
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~2_combout\ & (((\sll64[4][8]~36_combout\)) # (!\Mux7~0_combout\))) # (!\Mux7~2_combout\ & (\Mux7~0_combout\ & ((\sll64[3][16]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux7~0_combout\,
	datac => \sll64[4][8]~36_combout\,
	datad => \sll64[3][16]~68_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X73_Y69_N16
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\ShiftFN[1]~input_o\) # ((\ShiftFN[0]~input_o\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X69_Y62_N14
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\ExtWord~input_o\ & ((\Y_srl[31]~8_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\ & (((!\ShiftFN[0]~input_o\ & \srl64[6][24]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[31]~8_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \srl64[6][24]~148_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X73_Y69_N22
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux7~5_combout\ & (\A[15]~input_o\)) # (!\Mux7~5_combout\ & ((\sra64[6][24]~31_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \sra64[6][24]~31_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X73_Y69_N10
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & (((\Mux7~6_combout\) # (\Mux28~8_combout\)))) # (!\Mux7~7_combout\ & (\A[24]~input_o\ & ((!\Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Mux7~7_combout\,
	datac => \Mux7~6_combout\,
	datad => \Mux28~8_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X73_Y69_N4
Mux7 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~combout\ = (\Mux7~4_combout\ & ((\Mux7~8_combout\ & (\Y_sll[15]~0_combout\)) # (!\Mux7~8_combout\ & ((\Mux7~3_combout\))))) # (!\Mux7~4_combout\ & (((\Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \Y_sll[15]~0_combout\,
	datac => \Mux7~3_combout\,
	datad => \Mux7~8_combout\,
	combout => \Mux7~combout\);

-- Location: LCCOMB_X67_Y71_N24
\sll64[2][25]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][25]~97_combout\ = (\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[23]~input_o\,
	combout => \sll64[2][25]~97_combout\);

-- Location: LCCOMB_X70_Y66_N28
\sll64[2][25]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][25]~98_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\sll64[2][24]~95_combout\))) # (!\B[0]~input_o\ & (\sll64[2][25]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sll64[2][25]~97_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][24]~95_combout\,
	combout => \sll64[2][25]~98_combout\);

-- Location: LCCOMB_X73_Y66_N18
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux7~1_combout\ & (((\Mux7~0_combout\)))) # (!\Mux7~1_combout\ & ((\Mux7~0_combout\ & ((\sll64[3][17]~73_combout\))) # (!\Mux7~0_combout\ & (\sll64[2][25]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \sll64[2][25]~98_combout\,
	datac => \sll64[3][17]~73_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X73_Y66_N20
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux7~1_combout\ & ((\Mux6~0_combout\ & ((\sll64[4][9]~40_combout\))) # (!\Mux6~0_combout\ & (\sll64[2][21]~87_combout\)))) # (!\Mux7~1_combout\ & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux6~0_combout\,
	datac => \sll64[2][21]~87_combout\,
	datad => \sll64[4][9]~40_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X73_Y62_N18
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[31]~8_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][25]~150_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Y_srl[31]~8_combout\,
	datad => \srl64[6][25]~150_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X73_Y62_N4
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux6~2_combout\ & (\A[15]~input_o\)) # (!\Mux6~2_combout\ & ((\sra64[6][25]~33_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[15]~input_o\,
	datac => \sra64[6][25]~33_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X73_Y69_N30
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux7~7_combout\ & (((\Mux6~3_combout\) # (\Mux28~8_combout\)))) # (!\Mux7~7_combout\ & (\A[25]~input_o\ & ((!\Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \Mux7~7_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux28~8_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X73_Y69_N0
Mux6 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~combout\ = (\Mux7~4_combout\ & ((\Mux6~4_combout\ & ((\Y_sll[15]~0_combout\))) # (!\Mux6~4_combout\ & (\Mux6~1_combout\)))) # (!\Mux7~4_combout\ & (((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux6~4_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux6~combout\);

-- Location: LCCOMB_X73_Y69_N2
\sll64[2][27]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][27]~99_combout\ = (\B[1]~input_o\ & ((\A[24]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[24]~input_o\,
	combout => \sll64[2][27]~99_combout\);

-- Location: LCCOMB_X70_Y66_N22
\sll64[2][26]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][26]~100_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\sll64[2][25]~97_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][27]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sll64[2][25]~97_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][27]~99_combout\,
	combout => \sll64[2][26]~100_combout\);

-- Location: LCCOMB_X73_Y66_N22
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux7~1_combout\ & ((\Mux7~0_combout\) # ((\sll64[2][22]~90_combout\)))) # (!\Mux7~1_combout\ & (!\Mux7~0_combout\ & (\sll64[2][26]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~0_combout\,
	datac => \sll64[2][26]~100_combout\,
	datad => \sll64[2][22]~90_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X73_Y66_N0
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux7~0_combout\ & ((\Mux5~0_combout\ & (\sll64[4][10]~44_combout\)) # (!\Mux5~0_combout\ & ((\sll64[3][18]~77_combout\))))) # (!\Mux7~0_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[4][10]~44_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \sll64[3][18]~77_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X69_Y64_N20
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\ExtWord~input_o\ & ((\Y_srl[31]~8_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\ & (((\srl64[6][26]~152_combout\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_srl[31]~8_combout\,
	datac => \srl64[6][26]~152_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X69_Y64_N14
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (((\A[15]~input_o\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux5~2_combout\ & (\sra64[6][26]~34_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][26]~34_combout\,
	datab => \Mux5~2_combout\,
	datac => \A[15]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X73_Y69_N12
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux7~7_combout\ & ((\Mux5~3_combout\) # ((\Mux28~8_combout\)))) # (!\Mux7~7_combout\ & (((\A[26]~input_o\ & !\Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux7~7_combout\,
	datac => \A[26]~input_o\,
	datad => \Mux28~8_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X73_Y69_N14
Mux5 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~combout\ = (\Mux7~4_combout\ & ((\Mux5~4_combout\ & (\Y_sll[15]~0_combout\)) # (!\Mux5~4_combout\ & ((\Mux5~1_combout\))))) # (!\Mux7~4_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \Y_sll[15]~0_combout\,
	datac => \Mux5~1_combout\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~combout\);

-- Location: LCCOMB_X69_Y66_N6
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_srl[31]~8_combout\)) # (!\ExtWord~input_o\ & ((\srl64[6][27]~154_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_srl[31]~8_combout\,
	datac => \ExtWord~input_o\,
	datad => \srl64[6][27]~154_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X69_Y66_N16
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & (((\A[15]~input_o\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux4~2_combout\ & (\sra64[6][27]~36_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \sra64[6][27]~36_combout\,
	datac => \A[15]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X73_Y69_N20
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux7~7_combout\ & ((\Mux4~3_combout\) # ((\Mux28~8_combout\)))) # (!\Mux7~7_combout\ & (((\A[27]~input_o\ & !\Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux7~7_combout\,
	datac => \A[27]~input_o\,
	datad => \Mux28~8_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X73_Y69_N8
\sll64[2][27]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][27]~102_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[25]~input_o\))) # (!\B[1]~input_o\ & (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[25]~input_o\,
	combout => \sll64[2][27]~102_combout\);

-- Location: LCCOMB_X73_Y69_N26
\sll64[2][27]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][27]~103_combout\ = (!\ExtWord~input_o\ & ((\sll64[2][27]~102_combout\) # ((\B[0]~input_o\ & \sll64[2][27]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \sll64[2][27]~102_combout\,
	datad => \sll64[2][27]~99_combout\,
	combout => \sll64[2][27]~103_combout\);

-- Location: LCCOMB_X73_Y66_N26
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux7~1_combout\ & (\Mux7~0_combout\)) # (!\Mux7~1_combout\ & ((\Mux7~0_combout\ & (\sll64[3][19]~81_combout\)) # (!\Mux7~0_combout\ & ((\sll64[2][27]~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~0_combout\,
	datac => \sll64[3][19]~81_combout\,
	datad => \sll64[2][27]~103_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X73_Y68_N22
\sll64[2][23]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][23]~101_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\sll64[2][22]~89_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][24]~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sll64[2][22]~89_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][24]~92_combout\,
	combout => \sll64[2][23]~101_combout\);

-- Location: LCCOMB_X73_Y66_N4
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux7~1_combout\ & ((\Mux4~0_combout\ & (\sll64[4][11]~48_combout\)) # (!\Mux4~0_combout\ & ((\sll64[2][23]~101_combout\))))) # (!\Mux7~1_combout\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \sll64[4][11]~48_combout\,
	datac => \Mux4~0_combout\,
	datad => \sll64[2][23]~101_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X73_Y69_N6
Mux4 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~combout\ = (\Mux7~4_combout\ & ((\Mux4~4_combout\ & ((\Y_sll[15]~0_combout\))) # (!\Mux4~4_combout\ & (\Mux4~1_combout\)))) # (!\Mux7~4_combout\ & (\Mux4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \Mux4~4_combout\,
	datac => \Mux4~1_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux4~combout\);

-- Location: LCCOMB_X69_Y66_N10
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\ShiftFN[1]~input_o\ & (((\ExtWord~input_o\) # (!\ShiftFN[0]~input_o\)) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X69_Y66_N12
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\ExtWord~input_o\ & (((\Y_srl[31]~8_combout\) # (\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\ & (\srl64[6][28]~156_combout\ & ((!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[6][28]~156_combout\,
	datab => \Y_srl[31]~8_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X69_Y66_N30
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & ((\A[15]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux3~4_combout\ & (((\sra64[6][28]~38_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \A[15]~input_o\,
	datac => \sra64[6][28]~38_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X74_Y65_N14
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X70_Y66_N24
\sll64[1][28]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][28]~105_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\A[27]~input_o\))) # (!\B[0]~input_o\ & (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[27]~input_o\,
	combout => \sll64[1][28]~105_combout\);

-- Location: LCCOMB_X72_Y66_N12
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sra64[4][28]~9_combout\ & (\sll64[1][28]~105_combout\ & ((!\Mux28~1_combout\)))) # (!\sra64[4][28]~9_combout\ & (((\sll64[2][24]~96_combout\) # (\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][28]~105_combout\,
	datab => \sra64[4][28]~9_combout\,
	datac => \sll64[2][24]~96_combout\,
	datad => \Mux28~1_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X72_Y66_N18
\sll64[1][26]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][26]~104_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[25]~input_o\)) # (!\B[0]~input_o\ & ((\A[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[26]~input_o\,
	combout => \sll64[1][26]~104_combout\);

-- Location: LCCOMB_X72_Y66_N14
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\sll64[3][20]~85_combout\) # (!\Mux28~1_combout\)))) # (!\Mux3~0_combout\ & (\sll64[1][26]~104_combout\ & ((\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \sll64[1][26]~104_combout\,
	datac => \sll64[3][20]~85_combout\,
	datad => \Mux28~1_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X72_Y66_N0
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux28~4_combout\ & (((\A[28]~input_o\) # (\Mux2~0_combout\)))) # (!\Mux28~4_combout\ & (\Mux3~1_combout\ & ((!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \Mux3~1_combout\,
	datac => \A[28]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X72_Y66_N10
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux2~0_combout\ & ((\Mux3~2_combout\ & ((\Y_sll[15]~0_combout\))) # (!\Mux3~2_combout\ & (\sll64[4][12]~52_combout\)))) # (!\Mux2~0_combout\ & (\Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux3~2_combout\,
	datac => \sll64[4][12]~52_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X69_Y66_N24
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux2~1_combout\ & ((\Mux3~3_combout\) # ((\ShiftFN[1]~input_o\ & \Mux3~5_combout\)))) # (!\Mux2~1_combout\ & (\ShiftFN[1]~input_o\ & (\Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux3~5_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X69_Y66_N2
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\ShiftFN[0]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_srl[31]~8_combout\))) # (!\ExtWord~input_o\ & (\srl64[6][29]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \srl64[6][29]~157_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_srl[31]~8_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X69_Y66_N20
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\ & (((\A[15]~input_o\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux2~6_combout\ & (\sra64[6][29]~40_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][29]~40_combout\,
	datab => \Mux2~6_combout\,
	datac => \A[15]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X70_Y66_N26
\sll64[1][29]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][29]~107_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[28]~input_o\)) # (!\B[0]~input_o\ & ((\A[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \sll64[1][29]~107_combout\);

-- Location: LCCOMB_X72_Y66_N30
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux28~1_combout\ & (((!\sra64[4][28]~9_combout\)))) # (!\Mux28~1_combout\ & ((\sra64[4][28]~9_combout\ & ((\sll64[1][29]~107_combout\))) # (!\sra64[4][28]~9_combout\ & (\sll64[2][25]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][25]~98_combout\,
	datab => \Mux28~1_combout\,
	datac => \sll64[1][29]~107_combout\,
	datad => \sra64[4][28]~9_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X72_Y66_N20
\sll64[1][27]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][27]~106_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[26]~input_o\)) # (!\B[0]~input_o\ & ((\A[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[27]~input_o\,
	combout => \sll64[1][27]~106_combout\);

-- Location: LCCOMB_X72_Y66_N8
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & (((\sll64[3][21]~88_combout\) # (!\Mux28~1_combout\)))) # (!\Mux2~2_combout\ & (\sll64[1][27]~106_combout\ & ((\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \sll64[1][27]~106_combout\,
	datac => \sll64[3][21]~88_combout\,
	datad => \Mux28~1_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X72_Y66_N2
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux28~4_combout\ & (((\A[29]~input_o\) # (\Mux2~0_combout\)))) # (!\Mux28~4_combout\ & (\Mux2~3_combout\ & ((!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \Mux2~3_combout\,
	datac => \A[29]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X72_Y66_N4
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~0_combout\ & ((\Mux2~4_combout\ & ((\Y_sll[15]~0_combout\))) # (!\Mux2~4_combout\ & (\sll64[4][13]~56_combout\)))) # (!\Mux2~0_combout\ & (\Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux2~4_combout\,
	datac => \sll64[4][13]~56_combout\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X69_Y66_N22
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~1_combout\ & ((\Mux2~5_combout\) # ((\Mux2~7_combout\ & \ShiftFN[1]~input_o\)))) # (!\Mux2~1_combout\ & (\Mux2~7_combout\ & ((\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~7_combout\,
	datac => \Mux2~5_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X72_Y65_N20
\Y_sra[30]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[30]~9_combout\ = (\ExtWord~input_o\ & (\A[15]~input_o\)) # (!\ExtWord~input_o\ & ((\sra64[6][30]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \sra64[6][30]~42_combout\,
	combout => \Y_sra[30]~9_combout\);

-- Location: LCCOMB_X70_Y66_N0
\sll64[3][30]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][30]~110_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[28]~input_o\)) # (!\B[1]~input_o\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[30]~input_o\,
	combout => \sll64[3][30]~110_combout\);

-- Location: LCCOMB_X70_Y66_N4
\sll64[3][30]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][30]~108_combout\ = (\B[2]~input_o\ & ((\B[0]~input_o\ & (\sll64[2][25]~97_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][27]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[2][25]~97_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][27]~99_combout\,
	combout => \sll64[3][30]~108_combout\);

-- Location: LCCOMB_X70_Y66_N30
\sll64[3][30]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][30]~109_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[27]~input_o\))) # (!\B[1]~input_o\ & (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[27]~input_o\,
	combout => \sll64[3][30]~109_combout\);

-- Location: LCCOMB_X70_Y66_N10
\sll64[3][30]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][30]~111_combout\ = (\sll64[3][30]~108_combout\) # ((!\B[2]~input_o\ & ((\sll64[3][30]~110_combout\) # (\sll64[3][30]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[3][30]~110_combout\,
	datac => \sll64[3][30]~108_combout\,
	datad => \sll64[3][30]~109_combout\,
	combout => \sll64[3][30]~111_combout\);

-- Location: LCCOMB_X74_Y65_N16
\Y_sll[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[30]~1_combout\ = (\B[3]~input_o\ & (((\sll64[3][22]~91_combout\)))) # (!\B[3]~input_o\ & (\sll64[3][30]~111_combout\ & (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][30]~111_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[3]~input_o\,
	datad => \sll64[3][22]~91_combout\,
	combout => \Y_sll[30]~1_combout\);

-- Location: LCCOMB_X74_Y65_N26
\Y_sll[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[30]~2_combout\ = (\B[4]~input_o\ & (\sll64[4][14]~61_combout\)) # (!\B[4]~input_o\ & ((\Y_sll[30]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \sll64[4][14]~61_combout\,
	datad => \Y_sll[30]~1_combout\,
	combout => \Y_sll[30]~2_combout\);

-- Location: LCCOMB_X74_Y65_N20
\Y_sll[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[30]~3_combout\ = (\ExtWord~input_o\ & (((\Y_sll[15]~0_combout\)))) # (!\ExtWord~input_o\ & (\Y_sll[30]~2_combout\ & (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[30]~2_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Y_sll[30]~3_combout\);

-- Location: LCCOMB_X72_Y65_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Y_sll[30]~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Y_sll[30]~3_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X72_Y65_N6
\Y_srl[30]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[30]~12_combout\ = (\ExtWord~input_o\ & (\A[15]~input_o\ & (!\B[0]~input_o\))) # (!\ExtWord~input_o\ & (((\srl64[1][30]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][30]~28_combout\,
	combout => \Y_srl[30]~12_combout\);

-- Location: LCCOMB_X72_Y65_N24
\Y_srl[30]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[30]~13_combout\ = (\Y_srl[30]~12_combout\ & (!\B[3]~input_o\ & (\sll64[6][0]~8_combout\ & \sll64[4][8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[30]~12_combout\,
	datab => \B[3]~input_o\,
	datac => \sll64[6][0]~8_combout\,
	datad => \sll64[4][8]~11_combout\,
	combout => \Y_srl[30]~13_combout\);

-- Location: LCCOMB_X72_Y65_N22
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\Y_sra[30]~9_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux1~0_combout\ & (((\ShiftFN[1]~input_o\ & \Y_srl[30]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sra[30]~9_combout\,
	datab => \Mux1~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_srl[30]~13_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X70_Y66_N20
\Y_sll[31]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[31]~5_combout\ = (\B[0]~input_o\ & (((\A[30]~input_o\ & !\ExtWord~input_o\)))) # (!\B[0]~input_o\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y_sll[31]~5_combout\);

-- Location: LCCOMB_X70_Y66_N6
\Y_sll[31]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[31]~6_combout\ = (!\B[2]~input_o\ & ((\B[1]~input_o\ & (\sll64[1][29]~107_combout\)) # (!\B[1]~input_o\ & ((\Y_sll[31]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][29]~107_combout\,
	datab => \Y_sll[31]~5_combout\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_sll[31]~6_combout\);

-- Location: LCCOMB_X73_Y66_N14
\Y_sll[31]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[31]~7_combout\ = (!\B[3]~input_o\ & ((\Y_sll[31]~6_combout\) # ((\B[2]~input_o\ & \sll64[2][27]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~6_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][27]~103_combout\,
	combout => \Y_sll[31]~7_combout\);

-- Location: LCCOMB_X74_Y66_N2
\Y_sll[31]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[31]~8_combout\ = (!\B[4]~input_o\ & ((\Y_sll[31]~7_combout\) # ((\B[3]~input_o\ & \sll64[3][23]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \sll64[3][23]~94_combout\,
	datad => \Y_sll[31]~7_combout\,
	combout => \Y_sll[31]~8_combout\);

-- Location: LCCOMB_X74_Y66_N0
\Y_sll[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[31]~4_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\sll64[4][15]~62_combout\)) # (!\B[3]~input_o\ & ((\sll64[3][15]~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \sll64[4][15]~62_combout\,
	datad => \sll64[3][15]~65_combout\,
	combout => \Y_sll[31]~4_combout\);

-- Location: LCCOMB_X74_Y66_N12
\Y_sll[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[31]~9_combout\ = (!\B[5]~input_o\ & (!\ExtWord~input_o\ & ((\Y_sll[31]~8_combout\) # (\Y_sll[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Y_sll[31]~8_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_sll[31]~4_combout\,
	combout => \Y_sll[31]~9_combout\);

-- Location: LCCOMB_X74_Y66_N6
\Y_sll[31]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[31]~10_combout\ = (\Y_sll[31]~9_combout\) # ((\ExtWord~input_o\ & \Y_sll[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[31]~9_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_sll[15]~0_combout\,
	combout => \Y_sll[31]~10_combout\);

-- Location: LCCOMB_X74_Y62_N28
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Y_sll[31]~10_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Y_sll[31]~10_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X74_Y62_N30
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((\sra64[0][31]~2_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux0~0_combout\ & (\Y_srl[31]~8_combout\ & ((\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[31]~8_combout\,
	datab => \Mux0~0_combout\,
	datac => \sra64[0][31]~2_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux0~1_combout\);

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

-- Location: IOIBUF_X3_Y73_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X115_Y22_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X115_Y12_N1
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X0_Y61_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
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


