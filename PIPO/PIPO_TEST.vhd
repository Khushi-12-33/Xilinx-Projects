
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:23:20 05/27/2021
-- Design Name:   PIPO_SR
-- Module Name:   PIPO_TEST.vhd
-- Project Name:  PIPO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PIPO_SR
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY PIPO_TEST_vhd IS
END PIPO_TEST_vhd;

ARCHITECTURE behavior OF PIPO_TEST_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT PIPO_SR
	PORT(
		D : IN std_logic_vector(3 downto 0);
		CLK : IN std_logic;
		E : IN std_logic;          
		Q : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL CLK :  std_logic := '0';
	SIGNAL E :  std_logic := '0';
	SIGNAL D :  std_logic_vector(3 downto 0) := (others=>'0');

	--Outputs
	SIGNAL Q :  std_logic_vector(3 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: PIPO_SR PORT MAP(
		D => D,
		CLK => CLK,
		E => E,
		Q => Q
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
