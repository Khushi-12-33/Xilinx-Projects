library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity myor3 is
    Port ( i1,i2,i3 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end myor3;

architecture Behavioral of myor3 is

begin
 o1 <= (i1 or i2) or i3;

end Behavioral;

