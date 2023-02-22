library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity piso is
    Port ( clk,E : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (3 downto 0);
           Q : out  STD_LOGIC);
end piso;

architecture Behavioral of piso is

begin

process (clk,E)
variable temp: std_logic;
variable temp1: std_logic_vector(3 downto 0);
begin
temp1:=D;
	if (E='1') then
	temp:='Z';
	elsif (CLK='1' and CLK'EVENT) then
	temp := temp1(3);
	end if;
	temp1(3) := temp1(2);
	temp1(2) := temp1(1);
	temp1(1) := temp1(0);
	temp1(0) := '0';
Q<=temp;
end process;
end Behavioral;
