library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MUX is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
			  E : in STD_LOGIC;
           Y : out  STD_LOGIC);
end MUX;

architecture Behavioral of MUX is

begin

	
	with S,E select
	Y<=
		I(0) when S="000",
		I(1) when S="001",
		I(2) when S="010",
		I(3) when S="011",
		I(4) when S="100",
		I(5) when "101",
		I(6) when "110",
		I(7) when "111",
		'Z' when others;

else
	Y<= 'Z';
end if;
end process;
end Behavioral;

