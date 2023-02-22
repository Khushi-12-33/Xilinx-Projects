library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity D_FF is
    Port ( RST,CLK,D : in  STD_LOGIC;
           Q,QB : out  STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is

begin
	process (RST,CLK,D) is
	variable temp: std_logic;
	begin
		if (RST='1') then temp:= '0';
		elsif (CLK='1' and CLK'EVENT) then
			temp:= D;
		end if;
	Q<= temp;
	QB<= not temp;
	end process;
	
end Behavioral;

