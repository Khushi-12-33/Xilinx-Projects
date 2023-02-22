library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SIPO is
 port(CLK,E : in std_logic;
		D: in std_logic;
		Q: out std_logic_vector(3 downto 0) );
end SIPO;
 
architecture Behavioral of SIPO is
 
begin

 process (CLK,E)
 variable temp: std_logic_vector(3 downto 0):="0000";
 begin
	
	if E = '1' then
		temp := "ZZZZ";
	elsif (CLK'event and CLK='1') then
		temp(3):= temp(2);
		temp(2):= temp(1);
		temp(1):= temp(0);
		temp(0):= D;
	end if;
 
 Q<= temp;
 end process;

end behavioral;

