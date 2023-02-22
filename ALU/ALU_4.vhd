library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_4 is
    Port ( E,M : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end ALU_4;

architecture Behavioral of ALU_4 is

begin

process (E,M,S,A,B)

variable temp: std_logic_vector (3 downto 0):="0000";
variable temp1: std_logic_vector (4 downto 0):="00000";

begin

if (E='1') then
	temp1:="00000";
	
		if (M='0') then
			
			case S is
			when "00" =>
				temp1:=('0'& A)+('0'& B);
				temp:=temp1(3 downto 0);
			when "01" =>
				if (A>B) then
					temp:=(A-B);
				else
					temp:=(B-A);
				end if;
			when "10" =>
				temp:=(A+1);
			when "11" =>
				temp:=(A-1);
			when others=> null;
			end case;
		
		elsif (M='1') then
			
			case S is
			when "00" => temp:=A AND B;
			when "01" => temp:=A OR B;
			when "10" => temp:=A NAND B;
			when "11" => temp:=A XOR B;
			when others => null;
			end case;

		end if;
		
else
	
	temp := "ZZZZ";
	temp1:= "ZZZZZ";

end if;

Y <= temp;
Cout<= temp1(4);

end process;
end Behavioral;

