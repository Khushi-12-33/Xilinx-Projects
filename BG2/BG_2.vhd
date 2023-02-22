library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BG_2 is
    Port ( A,B : in  STD_LOGIC;
           Y0,Y1,Y2,Y3,Y4,Y5,Y6 : out  STD_LOGIC);
end BG_2;

architecture Behavioral of BG_2 is

begin

Y0 <= not A;
Y1 <= A and B;
Y2 <= A OR B;
Y3 <= A NAND B;
Y4 <= A NOR B;
Y5 <= A XOR B;
Y6 <= A XNOR B;

end Behavioral;