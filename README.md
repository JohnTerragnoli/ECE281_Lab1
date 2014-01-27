ECE281_Lab1
===========


#**Truth Table (3 Bit)**
A, B, and C are the input bits, with A being the most significant bit.  
X, Y, and Z are the output bits, with X being the most significant bit.  
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Truth%20Table.PNG "Truth Table")


#**K Maps for X and Y Output**
Using the truth table, and K-map analysis, the Minimal SOP Equations were found for the outputs X and Y. 

The X K-Map is below, along with the resulting minimal SOP Equation for the X output.  
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/X%20K-Map.PNG "X K-Map and Output Equation")


The Y K-Map is below, along with the resulting minimal SOP Equation for the Y output. 
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Y%20K-mapPNG.PNG "Y K-Map and Output Equation")




#**Boolean Simplification for Z output**
The truth table was used along with boolean algebra to find the SOP Equation for output Z.  



#**Schematic for 3 Bit**
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Terragnoli%20Schematic.JPG "Logic Circuit")

#**Test Waves**
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_Lab1/master/Prelab%20waves.PNG "Text Waves")

#**Analysis**
The circuit was drawn after making the truth table, and the test waves were generating using ISE software.  The truth table does in fact match the results from the test on the ISE software.  This is good! This means that the schematic converts correctly.  

The .ucf file was uploaded successfully.  The switches on the NEXYS 2 board work just like they are supposed to!!! The lights and the switches are coordianted like a well oiled...computer.  Can't want to start on the rest.  This is awesome.  


#**Documentation**
C3C Sabin Park helped explain to me the concept of a standard logic vector.  He said that it's like making an array out
of it, and making the bits act like a number. From there, I was able to figure out that I just need to invert all of the bits, group them to be one number, and then add one to that number!  It was great.  
