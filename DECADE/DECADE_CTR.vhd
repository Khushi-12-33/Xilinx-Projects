library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DECADE_CTR is
    Port ( CLK,RST,DIR : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end DECADE_CTR;

architecture Behavioral of DECADE_CTR is

begin

	process (CLK,RST,DIR)
	variable temp: std_logic_vector (3 downto 0):="0000";
	begin
		
		if (RST='1') then
		temp:="ZZZZ";
		elsif (CLK='1' and CLK'EVENT) then
			
			if (DIR='1') then
				if temp:= "1001" then 
				temp:= "0000";
				else 
				temp:=temp+1;
				end if;
				
			else
				if temp:= "0000" then 
				temp:= "1001";
				else 
				temp:=temp-1;
				end if;
			
			end if;
		end if;
	
	Q<= temp;
	end process;
end Behavioral;

