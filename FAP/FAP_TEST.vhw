--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.1i
--  \   \         Application : ISE
--  /   /         Filename : FAP_TEST.vhw
-- /___/   /\     Timestamp : Thu May 06 10:52:33 2021
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: FAP_TEST
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY FAP_TEST IS
END FAP_TEST;

ARCHITECTURE testbench_arch OF FAP_TEST IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT FAP_FA
        PORT (
            X : In std_logic;
            Y : In std_logic;
            Cin : In std_logic;
            SUM : Out std_logic;
            CARRY : Out std_logic
        );
    END COMPONENT;

    SIGNAL X : std_logic := '0';
    SIGNAL Y : std_logic := '0';
    SIGNAL Cin : std_logic := '0';
    SIGNAL SUM : std_logic := '0';
    SIGNAL CARRY : std_logic := '0';

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    BEGIN
        UUT : FAP_FA
        PORT MAP (
            X => X,
            Y => Y,
            Cin => Cin,
            SUM => SUM,
            CARRY => CARRY
        );

        PROCESS
            PROCEDURE CHECK_CARRY(
                next_CARRY : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (CARRY /= next_CARRY) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns CARRY="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, CARRY);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_CARRY);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.writeline(RESULTS, TX_LOC);
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_SUM(
                next_SUM : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (SUM /= next_SUM) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns SUM="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, SUM);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_SUM);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.writeline(RESULTS, TX_LOC);
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                Cin <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                Y <= '1';
                Cin <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                Cin <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                X <= '1';
                Y <= '0';
                Cin <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                Cin <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                Y <= '1';
                Cin <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                Cin <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                X <= '0';
                Y <= '0';
                Cin <= '0';
                WAIT FOR 200 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    STD.TEXTIO.writeline(RESULTS, TX_OUT);
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    STD.TEXTIO.writeline(RESULTS, TX_OUT);
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

