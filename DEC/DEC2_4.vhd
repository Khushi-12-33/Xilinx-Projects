library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DEC2_4 is
    Port ( E : in  STD_LOGIC;
			  I : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end DEC2_4;

architecture Behavioral of DEC2_4 is

begin
PROCESS (E,I)
begin
   if (E='1') then
		
		case (I) is 
      when "00" => Y <= "0001";
      when "01" => Y <= "0010";
      when "10" => Y <= "0100";
      when "11" => Y <= "1000";
      when others => null;
      end case;
	
	else Y <= "ZZZZ";
	end if;
end process;					
end Behavioral;

