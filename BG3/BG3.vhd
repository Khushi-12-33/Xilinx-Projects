----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:00:31 04/17/2021 
-- Design Name: 
-- Module Name:    BG3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity BG3 is
    Port ( A,B,C : in  STD_LOGIC;
           Y0,Y1,Y2,Y3,Y4,Y5,Y6 : out  STD_LOGIC);
end BG3;

architecture Behavioral of BG3 is

begin

Y0 <= NOT A;
Y1 <= A AND B AND C;
Y2 <= A OR B OR C;
Y3 <= NOT(A AND B AND C);
Y4 <= NOT(A OR B OR C);
Y5 <= A XOR B XOR C;
Y6 <= NOT(A XOR B XOR C);

end Behavioral;

