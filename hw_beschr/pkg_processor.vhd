LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE pkg_processor IS

  CONSTANT op_ADD : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000"; -- Addition
  CONSTANT op_NOP : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000"; -- NoOperation (als Addition implementiert, die Ergebnisse

  CONSTANT op_INC : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001"; -- inc

  CONSTANT op_ADC : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010"; -- ADD with carry

  CONSTANT op_SUB : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100"; -- Subtraction
  CONSTANT op_CP : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100"; -- compare 

  CONSTANT op_SUBI : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101"; -- subi
  CONSTANT op_CPI : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101"; -- CPI
  CONSTANT op_DEC : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101"; -- dec

  CONSTANT op_OR : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0110"; -- bitwise OR
  CONSTANT op_ORI : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0111"; -- ori

  CONSTANT op_EOR : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1000"; -- bitwise EOR
  CONSTANT op_COM : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001"; -- com
  CONSTANT op_SEC : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001"; -- SEC

  CONSTANT op_AND : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010"; -- bitwise AND
  CONSTANT op_CLC : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010"; -- CLC
  CONSTANT op_ANDI : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1011"; -- ANDI

  CONSTANT op_MOV : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1100"; -- MOV
  CONSTANT op_LDI : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1101"; -- Load immediate

  CONSTANT op_ASR : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1110"; -- asr
  CONSTANT op_LSR : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1111"; -- lsr
END pkg_processor;