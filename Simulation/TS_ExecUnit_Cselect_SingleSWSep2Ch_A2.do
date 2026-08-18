-- ============================================================
-- TS_ExecUnit_TS_ExecUnit_CSelect_SwapUp_A2.do
-- Functional Simulation Script
-- Arithmetic : CarrySelect adder
-- Shift      : SwapUp2Ch
-- Target     : Arria II
-- Transcript : TS_ExecUnit_CSelect_SwapUp_A2.txt
-- ============================================================

-- redirect transcript output to file
transcript file TS_ExecUnit_CSelect_SwapUp_A2.txt
transcript on

-- create and map work library
vlib work
vmap work work

-- --------------------------------------------------------
-- Compile source files in dependency order
-- lower level entities first, top level last
-- --------------------------------------------------------


vcom -work work -2008 -explicit -stats=none ./ModelSim/a2carryselect.vho
vcom -work work -2008 -explicit -stats=none ../SourceCode/ArithUnit.vhd

-- change this line depending on topology
vcom -work work -2008 -explicit -stats=none ./ModelSim/SwapUp_A2.vho
vcom -work work -2008 -explicit -stats=none ./ModelSim/a2logicunit.vho
vcom -work work -2008 -explicit -stats=none ../SourceCode/ExecUnit.vhd

-- compile testbench
vcom -work work -2008 -explicit -stats=none ./TBExecUnit.vhd

-- compile configuration
-- binds Baseline adder and Barrel64 shifter to ExecUnit

vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_TS_ExecUnit.vhd	

-- --------------------------------------------------------
-- Start simulation
-- top level is the configuration not the testbench entity
-- --------------------------------------------------------

vsim -t 1ps -gui -sdfnoerror \
  -sdftyp /DUT/ArithInst/AdderInst=./ModelSim/a2carryselect.sdo \
  -sdftyp /DUT/SubInst/AdderInst=./ModelSim/a2carryselect.sdo \
  -sdftyp /DUT/ShiftInst=./ModelSim/SwapUp_A2.sdo \
  -sdftyp /DUT/LogicInst=./ModelSim/a2logicunit.sdo \
  work.ConfigTiming

-- --------------------------------------------------------
-- Wave window setup
-- add all relevant signals for inspection
-- --------------------------------------------------------
do wave_ExecUnit.do

-- run simulation until all vectors processed
run -all

-- turn off transcript redirection
transcript off