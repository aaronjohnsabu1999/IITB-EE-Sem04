library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity TWELVE_BIT_ADDER is
	port (A, B: in std_logic_vector(11 downto 0); Z: out std_logic_vector(11 downto 0));
end entity TWELVE_BIT_ADDER;
architecture Struct of TWELVE_BIT_ADDER is
	signal C1, C2, C3	: std_logic;
	component Four_bit_Adder_CIN  is
		port (A1, A2, A3, A4, B1, B2, B3, B4, C0: in std_logic; S1, S2, S3, S4, Cout: out std_logic);
	end component Four_bit_Adder_CIN;
begin
	fba1:	FOUR_BIT_ADDER_CIN port map (A1 => A(0), A2 => A(1), A3  => A(2),	A4 => A(3),  C0 => '0', B1 => B(0), B2 => B(1), B3 => B(2),  B4 => B(3),  S1 => Z(0), S2 => Z(1), S3 => Z(2),  S4 => Z(3),  Cout => C1);
	fba2:	FOUR_BIT_ADDER_CIN port map (A1 => A(4), A2 => A(5), A3  => A(6),	A4 => A(7),  C0 => C1,  B1 => B(4),	B2 => B(5), B3 => B(6),  B4 => B(7),  S1 => Z(4), S2 => Z(5), S3 => Z(6),  S4 => Z(7),  Cout => C2);
	fba3:	FOUR_BIT_ADDER_CIN port map (A1 => A(8), A2 => A(9), A3  => A(10), A4 => A(11), C0 => C2,	B1 => B(8),	B2 => B(9), B3 => B(10), B4 => B(11), S1 => Z(8), S2 => Z(9), S3 => Z(10), S4 => Z(11), Cout => C3);
end Struct;