library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SISO is
    Port ( D : in  STD_LOGIC;
           CLK,E : in  STD_LOGIC;
           Q : out STD_LOGIC);
end SISO;

architecture Behavioral of SISO is

begin
process (E,CLK,D)
begin
	
	if (E='1') then Q<='Z';
	elsif (CLK='1' and CLK'EVENT) then
	Q<= D;
	end if;
	
end process;

end Behavioral;
