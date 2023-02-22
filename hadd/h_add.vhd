library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity h_add is
    Port ( A,B : in  STD_LOGIC;
           S,COUT : out  STD_LOGIC);
end h_add;

architecture Behavioral of h_add is

begin

S<= A XOR B;
COUT<= A AND B;

end Behavioral;