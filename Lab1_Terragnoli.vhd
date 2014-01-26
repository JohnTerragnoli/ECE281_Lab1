----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C3C John Paul Terragnoli
-- 
-- Create Date:    22:56:08 01/22/2014 
-- Design Name: 2's Compliment
-- Module Name:    Lab1_Terragnoli - Behavioral 
-- Project Name: Lab1 
-- Target Devices: 
-- Tool versions: 
-- Description: when given a three bit number in 2's compliment form, it gives the 
-- 2's compliment negation of that three bit number. 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
--sets up a library that sets up signed and unsigned bits.  
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_Terragnoli is
--STD_LOGIC_VECTOR groups all of the bits together like a number 
    Port ( A:in STD_Logic_vector (7 DOWNTO 0);
	 Z: out STD_LOGIC_VECTOr(7 DOWNTO 0));
	 
	 
	 --A : in  STD_LOGIC;
           --B : in  STD_LOGIC;
           --C : in  STD_LOGIC;
           --X : out  STD_LOGIC;
           --Y : out  STD_LOGIC;
           --Z : out  STD_LOGIC);
end Lab1_Terragnoli;

architecture Behavioral of Lab1_Terragnoli is
--signal declarations: 
--signal A_NOT: STD_LOGIC;
--signal B_NOT: STD_LOGIC;
--signal C_NOT: STD_LOGIC;
--signal H: STD_LOGIC;
--signal I: STD_LOGIC;
--signal J: STD_LOGIC;
--signal K: STD_LOGIC;
--signal L: STD_LOGIC;

begin
--this is for the 8 bit converter
Z <= STD_LOGIC_VECTOR(UNSIGNED(not A)+1); 

--A_NOT <= not A;
--B_NOT <= not B;
--C_NOT <= not C;
--
--H<= A and B_NOT and C_NOT;
--I<= A_NOT and B;
--J<=A_NOT and C;
--
--X<=H or I or J; 
--
--K<=B_NOT and C;
--L<=B and C_NOT;
--
--Y<= K or L;
--
--Z<= C; 


end Behavioral;

