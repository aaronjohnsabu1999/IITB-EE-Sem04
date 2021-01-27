library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity QuarterPrecFloatMultiplier is
	port(A, B: in std_logic_vector(7 downto 0); S: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of QuarterPrecFloatMultiplier is	
	component TWELVE_BIT_ADDER is
		port (A, B: in std_logic_vector(11 downto 0); Z: out std_logic_vector(11 downto 0));
	end component TWELVE_BIT_ADDER;
	component MULTIPLEXER12_1 is
		port (B: in std_logic; A: in std_logic_vector(11 downto 0); Z: out std_logic_vector(11 downto 0));
	end component MULTIPLEXER12_1;
	
	type matrix12x5 is array(0 to 4) of std_logic_vector(11 downto 0);
	type matrix12x4 is array(0 to 3) of std_logic_vector(11 downto 0);
	signal MA																			: std_logic_vector(4 downto 0);
	signal A12, B12																	: matrix12x5;
	signal C12																			: matrix12x4;
	signal S1, S2, S3, S4, S5, C1, C2, C3, C4, C5, D1, D2, D3, D4, D5	: std_logic;	
begin
	MA <= '1' & A(3 downto 0);
	
	A12(0) <= ("0000000" & MA);
	A12(1) <= ("000000" & MA) & '0';
	A12(2) <= ("00000" & MA) & "00";
	A12(3) <= ("0000" & MA) & "000";
	A12(4) <= ("000" & MA) & "0000";
	
	mux1: MULTIPLEXER12_1	port map(A => A12(0), B => B(0), Z => B12(0));	-- B12(0) = 00000001abcd or 000000000000
	mux2: MULTIPLEXER12_1	port map(A => A12(1), B => B(1), Z => B12(1));	-- B12(1) = 0000001abcd0 or 000000000000
	mux3: MULTIPLEXER12_1	port map(A => A12(2), B => B(2), Z => B12(2));	-- B12(2) = 000001abcd00 or 000000000000
	mux4: MULTIPLEXER12_1	port map(A => A12(3), B => B(3), Z => B12(3));	-- B12(3) = 00001abcd000 or 000000000000
	mux5: MULTIPLEXER12_1	port map(A => A12(4), B => '1',  Z => B12(4));	-- B12(4) = 0001abcd0000

	tba1: TWELVE_BIT_ADDER	port map(A => B12(0), B => B12(1), Z => C12(0));
	tba2: TWELVE_BIT_ADDER	port map(A => B12(2), B => B12(3), Z => C12(1));
	tba3: TWELVE_BIT_ADDER	port map(A => B12(4), B => C12(0), Z => C12(2));
	tba4: TWELVE_BIT_ADDER	port map(A => C12(1), B => C12(2), Z => C12(3));
	
	S(9)  <= (C12(3)(9)  and C12(3)(9)) or (C12(3)(8)  and not(C12(3)(9)));
	S(8)  <= (C12(3)(8)  and C12(3)(9)) or (C12(3)(7)  and not(C12(3)(9)));
	S(7)  <= (C12(3)(7)  and C12(3)(9)) or (C12(3)(6)  and not(C12(3)(9)));
	S(6)  <= (C12(3)(6)  and C12(3)(9)) or (C12(3)(5)  and not(C12(3)(9)));
	S(5)  <= (C12(3)(5)  and C12(3)(9)) or (C12(3)(4)  and not(C12(3)(9)));
	S(4)  <= (C12(3)(4)  and C12(3)(9)) or (C12(3)(3)  and not(C12(3)(9)));
	S(3)  <= (C12(3)(3)  and C12(3)(9)) or (C12(3)(2)  and not(C12(3)(9)));
	S(2)  <= (C12(3)(2)  and C12(3)(9)) or (C12(3)(1)  and not(C12(3)(9)));
	S(1)  <= (C12(3)(1)  and C12(3)(9)) or (C12(3)(0)  and not(C12(3)(9)));
	S(0)  <= (C12(3)(0)  and C12(3)(9)) or ('0'			and not(C12(3)(9)));

	fa1:	FULL_ADDER port map(A => A(4), B => B(4), Cin => '0',			S => S1,		Cout => C1);
	fa2:	FULL_ADDER port map(A => A(5), B => B(5), Cin => C1,  		S => S2,		Cout => C2);
	fa3:	FULL_ADDER port map(A => A(6), B => B(6), Cin => C2,			S => S3,		Cout => C3);
	fa4:	FULL_ADDER port map(A => '0',  B => '0',  Cin => C3,			S => S4,		Cout => C4);
	fa5:	FULL_ADDER port map(A => '0',  B => '0',  Cin => C4,			S => S5,		Cout => C5);
	
	fa6:	FULL_ADDER port map(A => S1,	 B => '1',  Cin => C12(3)(9),	S => S(10), Cout => D1);
	fa7:	FULL_ADDER port map(A => S2,	 B => '0',	Cin => D1,  		S => S(11), Cout => D2);
	fa8:	FULL_ADDER port map(A => S3,	 B => '0',	Cin => D2,			S => S(12), Cout => D3);
	fa9:	FULL_ADDER port map(A => S4,	 B => '1',  Cin => D3,			S => S(13), Cout => D4);
	fa10:	FULL_ADDER port map(A => S5,	 B => '0',  Cin => D4,			S => S(14), Cout => D5);

	
	S(15) <= A(7) xor B(7);
end Struct;