
In this video we are going to learn how to use Quartus tool to test the our designs.


Note: Please rename all the gate names in the package (Gates.vhdl) as well as in your design (Full_adder.vhdl) as following.


for example: "NAND2" to "NAND_2" ("Ctrl + H" to find and replace in your text editor)


1. Open the Quartus tool. 


2. Create a new project by file-> Create new project


3. Create a new directory 'Projects/Full_adder'.


4. Device Name: 5M1270ZT144C5

5. 
Now we need to add VHDL files to the project. 

To do so, copy the contents of the reference_design folder available on moodle to the folder "Full_adder"


5. In a project we have to mention which module is the "Top-Level Entity".

 
Here "DUT" is the top level entity.


6. Now, Compile the design.


7. Go to Tools -> RTL viewer to verify block level design.


8. After successful compilation, we need to verify its functionality. To do so, we need the test bench.


9. Modify the path of tracefile and output file in test bench. [press "Ctrl + L" to get the path of directory]


10. Add the modified test bench to the project.


11. Now we are ready to simulate our design.


12. Tools -> Run Simulation Tool -> RTL Simulation (ModelSim)
	[ModelSim will open in a new Window]



13. Check the status and waveforms in ModelSim.


14. We can see the output result in the generated "Output.txt" file. 


