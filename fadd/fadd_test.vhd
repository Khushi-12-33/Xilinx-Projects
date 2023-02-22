
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:19:43 04/12/2021
-- Design Name:   f_add
-- Module Name:   fadd_test.vhd
-- Project Name:  fadd
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: f_add
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

ENTITY fadd_test_vhd IS
END fadd_test_vhd;

ARCHITECTURE behavior OF fadd_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT f_add
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		C : IN std_logic;          
		S : OUT std_logic;
		Cout : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL A :  std_logic := '0';
	SIGNAL B :  std_logic := '0';
	SIGNAL C :  std_logic := '0';

	--Outputs
	SIGNAL S :  std_logic;
	SIGNAL Cout :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: f_add PORT MAP(
		A => A,
		B => B,
		C => C,
		S => S,
		Cout => Cout
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
