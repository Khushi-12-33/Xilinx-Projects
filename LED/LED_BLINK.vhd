library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LED_BLINK is
    Port ( refclk: in  STD_LOGIC;
           led : out  STD_LOGIC);
end LED_BLINK;

architecture Behavioral of LED_BLINK is
constant max_count: natural := 16; 
signal rst: std_logic;

begin
	computer: process (refclk,rst)
	variable count: natural range 0 to max_count;
	begin
		if rst='1' then
			count:=0;
			led<='1';
		elsif rising_edge(refclk) then
			if count < max_count/2 then
				count:=count+1;
				led<='1';
			elsif count< max_count then
				led<='0';
				count:=count+1;
		else
				led<='1';
				count:=0;
			end if;
		end if;
	end process computer;
end Behavioral;

