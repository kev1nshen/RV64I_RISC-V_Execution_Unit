-- ============================================================
-- TS_ExecUnit_16TS_ExecUnit_BCLA_DCB_c4.do
-- Functional Simulation Script
-- Arithmetic : BCLA
-- Shift      : DCB
-- Target     : CYCLONE
-- Transcript : 16TS_ExecUnit_cselect_SwapUp_c4.txt
-- ============================================================

-- redirect transcript output to file
transcript file 16TS_ExecUnit_BCLA_DCB_c4.txt
transcript on

-- create and map work library
vlib work
vmap work work

-- --------------------------------------------------------
-- Compile source files in dependency order
-- lower level entities first, top level last
-- --------------------------------------------------------


vcom -work work -2008 -explicit -stats=none ./ModelSim/c4BCLA16.vho
vcom -work work -2008 -explicit -stats=none ../SourceCode/ArithUnit.vhd

-- change this line depending on topology
vcom -work work -2008 -explicit -stats=none ./ModelSim/16c4DCB.vho
vcom -work work -2008 -explicit -stats=none ./ModelSim/16c4logicunit.vho
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
  -sdftyp /DUT/ArithInst/AdderInst=./ModelSim/c4BCLA16.sdo \
  -sdftyp /DUT/SubInst/AdderInst=./ModelSim/c4BCLA16.sdo \
  -sdftyp /DUT/ShiftInst=./ModelSim/16c4DCB.sdo \
  -sdftyp /DUT/LogicInst=./ModelSim/16c4logicunit.sdo \
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