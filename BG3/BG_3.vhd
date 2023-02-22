library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BG_3 is
    Port ( A,B,C : in  STD_LOGIC;
           Y0,Y1,Y2,Y3,Y4,Y5,Y6 : out  STD_LOGIC);
end BG_3;

architecture Behavioral of BG_3 is

begin

Y0 <= NOT A;
Y1<= A AND B AND C;
Y2<= A OR B OR C;
Y3<= NOT(A AND B AND C);
Y4<= NOT(A OR B OR C);
Y5<= A XOR B XOR C;
Y6<= NOT(A XOR B XOR C);

end Behavioral;

