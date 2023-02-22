library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity myand2 is
    Port ( i1,i2 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end myand2;

architecture Behavioral of myand2 is

begin

o1 <= i1 and i2;
end Behavioral;

