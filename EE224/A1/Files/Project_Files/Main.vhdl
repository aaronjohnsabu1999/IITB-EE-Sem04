library ieee;
use ieee.std_logic_1164.all;
entity Main  is
	port (A, B: in std_logic_vector(7 downto 0); Z: out std_logic_vector(15 downto 0));
end entity Main;
architecture Struct of Main is
	signal C1, C2, C3, C4, C5, C6		: std_logic_vector(15 downto 0);
	signal temp1, temp2, temp3, temp4: std_logic_vector(9  downto 0);
	component CustomMultiplexer is
		port(B2, B1, B0: in std_logic; A: in std_logic_vector(7 downto 0); S: out std_logic_vector(9 downto 0));
	end component;
	component Sixteen_Bit_Adder  is
		port (A, B: in std_logic_vector(15 downto 0); Z: out std_logic_vector(15 downto 0));
	end component Sixteen_Bit_Adder;
	begin
		cm1 : 	CustomMultiplexer port map(B2 => B(1), B1 => B(0), B0 => '0',  A => A, S => temp1);
		C1	<= 	"000000" & temp1;
		cm2 : 	CustomMultiplexer port map(B2 => B(3), B1 => B(2), B0 => B(1), A => A, S => temp2);
		C2	<= 	("0000" & temp2) & "00";
		cm3 : 	CustomMultiplexer port map(B2 => B(5), B1 => B(4), B0 => B(3), A => A, S => temp3);
		C3	<= 	("00" & temp3) & "0000";
		cm4 : 	CustomMultiplexer port map(B2 => B(7), B1 => B(6), B0 => B(5), A => A, S => temp4);
		C4	<= 	temp4 & "000000";

		sba1: 	Sixteen_Bit_Adder port map(A => C1, B => C2, Z => C5);
		sba2: 	Sixteen_Bit_Adder port map(A => C3, B => C4, Z => C6);
		sba3: 	Sixteen_Bit_Adder port map(A => C5, B => C6,	Z => Z);	
end Struct;
