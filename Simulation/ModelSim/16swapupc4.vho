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

-- DATE "04/08/2026 15:25:24"

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
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic;
	Y : OUT std_logic_vector(15 DOWNTO 0)
	);
END ShiftUnit;

-- Design Ports Information
-- B[6]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Y_sra[0]~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \srl64[1][10]~12_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \srl64[1][8]~8_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \srl64[1][8]~9_combout\ : std_logic;
SIGNAL \srl64[1][8]~10_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \srl64[1][10]~11_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \srl64[2][8]~13_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \srl64[1][11]~5_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \srl64[1][12]~4_combout\ : std_logic;
SIGNAL \srl64[1][12]~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \sra64[0][15]~2_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \srl64[1][13]~2_combout\ : std_logic;
SIGNAL \srl64[1][14]~3_combout\ : std_logic;
SIGNAL \srl64[2][12]~7_combout\ : std_logic;
SIGNAL \srl64[3][8]~14_combout\ : std_logic;
SIGNAL \srl64[2][4]~18_combout\ : std_logic;
SIGNAL \srl64[2][4]~19_combout\ : std_logic;
SIGNAL \srl64[3][1]~16_combout\ : std_logic;
SIGNAL \srl64[3][0]~15_combout\ : std_logic;
SIGNAL \srl64[3][0]~17_combout\ : std_logic;
SIGNAL \srl64[3][0]~20_combout\ : std_logic;
SIGNAL \Y_sra[0]~1_combout\ : std_logic;
SIGNAL \Y_sra[0]~2_combout\ : std_logic;
SIGNAL \Y_srl[0]~2_combout\ : std_logic;
SIGNAL \sll64[6][0]~6_combout\ : std_logic;
SIGNAL \srl64[6][8]~22_combout\ : std_logic;
SIGNAL \srl64[4][0]~21_combout\ : std_logic;
SIGNAL \Y_srl[0]~3_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \sll64[3][0]~7_combout\ : std_logic;
SIGNAL \sll64[6][0]~8_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \srl64[1][9]~27_combout\ : std_logic;
SIGNAL \srl64[1][9]~28_combout\ : std_logic;
SIGNAL \srl64[1][10]~25_combout\ : std_logic;
SIGNAL \srl64[1][11]~26_combout\ : std_logic;
SIGNAL \srl64[2][9]~29_combout\ : std_logic;
SIGNAL \srl64[1][13]~23_combout\ : std_logic;
SIGNAL \sra64[3][9]~3_combout\ : std_logic;
SIGNAL \sra64[3][9]~4_combout\ : std_logic;
SIGNAL \srl64[1][7]~30_combout\ : std_logic;
SIGNAL \srl64[1][7]~31_combout\ : std_logic;
SIGNAL \srl64[1][5]~32_combout\ : std_logic;
SIGNAL \srl64[2][5]~33_combout\ : std_logic;
SIGNAL \srl64[3][1]~34_combout\ : std_logic;
SIGNAL \srl64[3][1]~35_combout\ : std_logic;
SIGNAL \srl64[3][1]~36_combout\ : std_logic;
SIGNAL \Y_sra[1]~3_combout\ : std_logic;
SIGNAL \Y_sra[1]~4_combout\ : std_logic;
SIGNAL \sll64[1][1]~10_combout\ : std_logic;
SIGNAL \sll64[6][1]~43_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \srl64[2][13]~24_combout\ : std_logic;
SIGNAL \srl64[6][9]~37_combout\ : std_logic;
SIGNAL \Y_srl[1]~4_combout\ : std_logic;
SIGNAL \Y_srl[1]~5_combout\ : std_logic;
SIGNAL \Y_srl[1]~6_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \srl64[1][4]~41_combout\ : std_logic;
SIGNAL \srl64[2][6]~45_combout\ : std_logic;
SIGNAL \srl64[2][6]~46_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \srl64[2][10]~38_combout\ : std_logic;
SIGNAL \sra64[3][10]~5_combout\ : std_logic;
SIGNAL \sra64[3][10]~6_combout\ : std_logic;
SIGNAL \srl64[3][10]~39_combout\ : std_logic;
SIGNAL \srl64[2][10]~42_combout\ : std_logic;
SIGNAL \srl64[3][10]~43_combout\ : std_logic;
SIGNAL \sra64[6][10]~7_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \srl64[1][2]~44_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \srl64[6][10]~40_combout\ : std_logic;
SIGNAL \Mux13~11_combout\ : std_logic;
SIGNAL \sll64[2][2]~11_combout\ : std_logic;
SIGNAL \sll64[2][2]~12_combout\ : std_logic;
SIGNAL \sll64[3][2]~13_combout\ : std_logic;
SIGNAL \Mux13~10_combout\ : std_logic;
SIGNAL \Mux13~12_combout\ : std_logic;
SIGNAL \Mux13~combout\ : std_logic;
SIGNAL \srl64[1][3]~51_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \srl64[3][11]~48_combout\ : std_logic;
SIGNAL \sra64[6][11]~9_combout\ : std_logic;
SIGNAL \srl64[2][13]~47_combout\ : std_logic;
SIGNAL \srl64[3][11]~49_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \sra64[3][11]~8_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \srl64[2][7]~52_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \srl64[6][11]~50_combout\ : std_logic;
SIGNAL \sll64[2][3]~14_combout\ : std_logic;
SIGNAL \sll64[3][3]~15_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \srl64[2][4]~54_combout\ : std_logic;
SIGNAL \srl64[3][12]~55_combout\ : std_logic;
SIGNAL \sra64[6][12]~11_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \sra64[3][12]~10_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \srl64[6][12]~53_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \sll64[2][4]~17_combout\ : std_logic;
SIGNAL \sll64[2][4]~18_combout\ : std_logic;
SIGNAL \sll64[2][4]~19_combout\ : std_logic;
SIGNAL \sll64[3][4]~16_combout\ : std_logic;
SIGNAL \sll64[3][4]~20_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \sll64[2][5]~21_combout\ : std_logic;
SIGNAL \sll64[2][5]~22_combout\ : std_logic;
SIGNAL \sll64[3][5]~23_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \srl64[6][13]~56_combout\ : std_logic;
SIGNAL \srl64[3][13]~57_combout\ : std_logic;
SIGNAL \sll64[3][0]~9_combout\ : std_logic;
SIGNAL \sra64[6][13]~12_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \sra64[3][13]~17_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \srl64[6][14]~62_combout\ : std_logic;
SIGNAL \sra64[6][14]~14_combout\ : std_logic;
SIGNAL \srl64[3][14]~58_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \sra64[3][14]~13_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \sll64[2][7]~24_combout\ : std_logic;
SIGNAL \sll64[2][6]~25_combout\ : std_logic;
SIGNAL \Y_sll[14]~2_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \sll64[2][7]~27_combout\ : std_logic;
SIGNAL \sll64[2][7]~28_combout\ : std_logic;
SIGNAL \sll64[2][3]~26_combout\ : std_logic;
SIGNAL \Y_sll[7]~3_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \srl64[3][7]~59_combout\ : std_logic;
SIGNAL \srl64[3][7]~60_combout\ : std_logic;
SIGNAL \Y_sra[7]~5_combout\ : std_logic;
SIGNAL \Y_sra[7]~6_combout\ : std_logic;
SIGNAL \Y_srl[7]~7_combout\ : std_logic;
SIGNAL \Y_srl[15]~8_combout\ : std_logic;
SIGNAL \Y_srl[7]~9_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \sll64[2][8]~29_combout\ : std_logic;
SIGNAL \sll64[2][8]~30_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \sra64[6][8]~15_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \sra64[6][9]~16_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \sll64[2][9]~31_combout\ : std_logic;
SIGNAL \sll64[2][9]~32_combout\ : std_logic;
SIGNAL \sll64[2][9]~33_combout\ : std_logic;
SIGNAL \sll64[3][1]~44_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \sll64[2][10]~34_combout\ : std_logic;
SIGNAL \sll64[1][10]~35_combout\ : std_logic;
SIGNAL \sll64[2][10]~36_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \sll64[2][11]~37_combout\ : std_logic;
SIGNAL \sll64[2][11]~38_combout\ : std_logic;
SIGNAL \sll64[2][11]~39_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \srl64[6][11]~61_combout\ : std_logic;
SIGNAL \Mux2~13_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \sll64[1][12]~40_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~combout\ : std_logic;
SIGNAL \sll64[1][13]~42_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \sll64[1][11]~41_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \Mux2~combout\ : std_logic;
SIGNAL \Y_sll[14]~5_combout\ : std_logic;
SIGNAL \Y_sll[14]~6_combout\ : std_logic;
SIGNAL \Y_sll[14]~7_combout\ : std_logic;
SIGNAL \Y_sll[14]~8_combout\ : std_logic;
SIGNAL \Y_sll[14]~14_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Y_srl[14]~10_combout\ : std_logic;
SIGNAL \Y_srl[14]~11_combout\ : std_logic;
SIGNAL \Y_sra[14]~7_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Y_sll[14]~4_combout\ : std_logic;
SIGNAL \Y_sll[15]~9_combout\ : std_logic;
SIGNAL \Y_sll[15]~10_combout\ : std_logic;
SIGNAL \Y_sll[15]~11_combout\ : std_logic;
SIGNAL \Y_sll[15]~12_combout\ : std_logic;
SIGNAL \Y_sll[15]~13_combout\ : std_logic;
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

-- Location: IOOBUF_X65_Y73_N23
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~1_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~5_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~5_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~6_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~5_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~5_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~5_combout\,
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
	i => \Mux4~10_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

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

-- Location: IOIBUF_X60_Y73_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X60_Y70_N14
\Y_sra[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[0]~0_combout\ = (\B[4]~input_o\) # ((\ExtWord~input_o\ & (\B[3]~input_o\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y_sra[0]~0_combout\);

-- Location: IOIBUF_X42_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X54_Y69_N0
\srl64[1][10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][10]~12_combout\ = (\B[0]~input_o\ & ((\ExtWord~input_o\ & (\A[3]~input_o\)) # (!\ExtWord~input_o\ & ((\A[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[11]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[1][10]~12_combout\);

-- Location: IOIBUF_X35_Y73_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X56_Y72_N16
\srl64[1][8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][8]~8_combout\ = (!\B[0]~input_o\ & ((\ExtWord~input_o\ & ((\A[0]~input_o\))) # (!\ExtWord~input_o\ & (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \srl64[1][8]~8_combout\);

-- Location: IOIBUF_X52_Y73_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X56_Y72_N10
\srl64[1][8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][8]~9_combout\ = (\ExtWord~input_o\ & (\A[1]~input_o\)) # (!\ExtWord~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[9]~input_o\,
	combout => \srl64[1][8]~9_combout\);

-- Location: LCCOMB_X56_Y72_N20
\srl64[1][8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][8]~10_combout\ = (\srl64[1][8]~8_combout\) # ((\B[0]~input_o\ & \srl64[1][8]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][8]~8_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][8]~9_combout\,
	combout => \srl64[1][8]~10_combout\);

-- Location: IOIBUF_X49_Y73_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X54_Y69_N6
\srl64[1][10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][10]~11_combout\ = (!\B[0]~input_o\ & ((\ExtWord~input_o\ & ((\A[2]~input_o\))) # (!\ExtWord~input_o\ & (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[1][10]~11_combout\);

-- Location: IOIBUF_X58_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X55_Y69_N2
\srl64[2][8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][8]~13_combout\ = (\B[1]~input_o\ & ((\srl64[1][10]~12_combout\) # ((\srl64[1][10]~11_combout\)))) # (!\B[1]~input_o\ & (((\srl64[1][8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][10]~12_combout\,
	datab => \srl64[1][8]~10_combout\,
	datac => \srl64[1][10]~11_combout\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][8]~13_combout\);

-- Location: IOIBUF_X54_Y73_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X54_Y69_N18
\srl64[1][11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][11]~5_combout\ = (\ExtWord~input_o\ & ((\A[4]~input_o\))) # (!\ExtWord~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[4]~input_o\,
	combout => \srl64[1][11]~5_combout\);

-- Location: IOIBUF_X40_Y73_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X54_Y69_N8
\srl64[1][12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][12]~4_combout\ = (\ExtWord~input_o\ & (\A[5]~input_o\)) # (!\ExtWord~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[13]~input_o\,
	combout => \srl64[1][12]~4_combout\);

-- Location: LCCOMB_X54_Y69_N4
\srl64[1][12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][12]~6_combout\ = (\B[0]~input_o\ & ((\srl64[1][12]~4_combout\))) # (!\B[0]~input_o\ & (\srl64[1][11]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][11]~5_combout\,
	datac => \srl64[1][12]~4_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[1][12]~6_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X60_Y69_N8
\sra64[0][15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[0][15]~2_combout\ = (\ExtWord~input_o\ & (\A[7]~input_o\)) # (!\ExtWord~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[15]~input_o\,
	combout => \sra64[0][15]~2_combout\);

-- Location: IOIBUF_X52_Y73_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X55_Y69_N8
\srl64[1][13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][13]~2_combout\ = (\ExtWord~input_o\ & (\A[6]~input_o\)) # (!\ExtWord~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \A[14]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][13]~2_combout\);

-- Location: LCCOMB_X60_Y70_N16
\srl64[1][14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][14]~3_combout\ = (\B[0]~input_o\ & (\sra64[0][15]~2_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][13]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sra64[0][15]~2_combout\,
	datac => \srl64[1][13]~2_combout\,
	combout => \srl64[1][14]~3_combout\);

-- Location: LCCOMB_X57_Y70_N0
\srl64[2][12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][12]~7_combout\ = (\B[1]~input_o\ & ((\srl64[1][14]~3_combout\))) # (!\B[1]~input_o\ & (\srl64[1][12]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][12]~6_combout\,
	datac => \B[1]~input_o\,
	datad => \srl64[1][14]~3_combout\,
	combout => \srl64[2][12]~7_combout\);

-- Location: LCCOMB_X57_Y70_N18
\srl64[3][8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][8]~14_combout\ = (\B[2]~input_o\ & ((\srl64[2][12]~7_combout\))) # (!\B[2]~input_o\ & (\srl64[2][8]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][8]~13_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][12]~7_combout\,
	combout => \srl64[3][8]~14_combout\);

-- Location: LCCOMB_X55_Y69_N30
\srl64[2][4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][4]~18_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[7]~input_o\))) # (!\B[1]~input_o\ & (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \srl64[2][4]~18_combout\);

-- Location: LCCOMB_X55_Y69_N16
\srl64[2][4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][4]~19_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][4]~19_combout\);

-- Location: LCCOMB_X56_Y69_N18
\srl64[3][1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][1]~16_combout\ = (\B[1]~input_o\ & ((\A[3]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[3][1]~16_combout\);

-- Location: LCCOMB_X56_Y69_N24
\srl64[3][0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][0]~15_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[2]~input_o\)) # (!\B[1]~input_o\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[3][0]~15_combout\);

-- Location: LCCOMB_X55_Y69_N20
\srl64[3][0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][0]~17_combout\ = (!\B[2]~input_o\ & ((\srl64[3][0]~15_combout\) # ((\srl64[3][1]~16_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][1]~16_combout\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[3][0]~15_combout\,
	combout => \srl64[3][0]~17_combout\);

-- Location: LCCOMB_X55_Y69_N10
\srl64[3][0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][0]~20_combout\ = (\srl64[3][0]~17_combout\) # ((\B[2]~input_o\ & ((\srl64[2][4]~18_combout\) # (\srl64[2][4]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][4]~18_combout\,
	datab => \srl64[2][4]~19_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[3][0]~17_combout\,
	combout => \srl64[3][0]~20_combout\);

-- Location: LCCOMB_X61_Y70_N14
\Y_sra[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[0]~1_combout\ = (\B[3]~input_o\ & (\srl64[3][8]~14_combout\)) # (!\B[3]~input_o\ & ((\ExtWord~input_o\ & (\srl64[3][8]~14_combout\)) # (!\ExtWord~input_o\ & ((\srl64[3][0]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][8]~14_combout\,
	datab => \srl64[3][0]~20_combout\,
	datac => \B[3]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y_sra[0]~1_combout\);

-- Location: LCCOMB_X61_Y70_N8
\Y_sra[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[0]~2_combout\ = (\Y_sra[0]~0_combout\ & ((\sra64[0][15]~2_combout\))) # (!\Y_sra[0]~0_combout\ & (\Y_sra[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sra[0]~0_combout\,
	datab => \Y_sra[0]~1_combout\,
	datac => \sra64[0][15]~2_combout\,
	combout => \Y_sra[0]~2_combout\);

-- Location: LCCOMB_X60_Y70_N18
\Y_srl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[0]~2_combout\ = (!\ExtWord~input_o\ & (!\B[5]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y_srl[0]~2_combout\);

-- Location: LCCOMB_X60_Y70_N4
\sll64[6][0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[6][0]~6_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \sll64[6][0]~6_combout\);

-- Location: LCCOMB_X57_Y70_N20
\srl64[6][8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][8]~22_combout\ = (\sll64[6][0]~6_combout\ & ((\B[2]~input_o\ & ((\srl64[2][12]~7_combout\))) # (!\B[2]~input_o\ & (\srl64[2][8]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][8]~13_combout\,
	datab => \srl64[2][12]~7_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[6][0]~6_combout\,
	combout => \srl64[6][8]~22_combout\);

-- Location: LCCOMB_X61_Y70_N0
\srl64[4][0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[4][0]~21_combout\ = (\B[3]~input_o\ & (\srl64[3][8]~14_combout\)) # (!\B[3]~input_o\ & (((\srl64[3][0]~20_combout\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][8]~14_combout\,
	datab => \srl64[3][0]~20_combout\,
	datac => \B[3]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[4][0]~21_combout\);

-- Location: LCCOMB_X61_Y70_N26
\Y_srl[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[0]~3_combout\ = (\ExtWord~input_o\ & ((\srl64[6][8]~22_combout\) # ((\Y_srl[0]~2_combout\ & \srl64[4][0]~21_combout\)))) # (!\ExtWord~input_o\ & (\Y_srl[0]~2_combout\ & ((\srl64[4][0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_srl[0]~2_combout\,
	datac => \srl64[6][8]~22_combout\,
	datad => \srl64[4][0]~21_combout\,
	combout => \Y_srl[0]~3_combout\);

-- Location: IOIBUF_X62_Y73_N22
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X57_Y69_N8
\sll64[3][0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][0]~7_combout\ = (!\B[1]~input_o\ & (!\B[2]~input_o\ & (!\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \sll64[3][0]~7_combout\);

-- Location: LCCOMB_X61_Y69_N0
\sll64[6][0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[6][0]~8_combout\ = (\sll64[3][0]~7_combout\ & \sll64[6][0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][0]~7_combout\,
	datad => \sll64[6][0]~6_combout\,
	combout => \sll64[6][0]~8_combout\);

-- Location: LCCOMB_X61_Y70_N28
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\ShiftFN[0]~input_o\ & ((\sll64[6][0]~8_combout\) # ((\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \sll64[6][0]~8_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X61_Y70_N10
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux15~0_combout\ & (\Y_sra[0]~2_combout\)) # (!\Mux15~0_combout\ & ((\Y_srl[0]~3_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_sra[0]~2_combout\,
	datac => \Y_srl[0]~3_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X56_Y72_N30
\srl64[1][9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][9]~27_combout\ = (\ExtWord~input_o\ & ((\A[2]~input_o\))) # (!\ExtWord~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[2]~input_o\,
	combout => \srl64[1][9]~27_combout\);

-- Location: LCCOMB_X56_Y72_N0
\srl64[1][9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][9]~28_combout\ = (\B[0]~input_o\ & (\srl64[1][9]~27_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][8]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][9]~27_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[1][8]~9_combout\,
	combout => \srl64[1][9]~28_combout\);

-- Location: LCCOMB_X54_Y69_N10
\srl64[1][10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][10]~25_combout\ = (\ExtWord~input_o\ & (\A[3]~input_o\)) # (!\ExtWord~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[11]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \srl64[1][10]~25_combout\);

-- Location: LCCOMB_X54_Y69_N28
\srl64[1][11]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][11]~26_combout\ = (\B[0]~input_o\ & ((\srl64[1][11]~5_combout\))) # (!\B[0]~input_o\ & (\srl64[1][10]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][10]~25_combout\,
	datab => \srl64[1][11]~5_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[1][11]~26_combout\);

-- Location: LCCOMB_X59_Y70_N28
\srl64[2][9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][9]~29_combout\ = (\B[1]~input_o\ & ((\srl64[1][11]~26_combout\))) # (!\B[1]~input_o\ & (\srl64[1][9]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][9]~28_combout\,
	datac => \srl64[1][11]~26_combout\,
	combout => \srl64[2][9]~29_combout\);

-- Location: LCCOMB_X59_Y70_N16
\srl64[1][13]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][13]~23_combout\ = (\B[0]~input_o\ & (\srl64[1][13]~2_combout\)) # (!\B[0]~input_o\ & ((\srl64[1][12]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[1][13]~2_combout\,
	datad => \srl64[1][12]~4_combout\,
	combout => \srl64[1][13]~23_combout\);

-- Location: LCCOMB_X59_Y70_N2
\sra64[3][9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][9]~3_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\sra64[0][15]~2_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][13]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \sra64[0][15]~2_combout\,
	datad => \srl64[1][13]~23_combout\,
	combout => \sra64[3][9]~3_combout\);

-- Location: LCCOMB_X60_Y70_N2
\sra64[3][9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][9]~4_combout\ = (\sra64[3][9]~3_combout\) # ((\srl64[2][9]~29_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][9]~29_combout\,
	datac => \B[2]~input_o\,
	datad => \sra64[3][9]~3_combout\,
	combout => \sra64[3][9]~4_combout\);

-- Location: LCCOMB_X56_Y72_N18
\srl64[1][7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][7]~30_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \srl64[1][7]~30_combout\);

-- Location: LCCOMB_X56_Y72_N12
\srl64[1][7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][7]~31_combout\ = (\srl64[1][7]~30_combout\) # ((\ExtWord~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[1][7]~30_combout\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \srl64[1][7]~31_combout\);

-- Location: LCCOMB_X55_Y69_N4
\srl64[1][5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][5]~32_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][5]~32_combout\);

-- Location: LCCOMB_X55_Y70_N24
\srl64[2][5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][5]~33_combout\ = (\B[1]~input_o\ & (\srl64[1][7]~31_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][5]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][7]~31_combout\,
	datac => \srl64[1][5]~32_combout\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][5]~33_combout\);

-- Location: LCCOMB_X56_Y69_N12
\srl64[3][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][1]~34_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[4]~input_o\))) # (!\B[1]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \srl64[3][1]~34_combout\);

-- Location: LCCOMB_X56_Y69_N30
\srl64[3][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][1]~35_combout\ = (\srl64[3][1]~34_combout\) # ((!\B[0]~input_o\ & \srl64[3][1]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][1]~34_combout\,
	datac => \B[0]~input_o\,
	datad => \srl64[3][1]~16_combout\,
	combout => \srl64[3][1]~35_combout\);

-- Location: LCCOMB_X61_Y70_N12
\srl64[3][1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][1]~36_combout\ = (\B[2]~input_o\ & (\srl64[2][5]~33_combout\)) # (!\B[2]~input_o\ & (((\srl64[3][1]~35_combout\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][5]~33_combout\,
	datab => \srl64[3][1]~35_combout\,
	datac => \B[2]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[3][1]~36_combout\);

-- Location: LCCOMB_X61_Y70_N18
\Y_sra[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[1]~3_combout\ = (\ExtWord~input_o\ & (\sra64[3][9]~4_combout\)) # (!\ExtWord~input_o\ & ((\B[3]~input_o\ & (\sra64[3][9]~4_combout\)) # (!\B[3]~input_o\ & ((\srl64[3][1]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][9]~4_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[3]~input_o\,
	datad => \srl64[3][1]~36_combout\,
	combout => \Y_sra[1]~3_combout\);

-- Location: LCCOMB_X61_Y70_N20
\Y_sra[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[1]~4_combout\ = (\Y_sra[0]~0_combout\ & (\sra64[0][15]~2_combout\)) # (!\Y_sra[0]~0_combout\ & ((\Y_sra[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sra[0]~0_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \Y_sra[1]~3_combout\,
	combout => \Y_sra[1]~4_combout\);

-- Location: LCCOMB_X56_Y69_N16
\sll64[1][1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][1]~10_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \sll64[1][1]~10_combout\);

-- Location: LCCOMB_X58_Y69_N4
\sll64[6][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[6][1]~43_combout\ = (\sll64[1][1]~10_combout\ & (!\B[2]~input_o\ & (\sll64[6][0]~6_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][1]~10_combout\,
	datab => \B[2]~input_o\,
	datac => \sll64[6][0]~6_combout\,
	datad => \B[1]~input_o\,
	combout => \sll64[6][1]~43_combout\);

-- Location: LCCOMB_X58_Y70_N24
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\ShiftFN[0]~input_o\ & ((\sll64[6][1]~43_combout\) # ((\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \sll64[6][1]~43_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X59_Y70_N18
\srl64[2][13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][13]~24_combout\ = (\B[1]~input_o\ & (((\sra64[0][15]~2_combout\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & (\srl64[1][13]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][13]~23_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][13]~24_combout\);

-- Location: LCCOMB_X59_Y70_N6
\srl64[6][9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][9]~37_combout\ = (\sll64[6][0]~6_combout\ & ((\B[2]~input_o\ & ((\srl64[2][13]~24_combout\))) # (!\B[2]~input_o\ & (\srl64[2][9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][9]~29_combout\,
	datab => \B[2]~input_o\,
	datac => \sll64[6][0]~6_combout\,
	datad => \srl64[2][13]~24_combout\,
	combout => \srl64[6][9]~37_combout\);

-- Location: LCCOMB_X60_Y70_N0
\Y_srl[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[1]~4_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\srl64[2][13]~24_combout\))) # (!\B[2]~input_o\ & (\srl64[2][9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \srl64[2][9]~29_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][13]~24_combout\,
	combout => \Y_srl[1]~4_combout\);

-- Location: LCCOMB_X61_Y70_N30
\Y_srl[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[1]~5_combout\ = (\Y_srl[0]~2_combout\ & ((\Y_srl[1]~4_combout\) # ((!\B[3]~input_o\ & \srl64[3][1]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y_srl[0]~2_combout\,
	datac => \Y_srl[1]~4_combout\,
	datad => \srl64[3][1]~36_combout\,
	combout => \Y_srl[1]~5_combout\);

-- Location: LCCOMB_X61_Y70_N24
\Y_srl[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[1]~6_combout\ = (\Y_srl[1]~5_combout\) # ((\ExtWord~input_o\ & \srl64[6][9]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[6][9]~37_combout\,
	datac => \Y_srl[1]~5_combout\,
	combout => \Y_srl[1]~6_combout\);

-- Location: LCCOMB_X61_Y70_N6
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux14~0_combout\ & (\Y_sra[1]~4_combout\)) # (!\Mux14~0_combout\ & ((\Y_srl[1]~6_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_sra[1]~4_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_srl[1]~6_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X54_Y69_N24
\srl64[1][4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][4]~41_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[5]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \srl64[1][4]~41_combout\);

-- Location: LCCOMB_X55_Y69_N22
\srl64[2][6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][6]~45_combout\ = (\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[7]~input_o\,
	combout => \srl64[2][6]~45_combout\);

-- Location: LCCOMB_X55_Y69_N0
\srl64[2][6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][6]~46_combout\ = (\B[1]~input_o\ & (\srl64[1][8]~10_combout\)) # (!\B[1]~input_o\ & (((\srl64[2][6]~45_combout\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][8]~10_combout\,
	datac => \srl64[2][6]~45_combout\,
	datad => \ExtWord~input_o\,
	combout => \srl64[2][6]~46_combout\);

-- Location: LCCOMB_X60_Y70_N28
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\B[3]~input_o\) # ((\B[4]~input_o\) # ((\ExtWord~input_o\) # (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X55_Y70_N26
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!\Mux13~0_combout\ & ((\B[2]~input_o\) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Mux13~0_combout\,
	datad => \B[1]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X55_Y70_N6
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\B[2]~input_o\) # (\Mux13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X54_Y69_N30
\srl64[2][10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][10]~38_combout\ = (\B[1]~input_o\ & (((\srl64[1][12]~6_combout\)))) # (!\B[1]~input_o\ & ((\srl64[1][10]~11_combout\) # ((\srl64[1][10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][10]~11_combout\,
	datab => \srl64[1][10]~12_combout\,
	datac => \srl64[1][12]~6_combout\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][10]~38_combout\);

-- Location: LCCOMB_X57_Y70_N16
\sra64[3][10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][10]~5_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\sra64[0][15]~2_combout\)) # (!\B[1]~input_o\ & ((\srl64[1][14]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][15]~2_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][14]~3_combout\,
	combout => \sra64[3][10]~5_combout\);

-- Location: LCCOMB_X57_Y70_N26
\sra64[3][10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][10]~6_combout\ = (\sra64[3][10]~5_combout\) # ((\srl64[2][10]~38_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][10]~38_combout\,
	datac => \B[2]~input_o\,
	datad => \sra64[3][10]~5_combout\,
	combout => \sra64[3][10]~6_combout\);

-- Location: LCCOMB_X57_Y70_N6
\srl64[3][10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][10]~39_combout\ = (\B[2]~input_o\ & (((!\B[1]~input_o\ & \srl64[1][14]~3_combout\)))) # (!\B[2]~input_o\ & (\srl64[2][10]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][10]~38_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][14]~3_combout\,
	combout => \srl64[3][10]~39_combout\);

-- Location: LCCOMB_X54_Y69_N2
\srl64[2][10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][10]~42_combout\ = (!\B[1]~input_o\ & ((\srl64[1][10]~11_combout\) # ((\srl64[1][10]~25_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][10]~25_combout\,
	datac => \srl64[1][10]~11_combout\,
	datad => \B[0]~input_o\,
	combout => \srl64[2][10]~42_combout\);

-- Location: LCCOMB_X57_Y70_N12
\srl64[3][10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][10]~43_combout\ = (!\B[2]~input_o\ & ((\srl64[2][10]~42_combout\) # ((\srl64[1][12]~6_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][12]~6_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \srl64[2][10]~42_combout\,
	combout => \srl64[3][10]~43_combout\);

-- Location: LCCOMB_X57_Y70_N22
\sra64[6][10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][10]~7_combout\ = (\sll64[6][0]~6_combout\ & ((\srl64[3][10]~43_combout\) # ((\sra64[3][10]~5_combout\)))) # (!\sll64[6][0]~6_combout\ & (((\sra64[0][15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][10]~43_combout\,
	datab => \sra64[3][10]~5_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \sll64[6][0]~6_combout\,
	combout => \sra64[6][10]~7_combout\);

-- Location: LCCOMB_X60_Y70_N26
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\) # ((\B[4]~input_o\) # (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X60_Y70_N24
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X56_Y70_N10
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux13~4_combout\ & (((\sra64[6][10]~7_combout\) # (!\Mux13~3_combout\)))) # (!\Mux13~4_combout\ & (\srl64[3][10]~39_combout\ & ((\Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][10]~39_combout\,
	datab => \sra64[6][10]~7_combout\,
	datac => \Mux13~4_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X60_Y70_N30
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\ExtWord~input_o\) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X55_Y70_N4
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux13~5_combout\ & (((\sra64[0][15]~2_combout\) # (\Mux13~2_combout\)))) # (!\Mux13~5_combout\ & (\sra64[3][10]~6_combout\ & ((!\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][10]~6_combout\,
	datab => \sra64[0][15]~2_combout\,
	datac => \Mux13~5_combout\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X56_Y69_N2
\srl64[1][2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][2]~44_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \srl64[1][2]~44_combout\);

-- Location: LCCOMB_X55_Y70_N0
\Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\Mux13~7_combout\ & ((\Mux13~6_combout\) # ((\Mux13~1_combout\)))) # (!\Mux13~7_combout\ & (((!\Mux13~1_combout\ & \srl64[1][2]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~7_combout\,
	datab => \Mux13~6_combout\,
	datac => \Mux13~1_combout\,
	datad => \srl64[1][2]~44_combout\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X55_Y70_N2
\Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\Mux13~1_combout\ & ((\Mux13~8_combout\ & ((\srl64[2][6]~46_combout\))) # (!\Mux13~8_combout\ & (\srl64[1][4]~41_combout\)))) # (!\Mux13~1_combout\ & (((\Mux13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][4]~41_combout\,
	datab => \srl64[2][6]~46_combout\,
	datac => \Mux13~1_combout\,
	datad => \Mux13~8_combout\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X56_Y70_N24
\srl64[6][10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][10]~40_combout\ = (\srl64[3][10]~39_combout\ & \sll64[6][0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][10]~39_combout\,
	datad => \sll64[6][0]~6_combout\,
	combout => \srl64[6][10]~40_combout\);

-- Location: LCCOMB_X56_Y70_N22
\Mux13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~11_combout\ = (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & !\ShiftFN[0]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux13~11_combout\);

-- Location: LCCOMB_X56_Y69_N20
\sll64[2][2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][2]~11_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[0]~input_o\))) # (!\B[1]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][2]~11_combout\);

-- Location: LCCOMB_X56_Y69_N6
\sll64[2][2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][2]~12_combout\ = (\sll64[2][2]~11_combout\) # ((!\B[1]~input_o\ & (\B[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \sll64[2][2]~11_combout\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \sll64[2][2]~12_combout\);

-- Location: LCCOMB_X58_Y69_N8
\sll64[3][2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][2]~13_combout\ = (!\B[2]~input_o\ & \sll64[2][2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \sll64[2][2]~12_combout\,
	combout => \sll64[3][2]~13_combout\);

-- Location: LCCOMB_X56_Y70_N28
\Mux13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~10_combout\ = (!\ShiftFN[1]~input_o\ & ((\sll64[6][0]~6_combout\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~6_combout\,
	datab => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux13~10_combout\);

-- Location: LCCOMB_X56_Y70_N0
\Mux13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~12_combout\ = (\Mux13~11_combout\ & (((\sll64[3][2]~13_combout\ & \Mux13~10_combout\)))) # (!\Mux13~11_combout\ & ((\A[2]~input_o\) # ((!\Mux13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~11_combout\,
	datab => \A[2]~input_o\,
	datac => \sll64[3][2]~13_combout\,
	datad => \Mux13~10_combout\,
	combout => \Mux13~12_combout\);

-- Location: LCCOMB_X56_Y70_N18
Mux13 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~combout\ = (\Mux13~12_combout\ & ((\Mux13~9_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux13~12_combout\ & (((\srl64[6][10]~40_combout\ & \ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~9_combout\,
	datab => \srl64[6][10]~40_combout\,
	datac => \Mux13~12_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux13~combout\);

-- Location: LCCOMB_X56_Y69_N0
\srl64[1][3]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[1][3]~51_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\A[4]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \srl64[1][3]~51_combout\);

-- Location: LCCOMB_X55_Y70_N16
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux13~1_combout\ & (((\srl64[1][5]~32_combout\) # (\Mux13~7_combout\)))) # (!\Mux13~1_combout\ & (\srl64[1][3]~51_combout\ & ((!\Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \srl64[1][3]~51_combout\,
	datac => \srl64[1][5]~32_combout\,
	datad => \Mux13~7_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X59_Y70_N20
\srl64[3][11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][11]~48_combout\ = (\B[2]~input_o\) # ((\B[1]~input_o\ & ((!\srl64[1][13]~23_combout\))) # (!\B[1]~input_o\ & (!\srl64[1][11]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \srl64[1][11]~26_combout\,
	datad => \srl64[1][13]~23_combout\,
	combout => \srl64[3][11]~48_combout\);

-- Location: LCCOMB_X59_Y70_N24
\sra64[6][11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][11]~9_combout\ = (\sll64[6][0]~6_combout\ & (((\B[2]~input_o\ & \sra64[0][15]~2_combout\)) # (!\srl64[3][11]~48_combout\))) # (!\sll64[6][0]~6_combout\ & (((\sra64[0][15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sll64[6][0]~6_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \srl64[3][11]~48_combout\,
	combout => \sra64[6][11]~9_combout\);

-- Location: LCCOMB_X60_Y69_N10
\srl64[2][13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][13]~47_combout\ = (!\B[0]~input_o\ & ((\ExtWord~input_o\ & ((\A[7]~input_o\))) # (!\ExtWord~input_o\ & (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \srl64[2][13]~47_combout\);

-- Location: LCCOMB_X59_Y70_N14
\srl64[3][11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][11]~49_combout\ = ((!\B[1]~input_o\ & (\B[2]~input_o\ & \srl64[2][13]~47_combout\))) # (!\srl64[3][11]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[3][11]~48_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][13]~47_combout\,
	combout => \srl64[3][11]~49_combout\);

-- Location: LCCOMB_X56_Y70_N30
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux13~4_combout\ & ((\sra64[6][11]~9_combout\) # ((!\Mux13~3_combout\)))) # (!\Mux13~4_combout\ & (((\srl64[3][11]~49_combout\ & \Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \sra64[6][11]~9_combout\,
	datac => \srl64[3][11]~49_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X55_Y70_N20
\sra64[3][11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][11]~8_combout\ = ((\sra64[0][15]~2_combout\ & \B[2]~input_o\)) # (!\srl64[3][11]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[3][11]~48_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \B[2]~input_o\,
	combout => \sra64[3][11]~8_combout\);

-- Location: LCCOMB_X55_Y70_N14
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & (((\sra64[0][15]~2_combout\) # (\Mux13~2_combout\)))) # (!\Mux12~0_combout\ & (\sra64[3][11]~8_combout\ & ((!\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \sra64[3][11]~8_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \Mux13~2_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X55_Y70_N18
\srl64[2][7]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][7]~52_combout\ = (\B[1]~input_o\ & ((\srl64[1][9]~28_combout\))) # (!\B[1]~input_o\ & (\srl64[1][7]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[1][7]~31_combout\,
	datac => \srl64[1][9]~28_combout\,
	datad => \B[1]~input_o\,
	combout => \srl64[2][7]~52_combout\);

-- Location: LCCOMB_X55_Y70_N12
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux13~7_combout\ & ((\Mux12~2_combout\ & ((\srl64[2][7]~52_combout\))) # (!\Mux12~2_combout\ & (\Mux12~1_combout\)))) # (!\Mux13~7_combout\ & (\Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~7_combout\,
	datab => \Mux12~2_combout\,
	datac => \Mux12~1_combout\,
	datad => \srl64[2][7]~52_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X56_Y70_N20
\srl64[6][11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][11]~50_combout\ = (\srl64[3][11]~49_combout\ & \sll64[6][0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \srl64[3][11]~49_combout\,
	datad => \sll64[6][0]~6_combout\,
	combout => \srl64[6][11]~50_combout\);

-- Location: LCCOMB_X56_Y69_N10
\sll64[2][3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][3]~14_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \sll64[2][3]~14_combout\);

-- Location: LCCOMB_X58_Y69_N10
\sll64[3][3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][3]~15_combout\ = (!\B[2]~input_o\ & ((\sll64[2][3]~14_combout\) # ((\sll64[1][1]~10_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][1]~10_combout\,
	datab => \B[2]~input_o\,
	datac => \sll64[2][3]~14_combout\,
	datad => \B[1]~input_o\,
	combout => \sll64[3][3]~15_combout\);

-- Location: LCCOMB_X56_Y70_N8
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux13~11_combout\ & (\sll64[3][3]~15_combout\ & ((\Mux13~10_combout\)))) # (!\Mux13~11_combout\ & (((\A[3]~input_o\) # (!\Mux13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][3]~15_combout\,
	datab => \A[3]~input_o\,
	datac => \Mux13~11_combout\,
	datad => \Mux13~10_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X56_Y70_N26
Mux12 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~combout\ = (\Mux12~4_combout\ & ((\Mux12~3_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux12~4_combout\ & (((\srl64[6][11]~50_combout\ & \ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~3_combout\,
	datab => \srl64[6][11]~50_combout\,
	datac => \Mux12~4_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux12~combout\);

-- Location: LCCOMB_X55_Y69_N26
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\ShiftFN[0]~input_o\ & (((\B[2]~input_o\ & !\Mux13~0_combout\)))) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\) # ((\B[2]~input_o\ & !\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X55_Y69_N12
\srl64[2][4]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[2][4]~54_combout\ = (!\ExtWord~input_o\ & ((\srl64[2][4]~19_combout\) # (\srl64[2][4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][4]~19_combout\,
	datac => \srl64[2][4]~18_combout\,
	datad => \ExtWord~input_o\,
	combout => \srl64[2][4]~54_combout\);

-- Location: LCCOMB_X57_Y70_N10
\srl64[3][12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][12]~55_combout\ = (!\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][14]~3_combout\))) # (!\B[1]~input_o\ & (\srl64[1][12]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][12]~6_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \srl64[1][14]~3_combout\,
	combout => \srl64[3][12]~55_combout\);

-- Location: LCCOMB_X57_Y70_N30
\sra64[6][12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][12]~11_combout\ = (\sll64[6][0]~6_combout\ & ((\srl64[3][12]~55_combout\) # ((\sra64[0][15]~2_combout\ & \B[2]~input_o\)))) # (!\sll64[6][0]~6_combout\ & (((\sra64[0][15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][12]~55_combout\,
	datab => \sra64[0][15]~2_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[6][0]~6_combout\,
	combout => \sra64[6][12]~11_combout\);

-- Location: LCCOMB_X57_Y70_N8
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux13~3_combout\ & ((\Mux13~4_combout\ & (\sra64[6][12]~11_combout\)) # (!\Mux13~4_combout\ & ((\srl64[3][12]~55_combout\))))) # (!\Mux13~3_combout\ & (\Mux13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \Mux13~4_combout\,
	datac => \sra64[6][12]~11_combout\,
	datad => \srl64[3][12]~55_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X57_Y70_N28
\sra64[3][12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][12]~10_combout\ = (\srl64[3][12]~55_combout\) # ((\sra64[0][15]~2_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][12]~55_combout\,
	datab => \sra64[0][15]~2_combout\,
	datac => \B[2]~input_o\,
	combout => \sra64[3][12]~10_combout\);

-- Location: LCCOMB_X57_Y70_N2
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux13~2_combout\ & (\Mux11~0_combout\)) # (!\Mux13~2_combout\ & ((\Mux11~0_combout\ & (\sra64[0][15]~2_combout\)) # (!\Mux11~0_combout\ & ((\sra64[3][12]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Mux11~0_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \sra64[3][12]~10_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X55_Y69_N14
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux9~0_combout\ & (((!\Mux13~0_combout\)))) # (!\Mux9~0_combout\ & ((\Mux13~0_combout\ & ((\Mux11~1_combout\))) # (!\Mux13~0_combout\ & (\srl64[2][4]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][4]~54_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X57_Y70_N24
\srl64[6][12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][12]~53_combout\ = (\srl64[2][12]~7_combout\ & (!\B[2]~input_o\ & \sll64[6][0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \srl64[2][12]~7_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[6][0]~6_combout\,
	combout => \srl64[6][12]~53_combout\);

-- Location: LCCOMB_X55_Y69_N24
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux9~0_combout\ & ((\Mux11~2_combout\ & (\srl64[2][8]~13_combout\)) # (!\Mux11~2_combout\ & ((\srl64[6][12]~53_combout\))))) # (!\Mux9~0_combout\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \srl64[2][8]~13_combout\,
	datac => \Mux11~2_combout\,
	datad => \srl64[6][12]~53_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X56_Y69_N28
\sll64[2][4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][4]~17_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \sll64[2][4]~17_combout\);

-- Location: LCCOMB_X56_Y69_N14
\sll64[2][4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][4]~18_combout\ = (\B[1]~input_o\ & (\A[2]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][4]~18_combout\);

-- Location: LCCOMB_X56_Y69_N8
\sll64[2][4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][4]~19_combout\ = (\sll64[2][4]~17_combout\) # ((!\B[0]~input_o\ & \sll64[2][4]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[2][4]~17_combout\,
	datac => \sll64[2][4]~18_combout\,
	combout => \sll64[2][4]~19_combout\);

-- Location: LCCOMB_X57_Y69_N2
\sll64[3][4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][4]~16_combout\ = (!\B[1]~input_o\ & (\B[2]~input_o\ & (!\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \sll64[3][4]~16_combout\);

-- Location: LCCOMB_X57_Y69_N12
\sll64[3][4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][4]~20_combout\ = (\sll64[3][4]~16_combout\) # ((\sll64[2][4]~19_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][4]~19_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[3][4]~16_combout\,
	combout => \sll64[3][4]~20_combout\);

-- Location: LCCOMB_X55_Y69_N18
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[3][4]~20_combout\ & ((\sll64[6][0]~6_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \sll64[3][4]~20_combout\,
	datac => \A[4]~input_o\,
	datad => \sll64[6][0]~6_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X55_Y69_N28
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\ShiftFN[1]~input_o\ & (\Mux11~3_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~3_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux11~4_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X56_Y69_N26
\sll64[2][5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][5]~21_combout\ = (\B[1]~input_o\ & ((\A[3]~input_o\))) # (!\B[1]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][5]~21_combout\);

-- Location: LCCOMB_X57_Y69_N22
\sll64[2][5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][5]~22_combout\ = (\B[0]~input_o\ & ((\sll64[2][4]~18_combout\))) # (!\B[0]~input_o\ & (\sll64[2][5]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][5]~21_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][4]~18_combout\,
	combout => \sll64[2][5]~22_combout\);

-- Location: LCCOMB_X57_Y69_N0
\sll64[3][5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][5]~23_combout\ = (\B[2]~input_o\ & (((\sll64[1][1]~10_combout\ & !\B[1]~input_o\)))) # (!\B[2]~input_o\ & (\sll64[2][5]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][5]~22_combout\,
	datab => \sll64[1][1]~10_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[3][5]~23_combout\);

-- Location: LCCOMB_X56_Y69_N4
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\ShiftFN[0]~input_o\ & (\sll64[6][0]~6_combout\ & (\sll64[3][5]~23_combout\))) # (!\ShiftFN[0]~input_o\ & (((\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \sll64[6][0]~6_combout\,
	datac => \sll64[3][5]~23_combout\,
	datad => \A[5]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X59_Y70_N10
\srl64[6][13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][13]~56_combout\ = (!\B[2]~input_o\ & (\sll64[6][0]~6_combout\ & \srl64[2][13]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \sll64[6][0]~6_combout\,
	datad => \srl64[2][13]~24_combout\,
	combout => \srl64[6][13]~56_combout\);

-- Location: LCCOMB_X59_Y70_N12
\srl64[3][13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][13]~57_combout\ = (!\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[2][13]~47_combout\))) # (!\B[1]~input_o\ & (\srl64[1][13]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][13]~23_combout\,
	datac => \B[2]~input_o\,
	datad => \srl64[2][13]~47_combout\,
	combout => \srl64[3][13]~57_combout\);

-- Location: LCCOMB_X59_Y70_N8
\sll64[3][0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][0]~9_combout\ = (!\B[1]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	combout => \sll64[3][0]~9_combout\);

-- Location: LCCOMB_X59_Y70_N22
\sra64[6][13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][13]~12_combout\ = (\sll64[3][0]~9_combout\ & ((\sll64[6][0]~6_combout\ & ((\srl64[1][13]~23_combout\))) # (!\sll64[6][0]~6_combout\ & (\sra64[0][15]~2_combout\)))) # (!\sll64[3][0]~9_combout\ & (((\sra64[0][15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][0]~9_combout\,
	datab => \sll64[6][0]~6_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \srl64[1][13]~23_combout\,
	combout => \sra64[6][13]~12_combout\);

-- Location: LCCOMB_X59_Y70_N0
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux13~4_combout\ & (((\sra64[6][13]~12_combout\) # (!\Mux13~3_combout\)))) # (!\Mux13~4_combout\ & (\srl64[3][13]~57_combout\ & ((\Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[3][13]~57_combout\,
	datab => \Mux13~4_combout\,
	datac => \sra64[6][13]~12_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X59_Y70_N30
\sra64[3][13]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][13]~17_combout\ = (\B[1]~input_o\ & (((\sra64[0][15]~2_combout\)))) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & (\sra64[0][15]~2_combout\)) # (!\B[2]~input_o\ & ((\srl64[1][13]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \sra64[0][15]~2_combout\,
	datad => \srl64[1][13]~23_combout\,
	combout => \sra64[3][13]~17_combout\);

-- Location: LCCOMB_X55_Y70_N22
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\sra64[0][15]~2_combout\) # ((\Mux13~2_combout\)))) # (!\Mux10~0_combout\ & (((\sra64[3][13]~17_combout\ & !\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \sra64[0][15]~2_combout\,
	datac => \sra64[3][13]~17_combout\,
	datad => \Mux13~2_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X55_Y70_N8
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux9~0_combout\ & (((!\Mux13~0_combout\)))) # (!\Mux9~0_combout\ & ((\Mux13~0_combout\ & (\Mux10~1_combout\)) # (!\Mux13~0_combout\ & ((\srl64[2][5]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \srl64[2][5]~33_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X58_Y70_N2
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux9~0_combout\ & ((\Mux10~2_combout\ & ((\srl64[2][9]~29_combout\))) # (!\Mux10~2_combout\ & (\srl64[6][13]~56_combout\)))) # (!\Mux9~0_combout\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \srl64[6][13]~56_combout\,
	datac => \Mux10~2_combout\,
	datad => \srl64[2][9]~29_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X58_Y70_N12
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux10~3_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux10~3_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X59_Y69_N0
\srl64[6][14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][14]~62_combout\ = (!\B[1]~input_o\ & (\srl64[1][14]~3_combout\ & (\sll64[6][0]~6_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \srl64[1][14]~3_combout\,
	datac => \sll64[6][0]~6_combout\,
	datad => \B[2]~input_o\,
	combout => \srl64[6][14]~62_combout\);

-- Location: LCCOMB_X60_Y70_N8
\sra64[6][14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][14]~14_combout\ = (\sll64[6][0]~6_combout\ & ((\sll64[3][0]~9_combout\ & (\srl64[1][14]~3_combout\)) # (!\sll64[3][0]~9_combout\ & ((\sra64[0][15]~2_combout\))))) # (!\sll64[6][0]~6_combout\ & (((\sra64[0][15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[1][14]~3_combout\,
	datab => \sra64[0][15]~2_combout\,
	datac => \sll64[6][0]~6_combout\,
	datad => \sll64[3][0]~9_combout\,
	combout => \sra64[6][14]~14_combout\);

-- Location: LCCOMB_X60_Y70_N6
\srl64[3][14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][14]~58_combout\ = (\sll64[3][0]~9_combout\ & ((\B[0]~input_o\ & ((\sra64[0][15]~2_combout\))) # (!\B[0]~input_o\ & (\srl64[1][13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[1][13]~2_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \sll64[3][0]~9_combout\,
	combout => \srl64[3][14]~58_combout\);

-- Location: LCCOMB_X60_Y70_N10
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux13~4_combout\ & (((\sra64[6][14]~14_combout\)) # (!\Mux13~3_combout\))) # (!\Mux13~4_combout\ & (\Mux13~3_combout\ & ((\srl64[3][14]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \Mux13~3_combout\,
	datac => \sra64[6][14]~14_combout\,
	datad => \srl64[3][14]~58_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X60_Y70_N20
\sra64[3][14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[3][14]~13_combout\ = (\B[0]~input_o\ & (((\sra64[0][15]~2_combout\)))) # (!\B[0]~input_o\ & ((\sll64[3][0]~9_combout\ & (\srl64[1][13]~2_combout\)) # (!\sll64[3][0]~9_combout\ & ((\sra64[0][15]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[1][13]~2_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \sll64[3][0]~9_combout\,
	combout => \sra64[3][14]~13_combout\);

-- Location: LCCOMB_X60_Y70_N12
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux9~1_combout\ & ((\sra64[0][15]~2_combout\) # ((\Mux13~2_combout\)))) # (!\Mux9~1_combout\ & (((!\Mux13~2_combout\ & \sra64[3][14]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \sra64[0][15]~2_combout\,
	datac => \Mux13~2_combout\,
	datad => \sra64[3][14]~13_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X55_Y70_N10
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~0_combout\ & (((!\Mux13~0_combout\)))) # (!\Mux9~0_combout\ & ((\Mux13~0_combout\ & (\Mux9~2_combout\)) # (!\Mux13~0_combout\ & ((\srl64[2][6]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \srl64[2][6]~46_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X55_Y70_N28
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux9~0_combout\ & ((\Mux9~3_combout\ & (\srl64[2][10]~38_combout\)) # (!\Mux9~3_combout\ & ((\srl64[6][14]~62_combout\))))) # (!\Mux9~0_combout\ & (((\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][10]~38_combout\,
	datab => \Mux9~0_combout\,
	datac => \srl64[6][14]~62_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X55_Y69_N6
\sll64[2][7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][7]~24_combout\ = (\B[1]~input_o\ & ((\A[4]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][7]~24_combout\);

-- Location: LCCOMB_X58_Y69_N12
\sll64[2][6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][6]~25_combout\ = (\B[0]~input_o\ & ((\sll64[2][5]~21_combout\))) # (!\B[0]~input_o\ & (\sll64[2][7]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][7]~24_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][5]~21_combout\,
	combout => \sll64[2][6]~25_combout\);

-- Location: LCCOMB_X58_Y69_N14
\Y_sll[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[14]~2_combout\ = (\B[2]~input_o\ & (\sll64[2][2]~12_combout\)) # (!\B[2]~input_o\ & ((\sll64[2][6]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][2]~12_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][6]~25_combout\,
	combout => \Y_sll[14]~2_combout\);

-- Location: LCCOMB_X59_Y70_N26
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\ShiftFN[0]~input_o\ & (\Y_sll[14]~2_combout\ & (\sll64[6][0]~6_combout\))) # (!\ShiftFN[0]~input_o\ & (((\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[14]~2_combout\,
	datab => \sll64[6][0]~6_combout\,
	datac => \A[6]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X55_Y70_N30
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\ShiftFN[1]~input_o\ & (\Mux9~4_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux9~4_combout\,
	datad => \Mux9~5_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X56_Y69_N22
\sll64[2][7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][7]~27_combout\ = (\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \sll64[2][7]~27_combout\);

-- Location: LCCOMB_X57_Y69_N18
\sll64[2][7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][7]~28_combout\ = (\B[0]~input_o\ & (\sll64[2][7]~24_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][7]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][7]~24_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][7]~27_combout\,
	combout => \sll64[2][7]~28_combout\);

-- Location: LCCOMB_X58_Y69_N24
\sll64[2][3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][3]~26_combout\ = (\sll64[2][3]~14_combout\) # ((\sll64[1][1]~10_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][1]~10_combout\,
	datac => \sll64[2][3]~14_combout\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][3]~26_combout\);

-- Location: LCCOMB_X58_Y69_N2
\Y_sll[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[7]~3_combout\ = (\sll64[6][0]~6_combout\ & ((\B[2]~input_o\ & ((\sll64[2][3]~26_combout\))) # (!\B[2]~input_o\ & (\sll64[2][7]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[6][0]~6_combout\,
	datab => \sll64[2][7]~28_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][3]~26_combout\,
	combout => \Y_sll[7]~3_combout\);

-- Location: LCCOMB_X60_Y69_N12
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Y_sll[7]~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_sll[7]~3_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X59_Y70_N4
\srl64[3][7]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][7]~59_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\srl64[1][13]~23_combout\))) # (!\B[1]~input_o\ & (\srl64[1][11]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \srl64[1][11]~26_combout\,
	datad => \srl64[1][13]~23_combout\,
	combout => \srl64[3][7]~59_combout\);

-- Location: LCCOMB_X60_Y69_N20
\srl64[3][7]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[3][7]~60_combout\ = (\srl64[3][7]~59_combout\) # ((!\B[2]~input_o\ & \srl64[2][7]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \srl64[2][7]~52_combout\,
	datad => \srl64[3][7]~59_combout\,
	combout => \srl64[3][7]~60_combout\);

-- Location: LCCOMB_X60_Y69_N6
\Y_sra[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[7]~5_combout\ = (!\ExtWord~input_o\ & ((\sll64[6][0]~6_combout\ & (\srl64[3][7]~60_combout\)) # (!\sll64[6][0]~6_combout\ & ((\sra64[0][15]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[3][7]~60_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \sll64[6][0]~6_combout\,
	combout => \Y_sra[7]~5_combout\);

-- Location: LCCOMB_X60_Y69_N16
\Y_sra[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[7]~6_combout\ = (\Y_sra[7]~5_combout\) # ((\A[7]~input_o\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_sra[7]~5_combout\,
	combout => \Y_sra[7]~6_combout\);

-- Location: LCCOMB_X60_Y69_N22
\Y_srl[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[7]~7_combout\ = (\B[3]~input_o\ & (\srl64[2][13]~47_combout\ & ((\sll64[3][0]~9_combout\)))) # (!\B[3]~input_o\ & (((\srl64[3][7]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[2][13]~47_combout\,
	datab => \srl64[3][7]~60_combout\,
	datac => \B[3]~input_o\,
	datad => \sll64[3][0]~9_combout\,
	combout => \Y_srl[7]~7_combout\);

-- Location: LCCOMB_X60_Y69_N0
\Y_srl[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[15]~8_combout\ = (!\B[0]~input_o\ & (\sll64[3][0]~9_combout\ & (\sra64[0][15]~2_combout\ & \sll64[6][0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \sll64[3][0]~9_combout\,
	datac => \sra64[0][15]~2_combout\,
	datad => \sll64[6][0]~6_combout\,
	combout => \Y_srl[15]~8_combout\);

-- Location: LCCOMB_X60_Y69_N2
\Y_srl[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[7]~9_combout\ = (\Y_srl[7]~7_combout\ & ((\Y_srl[0]~2_combout\) # ((\Y_srl[15]~8_combout\ & \ExtWord~input_o\)))) # (!\Y_srl[7]~7_combout\ & (\Y_srl[15]~8_combout\ & (\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_srl[7]~7_combout\,
	datab => \Y_srl[15]~8_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_srl[0]~2_combout\,
	combout => \Y_srl[7]~9_combout\);

-- Location: LCCOMB_X60_Y69_N26
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & ((\Y_sra[7]~6_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux8~0_combout\ & (((\ShiftFN[1]~input_o\ & \Y_srl[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \Y_sra[7]~6_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_srl[7]~9_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X56_Y72_N14
\sll64[2][8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][8]~29_combout\ = (\B[1]~input_o\ & (((\A[6]~input_o\)))) # (!\B[1]~input_o\ & (!\ExtWord~input_o\ & (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][8]~29_combout\);

-- Location: LCCOMB_X57_Y69_N20
\sll64[2][8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][8]~30_combout\ = (\B[0]~input_o\ & (\sll64[2][7]~27_combout\)) # (!\B[0]~input_o\ & ((\sll64[2][8]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sll64[2][7]~27_combout\,
	datac => \B[0]~input_o\,
	datad => \sll64[2][8]~29_combout\,
	combout => \sll64[2][8]~30_combout\);

-- Location: LCCOMB_X58_Y69_N20
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\ExtWord~input_o\) # ((\B[2]~input_o\ & !\Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \B[2]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X59_Y69_N22
\Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (\ExtWord~input_o\) # ((!\B[5]~input_o\ & (!\B[4]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux4~11_combout\);

-- Location: LCCOMB_X58_Y69_N6
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux4~4_combout\ & ((\Y_sll[7]~3_combout\) # ((!\Mux4~11_combout\)))) # (!\Mux4~4_combout\ & (((\sll64[3][0]~7_combout\ & \Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \Y_sll[7]~3_combout\,
	datac => \sll64[3][0]~7_combout\,
	datad => \Mux4~11_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X57_Y69_N6
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux13~0_combout\ & (((\Mux7~0_combout\)))) # (!\Mux13~0_combout\ & ((\Mux7~0_combout\ & (\sll64[2][4]~19_combout\)) # (!\Mux7~0_combout\ & ((\sll64[2][8]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][4]~19_combout\,
	datab => \sll64[2][8]~30_combout\,
	datac => \Mux13~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X60_Y69_N28
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux7~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \A[8]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X60_Y69_N24
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\ExtWord~input_o\ & ((\Y_srl[15]~8_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\ & (((\srl64[6][8]~22_combout\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_srl[15]~8_combout\,
	datac => \srl64[6][8]~22_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X60_Y69_N30
\sra64[6][8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][8]~15_combout\ = (\srl64[6][8]~22_combout\) # ((\sra64[0][15]~2_combout\ & !\sll64[6][0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sra64[0][15]~2_combout\,
	datac => \srl64[6][8]~22_combout\,
	datad => \sll64[6][0]~6_combout\,
	combout => \sra64[6][8]~15_combout\);

-- Location: LCCOMB_X60_Y69_N18
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~3_combout\ & ((\A[7]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux7~3_combout\ & (((\sra64[6][8]~15_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Mux7~3_combout\,
	datac => \sra64[6][8]~15_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X60_Y69_N4
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~2_combout\) # ((\ShiftFN[1]~input_o\ & \Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X58_Y70_N0
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\) # (\Y_srl[15]~8_combout\)))) # (!\ExtWord~input_o\ & (\srl64[6][9]~37_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \srl64[6][9]~37_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_srl[15]~8_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X61_Y70_N16
\sra64[6][9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sra64[6][9]~16_combout\ = (\sll64[6][0]~6_combout\ & (\sra64[3][9]~4_combout\)) # (!\sll64[6][0]~6_combout\ & ((\sra64[0][15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[3][9]~4_combout\,
	datab => \sll64[6][0]~6_combout\,
	datac => \sra64[0][15]~2_combout\,
	combout => \sra64[6][9]~16_combout\);

-- Location: LCCOMB_X58_Y70_N10
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux6~3_combout\ & ((\A[7]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux6~3_combout\ & (((\ShiftFN[0]~input_o\ & \sra64[6][9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \sra64[6][9]~16_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X56_Y72_N24
\sll64[2][9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][9]~31_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][9]~31_combout\);

-- Location: LCCOMB_X56_Y72_N26
\sll64[2][9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][9]~32_combout\ = (\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[9]~input_o\,
	combout => \sll64[2][9]~32_combout\);

-- Location: LCCOMB_X56_Y72_N28
\sll64[2][9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][9]~33_combout\ = (\sll64[2][9]~31_combout\) # ((!\ExtWord~input_o\ & (\sll64[2][9]~32_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \sll64[2][9]~31_combout\,
	datac => \sll64[2][9]~32_combout\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][9]~33_combout\);

-- Location: LCCOMB_X58_Y69_N30
\sll64[3][1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[3][1]~44_combout\ = (\sll64[1][1]~10_combout\ & (!\B[2]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][1]~10_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[3][1]~44_combout\);

-- Location: LCCOMB_X58_Y69_N16
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux4~4_combout\ & ((\Y_sll[7]~3_combout\) # ((!\Mux4~11_combout\)))) # (!\Mux4~4_combout\ & (((\sll64[3][1]~44_combout\ & \Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \Y_sll[7]~3_combout\,
	datac => \sll64[3][1]~44_combout\,
	datad => \Mux4~11_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X57_Y69_N24
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux13~0_combout\ & (((\Mux6~0_combout\)))) # (!\Mux13~0_combout\ & ((\Mux6~0_combout\ & ((\sll64[2][5]~22_combout\))) # (!\Mux6~0_combout\ & (\sll64[2][9]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \sll64[2][9]~33_combout\,
	datac => \sll64[2][5]~22_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X58_Y70_N14
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux6~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X58_Y70_N4
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~2_combout\) # ((\Mux6~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux6~2_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X58_Y69_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux4~4_combout\ & ((\Y_sll[7]~3_combout\) # ((!\Mux4~11_combout\)))) # (!\Mux4~4_combout\ & (((\sll64[3][2]~13_combout\ & \Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \Y_sll[7]~3_combout\,
	datac => \sll64[3][2]~13_combout\,
	datad => \Mux4~11_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X56_Y72_N6
\sll64[2][10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][10]~34_combout\ = (\B[0]~input_o\ & (((\A[7]~input_o\)))) # (!\B[0]~input_o\ & (!\ExtWord~input_o\ & (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \sll64[2][10]~34_combout\);

-- Location: LCCOMB_X56_Y72_N8
\sll64[1][10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][10]~35_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\A[9]~input_o\))) # (!\B[0]~input_o\ & (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[9]~input_o\,
	combout => \sll64[1][10]~35_combout\);

-- Location: LCCOMB_X56_Y72_N2
\sll64[2][10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][10]~36_combout\ = (\B[1]~input_o\ & (\sll64[2][10]~34_combout\)) # (!\B[1]~input_o\ & ((\sll64[1][10]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][10]~34_combout\,
	datac => \sll64[1][10]~35_combout\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][10]~36_combout\);

-- Location: LCCOMB_X58_Y69_N28
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & ((\Mux13~0_combout\) # ((\sll64[2][6]~25_combout\)))) # (!\Mux5~0_combout\ & (!\Mux13~0_combout\ & (\sll64[2][10]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \sll64[2][10]~36_combout\,
	datad => \sll64[2][6]~25_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X56_Y70_N12
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux5~1_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux5~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X56_Y70_N14
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\ExtWord~input_o\ & ((\Y_srl[15]~8_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\ & (((\srl64[6][10]~40_combout\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_srl[15]~8_combout\,
	datac => \srl64[6][10]~40_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X56_Y70_N16
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~3_combout\ & ((\A[7]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux5~3_combout\ & (((\sra64[6][10]~7_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \sra64[6][10]~7_combout\,
	datac => \Mux5~3_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X56_Y70_N2
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~2_combout\) # ((\Mux5~4_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux5~4_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X56_Y70_N4
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\ExtWord~input_o\ & (((\Y_srl[15]~8_combout\) # (\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\ & (\srl64[6][11]~50_combout\ & ((!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[6][11]~50_combout\,
	datac => \Y_srl[15]~8_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X56_Y70_N6
\Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\Mux4~8_combout\ & ((\A[7]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Mux4~8_combout\ & (((\sra64[6][11]~9_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \sra64[6][11]~9_combout\,
	datac => \Mux4~8_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X56_Y72_N4
\sll64[2][11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][11]~37_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \sll64[2][11]~37_combout\);

-- Location: LCCOMB_X59_Y69_N24
\sll64[2][11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][11]~38_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[9]~input_o\))) # (!\B[1]~input_o\ & (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[9]~input_o\,
	combout => \sll64[2][11]~38_combout\);

-- Location: LCCOMB_X59_Y69_N18
\sll64[2][11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[2][11]~39_combout\ = (!\ExtWord~input_o\ & ((\sll64[2][11]~37_combout\) # (\sll64[2][11]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[2][11]~37_combout\,
	datab => \ExtWord~input_o\,
	datad => \sll64[2][11]~38_combout\,
	combout => \sll64[2][11]~39_combout\);

-- Location: LCCOMB_X58_Y69_N22
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\ & (((\Y_sll[7]~3_combout\) # (!\Mux4~11_combout\)))) # (!\Mux4~4_combout\ & (\sll64[3][3]~15_combout\ & ((\Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[3][3]~15_combout\,
	datab => \Y_sll[7]~3_combout\,
	datac => \Mux4~4_combout\,
	datad => \Mux4~11_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X58_Y69_N0
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux13~0_combout\ & (((\Mux4~5_combout\)))) # (!\Mux13~0_combout\ & ((\Mux4~5_combout\ & ((\sll64[2][7]~28_combout\))) # (!\Mux4~5_combout\ & (\sll64[2][11]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \sll64[2][11]~39_combout\,
	datac => \Mux4~5_combout\,
	datad => \sll64[2][7]~28_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X61_Y70_N2
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux4~6_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[11]~input_o\,
	datac => \Mux4~6_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X61_Y70_N4
\Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\Mux4~7_combout\) # ((\Mux4~9_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~9_combout\,
	datab => \Mux4~7_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X60_Y70_N22
\srl64[6][11]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \srl64[6][11]~61_combout\ = (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \srl64[6][11]~61_combout\);

-- Location: LCCOMB_X58_Y70_N6
\Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~13_combout\ = (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\) # (\srl64[6][11]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \srl64[6][11]~61_combout\,
	combout => \Mux2~13_combout\);

-- Location: LCCOMB_X58_Y70_N16
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\ShiftFN[1]~input_o\) # ((\ShiftFN[0]~input_o\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X58_Y70_N22
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X57_Y70_N4
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\ExtWord~input_o\ & (((\ShiftFN[0]~input_o\) # (\Y_srl[15]~8_combout\)))) # (!\ExtWord~input_o\ & (\srl64[6][12]~53_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \srl64[6][12]~53_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_srl[15]~8_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X57_Y70_N14
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (((\A[7]~input_o\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux3~2_combout\ & (\sra64[6][12]~11_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[6][12]~11_combout\,
	datab => \Mux3~2_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X58_Y70_N26
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux2~7_combout\ & (((\Mux2~6_combout\) # (\Mux3~3_combout\)))) # (!\Mux2~7_combout\ & (\A[12]~input_o\ & (!\Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \Mux2~7_combout\,
	datac => \Mux2~6_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X57_Y69_N26
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\B[3]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X54_Y69_N12
\sll64[1][12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][12]~40_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & ((\A[11]~input_o\))) # (!\B[0]~input_o\ & (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[12]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[11]~input_o\,
	combout => \sll64[1][12]~40_combout\);

-- Location: LCCOMB_X57_Y69_N28
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X57_Y69_N30
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux2~4_combout\ & (((\Mux2~5_combout\)))) # (!\Mux2~4_combout\ & ((\Mux2~5_combout\ & (\sll64[1][10]~35_combout\)) # (!\Mux2~5_combout\ & ((\sll64[1][12]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sll64[1][10]~35_combout\,
	datab => \sll64[1][12]~40_combout\,
	datac => \Mux2~4_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X57_Y69_N16
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux2~4_combout\ & ((\Mux3~0_combout\ & ((\sll64[3][4]~20_combout\))) # (!\Mux3~0_combout\ & (\sll64[2][8]~30_combout\)))) # (!\Mux2~4_combout\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \sll64[2][8]~30_combout\,
	datac => \Mux3~0_combout\,
	datad => \sll64[3][4]~20_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X58_Y70_N20
Mux3 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~combout\ = (\Mux2~13_combout\ & ((\Mux3~4_combout\ & (\Y_sll[7]~3_combout\)) # (!\Mux3~4_combout\ & ((\Mux3~1_combout\))))) # (!\Mux2~13_combout\ & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~13_combout\,
	datab => \Y_sll[7]~3_combout\,
	datac => \Mux3~4_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~combout\);

-- Location: LCCOMB_X54_Y69_N16
\sll64[1][13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][13]~42_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[12]~input_o\)) # (!\B[0]~input_o\ & ((\A[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[0]~input_o\,
	combout => \sll64[1][13]~42_combout\);

-- Location: LCCOMB_X57_Y69_N10
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~4_combout\ & ((\sll64[2][9]~33_combout\) # ((\Mux2~5_combout\)))) # (!\Mux2~4_combout\ & (((\sll64[1][13]~42_combout\ & !\Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \sll64[2][9]~33_combout\,
	datac => \sll64[1][13]~42_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X54_Y69_N22
\sll64[1][11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sll64[1][11]~41_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\A[10]~input_o\)) # (!\B[0]~input_o\ & ((\A[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[0]~input_o\,
	combout => \sll64[1][11]~41_combout\);

-- Location: LCCOMB_X57_Y69_N4
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\Mux2~8_combout\ & (((\sll64[3][5]~23_combout\)) # (!\Mux2~5_combout\))) # (!\Mux2~8_combout\ & (\Mux2~5_combout\ & (\sll64[1][11]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~8_combout\,
	datab => \Mux2~5_combout\,
	datac => \sll64[1][11]~41_combout\,
	datad => \sll64[3][5]~23_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X58_Y70_N30
\Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\ShiftFN[0]~input_o\ & (\ExtWord~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_srl[15]~8_combout\))) # (!\ExtWord~input_o\ & (\srl64[6][13]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \srl64[6][13]~56_combout\,
	datad => \Y_srl[15]~8_combout\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X58_Y70_N8
\Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = (\Mux2~10_combout\ & (((\A[7]~input_o\) # (!\ShiftFN[0]~input_o\)))) # (!\Mux2~10_combout\ & (\sra64[6][13]~12_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~10_combout\,
	datab => \sra64[6][13]~12_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Mux2~11_combout\);

-- Location: LCCOMB_X58_Y70_N18
\Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = (\Mux2~6_combout\ & (\Mux2~7_combout\)) # (!\Mux2~6_combout\ & ((\Mux2~7_combout\ & (\Mux2~11_combout\)) # (!\Mux2~7_combout\ & ((\A[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \Mux2~7_combout\,
	datac => \Mux2~11_combout\,
	datad => \A[13]~input_o\,
	combout => \Mux2~12_combout\);

-- Location: LCCOMB_X58_Y70_N28
Mux2 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~combout\ = (\Mux2~13_combout\ & ((\Mux2~12_combout\ & (\Y_sll[7]~3_combout\)) # (!\Mux2~12_combout\ & ((\Mux2~9_combout\))))) # (!\Mux2~13_combout\ & (((\Mux2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~13_combout\,
	datab => \Y_sll[7]~3_combout\,
	datac => \Mux2~9_combout\,
	datad => \Mux2~12_combout\,
	combout => \Mux2~combout\);

-- Location: LCCOMB_X54_Y69_N26
\Y_sll[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[14]~5_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y_sll[14]~5_combout\);

-- Location: LCCOMB_X54_Y69_N20
\Y_sll[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[14]~6_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[14]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y_sll[14]~6_combout\);

-- Location: LCCOMB_X54_Y69_N14
\Y_sll[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[14]~7_combout\ = (\B[2]~input_o\ & (((\sll64[2][10]~36_combout\)))) # (!\B[2]~input_o\ & ((\Y_sll[14]~5_combout\) # ((\Y_sll[14]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[14]~5_combout\,
	datab => \Y_sll[14]~6_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][10]~36_combout\,
	combout => \Y_sll[14]~7_combout\);

-- Location: LCCOMB_X59_Y69_N8
\Y_sll[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[14]~8_combout\ = (\Y_srl[0]~2_combout\ & ((\B[3]~input_o\ & (\Y_sll[14]~2_combout\)) # (!\B[3]~input_o\ & ((\Y_sll[14]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[14]~2_combout\,
	datab => \B[3]~input_o\,
	datac => \Y_sll[14]~7_combout\,
	datad => \Y_srl[0]~2_combout\,
	combout => \Y_sll[14]~8_combout\);

-- Location: LCCOMB_X59_Y69_N12
\Y_sll[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[14]~14_combout\ = (\Y_sll[14]~8_combout\) # ((\Y_sll[7]~3_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[7]~3_combout\,
	datab => \ExtWord~input_o\,
	datac => \Y_sll[14]~8_combout\,
	combout => \Y_sll[14]~14_combout\);

-- Location: LCCOMB_X59_Y69_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Y_sll[14]~14_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[14]~14_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X59_Y69_N28
\Y_srl[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[14]~10_combout\ = (\ExtWord~input_o\ & (!\B[0]~input_o\ & ((\A[7]~input_o\)))) # (!\ExtWord~input_o\ & (((\srl64[1][14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \srl64[1][14]~3_combout\,
	datac => \A[7]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y_srl[14]~10_combout\);

-- Location: LCCOMB_X59_Y69_N2
\Y_srl[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_srl[14]~11_combout\ = (!\B[1]~input_o\ & (\Y_srl[14]~10_combout\ & (\sll64[6][0]~6_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Y_srl[14]~10_combout\,
	datac => \sll64[6][0]~6_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_srl[14]~11_combout\);

-- Location: LCCOMB_X59_Y69_N20
\Y_sra[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sra[14]~7_combout\ = (\ExtWord~input_o\ & (\A[7]~input_o\)) # (!\ExtWord~input_o\ & ((\sra64[6][14]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[7]~input_o\,
	datad => \sra64[6][14]~14_combout\,
	combout => \Y_sra[14]~7_combout\);

-- Location: LCCOMB_X59_Y69_N6
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\Y_sra[14]~7_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux1~0_combout\ & (\Y_srl[14]~11_combout\ & (\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Y_srl[14]~11_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_sra[14]~7_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X59_Y69_N30
\Y_sll[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[14]~4_combout\ = (\Y_sll[7]~3_combout\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[7]~3_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y_sll[14]~4_combout\);

-- Location: LCCOMB_X58_Y69_N18
\Y_sll[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[15]~9_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\sll64[2][3]~26_combout\))) # (!\B[2]~input_o\ & (\sll64[2][7]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \sll64[2][7]~28_combout\,
	datac => \B[2]~input_o\,
	datad => \sll64[2][3]~26_combout\,
	combout => \Y_sll[15]~9_combout\);

-- Location: LCCOMB_X59_Y69_N16
\Y_sll[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[15]~10_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[14]~input_o\)) # (!\B[0]~input_o\ & ((\A[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Y_sll[15]~10_combout\);

-- Location: LCCOMB_X59_Y69_N10
\Y_sll[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[15]~11_combout\ = (!\B[2]~input_o\ & ((\Y_sll[15]~10_combout\) # ((\B[1]~input_o\ & \sll64[1][13]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Y_sll[15]~10_combout\,
	datac => \sll64[1][13]~42_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_sll[15]~11_combout\);

-- Location: LCCOMB_X59_Y69_N4
\Y_sll[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[15]~12_combout\ = (!\B[3]~input_o\ & ((\Y_sll[15]~11_combout\) # ((\sll64[2][11]~39_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[15]~11_combout\,
	datab => \B[3]~input_o\,
	datac => \sll64[2][11]~39_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_sll[15]~12_combout\);

-- Location: LCCOMB_X59_Y69_N14
\Y_sll[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sll[15]~13_combout\ = (\Y_sll[14]~4_combout\) # ((\Y_srl[0]~2_combout\ & ((\Y_sll[15]~9_combout\) # (\Y_sll[15]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[14]~4_combout\,
	datab => \Y_sll[15]~9_combout\,
	datac => \Y_sll[15]~12_combout\,
	datad => \Y_srl[0]~2_combout\,
	combout => \Y_sll[15]~13_combout\);

-- Location: LCCOMB_X60_Y69_N14
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Y_sll[15]~13_combout\)) # (!\ShiftFN[0]~input_o\ & ((\A[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sll[15]~13_combout\,
	datab => \A[15]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X61_Y69_N26
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux0~0_combout\ & (\sra64[0][15]~2_combout\)) # (!\Mux0~0_combout\ & ((\Y_srl[15]~8_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sra64[0][15]~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_srl[15]~8_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X0_Y29_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X111_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
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


