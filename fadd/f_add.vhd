library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity F_ADD is
    Port ( A,B,C : in  STD_LOGIC;
           S,COUT : out  STD_LOGIC);
end F_ADD;

architecture struct of F_ADD is

signal S1,S2,S3: STD_LOGIC;

component myxor3 is 
	Port (I1,I2,I3: in STD_LOGIC;
           O1 : out STD_LOGIC);
end component myxor3;

component myand2 is 
	Port (I1,I2: in  STD_LOGIC;
           O1 : out  STD_LOGIC);
end component myand2;

component myor3 is 
	Port (I1,I2,I3: in  STD_LOGIC;
           O1 : out  STD_LOGIC);
end component myor3;

begin

FA1: myxor3 port map(A,B,C,S);
FA2: myand2 port map(A,B,S1);
FA3: myand2 port map(A,C,S2);
FA4: myand2 port map(B,C,S3);
FA5: myor3 port map(S1,S2,S3,COUT);

end struct;

