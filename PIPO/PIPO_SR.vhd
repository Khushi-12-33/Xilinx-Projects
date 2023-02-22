library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PIPO_SR is
    Port ( D : in  STD_LOGIC_VECTOR (3 downto 0);
           CLK,E : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end PIPO_SR;

architecture Behavioral of PIPO_SR is

begin
process (E,CLK,D)
begin
	
	if (E='1') then Q<="ZZZZ";
	elsif (CLK='1' and CLK'EVENT) then
	Q<= D;
	end if;
	
end process;

end Behavioral;

