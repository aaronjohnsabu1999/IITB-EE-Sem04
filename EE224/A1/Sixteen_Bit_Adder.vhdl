library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Sixteen_bit_Adder  is
	port (A, B: in std_logic_vector(15 downto 0); Z: out std_logic_vector(15 downto 0));
end entity Sixteen_bit_Adder;
architecture Struct of Sixteen_bit_Adder is
	signal C1, C2, C3, C4, C5, C6, C7, W1, W2, W3: std_logic;
	component Four_bit_Adder  is
		port (A1, A2, A3, A4, B1, B2, B3, B4: in std_logic; S1, S2, S3, S4, Cout: out std_logic);
	end component Four_bit_Adder;
begin
	fba1:	FOUR_BIT_ADDER 	port map (A1 => A(0), A2 => A(1), A3  => A(2), A4 => A(3), B1   => B(0), B2 => B(1), B3 => B(2), B4 => B(3), S1 => Z(0), S2 => Z(1), S3 => Z(2), S4 => Z(3), Cout => C1);
	fa1: 	FULL_ADDER 		port map (A  => A(4), B  => B(4), Cin => C1,   S  => Z(4), Cout => C2);
	fba2: 	FOUR_BIT_ADDER 	port map (A1 => '1',  A2 => A(5), A3  => A(6), A4 => A(7), B1   => C2, B2 => B(5), B3 => B(6), B4 => B(7), S1 => W1, S2 => Z(5), S3 => Z(6), S4 => Z(7), Cout => C3);
	fa2: 	FULL_ADDER 		port map (A  => A(8), B  => B(8), Cin => C3,   S  => Z(8), Cout => C4);
	fba3: 	FOUR_BIT_ADDER 	port map (A1 => '1',  A2 => A(9), A3  => A(10), A4 => A(11), B1   => C4, B2 => B(9), B3 => B(10), B4 => B(11), S1 => W2, S2 => Z(9), S3 => Z(10), S4 => Z(11), Cout => C5);
	fa3: 	FULL_ADDER 		port map (A  => A(12), B  => B(12), Cin => C5,   S  => Z(12), Cout => C6);
	fba4: 	FOUR_BIT_ADDER 	port map (A1 => '1',  A2 => A(13), A3  => A(14), A4 => A(15), B1   => C6, B2 => B(13), B3 => B(14), B4 => B(15), S1 => W3, S2 => Z(13), S3 => Z(14), S4 => Z(15), Cout => C7);
end Struct;
