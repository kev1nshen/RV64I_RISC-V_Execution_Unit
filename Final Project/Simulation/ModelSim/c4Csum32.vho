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

-- DATE "04/08/2026 13:28:21"

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

ENTITY 	Adder IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(31 DOWNTO 0);
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[4]~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[5]~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[6]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[6]~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[6]~4_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[7]~5_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|S[7]~6_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[8]~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[9]~1_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[10]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[11]~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[12]~4_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[12]~5_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[13]~6_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[13]~7_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|S[14]~8_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[14]~9_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[14]~10_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|S[15]~11_combout\ : std_logic;
SIGNAL \recursive_case:lower|Cout~3_combout\ : std_logic;
SIGNAL \recursive_case:lower|Cout~4_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \recursive_case:lower|Cout~2_combout\ : std_logic;
SIGNAL \S_int~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:lower|Cout~5_combout\ : std_logic;
SIGNAL \S_int~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \S_int~2_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~3_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|S[4]~0_combout\ : std_logic;
SIGNAL \S_int~4_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~5_combout\ : std_logic;
SIGNAL \S_int~6_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \S_int~7_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|S[7]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~8_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|S[8]~0_combout\ : std_logic;
SIGNAL \S_int~9_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~10_combout\ : std_logic;
SIGNAL \S_int~11_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ : std_logic;
SIGNAL \S_int~12_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|S[11]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper0|S[11]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ : std_logic;
SIGNAL \S_int~13_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ : std_logic;
SIGNAL \S_int~14_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \S_int~15_combout\ : std_logic;
SIGNAL \S_int~16_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ : std_logic;
SIGNAL \S_int~17_combout\ : std_logic;
SIGNAL \S_int~18_combout\ : std_logic;
SIGNAL \S_int~19_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \S_int~20_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Ovfl~2_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ : std_logic;
SIGNAL \S_int~21_combout\ : std_logic;
SIGNAL \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ : std_logic;
SIGNAL \cout_int~0_combout\ : std_logic;
SIGNAL \Ovfl~3_combout\ : std_logic;
SIGNAL \ALT_INV_Ovfl~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
\ALT_INV_Ovfl~3_combout\ <= NOT \Ovfl~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X56_Y0_N16
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[4]~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[5]~1_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[6]~4_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|recursive_case:lower|S[7]~6_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[8]~0_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[9]~1_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[10]~2_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[11]~3_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[12]~5_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[13]~7_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[14]~10_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recursive_case:lower|S[15]~11_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~0_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~1_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~2_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~3_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~4_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~6_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~7_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~8_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~9_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~11_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~12_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~13_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~15_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~17_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~20_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_int~21_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cout_int~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~3_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X58_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X55_Y1_N8
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\ = \B[0]~input_o\ $ (\Cin~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|S[0]~0_combout\);

-- Location: LCCOMB_X55_Y1_N2
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\ = (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\);

-- Location: IOIBUF_X52_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X55_Y1_N28
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\ $ 
-- (\A[1]~input_o\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X55_Y1_N22
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\ & 
-- ((\A[1]~input_o\) # (\B[1]~input_o\))) # (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\ & (\A[1]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|base_case:base|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X54_Y0_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X55_Y1_N24
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ $ (\B[2]~input_o\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[2]~0_combout\);

-- Location: IOIBUF_X52_Y0_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X55_Y1_N10
\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X55_Y1_N4
\recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ 
-- (((\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) # (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- (\A[2]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X60_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X55_Y1_N6
\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X55_Y1_N0
\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & 
-- \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X59_Y72_N0
\recursive_case:lower|recursive_case:lower|S[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[4]~0_combout\ = \B[4]~input_o\ $ (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ $ (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datad => \A[4]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[4]~0_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X59_Y72_N18
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X59_Y72_N12
\recursive_case:lower|recursive_case:lower|S[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[5]~1_combout\ = \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\B[4]~input_o\ & 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\) # (\A[4]~input_o\))) # (!\B[4]~input_o\ & (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datad => \A[4]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[5]~1_combout\);

-- Location: IOIBUF_X58_Y73_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X59_Y72_N22
\recursive_case:lower|recursive_case:lower|S[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[6]~2_combout\ = (\B[4]~input_o\ & ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\) # (\A[4]~input_o\))) # (!\B[4]~input_o\ & 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datad => \A[4]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[6]~2_combout\);

-- Location: LCCOMB_X59_Y72_N16
\recursive_case:lower|recursive_case:lower|S[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[6]~3_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # (\recursive_case:lower|recursive_case:lower|S[6]~2_combout\))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & 
-- \recursive_case:lower|recursive_case:lower|S[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|S[6]~2_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[6]~3_combout\);

-- Location: LCCOMB_X59_Y72_N26
\recursive_case:lower|recursive_case:lower|S[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[6]~4_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (\recursive_case:lower|recursive_case:lower|S[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|S[6]~3_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[6]~4_combout\);

-- Location: LCCOMB_X59_Y72_N20
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\A[5]~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X59_Y72_N30
\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\A[5]~input_o\) # (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X59_Y72_N24
\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ = (\recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ((\B[4]~input_o\ & 
-- ((\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\) # (\A[4]~input_o\))) # (!\B[4]~input_o\ & (\recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datab => \B[4]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datad => \A[4]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X59_Y72_N10
\recursive_case:lower|recursive_case:lower|S[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[7]~5_combout\ = (\A[6]~input_o\ & ((\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # ((\B[6]~input_o\) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\)))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & ((\recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # 
-- (\recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datac => \B[6]~input_o\,
	datad => \recursive_case:lower|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\,
	combout => \recursive_case:lower|recursive_case:lower|S[7]~5_combout\);

-- Location: IOIBUF_X60_Y73_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X59_Y72_N28
\recursive_case:lower|recursive_case:lower|S[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|S[7]~6_combout\ = \recursive_case:lower|recursive_case:lower|S[7]~5_combout\ $ (\A[7]~input_o\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|S[7]~5_combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|S[7]~6_combout\);

-- Location: IOIBUF_X69_Y73_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X59_Y72_N6
\recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\recursive_case:lower|recursive_case:lower|S[7]~5_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\))) # (!\recursive_case:lower|recursive_case:lower|S[7]~5_combout\ & (\A[7]~input_o\ & 
-- \B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|S[7]~5_combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X79_Y73_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X76_Y72_N16
\recursive_case:lower|S[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[8]~0_combout\ = \A[8]~input_o\ $ (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ $ (\B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \B[8]~input_o\,
	combout => \recursive_case:lower|S[8]~0_combout\);

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

-- Location: IOIBUF_X72_Y73_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X76_Y72_N10
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X76_Y72_N4
\recursive_case:lower|S[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[9]~1_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ $ (((\A[8]~input_o\ & ((\B[8]~input_o\) # (\recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # 
-- (!\A[8]~input_o\ & (\B[8]~input_o\ & \recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	combout => \recursive_case:lower|S[9]~1_combout\);

-- Location: IOIBUF_X74_Y73_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X76_Y72_N26
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\);

-- Location: LCCOMB_X76_Y72_N8
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[9]~input_o\ & ((\A[8]~input_o\) # ((\A[9]~input_o\) # (\B[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\A[8]~input_o\) # 
-- (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X76_Y72_N6
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\A[8]~input_o\ & \B[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[8]~input_o\ & (\A[9]~input_o\ & \B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X76_Y72_N12
\recursive_case:lower|S[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[10]~2_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ $ (((\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:lower|S[10]~2_combout\);

-- Location: LCCOMB_X76_Y72_N22
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ = (\A[8]~input_o\ & ((\recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (\B[8]~input_o\))) # (!\A[8]~input_o\ & 
-- (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & \B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \B[8]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\);

-- Location: LCCOMB_X76_Y72_N0
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ = (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ & ((\B[9]~input_o\) # (\A[9]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ & (\B[9]~input_o\ & \A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X81_Y73_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X77_Y72_N24
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X77_Y72_N2
\recursive_case:lower|S[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[11]~3_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((\B[10]~input_o\ & ((\A[10]~input_o\) # 
-- (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	combout => \recursive_case:lower|S[11]~3_combout\);

-- Location: LCCOMB_X77_Y72_N20
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\B[11]~input_o\ & \A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X77_Y72_N22
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\B[11]~input_o\) # (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X77_Y72_N16
\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\A[10]~input_o\) # (\B[10]~input_o\))) # (!\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- (\A[10]~input_o\ & \B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \A[10]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datad => \B[10]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X77_Y72_N10
\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ((\A[10]~input_o\ & 
-- ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # (\B[10]~input_o\))) # (!\A[10]~input_o\ & (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- \B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datab => \A[10]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \B[10]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X77_Y72_N4
\recursive_case:lower|S[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[12]~4_combout\ = (\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)) # (!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|S[12]~4_combout\);

-- Location: IOIBUF_X109_Y73_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X77_Y72_N6
\recursive_case:lower|S[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[12]~5_combout\ = \B[12]~input_o\ $ (\A[12]~input_o\ $ (((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # (\recursive_case:lower|S[12]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|S[12]~4_combout\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \recursive_case:lower|S[12]~5_combout\);

-- Location: LCCOMB_X77_Y72_N0
\recursive_case:lower|S[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[13]~6_combout\ = (\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # ((\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)) # (!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|S[13]~6_combout\);

-- Location: IOIBUF_X107_Y73_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X106_Y72_N8
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X106_Y72_N2
\recursive_case:lower|S[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[13]~7_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\A[12]~input_o\ & ((\recursive_case:lower|S[13]~6_combout\) # (\B[12]~input_o\))) # (!\A[12]~input_o\ & 
-- (\recursive_case:lower|S[13]~6_combout\ & \B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \recursive_case:lower|S[13]~6_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datad => \B[12]~input_o\,
	combout => \recursive_case:lower|S[13]~7_combout\);

-- Location: IOIBUF_X107_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X111_Y73_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X106_Y72_N12
\recursive_case:lower|S[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[14]~8_combout\ = (\A[12]~input_o\ & ((\recursive_case:lower|S[13]~6_combout\) # (\B[12]~input_o\))) # (!\A[12]~input_o\ & (\recursive_case:lower|S[13]~6_combout\ & \B[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \recursive_case:lower|S[13]~6_combout\,
	datad => \B[12]~input_o\,
	combout => \recursive_case:lower|S[14]~8_combout\);

-- Location: LCCOMB_X106_Y72_N6
\recursive_case:lower|S[14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[14]~9_combout\ = (\recursive_case:lower|S[14]~8_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\))) # (!\recursive_case:lower|S[14]~8_combout\ & (\A[13]~input_o\ & \B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|S[14]~8_combout\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \recursive_case:lower|S[14]~9_combout\);

-- Location: LCCOMB_X106_Y72_N0
\recursive_case:lower|S[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[14]~10_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\ $ (\recursive_case:lower|S[14]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \recursive_case:lower|S[14]~9_combout\,
	combout => \recursive_case:lower|S[14]~10_combout\);

-- Location: LCCOMB_X77_Y72_N18
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # ((\A[11]~input_o\ & \B[11]~input_o\)))) # (!\B[12]~input_o\ & (\A[11]~input_o\ & (\B[11]~input_o\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X77_Y72_N28
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ = (\B[12]~input_o\ & (\A[12]~input_o\ & ((!\B[11]~input_o\) # (!\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\);

-- Location: LCCOMB_X77_Y72_N30
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & 
-- ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (!\A[10]~input_o\ & !\B[10]~input_o\)) # (!\recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((!\B[10]~input_o\) # (!\A[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\);

-- Location: LCCOMB_X77_Y72_N8
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\) # ((\recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ & 
-- ((\B[12]~input_o\) # (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\);

-- Location: LCCOMB_X77_Y72_N26
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & ((\B[10]~input_o\ & (!\A[10]~input_o\ & 
-- !\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (!\B[10]~input_o\ & ((!\recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # 
-- (!\A[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\);

-- Location: LCCOMB_X77_Y72_N12
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\) # ((\recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ & 
-- ((\A[12]~input_o\) # (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\);

-- Location: LCCOMB_X77_Y72_N14
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\) # ((\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\)) # (!\recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\,
	datac => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\,
	datad => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\);

-- Location: LCCOMB_X106_Y72_N26
\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ = (\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ & (\A[13]~input_o\ & \B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\);

-- Location: IOIBUF_X109_Y73_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X106_Y72_N20
\recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X106_Y72_N22
\recursive_case:lower|S[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|S[15]~11_combout\ = \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ (((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ & ((\B[14]~input_o\) # 
-- (\A[14]~input_o\))) # (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ & (\B[14]~input_o\ & \A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\,
	datab => \recursive_case:lower|recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \recursive_case:lower|S[15]~11_combout\);

-- Location: LCCOMB_X106_Y72_N10
\recursive_case:lower|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|Cout~3_combout\ = (\A[15]~input_o\) # (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \recursive_case:lower|Cout~3_combout\);

-- Location: LCCOMB_X106_Y72_N4
\recursive_case:lower|Cout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|Cout~4_combout\ = (\recursive_case:lower|Cout~3_combout\ & ((\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ & ((\A[14]~input_o\) # (\B[14]~input_o\))) # 
-- (!\recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ & (\A[14]~input_o\ & \B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \recursive_case:lower|Cout~3_combout\,
	combout => \recursive_case:lower|Cout~4_combout\);

-- Location: IOIBUF_X89_Y73_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X106_Y72_N24
\recursive_case:lower|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|Cout~2_combout\ = (\A[15]~input_o\ & \B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \recursive_case:lower|Cout~2_combout\);

-- Location: LCCOMB_X94_Y69_N0
\S_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~0_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\ $ (((\recursive_case:lower|Cout~4_combout\) # (\recursive_case:lower|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|Cout~4_combout\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \recursive_case:lower|Cout~2_combout\,
	combout => \S_int~0_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X94_Y69_N10
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \A[17]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datac => \B[17]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X106_Y72_N14
\recursive_case:lower|Cout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:lower|Cout~5_combout\ = (\recursive_case:lower|Cout~4_combout\) # ((\A[15]~input_o\ & \B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:lower|Cout~4_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \recursive_case:lower|Cout~5_combout\);

-- Location: LCCOMB_X94_Y69_N20
\S_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~1_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ $ (((\B[16]~input_o\ & ((\A[16]~input_o\) # (\recursive_case:lower|Cout~5_combout\))) # (!\B[16]~input_o\ & (\A[16]~input_o\ & 
-- \recursive_case:lower|Cout~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	datab => \B[16]~input_o\,
	datac => \A[16]~input_o\,
	datad => \recursive_case:lower|Cout~5_combout\,
	combout => \S_int~1_combout\);

-- Location: LCCOMB_X94_Y69_N24
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[17]~input_o\ & ((\A[16]~input_o\) # ((\B[16]~input_o\) # (\B[17]~input_o\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & ((\A[16]~input_o\) # 
-- (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \B[17]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X94_Y69_N22
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\A[17]~input_o\ & (\A[16]~input_o\ & (\B[16]~input_o\ & 
-- \B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \B[17]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X87_Y73_N22
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X94_Y69_N18
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \A[18]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\);

-- Location: LCCOMB_X94_Y69_N4
\S_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~2_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\ $ (((\recursive_case:lower|Cout~5_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # 
-- (!\recursive_case:lower|Cout~5_combout\ & ((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|Cout~5_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[2]~0_combout\,
	combout => \S_int~2_combout\);

-- Location: LCCOMB_X94_Y69_N6
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\ = (\A[16]~input_o\ & ((\recursive_case:lower|Cout~4_combout\) # ((\B[16]~input_o\) # (\recursive_case:lower|Cout~2_combout\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & 
-- ((\recursive_case:lower|Cout~4_combout\) # (\recursive_case:lower|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|Cout~4_combout\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \recursive_case:lower|Cout~2_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\);

-- Location: LCCOMB_X94_Y69_N16
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & 
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datac => \B[17]~input_o\,
	datad => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~0_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\);

-- Location: IOIBUF_X94_Y73_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X94_Y70_N0
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \A[19]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X94_Y69_N26
\S_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~3_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((\A[18]~input_o\ & ((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\) # (\B[18]~input_o\))) # 
-- (!\A[18]~input_o\ & (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\ & \B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|S[3]~1_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	datad => \B[18]~input_o\,
	combout => \S_int~3_combout\);

-- Location: LCCOMB_X94_Y69_N12
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\) # (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\A[18]~input_o\ & 
-- (\B[18]~input_o\ & \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X94_Y70_N10
\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\A[19]~input_o\ & ((\B[19]~input_o\) # (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & 
-- \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X94_Y69_N14
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\B[18]~input_o\ & 
-- (\A[18]~input_o\ & \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \A[18]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X94_Y70_N4
\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ = (\A[19]~input_o\ & ((\B[19]~input_o\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & 
-- \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\);

-- Location: IOIBUF_X89_Y73_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X89_Y70_N16
\recursive_case:upper1|recursive_case:lower|S[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|S[4]~0_combout\ = \B[20]~input_o\ $ (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|S[4]~0_combout\);

-- Location: LCCOMB_X94_Y70_N6
\S_int~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~4_combout\ = \recursive_case:upper1|recursive_case:lower|S[4]~0_combout\ $ (((\recursive_case:lower|Cout~5_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:lower|Cout~5_combout\ & 
-- (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:lower|Cout~5_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|S[4]~0_combout\,
	combout => \S_int~4_combout\);

-- Location: IOIBUF_X83_Y73_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X89_Y70_N26
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X94_Y70_N8
\S_int~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~5_combout\ = (\recursive_case:lower|Cout~2_combout\ & (((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\)))) # (!\recursive_case:lower|Cout~2_combout\ & ((\recursive_case:lower|Cout~4_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:lower|Cout~4_combout\ & (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:lower|Cout~2_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:lower|Cout~4_combout\,
	combout => \S_int~5_combout\);

-- Location: LCCOMB_X89_Y70_N12
\S_int~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~6_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\B[20]~input_o\ & ((\A[20]~input_o\) # (\S_int~5_combout\))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & \S_int~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \S_int~5_combout\,
	combout => \S_int~6_combout\);

-- Location: IOIBUF_X85_Y73_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X89_Y70_N10
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\);

-- Location: LCCOMB_X89_Y70_N24
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\A[21]~input_o\ & ((\A[20]~input_o\) # ((\B[20]~input_o\) # (\B[21]~input_o\)))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & ((\A[20]~input_o\) # 
-- (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X89_Y70_N22
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\A[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & 
-- \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X89_Y70_N20
\S_int~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~7_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\ $ (((\S_int~5_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\)) # (!\S_int~5_combout\ 
-- & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[2]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datad => \S_int~5_combout\,
	combout => \S_int~7_combout\);

-- Location: LCCOMB_X94_Y70_N26
\recursive_case:upper0|recursive_case:lower|S[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|S[7]~0_combout\ = (\recursive_case:lower|Cout~4_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (!\recursive_case:lower|Cout~4_combout\ & 
-- ((\recursive_case:lower|Cout~2_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (!\recursive_case:lower|Cout~2_combout\ & 
-- ((\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:lower|Cout~4_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datad => \recursive_case:lower|Cout~2_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|S[7]~0_combout\);

-- Location: LCCOMB_X94_Y70_N20
\recursive_case:upper0|recursive_case:lower|S[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|S[7]~1_combout\ = (\A[19]~input_o\ & ((\B[19]~input_o\) # (\recursive_case:upper0|recursive_case:lower|S[7]~0_combout\))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & 
-- \recursive_case:upper0|recursive_case:lower|S[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|S[7]~0_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|S[7]~1_combout\);

-- Location: LCCOMB_X89_Y70_N6
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # (\recursive_case:upper0|recursive_case:lower|S[7]~1_combout\))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & 
-- \recursive_case:upper0|recursive_case:lower|S[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \recursive_case:upper0|recursive_case:lower|S[7]~1_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X89_Y70_N0
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & 
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\);

-- Location: IOIBUF_X91_Y73_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X94_Y70_N22
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ = \A[23]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X89_Y70_N2
\S_int~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~8_combout\ = \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\ $ (((\A[22]~input_o\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\) # (\B[22]~input_o\))) # 
-- (!\A[22]~input_o\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\ & \B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|S[3]~1_combout\,
	datac => \B[22]~input_o\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:upper1|S[1]~0_combout\,
	combout => \S_int~8_combout\);

-- Location: LCCOMB_X89_Y70_N4
\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ((\B[22]~input_o\) # (\A[22]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & (\B[22]~input_o\ & \A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\);

-- Location: LCCOMB_X89_Y70_N14
\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ((\B[22]~input_o\) # (\A[22]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & (\B[22]~input_o\ & \A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\);

-- Location: LCCOMB_X94_Y70_N16
\recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\)) # 
-- (!\recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	datad => \recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	combout => \recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X94_Y70_N18
\recursive_case:upper0|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = (\recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & ((\A[23]~input_o\) # (\B[23]~input_o\))) # (!\recursive_case:upper0|recursive_case:lower|Cout~0_combout\ & (\A[23]~input_o\ & 
-- \B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X94_Y70_N28
\recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\))) # 
-- (!\recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\ & (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X94_Y70_N14
\recursive_case:upper1|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (\recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ((\A[23]~input_o\) # (\B[23]~input_o\))) # (!\recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & (\A[23]~input_o\ & 
-- \B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: IOIBUF_X115_Y62_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X113_Y66_N24
\recursive_case:upper1|S[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|S[8]~0_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	combout => \recursive_case:upper1|S[8]~0_combout\);

-- Location: LCCOMB_X113_Y66_N18
\S_int~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~9_combout\ = \recursive_case:upper1|S[8]~0_combout\ $ (((\recursive_case:lower|Cout~5_combout\ & ((\recursive_case:upper1|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:lower|Cout~5_combout\ & 
-- (\recursive_case:upper0|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|Cout~5_combout\,
	datad => \recursive_case:upper1|S[8]~0_combout\,
	combout => \S_int~9_combout\);

-- Location: IOIBUF_X115_Y63_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X113_Y66_N22
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ = \B[25]~input_o\ $ (\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X113_Y66_N12
\S_int~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~10_combout\ = (\recursive_case:lower|Cout~2_combout\ & (((\recursive_case:upper1|recursive_case:lower|Cout~1_combout\)))) # (!\recursive_case:lower|Cout~2_combout\ & ((\recursive_case:lower|Cout~4_combout\ & 
-- ((\recursive_case:upper1|recursive_case:lower|Cout~1_combout\))) # (!\recursive_case:lower|Cout~4_combout\ & (\recursive_case:upper0|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datac => \recursive_case:lower|Cout~2_combout\,
	datad => \recursive_case:lower|Cout~4_combout\,
	combout => \S_int~10_combout\);

-- Location: LCCOMB_X113_Y66_N16
\S_int~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~11_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\ $ (((\B[24]~input_o\ & ((\A[24]~input_o\) # (\S_int~10_combout\))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & \S_int~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|S[1]~0_combout\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \S_int~10_combout\,
	combout => \S_int~11_combout\);

-- Location: LCCOMB_X113_Y66_N10
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\B[25]~input_o\ & (\B[24]~input_o\ & (\A[24]~input_o\ & 
-- \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[25]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X113_Y66_N20
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\ = (\B[25]~input_o\ & ((\B[24]~input_o\) # ((\A[24]~input_o\) # (\A[25]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & ((\B[24]~input_o\) # 
-- (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[25]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\);

-- Location: IOIBUF_X115_Y63_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X113_Y66_N30
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ = \B[26]~input_o\ $ (\A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\);

-- Location: LCCOMB_X113_Y66_N0
\S_int~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~12_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\ $ (((\S_int~10_combout\ & ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # 
-- (!\S_int~10_combout\ & (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[2]~0_combout\,
	datad => \S_int~10_combout\,
	combout => \S_int~12_combout\);

-- Location: IOIBUF_X115_Y64_N8
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X115_Y66_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X114_Y66_N24
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\);

-- Location: LCCOMB_X94_Y70_N24
\recursive_case:upper0|S[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|S[11]~0_combout\ = (\S_int~5_combout\ & ((\recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\))) # (!\S_int~5_combout\ & 
-- (\recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:lower|recursive_case:upper0|Cout~0_combout\,
	datac => \S_int~5_combout\,
	datad => \recursive_case:upper1|recursive_case:lower|recursive_case:upper1|Cout~0_combout\,
	combout => \recursive_case:upper0|S[11]~0_combout\);

-- Location: LCCOMB_X94_Y70_N2
\recursive_case:upper0|S[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper0|S[11]~1_combout\ = (\recursive_case:upper0|S[11]~0_combout\ & ((\A[23]~input_o\) # (\B[23]~input_o\))) # (!\recursive_case:upper0|S[11]~0_combout\ & (\A[23]~input_o\ & \B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper0|S[11]~0_combout\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \recursive_case:upper0|S[11]~1_combout\);

-- Location: LCCOMB_X113_Y66_N26
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ = (\A[24]~input_o\ & ((\recursive_case:upper0|S[11]~1_combout\) # (\B[24]~input_o\))) # (!\A[24]~input_o\ & (\recursive_case:upper0|S[11]~1_combout\ & \B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \recursive_case:upper0|S[11]~1_combout\,
	datac => \B[24]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\);

-- Location: LCCOMB_X113_Y66_N28
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\ = (\B[25]~input_o\ & ((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\) # (\A[25]~input_o\))) # (!\B[25]~input_o\ & 
-- (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\ & \A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datac => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~0_combout\,
	datad => \A[25]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\);

-- Location: LCCOMB_X113_Y66_N14
\S_int~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~13_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\ $ (((\A[26]~input_o\ & ((\B[26]~input_o\) # (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\))) 
-- # (!\A[26]~input_o\ & (\B[26]~input_o\ & \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:upper1|S[1]~0_combout\,
	datac => \B[26]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|S[3]~1_combout\,
	combout => \S_int~13_combout\);

-- Location: LCCOMB_X114_Y66_N10
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\ = (\A[27]~input_o\ & \B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X114_Y66_N28
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ = (\A[27]~input_o\) # (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\);

-- Location: LCCOMB_X113_Y66_N8
\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & ((\A[26]~input_o\ & ((\B[26]~input_o\) # 
-- (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \B[26]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X113_Y66_N2
\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\ & 
-- ((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & ((\B[26]~input_o\) # (\A[26]~input_o\))) # (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ 
-- & (\B[26]~input_o\ & \A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~0_combout\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\);

-- Location: LCCOMB_X114_Y66_N14
\S_int~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~14_combout\ = (\S_int~10_combout\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)) # (!\S_int~10_combout\ & ((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datac => \S_int~10_combout\,
	datad => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	combout => \S_int~14_combout\);

-- Location: IOIBUF_X115_Y66_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X114_Y66_N0
\S_int~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~15_combout\ = \A[28]~input_o\ $ (\B[28]~input_o\ $ (((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # (\S_int~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	datab => \S_int~14_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \S_int~15_combout\);

-- Location: LCCOMB_X114_Y66_N18
\S_int~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~16_combout\ = (\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\) # ((\recursive_case:upper0|S[11]~1_combout\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\)) # 
-- (!\recursive_case:upper0|S[11]~1_combout\ & ((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:upper0|S[11]~1_combout\,
	datac => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datad => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~0_combout\,
	combout => \S_int~16_combout\);

-- Location: IOIBUF_X115_Y65_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X115_Y68_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X114_Y66_N4
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ = \B[29]~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\);

-- Location: LCCOMB_X114_Y66_N6
\S_int~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~17_combout\ = \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\ $ (((\A[28]~input_o\ & ((\S_int~16_combout\) # (\B[28]~input_o\))) # (!\A[28]~input_o\ & (\S_int~16_combout\ & \B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \S_int~16_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:lower|S[1]~0_combout\,
	datad => \B[28]~input_o\,
	combout => \S_int~17_combout\);

-- Location: LCCOMB_X114_Y66_N16
\S_int~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~18_combout\ = (\S_int~16_combout\ & ((\A[28]~input_o\) # (\B[28]~input_o\))) # (!\S_int~16_combout\ & (\A[28]~input_o\ & \B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_int~16_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \S_int~18_combout\);

-- Location: LCCOMB_X114_Y66_N26
\S_int~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~19_combout\ = (\S_int~18_combout\ & ((\B[29]~input_o\) # (\A[29]~input_o\))) # (!\S_int~18_combout\ & (\B[29]~input_o\ & \A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_int~18_combout\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \S_int~19_combout\);

-- Location: IOIBUF_X65_Y0_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X65_Y1_N24
\S_int~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~20_combout\ = \S_int~19_combout\ $ (\B[30]~input_o\ $ (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_int~19_combout\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	combout => \S_int~20_combout\);

-- Location: IOIBUF_X62_Y0_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X65_Y1_N10
\Ovfl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~2_combout\ = \B[31]~input_o\ $ (\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	combout => \Ovfl~2_combout\);

-- Location: LCCOMB_X114_Y66_N12
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\ = (\A[28]~input_o\ & ((\B[28]~input_o\) # ((\B[27]~input_o\ & \A[27]~input_o\)))) # (!\A[28]~input_o\ & (\B[27]~input_o\ & (\A[27]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[28]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\);

-- Location: LCCOMB_X114_Y66_N22
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ = (\A[28]~input_o\ & (\B[28]~input_o\ & ((!\A[27]~input_o\) # (!\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[28]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\);

-- Location: LCCOMB_X113_Y66_N6
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & 
-- ((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & (!\B[26]~input_o\ & !\A[26]~input_o\)) # (!\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\ & 
-- ((!\A[26]~input_o\) # (!\B[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\);

-- Location: LCCOMB_X114_Y66_N2
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\) # ((\recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\ 
-- & ((\A[28]~input_o\) # (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper0|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~4_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\);

-- Location: LCCOMB_X113_Y66_N4
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\ & ((\A[26]~input_o\ & (!\B[26]~input_o\ & 
-- !\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\)) # (!\A[26]~input_o\ & ((!\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\) # 
-- (!\B[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~1_combout\,
	datac => \B[26]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|recursive_case:lower|Cout~0_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\);

-- Location: LCCOMB_X114_Y66_N8
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\) # ((\recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\ 
-- & ((\A[28]~input_o\) # (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:lower|Cout~1_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~2_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\);

-- Location: LCCOMB_X114_Y66_N20
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\) # ((\recursive_case:upper0|S[11]~1_combout\ & 
-- ((\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\))) # (!\recursive_case:upper0|S[11]~1_combout\ & (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~0_combout\,
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~5_combout\,
	datac => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~3_combout\,
	datad => \recursive_case:upper0|S[11]~1_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\);

-- Location: LCCOMB_X114_Y66_N30
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\ = (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ & ((\B[29]~input_o\) # (\A[29]~input_o\))) # 
-- (!\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\ & (\B[29]~input_o\ & \A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~6_combout\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\);

-- Location: LCCOMB_X65_Y1_N28
\S_int~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_int~21_combout\ = \Ovfl~2_combout\ $ (((\B[30]~input_o\ & ((\A[30]~input_o\) # (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & 
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ovfl~2_combout\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\,
	combout => \S_int~21_combout\);

-- Location: LCCOMB_X65_Y1_N6
\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\))) # (!\B[30]~input_o\ & 
-- (\A[30]~input_o\ & \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|S[3]~7_combout\,
	combout => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\);

-- Location: LCCOMB_X65_Y1_N8
\cout_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cout_int~0_combout\ = (\B[31]~input_o\ & ((\A[31]~input_o\) # (\recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & 
-- \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	datad => \recursive_case:upper1|recursive_case:upper1|recursive_case:upper1|recursive_case:upper0|Cout~0_combout\,
	combout => \cout_int~0_combout\);

-- Location: LCCOMB_X65_Y1_N18
\Ovfl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~3_combout\ = (\B[31]~input_o\ & ((\S_int~21_combout\) # (!\A[31]~input_o\))) # (!\B[31]~input_o\ & ((\A[31]~input_o\) # (!\S_int~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \S_int~21_combout\,
	datac => \A[31]~input_o\,
	combout => \Ovfl~3_combout\);

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


