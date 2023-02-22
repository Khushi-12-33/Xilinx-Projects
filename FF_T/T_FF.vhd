library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity T_FF is
    Port ( CLK,RST,T : in  STD_LOGIC;
           Q,QB : out  STD_LOGIC);
end T_FF;

architecture Behavioral of T_FF is

begin
	process (CLK) is
	variable temp: std_logic;
	begin
		if (CLK='1' and CLK'EVENT) then
			if (RST='1') then
				temp:='0';
			else
				temp:= not T;
			end if;
		end if;
		Q<= temp;
		QB<= not temp;
	end process;
end Behavioral;

