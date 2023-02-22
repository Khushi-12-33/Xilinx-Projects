library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MOD_7 is
    Port ( CLK,RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (4 downto 0));
end MOD_7;

architecture Behavioral of MOD_7 is

type state is (S0,S1,S2,S3,S4,S5,S6);
signal pstate,nstate: state;

begin

process (CLK,RST)
begin
	if RST='1' then
		pstate<= S0;
	elsif (CLK='1' and CLK'EVENT) then
		pstate <=nstate;
	else null;
	end if;
end process;

process (pstate)
begin
	case pstate is
	when S0 => 
		Q <= "00110";
		nstate <= S1 ;
	when S1 => 
		Q <= "01010";
		nstate <= S2;
	when S2 => 
		Q <= "10100";
		nstate <= S3;
	when S3 => 
		Q <= "11001";
		nstate <= S4;
	when S4 => 
		Q <= "11110";
		nstate <= S5;
	when S5 => 
		Q <= "10010";
		nstate <= S6;
	when S6 => 
		Q <= "01000";
		nstate <= S0;
	when others => null;
	end case;
end process;

end Behavioral;