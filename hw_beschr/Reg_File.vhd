----------------------------------------------------------------------------------
-- Engineer: B. Eng. Saitz, Ruben Herman Felix
-- 
-- Module Name: Pipeline_Register_one - Behavioral
-- Project Name: RISC CPU
-- Target Devices: ARTIX 7
-- 
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY Reg_File IS
  PORT (
    clk : IN STD_LOGIC;
    addr_opa : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
    addr_opb : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
    Write_addr : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
    WE_RegFile : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    data_opa : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    data_opb : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    Z : OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
  );
END Reg_File;

ARCHITECTURE Behavioral OF Reg_File IS
  TYPE regs IS ARRAY(31 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL register_speicher : regs;
BEGIN

  registerfile : PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF WE_RegFile = '1' THEN
        register_speicher(to_integer(unsigned(Write_addr))) <= data_in;
      END IF;
    END IF;
  END PROCESS registerfile;

  data_opa <= register_speicher(to_integer(unsigned(addr_opa)));
  data_opb <= register_speicher(to_integer(unsigned(addr_opb)));
  Z(9 DOWNTO 8) <= (register_speicher(31) (1 DOWNTO 0));
  Z(7 DOWNTO 0) <= (register_speicher(30));
END Behavioral;