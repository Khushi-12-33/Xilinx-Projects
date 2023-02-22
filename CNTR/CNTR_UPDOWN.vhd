library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CNTR_UPDOWN is
    Port ( CLK,RST,DIR : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end CNTR_UPDOWN;

architecture Behavioral of CNTR_UPDOWN is

begin

process (CLK,RST)
	variable temp: std_logic_vector(3 downto 0):="0000";
begin

	if (RST='1') then
		temp:="0000";
	elsif (CLK='1' and CLK'EVENT) then
		if (DIR='1') then temp:= temp+1;
		else temp:= temp-1;
		end if;
	end if;
Q<= temp;
end process;
end Behavioral;

