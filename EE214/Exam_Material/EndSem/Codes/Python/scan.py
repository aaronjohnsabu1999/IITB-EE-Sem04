#!/usr/bin/env python

#---------------------------------------------
# Scan chain implementation v3
# Soumik Sarkar, Raunak Raj Gupta
# WEL Lab, EE Dept. , IIT Bombay

# Credits : Deepak Bhat, designer of v1
#			Titto Thomas, designer of v2
#---------------------------------------------


import os

# Environment variables for debugging
#os.environ['PYUSB_DEBUG'] = 'debug'
#os.environ['LIBUSB_DEBUG'] = '3'

import usb.core
import usb.util
import sys
import time
import subprocess

print"Scan chain v3.0\nWadhwani Electronics Laboratory, IIT Bombay\n"

# Just checking for the necessary root access of the user
#if os.geteuid() != 0:
#	print "You need to have root privileges to run this script."
#	print "Please try again, this time using 'sudo'. Exiting.\n"
#	exit()
    
# Check for the proper input format
if len(sys.argv) != 4 :
	sys.stdout.write("Error : The correct format is sudo python scan.py <input file>")
	sys.stdout.write(" <output file> <ptx/tiva>\n")
  	sys.stdout.write("<input file>: Input file with all the commands.\n")
  	sys.stdout.write("<output file>: New or Existing Output file. ")
  	sys.stdout.write("If it is existing, all the content will be overwritten.\n")
  	sys.stdout.write("<ptx/tiva>: Type of micro-controller being used.\n")
  	sys.stdout.write("For more information, refer to the User Manual.\n")
	sys.exit(1)
else:
	input_file = open(sys.argv[1],"r")
	output_file = open(sys.argv[2],"w")
	device = sys.argv[3]
	output_file.write("Expected Output    Received Output   Remarks\n")
	output_file.write("============================================\n")

#----------------- Connecting to device -------------------------------
print "Initiating connection with the device.."
timeout = 1000
sleeptime = 0 #0.0005 = 0.5ms
line_num = 0
success_checks = 0
success_achieved = 0
outvector_verify = 0

if (device == 'ptx'):
  ## Check if pid and vid are as follows using the command "lsusb"
	productId = 0x2402
	vendorId = 0x03eb
	inEndPoint = 0x02
	outEndPoint = 0x81
elif (device == 'tiva'):
	productId = 0x0003
	vendorId = 0x1cbe
	inEndPoint = 0x01
	outEndPoint = 0x81
else:
	print "Error: Invalid device name. Valid device names: ptx/tiva"
	sys.exit(1)

# find our device
dev = usb.core.find(idVendor=vendorId, idProduct = productId)
# was it found?
if dev is None:
	raise ValueError('Error : Device not found')

print "Device found.."
# set the active configuration. With no arguments, the first configuration 
# will be the active one
print "Please wait, Setting it's configuration... "
print "Done !"
print "Claiming interface.."
# Note: The code below is for interface 0, check what interface is used

#claim the device
if dev.is_kernel_driver_active(0) is True:
	dev.detach_kernel_driver(0)

try:
	dev.set_configuration()
	usb.util.claim_interface(dev, 0)
except:
	# defence against 'Ctrl+Z' keyboard interrupt
	for i in range(10):
		dev.reset()
	print "\nCould not claim interface ... Processes running in the background."
	print "RUN the command AGAIN. It may work."
	sys.exit(1)
  # The following is not important in this program, but gives additional
  # information on the issue:
	# 1. Ctrl+Z pauses the currently running program, and puts it in a list.
  # 2. running 'jobs' in bash shell lists the jobs where you pressed Ctrl+Z
  # 3. note the job id of the commands
  # 4. run 'fg %1' in bash shell	(replace the number '1' with the job id) to 
  #		run the pending command

print "Connection established.\n"

#--------------------- Hex input to binary conversion function ---------------
def toBin(value, bits):
    value = bin(int(value,16))[2:]
    while ( len(value) < bits ):
    	value = '0' + value
    while ( len(value) > bits ):
    	value = value[1:]   
    return value

#--------------------- Hex input to byte array conversion function -----------
# pad with zero if odd bits
def toByte(value, bits):
    temp_value = value
    if (len(temp_value) % 2 != 0):
    	# if odd number of bits found, pad front with '0'
    	temp_value = '0'+temp_value
    outvalue = ''
    for i in range(0, len(temp_value), 2):
        outvalue += chr(int(temp_value[i]+temp_value[i+1], 16))
    return outvalue

#--------------------- Byte array input to hex conversion function -----------
def toHex(valuearray):
    hexvalue = ''	
    for each in valuearray:
	    hexvalue += str(hex(each)[2:].zfill(2))	
	    # zfill fills leading zeros if they are not there
    return hexvalue    


#-- Function to read DUT output from uC and cross-check with expected output --
def checkDUTOutput(out_sample, last_mask, last_expct_out):
	global success_checks, success_achieved
	dev.write(inEndPoint,'S',timeout)
	time.sleep(sleeptime)
	print "Sampling out data.."
	bit_num = 0
	invalid = 0
	if (device == 'ptx'):
		inn = dev.read(outEndPoint, 16, timeout)  
		# The uC transfers in packets of 8bytes, so there should always be 
		# a multiple of 8 here
		inn = inn [0:out_sample]
		inn = inn[::-1]
		inn = toBin(toHex(inn), out_pins)
		for mask_bit in last_mask:
			if ( mask_bit == '1' ):
				if (inn[bit_num] != last_expct_out[bit_num]):
					invalid = 1
			bit_num += 1
	else:
		inn = dev.read(outEndPoint,out_sample,timeout)
		inn = "".join("%01X" % b for b in inn) #converts decimal inn list to 	
		#new inn small x for small letters and X for capital letters
		print last_mask
		for mask_bit in last_mask:
			if ( mask_bit == 'F' ):
				if (inn[bit_num] != last_expct_out[bit_num]):
					invalid = 1
			bit_num += 1
	
	success_checks += 1
	if ( invalid == 0 ):
		result = "Success"
		success_achieved += 1
	else:
		result = "Failure"
		
	print "Output Comparison : ", result
	file_data = last_expct_out + "    " + inn + "   " + result+"\n"
	output_file.write(file_data)

#--------------------- Function to send DUT inputs to the uC ---------------
def sendDUTInput(in_pins, out_pins, data_in):
	if (device == 'ptx'):
		#Form the string to be sent to the microcontroller
		command_out = 'L'+chr(in_pins)+chr(out_pins)+data_in
		#print "Sending",in_pins,out_pins,"bit input data",data_in
		for single in list(command_out):
		 	dev.write(inEndPoint, single, timeout)
			time.sleep(sleeptime)
	else:	
		dev.write(inEndPoint,'L',timeout)
		dev.write(inEndPoint,chr(in_pins),timeout)
		dev.write(inEndPoint,chr(out_pins),timeout)
		dev.write(inEndPoint,data_in,timeout)

	
dev.reset()

try:
	# defence against 'Ctrl+C' keyboard interrupt
	# check for uC response
	dev.write(inEndPoint, 'T', timeout)
	time.sleep(sleeptime)
	inn = dev.read(outEndPoint, 16, timeout) 
	if (inn[0] == 170):
		print "Ready to roll!!!"	
	else:
		print "Something is wrong. Wrong output from uC!!!"
		sys.exit(1)
except:
	for i in range(30):
		dev.reset()
	print "Something is wrong. No response from uC!!!"
	print "RUN AGAIN."
	print "Still doesn't run? Press the RESET button on uC"
	sys.exit(1)	

for comm in input_file.readlines():
	line_num += 1

	# taking care of single-line comments
	if comm[0] == '#': continue
	comm = comm.replace('\n','')

	#Display the command on screen
	print "\n#------ Command - ",line_num,":",comm,"------#\n"
	command = comm.split(' ')
	
	#Check for the command	
	if command[0] == "SDR":
		in_pins = int(command[1])
		out_pins = int(command[3])
		# num of hex letters expected to be sent to the uC
		in_sample = int((in_pins-1)/4) + 1 
		#print out_pins
		temp_in = command[2].rstrip(')').split('(')
		# the following command is needed to handle unscrupulous data by the user
		temp_in[1] = temp_in[1][len(temp_in[1])-in_sample:]

		if (device == 'ptx'):
			out_sample = int((out_pins-1)/8) + 1
			data_in = toByte(temp_in[1], in_pins)
			data_in_reverse = data_in[::-1]
			temp_out = command[4].rstrip(')').split('(')
			expct_out = toBin(temp_out [1], out_pins)
			temp_mask = command[5].split(')')[0].split('(')
			mask = toBin(temp_mask [1], out_pins)
			mask_int = int(temp_mask[1],16)
		else:
			# num of bytes expected from the uC	
			out_sample=int((out_pins-1)/4)+1
			data_in_reverse = temp_in[1]
			temp_out = command[4].rstrip(')').split('(')
			expct_out = temp_out[1]
			temp_mask = command[5].split(')')[0].split('(') 
			mask = int(temp_mask[1],16)
			mask_int=temp_mask[1]#[0:-1]

		sendDUTInput(in_pins, out_pins, data_in_reverse)
			
		print "Successfully entered the input.."	

		if (outvector_verify != 0):
			outvector_verify = 0
			checkDUTOutput(out_sample, last_mask, last_expct_out)
		
	elif command[0]=="RUNTEST":
		dev.write(inEndPoint,'A',timeout)
		time.sleep(sleeptime)

		# sleep for time given by user
		time_sec = int(command[1])
		time.sleep(time_sec*0.001)
    
		if (( mask_int != 0 ) and ( mask != 0 )):
			outvector_verify = 1
			last_expct_out = expct_out
			if (device == 'ptx'):
				last_mask = mask
			else:
				last_mask = mask_int
		
	else :
		print "Error : Unknown command on line ", line_num, ", skipping.."

# for the last SDR
if (outvector_verify != 0):
	# repeating the last SDR as a dummy input
	sendDUTInput(in_pins, out_pins, data_in_reverse)
	# checking the DUT output for last SDR
	checkDUTOutput(out_sample, last_mask, last_expct_out)

if (success_achieved == success_checks):
	print "OK. All Test Cases Passed."
else:
	print "NOT OK. Check Output file for incorrect outputs."
input_file.close()
output_file.close()

# flush the scan chain
dev.write(inEndPoint, 'Z', timeout)
time.sleep(sleeptime)
inn = dev.read(outEndPoint, 16, timeout) 
if (inn[0] == 85):
	print "Transaction Complete."
else:
	print "uC is not responding!!!"
