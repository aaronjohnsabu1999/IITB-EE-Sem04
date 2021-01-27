transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE214/P6/Preventing_the_Next_9_11/StringRec/DUT.vhdl}
vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE214/P6/Preventing_the_Next_9_11/StringRec/fsm2.vhdl}
vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE214/P6/Preventing_the_Next_9_11/StringRec/terror.vhdl}
vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE214/P6/Preventing_the_Next_9_11/StringRec/knife.vhdl}
vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE214/P6/Preventing_the_Next_9_11/StringRec/bomb.vhdl}
vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE214/P6/Preventing_the_Next_9_11/StringRec/Gates.vhdl}
vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE214/P6/Preventing_the_Next_9_11/StringRec/main.vhdl}

vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE214/P6/Preventing_the_Next_9_11/StringRec/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
