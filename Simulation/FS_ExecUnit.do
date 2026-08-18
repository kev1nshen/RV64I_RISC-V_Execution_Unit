quit -sim

transcript file "execunit_functional_transcript.txt"
transcript off
vdel -all -lib work
vlib work

vcom -work work -2008 -explicit -stats=none ../SourceCode/Adder.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/ArithUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/ShiftUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/LogicalUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/ExecUnit.vhd
vcom -work work -2008 -explicit -stats=none ./TBExecUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/ConfigBaseline.vhd

vsim -t 100ps -gui work.ConfigFunctional

add wave sim:/tb_adder_universal/DUT/A
add wave sim:/tb_adder_universal/DUT/B
add wave sim:/tb_adder_universal/DUT/Cin
add wave sim:/tb_adder_universal/DUT/S
add wave sim:/tb_adder_universal/DUT/Cout
add wave sim:/tb_adder_universal/DUT/Ovfl

transcript on

restart -f
run 25 us

transcript off
transcript file ""