ECE281_Lab1
===========


#**Truth Table (3 Bit)**
A, B, and C are the input bits, with A being the most significant bit.  
X, Y, and Z are the output bits, with X being the most significant bit.  
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Truth%20Table.PNG "Truth Table")


#**K Maps for X and Y Output**
Using the truth table, and K-map analysis, the Minimal Sum-of-product (SOP) Equations were found for the outputs X and Y. 

The X K-Map is below, along with the resulting minimal SOP Equation for the X output.  
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/X%20K-Map.PNG "X K-Map and Output Equation")




The Y K-Map is below, along with the resulting minimal SOP Equation for the Y output. 
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Y%20K-mapPNG.PNG "Y K-Map and Output Equation")




#**Boolean Simplification for Z output**
The truth table was used along with boolean algebra to find the SOP Equation for output Z.  
The work to find this equation is below: 
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Simplifying%20Z%20output.PNG "Z Boolean Simplification and Output Equation")


#**Schematic for 3 Bit**
The three logic equations created above were converted into a logic circuit, as can be seen below. If this circuit is given a 3 bit binary number, held by bits A, B, and C, it will output the inverse of that number in 2's complement through bits X, Y, and Z.
The nodes NOT_A, NOT_B, NOT_C, H,I,J,K, and L were labeled for convenience.  This came in handy later when using ISE Project Manager to code the logic into the computer and from there, program the NEXYS 2 board.  
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Proper%20Schematic3.PNG "Logic Circuit")

#**Coding 3 bit 2's Compliment Inverter**
This was done in ISE Project Navigator.  This was a .vhd file.
The logic from this circuit was then recreated, using code, in a new project in ISE Project Navigator. This was done so that the logic could be tested against many test cases, which is below.  Also, this same code was uploaded to the NEXYS 2.  

This is how it was done: 
1. A library was added to the beginning of the code for standard logic.  
2. The names of the inputs and the outputs of the circuit were initialized and classified as standard logic signals.
3. All of the wires in the middle of the circuit were named, just like the schematic above, initialized, and classified as standard logic signals.  
4. In the "begin" seciton, the logic for how the wires, A, B, C, NOT-A, NOT_B, NOT_C, H,I,J,K,L,X,Y,AND Z relate was created.  This was done using basic commands such as "and", "or", and "not".  
5. The hyperlink to the code is: https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Lab1_Terragnoli.vhd 
**Note: This code also contains the code for the 8-bit 2's compliment inverter (explained later in README).  Most of the code for the 3 bit 2's compliment inverter in commented out with "--" preceding it.  

#**Testing Code for 3 bit 2's Compliment Inverter**
This was also done using ISE Project Navigator.  It was a .vhd file.

It was done by: 
1. Importing a standard logic library at the beginning of the code.
2. Declaring the inputs and outputs, just like the previous section. 
3. Farther down, every test case, originally thought of in the truth table, was recreated.  Every possible combination of A,B, and C was created and then held for 100ns.  The delay is so the test can be viewed.  This was done to make sure every output occurs the way it is supposed to.  A graphical test can be seen in the section below.  The graph shows the binary values of the inputs and outputs at specific points in time.  
4. This is a link to the test code:  https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Lab1_testbench_Terragnoli.vhd 




#**Test Waves for 3 bit 2's Compliment Inverter**
The lines of this graph correspond to A,B,C,X,Y, and Z, from the top to the bottom.  A high line on the graph represents a 1, and a low line a 0.  Time is on the x axis.  For example, in the second interval, the inputs for A,B,and C are 0,0,and 1.  The inverse of 001 is 111.  The output for X,Y,and Z are 1,1,1, meaning that the correct inverse was calculated. This occurance is the same for all of the other intervals, meaning that the code in the .vhd file is all correct.  
These results verify the truth table.  The output are what they should be for every single case of inputs.  
Therefore, the code for the 3 bit 2's Compliment inverter is correct.  It is ready to be uploaded to the NEXYS 2.
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Prelab%20waves.PNG "Text Waves")

#**Uploading Code for 3 bit 2's Compliment Inverter**
A Universal Communications Format (.ucf) file was then created for the code for the 3 bit 2's compliment converter.  This type of file was used so that the code could be uploaded to the NEXYS 2.  The only thing that needed to be done for this was to name where the inputs would come from and where the outputs would appear on the NEXYS 2 board.  The location of the inputs and outputs are written on the NEXYS 2 board.  The link for the .ucf file is here:  https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Lab_01_JPT.ucf

**Note: The code used for the 8 bit 2's compliment converter is also in this file.  The code for the 3 bit is commented out.

The .ucf file was used, along with the .bit file lab1_terragnoli.bit, to upload the 3 bit 2's compliment inversion code to the NEXYS 2 board.  The bit file can be viewed in the repository "ECE281_Lab1".



#**3 Bit 2's Compliment Inverter Functionality Test**
The functionality of the programmed NEXYS 2 was then tested.  All tests worked perfectly and corresponded with the truth table.  
A video of the test can be seen here in this repository called Testing 3 bit.MOV.  Unfortunately, the video is too big to be saved on this page.  

#**Expanding to 8 Bits**
After the 3 bit 2's Compliment inverter was deemed to have worked correctly, the code was expanded upon to work with 8 bit numbers, instead of just 3 bit numbers.  To do this, it was necessary to update the .vhd file that eventually programs the NEXYS 2 board.  The file that underwent modifications is posted here:  https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Lab1_Terragnoli.vhd  

In fact, the modification are still in place in this file for the 8 bit 2's compliment converter.  Most of the coding was similar as the code for the 3 bit.  

Also, the way to find the inverse in 2's compliment for the 8 bit was much different than the 3 bit.  Instead of finding the truth table, schematic, and then translating that schematic into code, each bit of the 8 bit number was inverted, and then 1 was added to the number.  The result is always the inverse in 2's compliment.  

*The follow are the changes between the coding for the logic of the 3 bit and the 8 bit:* 

1. When initializing the input and output ports, standard logic vectors were used.  This basically groups bits together so that they can act like numbers and undergo basic operations.  The vectors created 8 inputs and 8 outputs.  
2. A second library was added to the top of the code.  This allows addition to occur when the bits are linked to form a number.  
3. There were no middle wires, and the conversion from the input to the output only took one line of code.  Therefore, the wires like J,K,L. etc. were not needed and were commented out.  
4. For the logic of the code, the not of each input was taken.  Then the cast "UNSIGNED" was added to these resulting bits, making them like one number.  Then 1 was added to this number.  Then, this number was converted back into individual bits using the cast std_logic_vector.  
5. All other logic used in the 3 bit was commented out.  

After these changes were made to the logic code, changes needed to be made to the .ucf file that determines where the inputs will be received and where the outputs will show up on the NEXYS 2 board.  Again, this file can be viewed at this link:  https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Lab_01_JPT.ucf

*Changes made to the .ucf file:*

1. 8 inputs were made, labeled A(0)->A(7)
2. 8 outputs were made, labeled Z(0)->Z(7)
3. The inputs were specified to be the switches on the NEXYS 2 board, and the outputs were labeled to be the LEDs above the switches.  
4. The location of the inputs and outputs are written on the NEXYS 2 board.  

The .ucf file was then uploaded to the NEXYS 2 board using the same process as for the 3 bit.  The 8 bit 2's compliment converter worked perfectly with multiple test cases.  A video of this can be seen in this respository, labeled Testing 8 bit 2.MOV.  Unfortunately the video is too long to post to this README.  :(




#**Documentation**
C3C Sabin Park helped explain to me the concept of a standard logic vector.  He said that it's like making an array out
of it, and making the bits act like a number. From there, I was able to figure out that I just need to invert all of the bits, group them to be one number, and then add one to that number!  It was great.  
I looked up the definition of a .ucf file on http://www.fileinfo.com/extension/ucf 
