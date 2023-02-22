library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MOD5 is
    Port ( CLK,RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end MOD5;

architecture Behavioral of MOD5 is

type state is (S0,S1,S2,S3,S4);
signal pstate, nstate: state;

begin
 process (RST,CLK)
 begin
	if (RST='1') then
	   pstate<=S0;
	elsif (CLK='1' and CLK'EVENT) then
		pstate <= nstate;
	else null;
	end if;
end process;

 process(pstate)
 begin
	case (pstate) is
	when S0 =>
		Q<="0010";
		nstate<= S1;
	when S1 =>
		Q<="1000";
		nstate<= S2;
	when S2 =>
		Q<="1111";
		nstate<= S3;
	when S3 =>
		Q<="1001";
		nstate<= S4;
	when S4 =>
		Q<="0011";
		nstate<= S0;
	when others => null;
	end case;
 end process;		
 
end Behavioral;

