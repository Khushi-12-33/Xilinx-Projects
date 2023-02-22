LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY TESTBENCH_vhd IS
END TESTBENCH_vhd;

ARCHITECTURE behavior OF TESTBENCH_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT CNTR_UPDOWN
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		DIR : IN std_logic;          
		Q : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL CLK :  std_logic := '0';
	SIGNAL RST :  std_logic := '0';
	SIGNAL DIR :  std_logic := '0';

	--Outputs
	SIGNAL Q :  std_logic_vector(3 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: CNTR_UPDOWN PORT MAP(
		CLK => CLK,
		RST => RST,
		DIR => DIR,
		Q => Q
	);

	P1 : PROCESS
	BEGIN
		CLK_LOOP: LOOP
		CLK<='0';
		wait for 100ns;
		CLK<='1';
		wait for 100ns;
		end loop CLK_LOOP;
	END PROCESS P1;
	
	P2 : PROCESS
	BEGIN
		wait for 100ns;
		RST <='1';
		DIR <='1';
		wait for 200ns;

		RST <='0';
		
		wait for 2600ns;

		DIR <='0';
		
		wait for 3000ns;

		RST <='1';
		
		wait for 200ns;
		wait;
	END PROCESS P2;

END;
