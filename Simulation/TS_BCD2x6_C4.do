-- ============================================================
-- TS_ExecUnit_Rip_Brl64_C4.do
-- Functional Simulation Script
-- Arithmetic : Baseline ripple adder
-- Shift      : Barrel64
-- Target     : Cyclone IV
-- Transcript : TS_ExecUnit_Rip_Brl64_C4.txt
-- ============================================================

-- redirect transcript output to file
transcript file TS_ExecUnit_Rip_Brl64_C4.txt
transcript on

-- create and map work library
vlib work
vmap work work

-- --------------------------------------------------------
-- Compile source files in dependency order
-- lower level entities first, top level last
-- --------------------------------------------------------


vcom -work work -2008 -explicit -stats=none ../SourceCode/Adder.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/ArithUnit.vhd

-- change this line depending on topology
vcom -work work -2008 -explicit -stats=none ./ModelSim/DualChainBarrel2x6_C4.vho
vcom -work work -2008 -explicit -stats=none ../SourceCode/LogicalUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/ExecUnit.vhd

-- compile testbench
vcom -work work -2008 -explicit -stats=none ./TBExecUnit.vhd

-- compile configuration
-- binds Baseline adder and Barrel64 shifter to ExecUnit

vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_TS_DCB2x6.vhd	

-- --------------------------------------------------------
-- Start simulation
-- top level is the configuration not the testbench entity
-- --------------------------------------------------------

vsim -t 1ps -gui -sdfnoerror -sdftyp /DUT/ShiftInst=./ModelSim/DualChainBarrel2x6_C4.sdo work.ConfigTiming

-- --------------------------------------------------------
-- Wave window setup
-- add all relevant signals for inspection
-- --------------------------------------------------------
do wave_ExecUnit.do

-- run simulation until all vectors processed
run -all

-- turn off transcript redirection
transcript off