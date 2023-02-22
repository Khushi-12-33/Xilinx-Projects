library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity myxor3 is
    Port ( I1,I2,I3 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end myxor3;

architecture Behavioral of myxor3 is

begin
o1 <= (i1 xor i2) xor i3;

end Behavioral;

