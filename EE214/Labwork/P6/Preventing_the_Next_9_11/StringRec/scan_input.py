import os
import sys
import time
import subprocess
import binascii
import math
# Check for the proper input format
if len(sys.argv) != 5 :
	sys.stdout.write("Error : The correct format is python convert_tracefile_to_jtag_trace.py TRACEFILE.txt in.txt <no_of_inputs> <no_of_outputs> \n")
	sys.exit(1)
else:
	input_file = open(sys.argv[1],"r")
	output_file = open(sys.argv[2],"w")
	in_pins = int(sys.argv[3])
	out_pins = int(sys.argv[4])
	#output_file.write("Expected Output    Received Output   Remarks\n")
	#output_file.write("============================================\n")

	line = 1;
for comm in input_file.readlines():

	# taking care of single-line comments
	if comm[0] == '#': continue
	comm = comm.replace('\n','')

	#Display the command on screen
	print "line:",line,"-",comm,"" 
	line = line+1
	command = comm.split(' ')
	temp = int(command[0],2);
	#print(str(temp));
	#print(hex(temp)[2:].zfill(in_pins/4));
	#print("-----");
	output_file.write("SDR ")
	output_file.write(str(in_pins))
	output_file.write(" TDI(")
	output_file.write(hex(temp).upper()[2:].zfill(int(math.ceil((float(in_pins)/4)))));
	output_file.write(") ")
	output_file.write(str(out_pins))
	temp = int(command[1],2);
	output_file.write(" TDO(")
	output_file.write(hex(temp).upper()[2:].zfill(out_pins/4));
	output_file.write(")")
	temp = (command[2],2);
	output_file.write(" MASK(")
	temp1 = len(temp[0])
	if temp1%4 == 0: temp1 = temp1/4
	else : temp1 = temp1/4 + 1 
	print temp1
	if int(temp[0]) == 0 :
		for i in range(temp1):
			output_file.write(hex(0).upper()[2:]);		 
	else :
	#print int(temp)
        #temp =  temp/4 + 1
		for i in range(temp1):
	 # print ""	
			output_file.write(hex(15).upper()[2:]);
	output_file.write(")\n")
	output_file.write("RUNTEST 1 MSEC\n")

print("----------------------------------------------------")
print("============Done============")
print("----------------------------------------------------")
