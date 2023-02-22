library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CMP_4 is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           G,S,E : out  STD_LOGIC);
end CMP_4;

architecture Behavioral of CMP_4 is

begin 

process (A,B)
begin
		
		if (A>B) then
			G<='1';S<='0';E<='0';
		elsif (A<B) then
			G<='0';S<='1';E<='0';
		else
			G<='0';S<='0';E<='1';
		end if;
end process;
		
end Behavioral;

