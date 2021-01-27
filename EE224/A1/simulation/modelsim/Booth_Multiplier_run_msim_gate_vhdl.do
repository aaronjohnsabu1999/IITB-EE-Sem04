transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Booth_Multiplier.vho}

vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE224/Assignment_1/Testbench.vhdl}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut_instance=Booth_Multiplier_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  Testbench.vhdl

add wave *
view structure
view signals
run -all
