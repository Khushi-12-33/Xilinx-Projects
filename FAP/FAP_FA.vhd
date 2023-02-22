library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity FAP_FA is
    Port ( X,Y,Cin : in  STD_LOGIC;
           SUM,CARRY : out  STD_LOGIC);
end FAP_FA;

architecture Behavioral of FAP_FA is

procedure haddr (S,C: out std_logic;
					  A,B: in std_logic) is
begin 
	S:= A XOR B;
	C:= A AND B;
end haddr;

begin

ADD_FULL: process (X,Y,Cin)
variable S1,C1,C2,temp1,temp2 : std_logic;

begin

haddr (S1,C1,Y,Cin);
haddr (temp1,C2,X,S1);

temp2:= C2 OR C1;
SUM<= temp1;
CARRY<= temp2;

end process ADD_FULL;

end Behavioral;

