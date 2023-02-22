----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:00 04/17/2021 
-- Design Name: 
-- Module Name:    BG2 - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BG2 is
    Port ( A,B : in  STD_LOGIC;
           Y0,Y1,Y2,Y3,Y4,Y5,Y6 : out  STD_LOGIC);
end BG2;

architecture Behavioral of BG2 is

begin
Y0 <= NOT A;
Y1 <= A AND B;
Y2 <= A OR B;
Y3 <= A NAND B;
Y4 <= A NOR B;
Y5 <= A XOR B;
Y6 <= A XNOR B;

end Behavioral;

