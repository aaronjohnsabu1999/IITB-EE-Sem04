library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.Gates.all;
entity CustomMultiplexer is
	port(B2, B1, B0: in std_logic; A: in std_logic_vector(7 downto 0); S: out std_logic_vector(9 downto 0));
end entity;
architecture Struct of CustomMultiplexer is
	signal A10, minA10, plus2A, min2A: std_logic_vector(9 downto 0);
begin
	-- component instances
	A10 	 <= ((A(7) & A(7)) &   A);
	plus2A <= ((A(7) & A)	 & '0');
	minA10 <= std_logic_vector(unsigned(not(A10))    +1);
	min2A  <= std_logic_vector(unsigned(not(plus2A)) +1);
		
	S(9)  <= 	('0' 			and 	(not(B2) and (not(B1) and not(B0) ) ) ) 
				or (A10(9)		and	(not(B2) and (not(B1) and 	 (B0) ) ) ) 
				or (A10(9)		and 	(not(B2) and (	 (B1) and not(B0) ) ) ) 
				or (plus2A(9)	and	(not(B2)	and (	 (B1) and 	 (B0) ) ) ) 
				or (min2A(9)	and 	((B2) 	and (not(B1) and not(B0) ) ) ) 
				or (minA10(9)	and 	((B2) 	and (not(B1) and 	 (B0) ) ) ) 
				or (minA10(9)	and 	((B2) 	and (not(B1) and 	 (B0) ) ) ) 
				or ('0' 		and 	((B2) 	 and (	 (B1) and 	 (B0) ) ) );
	S(8)  <= 	   ('0' 		and 	(not(B2) and (not(B1) and not(B0) ) ) ) 
				or (A10(8)		and		(not(B2) and (not(B1) and 	 (B0) ) ) ) 
				or (A10(8)		and 	(not(B2) and (	 (B1) and not(B0) ) ) ) 
				or (plus2A(8)	and		(not(B2) and (	 (B1) and 	 (B0) ) ) ) 
				or (min2A(8)	and 	((B2) 	 and (not(B1) and not(B0) ) ) ) 
				or (minA10(8)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or (minA10(8)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or ('0' 		and 	((B2) 	 and (	 (B1) and 	 (B0) ) ) );
	S(7)  <= 	   ('0' 		and 	(not(B2) and (not(B1) and not(B0) ) ) ) 
				or (A10(7)		and		(not(B2) and (not(B1) and 	 (B0) ) ) ) 
				or (A10(7)		and 	(not(B2) and (	 (B1) and not(B0) ) ) ) 
				or (plus2A(7)	and		(not(B2) and (	 (B1) and 	 (B0) ) ) ) 
				or (min2A(7)	and 	((B2) 	 and (not(B1) and not(B0) ) ) ) 
				or (minA10(7)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or (minA10(7)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or ('0' 		and 	((B2) 	 and (	 (B1) and 	 (B0) ) ) );
	S(6)  <= 	   ('0' 		and 	(not(B2) and (not(B1) and not(B0) ) ) ) 
				or (A10(6)		and		(not(B2) and (not(B1) and 	 (B0) ) ) ) 
				or (A10(6)		and 	(not(B2) and (	 (B1) and not(B0) ) ) ) 
				or (plus2A(6)	and		(not(B2) and (	 (B1) and 	 (B0) ) ) ) 
				or (min2A(6)	and 	((B2) 	 and (not(B1) and not(B0) ) ) ) 
				or (minA10(6)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or (minA10(6)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or ('0' 		and 	((B2) 	 and (	 (B1) and 	 (B0) ) ) );
	S(5)  <= 	   ('0' 		and 	(not(B2) and (not(B1) and not(B0) ) ) ) 
				or (A10(5)		and		(not(B2) and (not(B1) and 	 (B0) ) ) ) 
				or (A10(5)		and 	(not(B2) and (	 (B1) and not(B0) ) ) ) 
				or (plus2A(5)	and		(not(B2) and (	 (B1) and 	 (B0) ) ) ) 
				or (min2A(5)	and 	((B2) 	 and (not(B1) and not(B0) ) ) ) 
				or (minA10(5)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or (minA10(5)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or ('0' 		and 	((B2) 	 and (	 (B1) and 	 (B0) ) ) );
	S(4)  <= 	   ('0' 		and 	(not(B2) and (not(B1) and not(B0) ) ) ) 
				or (A10(4)		and		(not(B2) and (not(B1) and 	 (B0) ) ) ) 
				or (A10(4)		and 	(not(B2) and (	 (B1) and not(B0) ) ) ) 
				or (plus2A(4)	and		(not(B2) and (	 (B1) and 	 (B0) ) ) ) 
				or (min2A(4)	and 	((B2) 	 and (not(B1) and not(B0) ) ) ) 
				or (minA10(4)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or (minA10(4)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or ('0' 		and 	((B2) 	 and (	 (B1) and 	 (B0) ) ) );
	S(3)  <= 	   ('0' 		and 	(not(B2) and (not(B1) and not(B0) ) ) ) 
				or (A10(3)		and		(not(B2) and (not(B1) and 	 (B0) ) ) ) 
				or (A10(3)		and 	(not(B2) and (	 (B1) and not(B0) ) ) ) 
				or (plus2A(3)	and		(not(B2) and (	 (B1) and 	 (B0) ) ) ) 
				or (min2A(3)	and 	((B2) 	 and (not(B1) and not(B0) ) ) ) 
				or (minA10(3)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or (minA10(3)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or ('0' 		and 	((B2) 	 and (	 (B1) and 	 (B0) ) ) );
	S(2)  <= 	   ('0' 		and 	(not(B2) and (not(B1) and not(B0) ) ) ) 
				or (A10(2)		and		(not(B2) and (not(B1) and 	 (B0) ) ) ) 
				or (A10(2)		and 	(not(B2) and (	 (B1) and not(B0) ) ) ) 
				or (plus2A(2)	and		(not(B2) and (	 (B1) and 	 (B0) ) ) ) 
				or (min2A(2)	and 	((B2) 	 and (not(B1) and not(B0) ) ) ) 
				or (minA10(2)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or (minA10(2)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or ('0' 		and 	((B2) 	 and (	 (B1) and 	 (B0) ) ) );
	S(1)  <= 	   ('0' 		and 	(not(B2) and (not(B1) and not(B0) ) ) ) 
				or (A10(1)		and		(not(B2) and (not(B1) and 	 (B0) ) ) ) 
				or (A10(1)		and 	(not(B2) and (	 (B1) and not(B0) ) ) ) 
				or (plus2A(1)	and		(not(B2) and (	 (B1) and 	 (B0) ) ) ) 
				or (min2A(1)	and 	((B2) 	 and (not(B1) and not(B0) ) ) ) 
				or (minA10(1)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or (minA10(1)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or ('0' 		and 	((B2) 	 and (	 (B1) and 	 (B0) ) ) );
	S(0)  <= 	   ('0' 		and 	(not(B2) and (not(B1) and not(B0) ) ) ) 
				or (A10(0)		and		(not(B2) and (not(B1) and 	 (B0) ) ) ) 
				or (A10(0)		and 	(not(B2) and (	 (B1) and not(B0) ) ) ) 
				or (plus2A(0)	and		(not(B2) and (	 (B1) and 	 (B0) ) ) ) 
				or (min2A(0)	and 	((B2) 	 and (not(B1) and not(B0) ) ) ) 
				or (minA10(0)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or (minA10(0)	and 	((B2) 	 and (not(B1) and 	 (B0) ) ) ) 
				or ('0' 		and 	((B2) 	 and (	 (B1) and 	 (B0) ) ) );
end Struct;