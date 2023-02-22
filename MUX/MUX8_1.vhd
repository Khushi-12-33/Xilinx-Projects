library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity mux8_1 is
    Port ( EN : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           I : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : out  STD_LOGIC);
end mux8_1;

architecture Behavioral of mux8_1 is

begin
	process (EN,S,I)
	begin
	 if (EN='1') then
		case S is
			when "000" =>Y<= I(0);
			when "001" =>Y<= I(1);
			when "010" =>Y<= I(2);
			when "011" =>Y<= I(3);
			when "100" =>Y<= I(4);
			when "101" =>Y<= I(5);
			when "110" =>Y<= I(6);
			when "111" =>Y<= I(7);
			when others => null;
		end case;
	 else
		Y<='Z';
	 end if;
	end process;
end Behavioral;

