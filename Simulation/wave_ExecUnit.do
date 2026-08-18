-- ============================================================
-- wave_ExecUnit.do
-- Wave window setup for ExecUnit simulation
-- Used by both functional and timing simulation scripts
-- ============================================================
-- open wave window first
view wave
-- --------------------------------------------------------
-- Testbench control signals
-- --------------------------------------------------------
add wave -divider -height 30 "TB Control"
add wave -height 30 -label "Idx"           sim:/TBExecUnit/Idx
add wave -height 30 -label "Stable"        sim:/TBExecUnit/Stable
add wave -height 30 -label "PropDelayY"    sim:/TBExecUnit/PropDelayY
add wave -height 30 -label "PropDelayFlag" sim:/TBExecUnit/PropDelayFlag
-- --------------------------------------------------------
-- Input signals
-- --------------------------------------------------------
add wave -divider -height 30 "Inputs"
add wave -height 30 -label "A"         -hex sim:/TBExecUnit/A
add wave -height 30 -label "B"         -hex sim:/TBExecUnit/B
add wave -height 30 -label "FuncClass"      sim:/TBExecUnit/FuncClass
add wave -height 30 -label "LogicFN"        sim:/TBExecUnit/LogicFN
add wave -height 30 -label "ShiftFN"        sim:/TBExecUnit/ShiftFN
add wave -height 30 -label "AddnSub"        sim:/TBExecUnit/AddnSub
add wave -height 30 -label "ExtWord"        sim:/TBExecUnit/ExtWord
-- --------------------------------------------------------
-- Output signals
-- --------------------------------------------------------
add wave -divider -height 30 "Outputs"
add wave -height 30 -label "Y"     -hex sim:/TBExecUnit/Y
add wave -height 30 -label "Zero"       sim:/TBExecUnit/Zero
add wave -height 30 -label "AltB"       sim:/TBExecUnit/AltB
add wave -height 30 -label "AltBu"      sim:/TBExecUnit/AltBu
add wave -height 30 -label "Status"     sim:/TBExecUnit/Status
-- zoom to fit after run
wave zoom full