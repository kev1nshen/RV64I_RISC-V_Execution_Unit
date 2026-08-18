-- ============================================================
-- FS_ExecUnit_Cskip_SingleZU2ChRev.do
-- Functional Simulation Script
-- Arithmetic : Carry Skip
-- Shift      : SingleZU2ChRev
-- Target     : 
-- Transcript : FS_ExecUnit_Cskip_SingleZU2ChRev.txt
-- ============================================================

-- redirect transcript output to file
transcript file FS_ExecUnit_Cskip_SingleZU2ChRev.txt
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
vcom -work work -2008 -explicit -stats=none ../SourceCode/ShiftUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/LogicUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/ExecUnit.vhd

-- compile testbench
vcom -work work -2008 -explicit -stats=none ./TBExecUnit.vhd

-- compile configuration
-- binds Baseline adder and Barrel64 shifter to ExecUnit
vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_FS_Cskip_SingleZU2ChRev.vhd	

-- --------------------------------------------------------
-- Start simulation
-- top level is the configuration not the testbench entity
-- --------------------------------------------------------
vsim ConfigFunctional

-- --------------------------------------------------------
-- Wave window setup
-- add all relevant signals for inspection
-- --------------------------------------------------------
do wave_ExecUnit.do

-- run simulation until all vectors processed
run -all

-- turn off transcript redirection
transcript off