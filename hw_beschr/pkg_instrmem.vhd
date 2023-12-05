LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- ---------------------------------------------------------------------------------
-- Memory initialisation package
-- ---------------------------------------------------------------------------------
PACKAGE pkg_instrmem IS

	TYPE t_instrMem IS ARRAY(0 TO 512 - 1) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	CONSTANT PROGMEM : t_instrMem := (
		"0000000000000000",
		"1100000000000010",
		"0000000000000000",
		"1100000000000001",
		"1100111111111110",
		"0000000000000000",
		"1110000000000001",
		"1110111111111111",
		"1110111100001110",
		"1001010100000011",
		"1001010100000011",
		"1110011100001111",
		"1001010100000011",
		"1110000000000001",
		"1001010100001010",
		"1001010100001010",
		"1110100000000000",
		"1001010100001010",
		"1110000000000001",
		"1110000000010001",
		"0000111100000001",
		"1110111100001111",
		"1110000000010001",
		"0000111100000001",
		"1110000000001000",
		"1110000000011000",
		"0000111100010000",
		"1110011100001111",
		"1110000000010001",
		"0000111100000001",
		"1110010000000000",
		"0000111100000000",
		"0000111100000000",
		"1110000000000000",
		"1110000000010000",
		"1001010010001000",
		"0001111100000001",
		"1001010000001000",
		"0001111100000001",
		"1110000000001110",
		"1110000000010001",
		"1001010000001000",
		"0001111100000001",
		"1110111100001110",
		"1110000000010001",
		"1001010000001000",
		"0001111100000001",
		"1110011100001110",
		"1110000000010001",
		"1001010000001000",
		"0001111100000001",
		"1110010000000000",
		"0001111100000000",
		"0001111100000000",
		"1110000000000001",
		"1110000000010001",
		"0001101100000001",
		"1110000100000000",
		"1110000000010001",
		"0001101100000001",
		"1110100000000000",
		"1110000000010001",
		"0001101100000001",
		"1110000000000001",
		"1110000000010010",
		"0001101100000001",
		"1110000000000001",
		"0101000000000001",
		"1110000100000000",
		"0101000000000001",
		"1110011100001110",
		"0101000000000001",
		"1110000000000001",
		"0101000000000010",
		"1110000000000001",
		"1110000000010001",
		"0001011100000001",
		"1110000100000000",
		"1110000000010001",
		"0001011100000001",
		"1110100000000000",
		"1110000000010001",
		"0001011100000001",
		"1110000000000001",
		"1110000000010010",
		"0001011100000001",
		"1110000000000001",
		"0011000000000001",
		"1110000100000000",
		"0011000000000001",
		"1110011100001110",
		"0011000000000001",
		"1110000000000001",
		"0011000000000010",
		"1001010000001000",
		"1001010010001000",
		"1110001100000111",
		"0010111000010000",
		"0010110000100001",
		"0010110100100010",
		"0010111100010000",
		"1110101000001010",
		"1001010100000000",
		"1001010100000000",
		"1110101000001010",
		"1110111100011111",
		"1110010100100101",
		"0010011100000001",
		"0010011100000010",
		"1110101000001010",
		"1110101000011010",
		"1110010100100101",
		"0010001100000001",
		"0010001100000010",
		"1110101000001010",
		"0111101000001010",
		"0111010100000101",
		"1110101000001010",
		"1110010100010101",
		"1110000000100000",
		"0010101100000001",
		"0010101100000010",
		"1110101000001010",
		"0110010100000101",
		"0110000000000000",
		"1110000000000010",
		"1001010100000110",
		"1001010100000110",
		"1001010100000110",
		"1110010000000010",
		"1001010100000101",
		"1001010100000101",
		"1110100000000010",
		"1001010100000101",
		"1001010100000101",
		"1110011100001011",
		"0010111000000000",
		"1001001000001111",
		"1001000101001111",
		"1110000100000111",
		"1001001100001111",
		"1001000010101111",
		"1110101000001010",
		"1110000011100000",
		"1110000011110001",
		"1000001100000000",
		"1000000100010000",
		"1110010100000101",
		"1110111111101111",
		"1110000011110001",
		"1000001100000000",
		"1000000100010000",
		"1110001111100101",
		"1110000011110000",
		"1110111100001111",
		"1000001100000000",
		"1000000100010000",
		"1110101000001011",
		"1110001111101000",
		"1000001100000000",
		"1000000100010000",
		"1110111100001111",
		"1110010011100000",
		"1000001100000000",
		"1000000100010000",
		"1110101000001011",
		"1110010011100001",
		"1000001100000000",
		"1000000100010000",
		"1110111100001111",
		"1110010011100010",
		"1000001100000000",
		"1000000100010000",
		"1110101000001011",
		"1110010011100011",
		"1000001100000000",
		"1000000100010000",
		"1110111100001111",
		"1110010011100100",
		"1000001100000000",
		"1000000100010000",
		"1110101000001011",
		"1110010111100000",
		"1000001100000000",
		"1000000100010000",
		"1110111100001111",
		"1110010111100001",
		"1000001100000000",
		"1000000100010000",

		OTHERS => (OTHERS => '0')
	);

END PACKAGE pkg_instrmem;