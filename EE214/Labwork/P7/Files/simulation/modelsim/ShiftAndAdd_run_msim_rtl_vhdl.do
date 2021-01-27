transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE214/P7/Files/DUT.vhdl}
vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE214/P7/Files/ShiftAndAdd.vhdl}

vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE214/P7/Files/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
