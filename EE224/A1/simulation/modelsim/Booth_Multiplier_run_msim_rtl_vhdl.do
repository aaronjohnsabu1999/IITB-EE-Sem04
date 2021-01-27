transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE224/Assignment_1/Main.vhdl}
vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE224/Assignment_1/Gates.vhdl}
vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE224/Assignment_1/Sixteen_Bit_Adder.vhdl}
vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE224/Assignment_1/Multiplexer.vhdl}
vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE224/Assignment_1/Four_bit_Adder.vhdl}

vcom -93 -work work {C:/Users/aaron/Desktop/IITB/Annual_Academic_Files/Year_2/Semester_4/EE224/Assignment_1/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench.vhdl

add wave *
view structure
view signals
run -all