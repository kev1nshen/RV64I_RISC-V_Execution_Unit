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

-- DATE "04/08/2026 12:40:22"

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
-- S[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \block_prop~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|Cout~0_combout\ : std_logic;
SIGNAL \c_chain~4_combout\ : std_logic;
SIGNAL \c_chain~5_combout\ : std_logic;
SIGNAL \c_chain~20_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \c_chain~6_combout\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \block_prop~1_combout\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \gen_blocks:1:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:1:block_prop~combout\ : std_logic;
SIGNAL \c_chain~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|Cout~1_combout\ : std_logic;
SIGNAL \c_chain~21_combout\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \block_prop~2_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \gen_blocks:2:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:2:block_prop~combout\ : std_logic;
SIGNAL \c_chain~8_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \c_chain~9_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \block_prop~3_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \gen_blocks:3:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:3:block_prop~combout\ : std_logic;
SIGNAL \c_chain~10_combout\ : std_logic;
SIGNAL \c_chain~11_combout\ : std_logic;
SIGNAL \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \block_prop~4_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:4:RCA_BLOCK|C[3]~2_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \gen_blocks:4:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:4:block_prop~combout\ : std_logic;
SIGNAL \c_chain~12_combout\ : std_logic;
SIGNAL \c_chain~13_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \block_prop~5_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \gen_blocks:5:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:5:RCA_BLOCK|C[3]~2_combout\ : std_logic;
SIGNAL \gen_blocks:5:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:5:block_prop~combout\ : std_logic;
SIGNAL \c_chain~15_combout\ : std_logic;
SIGNAL \c_chain~14_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \block_prop~6_combout\ : std_logic;
SIGNAL \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:6:RCA_BLOCK|C[3]~2_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \gen_blocks:6:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:6:block_prop~combout\ : std_logic;
SIGNAL \c_chain~17_combout\ : std_logic;
SIGNAL \c_chain~16_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \block_prop~7_combout\ : std_logic;
SIGNAL \gen_blocks:7:RCA_BLOCK|C[3]~1_combout\ : std_logic;
SIGNAL \gen_blocks:7:RCA_BLOCK|C[3]~2_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \gen_blocks:7:block_prop~0_combout\ : std_logic;
SIGNAL \gen_blocks:7:block_prop~combout\ : std_logic;
SIGNAL \c_chain~18_combout\ : std_logic;
SIGNAL \c_chain~19_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \gen_blocks:0:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:7:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:6:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:5:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:4:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:3:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:2:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_blocks:1:RCA_BLOCK|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;

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
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X65_Y73_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:0:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:1:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:2:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:3:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:4:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:5:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:6:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:RCA_BLOCK|S\(0),
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:RCA_BLOCK|S\(1),
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:RCA_BLOCK|S\(2),
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_blocks:7:RCA_BLOCK|S\(3),
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_chain~19_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X58_Y0_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X61_Y69_N0
\gen_blocks:0:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(0) = \Cin~input_o\ $ (\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(0));

-- Location: LCCOMB_X61_Y69_N10
\gen_blocks:0:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\ = (\Cin~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \B[0]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\);

-- Location: LCCOMB_X61_Y69_N20
\gen_blocks:0:RCA_BLOCK|C[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\ = (\A[0]~input_o\ & ((\Cin~input_o\) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\);

-- Location: IOIBUF_X67_Y73_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X61_Y69_N6
\gen_blocks:0:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(1) = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\gen_blocks:0:RCA_BLOCK|C[1]~0_combout\) # (\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\,
	datab => \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X62_Y73_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X61_Y69_N16
\gen_blocks:0:RCA_BLOCK|C[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ = (\A[1]~input_o\ & ((\gen_blocks:0:RCA_BLOCK|C[1]~0_combout\) # ((\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\) # (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\gen_blocks:0:RCA_BLOCK|C[1]~0_combout\) # 
-- (\gen_blocks:0:RCA_BLOCK|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:RCA_BLOCK|C[1]~0_combout\,
	datab => \gen_blocks:0:RCA_BLOCK|C[1]~1_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\);

-- Location: IOIBUF_X67_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X61_Y69_N26
\gen_blocks:0:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(2) = \A[2]~input_o\ $ (\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\,
	datac => \B[2]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X62_Y73_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X61_Y69_N28
\block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \block_prop~0_combout\);

-- Location: LCCOMB_X61_Y69_N14
\gen_blocks:0:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|S\(3) = \block_prop~0_combout\ $ (((\A[2]~input_o\ & ((\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\) # (\B[2]~input_o\))) # (!\A[2]~input_o\ & (\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\,
	datac => \B[2]~input_o\,
	datad => \block_prop~0_combout\,
	combout => \gen_blocks:0:RCA_BLOCK|S\(3));

-- Location: IOIBUF_X58_Y73_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X61_Y69_N30
\gen_blocks:0:RCA_BLOCK|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|Cout~0_combout\ = (\A[2]~input_o\ & ((\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\) # (\B[2]~input_o\))) # (!\A[2]~input_o\ & (\gen_blocks:0:RCA_BLOCK|C[2]~2_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \gen_blocks:0:RCA_BLOCK|C[2]~2_combout\,
	datac => \B[2]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|Cout~0_combout\);

-- Location: LCCOMB_X61_Y69_N8
\c_chain~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~4_combout\ = (\A[1]~input_o\ & (!\B[1]~input_o\ & (\A[0]~input_o\ $ (\B[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\A[0]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \c_chain~4_combout\);

-- Location: LCCOMB_X61_Y69_N2
\c_chain~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~5_combout\ = (\c_chain~4_combout\ & (\block_prop~0_combout\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \c_chain~4_combout\,
	datac => \B[2]~input_o\,
	datad => \block_prop~0_combout\,
	combout => \c_chain~5_combout\);

-- Location: LCCOMB_X61_Y69_N18
\c_chain~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~20_combout\ = (!\c_chain~5_combout\ & ((\gen_blocks:0:RCA_BLOCK|Cout~0_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) # (!\gen_blocks:0:RCA_BLOCK|Cout~0_combout\ & (\A[3]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:0:RCA_BLOCK|Cout~0_combout\,
	datab => \c_chain~5_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \c_chain~20_combout\);

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

-- Location: LCCOMB_X61_Y69_N12
\c_chain~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~6_combout\ = (\Cin~input_o\ & \c_chain~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datad => \c_chain~5_combout\,
	combout => \c_chain~6_combout\);

-- Location: LCCOMB_X58_Y69_N0
\gen_blocks:1:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(0) = \A[4]~input_o\ $ (\B[4]~input_o\ $ (((\c_chain~20_combout\) # (\c_chain~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \c_chain~20_combout\,
	datac => \B[4]~input_o\,
	datad => \c_chain~6_combout\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(0));

-- Location: LCCOMB_X58_Y69_N18
\gen_blocks:1:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ = (\A[4]~input_o\ & ((\c_chain~20_combout\) # ((\B[4]~input_o\) # (\c_chain~6_combout\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & ((\c_chain~20_combout\) # (\c_chain~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \c_chain~20_combout\,
	datac => \B[4]~input_o\,
	datad => \c_chain~6_combout\,
	combout => \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X58_Y69_N20
\gen_blocks:1:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(1) = \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ $ (\A[5]~input_o\ $ (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X58_Y73_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X58_Y69_N6
\block_prop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~1_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	combout => \block_prop~1_combout\);

-- Location: LCCOMB_X58_Y69_N8
\gen_blocks:1:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(2) = \block_prop~1_combout\ $ (((\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ & ((\A[5]~input_o\) # (\B[5]~input_o\))) # (!\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ & (\A[5]~input_o\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_prop~1_combout\,
	datab => \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(2));

-- Location: LCCOMB_X58_Y69_N10
\gen_blocks:1:RCA_BLOCK|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[3]~1_combout\ = (\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ & ((\A[5]~input_o\) # (\B[5]~input_o\))) # (!\gen_blocks:1:RCA_BLOCK|C[1]~0_combout\ & (\A[5]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:1:RCA_BLOCK|C[1]~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|C[3]~1_combout\);

-- Location: LCCOMB_X58_Y69_N12
\gen_blocks:1:RCA_BLOCK|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\ = (\gen_blocks:1:RCA_BLOCK|C[3]~1_combout\ & ((\B[6]~input_o\) # (\A[6]~input_o\))) # (!\gen_blocks:1:RCA_BLOCK|C[3]~1_combout\ & (\B[6]~input_o\ & \A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:RCA_BLOCK|C[3]~1_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\);

-- Location: IOIBUF_X54_Y73_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X58_Y69_N22
\gen_blocks:1:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:RCA_BLOCK|S\(3) = \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\ $ (\B[7]~input_o\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \gen_blocks:1:RCA_BLOCK|S\(3));

-- Location: IOIBUF_X38_Y73_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X58_Y69_N24
\gen_blocks:1:block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:block_prop~0_combout\ = (\A[5]~input_o\ & (!\B[5]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \gen_blocks:1:block_prop~0_combout\);

-- Location: LCCOMB_X58_Y69_N2
\gen_blocks:1:block_prop\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:1:block_prop~combout\ = (\block_prop~1_combout\ & (\gen_blocks:1:block_prop~0_combout\ & (\B[7]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_prop~1_combout\,
	datab => \gen_blocks:1:block_prop~0_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \gen_blocks:1:block_prop~combout\);

-- Location: LCCOMB_X58_Y69_N28
\c_chain~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~7_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\gen_blocks:1:RCA_BLOCK|C[3]~2_combout\ & !\gen_blocks:1:block_prop~combout\)))) # (!\B[7]~input_o\ & (\gen_blocks:1:RCA_BLOCK|C[3]~2_combout\ & (!\gen_blocks:1:block_prop~combout\ & 
-- \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:1:RCA_BLOCK|C[3]~2_combout\,
	datab => \gen_blocks:1:block_prop~combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \c_chain~7_combout\);

-- Location: IOIBUF_X40_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X61_Y69_N24
\gen_blocks:0:RCA_BLOCK|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:0:RCA_BLOCK|Cout~1_combout\ = (\A[3]~input_o\ & ((\gen_blocks:0:RCA_BLOCK|Cout~0_combout\) # (\B[3]~input_o\))) # (!\A[3]~input_o\ & (\gen_blocks:0:RCA_BLOCK|Cout~0_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \gen_blocks:0:RCA_BLOCK|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \gen_blocks:0:RCA_BLOCK|Cout~1_combout\);

-- Location: LCCOMB_X61_Y69_N4
\c_chain~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~21_combout\ = (\gen_blocks:1:block_prop~combout\ & ((\c_chain~5_combout\ & (\Cin~input_o\)) # (!\c_chain~5_combout\ & ((\gen_blocks:0:RCA_BLOCK|Cout~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \c_chain~5_combout\,
	datac => \gen_blocks:1:block_prop~combout\,
	datad => \gen_blocks:0:RCA_BLOCK|Cout~1_combout\,
	combout => \c_chain~21_combout\);

-- Location: LCCOMB_X39_Y69_N0
\gen_blocks:2:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(0) = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((\c_chain~7_combout\) # (\c_chain~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \c_chain~7_combout\,
	datac => \A[8]~input_o\,
	datad => \c_chain~21_combout\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(0));

-- Location: LCCOMB_X39_Y69_N10
\gen_blocks:2:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ = (\B[8]~input_o\ & ((\c_chain~7_combout\) # ((\A[8]~input_o\) # (\c_chain~21_combout\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & ((\c_chain~7_combout\) # (\c_chain~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \c_chain~7_combout\,
	datac => \A[8]~input_o\,
	datad => \c_chain~21_combout\,
	combout => \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\);

-- Location: IOIBUF_X40_Y73_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X39_Y69_N28
\gen_blocks:2:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(1) = \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ $ (\B[9]~input_o\ $ (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\,
	datab => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X38_Y73_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X39_Y69_N30
\block_prop~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~2_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \block_prop~2_combout\);

-- Location: LCCOMB_X39_Y69_N24
\gen_blocks:2:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(2) = \block_prop~2_combout\ $ (((\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ & ((\B[9]~input_o\) # (\A[9]~input_o\))) # (!\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ & (\B[9]~input_o\ & \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\,
	datab => \B[9]~input_o\,
	datac => \block_prop~2_combout\,
	datad => \A[9]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X42_Y73_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X39_Y69_N26
\gen_blocks:2:RCA_BLOCK|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[3]~1_combout\ = (\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ & ((\B[9]~input_o\) # (\A[9]~input_o\))) # (!\gen_blocks:2:RCA_BLOCK|C[1]~0_combout\ & (\B[9]~input_o\ & \A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|C[1]~0_combout\,
	datab => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|C[3]~1_combout\);

-- Location: LCCOMB_X39_Y69_N4
\gen_blocks:2:RCA_BLOCK|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\ = (\gen_blocks:2:RCA_BLOCK|C[3]~1_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\))) # (!\gen_blocks:2:RCA_BLOCK|C[3]~1_combout\ & (\B[10]~input_o\ & \A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:2:RCA_BLOCK|C[3]~1_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\);

-- Location: IOIBUF_X45_Y73_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X39_Y69_N14
\gen_blocks:2:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:RCA_BLOCK|S\(3) = \A[11]~input_o\ $ (\gen_blocks:2:RCA_BLOCK|C[3]~2_combout\ $ (\B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\,
	datad => \B[11]~input_o\,
	combout => \gen_blocks:2:RCA_BLOCK|S\(3));

-- Location: LCCOMB_X39_Y69_N16
\gen_blocks:2:block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:block_prop~0_combout\ = (\B[8]~input_o\ & (!\A[8]~input_o\ & (\B[9]~input_o\ $ (\A[9]~input_o\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\B[9]~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[9]~input_o\,
	combout => \gen_blocks:2:block_prop~0_combout\);

-- Location: LCCOMB_X39_Y69_N2
\gen_blocks:2:block_prop\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:2:block_prop~combout\ = (\gen_blocks:2:block_prop~0_combout\ & (\block_prop~2_combout\ & (\A[11]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \gen_blocks:2:block_prop~0_combout\,
	datac => \block_prop~2_combout\,
	datad => \B[11]~input_o\,
	combout => \gen_blocks:2:block_prop~combout\);

-- Location: LCCOMB_X39_Y69_N12
\c_chain~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~8_combout\ = (\gen_blocks:2:block_prop~combout\ & ((\c_chain~7_combout\) # (\c_chain~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:2:block_prop~combout\,
	datac => \c_chain~7_combout\,
	datad => \c_chain~21_combout\,
	combout => \c_chain~8_combout\);

-- Location: IOIBUF_X42_Y73_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

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

-- Location: LCCOMB_X39_Y69_N6
\c_chain~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~9_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((!\gen_blocks:2:block_prop~combout\ & \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\)))) # (!\A[11]~input_o\ & (!\gen_blocks:2:block_prop~combout\ & (\gen_blocks:2:RCA_BLOCK|C[3]~2_combout\ & 
-- \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \gen_blocks:2:block_prop~combout\,
	datac => \gen_blocks:2:RCA_BLOCK|C[3]~2_combout\,
	datad => \B[11]~input_o\,
	combout => \c_chain~9_combout\);

-- Location: LCCOMB_X39_Y69_N8
\gen_blocks:3:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(0) = \B[12]~input_o\ $ (\A[12]~input_o\ $ (((\c_chain~8_combout\) # (\c_chain~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~8_combout\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \c_chain~9_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X33_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X39_Y69_N18
\gen_blocks:3:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\ = (\B[12]~input_o\ & ((\c_chain~8_combout\) # ((\A[12]~input_o\) # (\c_chain~9_combout\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & ((\c_chain~8_combout\) # (\c_chain~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~8_combout\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \c_chain~9_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\);

-- Location: LCCOMB_X27_Y69_N16
\gen_blocks:3:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(1) = \A[13]~input_o\ $ (\B[13]~input_o\ $ (\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datad => \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X27_Y73_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X27_Y69_N26
\block_prop~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~3_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	combout => \block_prop~3_combout\);

-- Location: LCCOMB_X27_Y69_N4
\gen_blocks:3:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(2) = \block_prop~3_combout\ $ (((\A[13]~input_o\ & ((\B[13]~input_o\) # (\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \block_prop~3_combout\,
	datad => \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X18_Y73_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X27_Y69_N30
\gen_blocks:3:RCA_BLOCK|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # (\gen_blocks:3:RCA_BLOCK|C[1]~0_combout\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datad => \gen_blocks:3:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\);

-- Location: LCCOMB_X27_Y69_N24
\gen_blocks:3:RCA_BLOCK|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\ = (\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ & ((\B[14]~input_o\) # (\A[14]~input_o\))) # (!\gen_blocks:3:RCA_BLOCK|C[3]~1_combout\ & (\B[14]~input_o\ & \A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:RCA_BLOCK|C[3]~1_combout\,
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	combout => \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\);

-- Location: LCCOMB_X27_Y69_N2
\gen_blocks:3:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:RCA_BLOCK|S\(3) = \B[15]~input_o\ $ (\A[15]~input_o\ $ (\gen_blocks:3:RCA_BLOCK|C[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\,
	combout => \gen_blocks:3:RCA_BLOCK|S\(3));

-- Location: IOIBUF_X25_Y73_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X39_Y69_N20
\gen_blocks:3:block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:block_prop~0_combout\ = (\A[13]~input_o\ & (!\B[13]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \B[13]~input_o\,
	combout => \gen_blocks:3:block_prop~0_combout\);

-- Location: LCCOMB_X27_Y69_N12
\gen_blocks:3:block_prop\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:3:block_prop~combout\ = (\block_prop~3_combout\ & (\gen_blocks:3:block_prop~0_combout\ & (\B[15]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_prop~3_combout\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \gen_blocks:3:block_prop~0_combout\,
	combout => \gen_blocks:3:block_prop~combout\);

-- Location: LCCOMB_X30_Y69_N24
\c_chain~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~10_combout\ = (\gen_blocks:3:block_prop~combout\ & ((\c_chain~8_combout\) # (\c_chain~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:block_prop~combout\,
	datac => \c_chain~8_combout\,
	datad => \c_chain~9_combout\,
	combout => \c_chain~10_combout\);

-- Location: LCCOMB_X27_Y69_N6
\c_chain~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~11_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((!\gen_blocks:3:block_prop~combout\ & \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\)))) # (!\B[15]~input_o\ & (!\gen_blocks:3:block_prop~combout\ & (\A[15]~input_o\ & 
-- \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:3:block_prop~combout\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \gen_blocks:3:RCA_BLOCK|C[3]~2_combout\,
	combout => \c_chain~11_combout\);

-- Location: LCCOMB_X27_Y69_N0
\gen_blocks:4:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|S\(0) = \A[16]~input_o\ $ (\B[16]~input_o\ $ (((\c_chain~10_combout\) # (\c_chain~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \c_chain~10_combout\,
	datad => \c_chain~11_combout\,
	combout => \gen_blocks:4:RCA_BLOCK|S\(0));

-- Location: LCCOMB_X27_Y69_N10
\gen_blocks:4:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # ((\c_chain~10_combout\) # (\c_chain~11_combout\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & ((\c_chain~10_combout\) # (\c_chain~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \c_chain~10_combout\,
	datad => \c_chain~11_combout\,
	combout => \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\);

-- Location: IOIBUF_X29_Y73_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X27_Y69_N20
\gen_blocks:4:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|S\(1) = \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ $ (\B[17]~input_o\ $ (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \gen_blocks:4:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X20_Y73_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X27_Y69_N22
\block_prop~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~4_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \block_prop~4_combout\);

-- Location: LCCOMB_X27_Y69_N8
\gen_blocks:4:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|S\(2) = \block_prop~4_combout\ $ (((\gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ & ((\B[17]~input_o\) # (\A[17]~input_o\))) # (!\gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ & (\B[17]~input_o\ & \A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\,
	datab => \block_prop~4_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \gen_blocks:4:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X0_Y55_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X27_Y69_N18
\gen_blocks:4:RCA_BLOCK|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|C[3]~1_combout\ = (\gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ & ((\B[17]~input_o\) # (\A[17]~input_o\))) # (!\gen_blocks:4:RCA_BLOCK|C[1]~0_combout\ & (\B[17]~input_o\ & \A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:RCA_BLOCK|C[1]~0_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \gen_blocks:4:RCA_BLOCK|C[3]~1_combout\);

-- Location: LCCOMB_X27_Y69_N28
\gen_blocks:4:RCA_BLOCK|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|C[3]~2_combout\ = (\A[18]~input_o\ & ((\gen_blocks:4:RCA_BLOCK|C[3]~1_combout\) # (\B[18]~input_o\))) # (!\A[18]~input_o\ & (\gen_blocks:4:RCA_BLOCK|C[3]~1_combout\ & \B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \gen_blocks:4:RCA_BLOCK|C[3]~1_combout\,
	datad => \B[18]~input_o\,
	combout => \gen_blocks:4:RCA_BLOCK|C[3]~2_combout\);

-- Location: LCCOMB_X1_Y55_N8
\gen_blocks:4:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:RCA_BLOCK|S\(3) = \A[19]~input_o\ $ (\B[19]~input_o\ $ (\gen_blocks:4:RCA_BLOCK|C[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datad => \gen_blocks:4:RCA_BLOCK|C[3]~2_combout\,
	combout => \gen_blocks:4:RCA_BLOCK|S\(3));

-- Location: IOIBUF_X0_Y53_N1
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X27_Y69_N14
\gen_blocks:4:block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:block_prop~0_combout\ = (\A[16]~input_o\ & (!\B[16]~input_o\ & (\B[17]~input_o\ $ (\A[17]~input_o\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & (\B[17]~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \gen_blocks:4:block_prop~0_combout\);

-- Location: LCCOMB_X1_Y55_N26
\gen_blocks:4:block_prop\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:4:block_prop~combout\ = (\block_prop~4_combout\ & (\gen_blocks:4:block_prop~0_combout\ & (\A[19]~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \block_prop~4_combout\,
	datad => \gen_blocks:4:block_prop~0_combout\,
	combout => \gen_blocks:4:block_prop~combout\);

-- Location: LCCOMB_X1_Y55_N20
\c_chain~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~12_combout\ = (\gen_blocks:4:block_prop~combout\ & ((\c_chain~10_combout\) # (\c_chain~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:4:block_prop~combout\,
	datac => \c_chain~10_combout\,
	datad => \c_chain~11_combout\,
	combout => \c_chain~12_combout\);

-- Location: LCCOMB_X1_Y55_N30
\c_chain~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~13_combout\ = (\A[19]~input_o\ & ((\B[19]~input_o\) # ((!\gen_blocks:4:block_prop~combout\ & \gen_blocks:4:RCA_BLOCK|C[3]~2_combout\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & (!\gen_blocks:4:block_prop~combout\ & 
-- \gen_blocks:4:RCA_BLOCK|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \gen_blocks:4:block_prop~combout\,
	datad => \gen_blocks:4:RCA_BLOCK|C[3]~2_combout\,
	combout => \c_chain~13_combout\);

-- Location: IOIBUF_X0_Y54_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X1_Y55_N0
\gen_blocks:5:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|S\(0) = \B[20]~input_o\ $ (\A[20]~input_o\ $ (((\c_chain~12_combout\) # (\c_chain~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \c_chain~12_combout\,
	datac => \c_chain~13_combout\,
	datad => \A[20]~input_o\,
	combout => \gen_blocks:5:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X0_Y55_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X1_Y55_N18
\gen_blocks:5:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\ = (\B[20]~input_o\ & ((\c_chain~12_combout\) # ((\c_chain~13_combout\) # (\A[20]~input_o\)))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & ((\c_chain~12_combout\) # (\c_chain~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \c_chain~12_combout\,
	datac => \c_chain~13_combout\,
	datad => \A[20]~input_o\,
	combout => \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\);

-- Location: LCCOMB_X1_Y55_N28
\gen_blocks:5:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|S\(1) = \A[21]~input_o\ $ (\B[21]~input_o\ $ (\gen_blocks:5:RCA_BLOCK|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:5:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X0_Y51_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X1_Y55_N6
\block_prop~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~5_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \block_prop~5_combout\);

-- Location: LCCOMB_X1_Y55_N16
\gen_blocks:5:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|S\(2) = \block_prop~5_combout\ $ (((\A[21]~input_o\ & ((\gen_blocks:5:RCA_BLOCK|C[1]~0_combout\) # (\B[21]~input_o\))) # (!\A[21]~input_o\ & (\gen_blocks:5:RCA_BLOCK|C[1]~0_combout\ & \B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\,
	datac => \B[21]~input_o\,
	datad => \block_prop~5_combout\,
	combout => \gen_blocks:5:RCA_BLOCK|S\(2));

-- Location: IOIBUF_X0_Y53_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X1_Y55_N2
\gen_blocks:5:RCA_BLOCK|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|C[3]~1_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # (\gen_blocks:5:RCA_BLOCK|C[1]~0_combout\))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \gen_blocks:5:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:5:RCA_BLOCK|C[3]~1_combout\);

-- Location: LCCOMB_X1_Y55_N12
\gen_blocks:5:RCA_BLOCK|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|C[3]~2_combout\ = (\A[22]~input_o\ & ((\B[22]~input_o\) # (\gen_blocks:5:RCA_BLOCK|C[3]~1_combout\))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & \gen_blocks:5:RCA_BLOCK|C[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \gen_blocks:5:RCA_BLOCK|C[3]~1_combout\,
	combout => \gen_blocks:5:RCA_BLOCK|C[3]~2_combout\);

-- Location: LCCOMB_X1_Y55_N14
\gen_blocks:5:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:RCA_BLOCK|S\(3) = \A[23]~input_o\ $ (\B[23]~input_o\ $ (\gen_blocks:5:RCA_BLOCK|C[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \gen_blocks:5:RCA_BLOCK|C[3]~2_combout\,
	combout => \gen_blocks:5:RCA_BLOCK|S\(3));

-- Location: LCCOMB_X1_Y55_N24
\gen_blocks:5:block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:block_prop~0_combout\ = (\A[20]~input_o\ & (!\B[20]~input_o\ & (\B[21]~input_o\ $ (\A[21]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & (\B[21]~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[21]~input_o\,
	datac => \B[20]~input_o\,
	datad => \A[21]~input_o\,
	combout => \gen_blocks:5:block_prop~0_combout\);

-- Location: LCCOMB_X1_Y55_N10
\gen_blocks:5:block_prop\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:5:block_prop~combout\ = (\block_prop~5_combout\ & (\gen_blocks:5:block_prop~0_combout\ & (\A[23]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_prop~5_combout\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \gen_blocks:5:block_prop~0_combout\,
	combout => \gen_blocks:5:block_prop~combout\);

-- Location: LCCOMB_X1_Y55_N22
\c_chain~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~15_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\gen_blocks:5:RCA_BLOCK|C[3]~2_combout\ & !\gen_blocks:5:block_prop~combout\)))) # (!\A[23]~input_o\ & (\gen_blocks:5:RCA_BLOCK|C[3]~2_combout\ & (\B[23]~input_o\ & 
-- !\gen_blocks:5:block_prop~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:5:RCA_BLOCK|C[3]~2_combout\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \gen_blocks:5:block_prop~combout\,
	combout => \c_chain~15_combout\);

-- Location: LCCOMB_X1_Y55_N4
\c_chain~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~14_combout\ = (\gen_blocks:5:block_prop~combout\ & ((\c_chain~12_combout\) # (\c_chain~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_chain~12_combout\,
	datac => \c_chain~13_combout\,
	datad => \gen_blocks:5:block_prop~combout\,
	combout => \c_chain~14_combout\);

-- Location: IOIBUF_X9_Y0_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\gen_blocks:6:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|S\(0) = \A[24]~input_o\ $ (\B[24]~input_o\ $ (((\c_chain~15_combout\) # (\c_chain~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~15_combout\,
	datab => \c_chain~14_combout\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \gen_blocks:6:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X7_Y0_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X8_Y1_N26
\gen_blocks:6:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|C[1]~0_combout\ = (\A[24]~input_o\ & ((\c_chain~15_combout\) # ((\c_chain~14_combout\) # (\B[24]~input_o\)))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & ((\c_chain~15_combout\) # (\c_chain~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~15_combout\,
	datab => \c_chain~14_combout\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \gen_blocks:6:RCA_BLOCK|C[1]~0_combout\);

-- Location: IOIBUF_X5_Y0_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X8_Y1_N28
\gen_blocks:6:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|S\(1) = \A[25]~input_o\ $ (\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\ $ (\B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \gen_blocks:6:RCA_BLOCK|C[1]~0_combout\,
	datad => \B[25]~input_o\,
	combout => \gen_blocks:6:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X5_Y0_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X8_Y1_N6
\block_prop~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~6_combout\ = \B[26]~input_o\ $ (\A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	combout => \block_prop~6_combout\);

-- Location: LCCOMB_X8_Y1_N0
\gen_blocks:6:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|S\(2) = \block_prop~6_combout\ $ (((\A[25]~input_o\ & ((\B[25]~input_o\) # (\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & \gen_blocks:6:RCA_BLOCK|C[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datac => \gen_blocks:6:RCA_BLOCK|C[1]~0_combout\,
	datad => \block_prop~6_combout\,
	combout => \gen_blocks:6:RCA_BLOCK|S\(2));

-- Location: LCCOMB_X8_Y1_N2
\gen_blocks:6:RCA_BLOCK|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ = (\A[25]~input_o\ & ((\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\) # (\B[25]~input_o\))) # (!\A[25]~input_o\ & (\gen_blocks:6:RCA_BLOCK|C[1]~0_combout\ & \B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \gen_blocks:6:RCA_BLOCK|C[1]~0_combout\,
	datad => \B[25]~input_o\,
	combout => \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\);

-- Location: LCCOMB_X8_Y1_N20
\gen_blocks:6:RCA_BLOCK|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|C[3]~2_combout\ = (\B[26]~input_o\ & ((\gen_blocks:6:RCA_BLOCK|C[3]~1_combout\) # (\A[26]~input_o\))) # (!\B[26]~input_o\ & (\gen_blocks:6:RCA_BLOCK|C[3]~1_combout\ & \A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \gen_blocks:6:RCA_BLOCK|C[3]~1_combout\,
	datac => \A[26]~input_o\,
	combout => \gen_blocks:6:RCA_BLOCK|C[3]~2_combout\);

-- Location: IOIBUF_X5_Y0_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X8_Y1_N30
\gen_blocks:6:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:RCA_BLOCK|S\(3) = \gen_blocks:6:RCA_BLOCK|C[3]~2_combout\ $ (\A[27]~input_o\ $ (\B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_blocks:6:RCA_BLOCK|C[3]~2_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \gen_blocks:6:RCA_BLOCK|S\(3));

-- Location: IOIBUF_X56_Y0_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X8_Y1_N16
\gen_blocks:6:block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:block_prop~0_combout\ = (\B[25]~input_o\ & (!\A[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[24]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[24]~input_o\,
	combout => \gen_blocks:6:block_prop~0_combout\);

-- Location: LCCOMB_X8_Y1_N10
\gen_blocks:6:block_prop\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:6:block_prop~combout\ = (\block_prop~6_combout\ & (\gen_blocks:6:block_prop~0_combout\ & (\A[27]~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_prop~6_combout\,
	datab => \gen_blocks:6:block_prop~0_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \gen_blocks:6:block_prop~combout\);

-- Location: LCCOMB_X8_Y1_N14
\c_chain~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~17_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\) # ((!\gen_blocks:6:block_prop~combout\ & \gen_blocks:6:RCA_BLOCK|C[3]~2_combout\)))) # (!\A[27]~input_o\ & (!\gen_blocks:6:block_prop~combout\ & (\gen_blocks:6:RCA_BLOCK|C[3]~2_combout\ & 
-- \B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:6:block_prop~combout\,
	datab => \gen_blocks:6:RCA_BLOCK|C[3]~2_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \c_chain~17_combout\);

-- Location: LCCOMB_X8_Y1_N4
\c_chain~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~16_combout\ = (\gen_blocks:6:block_prop~combout\ & ((\c_chain~15_combout\) # (\c_chain~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~15_combout\,
	datab => \c_chain~14_combout\,
	datad => \gen_blocks:6:block_prop~combout\,
	combout => \c_chain~16_combout\);

-- Location: IOIBUF_X60_Y0_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X55_Y1_N8
\gen_blocks:7:RCA_BLOCK|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|S\(0) = \B[28]~input_o\ $ (\A[28]~input_o\ $ (((\c_chain~17_combout\) # (\c_chain~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \c_chain~17_combout\,
	datac => \c_chain~16_combout\,
	datad => \A[28]~input_o\,
	combout => \gen_blocks:7:RCA_BLOCK|S\(0));

-- Location: IOIBUF_X54_Y0_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X55_Y1_N10
\gen_blocks:7:RCA_BLOCK|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\ = (\B[28]~input_o\ & ((\c_chain~17_combout\) # ((\c_chain~16_combout\) # (\A[28]~input_o\)))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & ((\c_chain~17_combout\) # (\c_chain~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \c_chain~17_combout\,
	datac => \c_chain~16_combout\,
	datad => \A[28]~input_o\,
	combout => \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\);

-- Location: LCCOMB_X55_Y1_N28
\gen_blocks:7:RCA_BLOCK|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|S\(1) = \B[29]~input_o\ $ (\A[29]~input_o\ $ (\gen_blocks:7:RCA_BLOCK|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:7:RCA_BLOCK|S\(1));

-- Location: IOIBUF_X54_Y0_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X55_Y1_N6
\block_prop~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_prop~7_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \block_prop~7_combout\);

-- Location: LCCOMB_X55_Y1_N24
\gen_blocks:7:RCA_BLOCK|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|S\(2) = \block_prop~7_combout\ $ (((\B[29]~input_o\ & ((\A[29]~input_o\) # (\gen_blocks:7:RCA_BLOCK|C[1]~0_combout\))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_prop~7_combout\,
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:7:RCA_BLOCK|S\(2));

-- Location: LCCOMB_X55_Y1_N26
\gen_blocks:7:RCA_BLOCK|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|C[3]~1_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\) # (\gen_blocks:7:RCA_BLOCK|C[1]~0_combout\))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \gen_blocks:7:RCA_BLOCK|C[1]~0_combout\,
	combout => \gen_blocks:7:RCA_BLOCK|C[3]~1_combout\);

-- Location: LCCOMB_X55_Y1_N12
\gen_blocks:7:RCA_BLOCK|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|C[3]~2_combout\ = (\A[30]~input_o\ & ((\gen_blocks:7:RCA_BLOCK|C[3]~1_combout\) # (\B[30]~input_o\))) # (!\A[30]~input_o\ & (\gen_blocks:7:RCA_BLOCK|C[3]~1_combout\ & \B[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datac => \gen_blocks:7:RCA_BLOCK|C[3]~1_combout\,
	datad => \B[30]~input_o\,
	combout => \gen_blocks:7:RCA_BLOCK|C[3]~2_combout\);

-- Location: IOIBUF_X52_Y0_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X55_Y1_N30
\gen_blocks:7:RCA_BLOCK|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:RCA_BLOCK|S\(3) = \gen_blocks:7:RCA_BLOCK|C[3]~2_combout\ $ (\B[31]~input_o\ $ (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:7:RCA_BLOCK|C[3]~2_combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \gen_blocks:7:RCA_BLOCK|S\(3));

-- Location: LCCOMB_X55_Y1_N0
\gen_blocks:7:block_prop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:block_prop~0_combout\ = (\B[28]~input_o\ & (!\A[28]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\)))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[28]~input_o\,
	combout => \gen_blocks:7:block_prop~0_combout\);

-- Location: LCCOMB_X55_Y1_N18
\gen_blocks:7:block_prop\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_blocks:7:block_prop~combout\ = (\block_prop~7_combout\ & (\gen_blocks:7:block_prop~0_combout\ & (\B[31]~input_o\ $ (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_prop~7_combout\,
	datab => \gen_blocks:7:block_prop~0_combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \gen_blocks:7:block_prop~combout\);

-- Location: LCCOMB_X55_Y1_N20
\c_chain~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~18_combout\ = (\B[31]~input_o\ & ((\A[31]~input_o\) # ((\gen_blocks:7:RCA_BLOCK|C[3]~2_combout\ & !\gen_blocks:7:block_prop~combout\)))) # (!\B[31]~input_o\ & (\gen_blocks:7:RCA_BLOCK|C[3]~2_combout\ & (!\gen_blocks:7:block_prop~combout\ & 
-- \A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:7:RCA_BLOCK|C[3]~2_combout\,
	datab => \gen_blocks:7:block_prop~combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \c_chain~18_combout\);

-- Location: LCCOMB_X55_Y1_N22
\c_chain~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_chain~19_combout\ = (\c_chain~18_combout\) # ((\gen_blocks:7:block_prop~combout\ & ((\c_chain~17_combout\) # (\c_chain~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_chain~17_combout\,
	datab => \gen_blocks:7:block_prop~combout\,
	datac => \c_chain~16_combout\,
	datad => \c_chain~18_combout\,
	combout => \c_chain~19_combout\);

-- Location: LCCOMB_X55_Y1_N16
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\gen_blocks:7:RCA_BLOCK|C[3]~2_combout\ & ((\B[31]~input_o\) # (\A[31]~input_o\))) # (!\gen_blocks:7:RCA_BLOCK|C[3]~2_combout\ & ((!\A[31]~input_o\) # (!\B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_blocks:7:RCA_BLOCK|C[3]~2_combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Ovfl~0_combout\);

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


