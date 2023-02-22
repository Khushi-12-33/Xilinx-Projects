library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UP_COUNTER is
    Port ( CLK,RST : in  STD_LOGIC;
             COUNT : inout  STD_LOGIC_VECTOR (3 downto 0));
end UP_COUNTER;

architecture Behavioral of UP_COUNTER is

begin
	process (CLK,RST)
	begin
		if (RST='0') then
			if (CLK='1' and CLK'EVENT) then 
			COUNT <= COUNT+1;
			end if;
		else
		   COUNT<= "0000";
		end if;
end process;
end Behavioral;