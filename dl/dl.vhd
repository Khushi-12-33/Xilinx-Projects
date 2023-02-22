
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity dl is
    Port ( E,D : in  STD_LOGIC;
           Q,QB : out  STD_LOGIC);
end dl;

architecture Behavioral of dl is

signal temp1,temp2: std_logic;

begin
sig : PROCESS(E,D)


begin
    if (E= '1' )then
     temp1 <= D;
	  temp2 <= NOT temp1;
	  end if;
Q <= temp1;
QB <= temp2;
end process sig;

end Behavioral;

