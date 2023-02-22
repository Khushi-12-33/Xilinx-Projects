library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FUNC_DEMO is
    Port ( A,B,C : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end FUNC_DEMO;

architecture Behavioral of FUNC_DEMO is

function myxor (I1,I2,I3: in std_logic) return std_logic is
variable O1: std_logic;

begin
O1:= (I1 XOR I2) XOR I3;
return O1;
end function myxor;

begin

process(A,B,C)
begin
Y<= myxor (A,B,C);
end process;

end Behavioral;

