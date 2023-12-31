-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Mon Oct 30 22:58:36 2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY maquina_control IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        S : IN STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
        VEL_IZQ : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        VEL_DER : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        IN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END maquina_control;

ARCHITECTURE BEHAVIOR OF maquina_control IS
    TYPE type_fstate IS (RECTA,DER,IZQ,ATRAS);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,S)
    BEGIN
        IF (reset='0') THEN
            reg_fstate <= RECTA;
            VEL_IZQ <= "0000";
            VEL_DER <= "0000";
            IN_A <= "0000";
        ELSE
            VEL_IZQ <= "0000";
            VEL_DER <= "0000";
            IN_A <= "0000";
            CASE fstate IS
                WHEN RECTA =>
                    IF ((S(1 DOWNTO 0) = "11")) THEN
                        reg_fstate <= ATRAS;
                    ELSIF ((S(1 DOWNTO 0) = "01")) THEN
                        reg_fstate <= DER;
                    ELSIF ((S(1 DOWNTO 0) = "10")) THEN
                        reg_fstate <= IZQ;
                    ELSIF ((S(1 DOWNTO 0) = "00")) THEN
                        reg_fstate <= RECTA;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= RECTA;
                    END IF;

                    VEL_DER <= "0111";

                    VEL_IZQ <= "0111";

                    IN_A <= "1010";
                WHEN DER =>
                    IF ((S(1 DOWNTO 0) = "00")) THEN
                        reg_fstate <= RECTA;
                    ELSIF ((S(1 DOWNTO 0) = "11")) THEN
                        reg_fstate <= ATRAS;
                    ELSIF ((S(1 DOWNTO 0) = "10")) THEN
                        reg_fstate <= IZQ;
                    ELSIF ((S(1 DOWNTO 0) = "01")) THEN
                        reg_fstate <= DER;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= DER;
                    END IF;

                    VEL_DER <= "0100";

                    VEL_IZQ <= "0100";

                    IN_A <= "0110";
                WHEN IZQ =>
                    IF ((S(1 DOWNTO 0) = "00")) THEN
                        reg_fstate <= RECTA;
                    ELSIF ((S(1 DOWNTO 0) = "01")) THEN
                        reg_fstate <= DER;
                    ELSIF ((S(1 DOWNTO 0) = "11")) THEN
                        reg_fstate <= ATRAS;
                    ELSIF ((S(1 DOWNTO 0) = "10")) THEN
                        reg_fstate <= IZQ;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= IZQ;
                    END IF;

                    VEL_DER <= "0100";

                    VEL_IZQ <= "0100";

                    IN_A <= "1001";
                WHEN ATRAS =>
                    IF ((S(1 DOWNTO 0) = "10")) THEN
                        reg_fstate <= IZQ;
                    ELSIF ((S(1 DOWNTO 0) = "01")) THEN
                        reg_fstate <= DER;
                    ELSIF ((S(1 DOWNTO 0) = "00")) THEN
                        reg_fstate <= RECTA;
                    ELSIF ((S(1 DOWNTO 0) = "11")) THEN
                        reg_fstate <= ATRAS;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= ATRAS;
                    END IF;

                    VEL_DER <= "0100";

                    VEL_IZQ <= "0100";

                    IN_A <= "0101";
                WHEN OTHERS => 
                    VEL_IZQ <= "XXXX";
                    VEL_DER <= "XXXX";
                    IN_A <= "XXXX";
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
