library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_4 is
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           M,Cin : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end ALU_4;

architecture Behavioral of ALU_4 is

begin

process (S,A,B,M,Cin) is
begin
	
	if (M='1') then
		case S is
		when "0000" => Y<= not A;
		when "0001" => Y<= not(A or B);
		when "0010" => Y<= ((not A)or B);
		when "0011" => Y<= "0000";
		when "0100" => Y<= not(A and B);
		when "0101" => Y<= not B;
		when "0110" => Y<= A xor B;
		when "0111" => Y<= (A and (not B));
		when "1000" => Y<= ((not A)and B);
		when "1001" => Y<= A xnor B;
		when "1010" => Y<= B;
		when "1011" => Y<= A and B;
		when "1100" => Y<= "0001";
		when "1101" => Y<= (A or (not B));
		when "1110" => Y<= A or B;
		when "1111" => Y<= A;
		when others => null;
		end case;

	else 
	   if (Cin='1') then
			case S is
			when "0000" => Y<= A;
			when "0001" => Y<= A or B;
			when "0010" => Y<= (A or(not B));
			when "0011" => Y<= -"0001";
			when "0100" => Y<= (A + (A and (not B)));
			when "0101" => Y<= (A or B)+(A and (not B));
			when "0110" => Y<= (A-B-1);
			when "0111" => Y<= (A and (not B))-1;
			when "1000" => Y<= A+ (A and B);
			when "1001" => Y<= A+B;
			when "1010" => Y<= (A or (not B))+(A and B);
			when "1011" => Y<= (A and B)-1;
			when "1100" => Y<= A+A;
			when "1101" => Y<= (A or B)+A;
			when "1110" => Y<= (A or (not B))+A;
			when "1111" => Y<= A-1;
			when others => null;
			end case;
		
		else
			case S is
			when "0000" => Y<= A+1;
			when "0001" => Y<= (A or B)+1;
			when "0010" => Y<= (A or(not B))+1;
			when "0011" => Y<= "0000";
			when "0100" => Y<= (A + (A and (not B)))+1;
			when "0101" => Y<= (A or B)+(A and (not B))+1;
			when "0110" => Y<= (A-B);
			when "0111" => Y<= (A and (not B))+1;
			when "1000" => Y<= A+ (A and B)+1;
			when "1001" => Y<= A+B+1;
			when "1010" => Y<= (A or (not B))+(A and B)+1;
			when "1011" => Y<= (A and B);
			when "1100" => Y<= A+A+1;
			when "1101" => Y<= (A or B)+A+1;
			when "1110" => Y<= (A or (not B))+A+1;
			when "1111" => Y<= A;
			when others => null;
			end case;
		end if;
	
	end if;

end process;

end Behavioral;

