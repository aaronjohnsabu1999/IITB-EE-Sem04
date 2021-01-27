library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Main is
	port(A, B: in std_logic_vector(7 downto 0); S: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of Main is	
	component QuarterPrecFloatMultiplier is
		port(A, B: in std_logic_vector(7 downto 0); S: out std_logic_vector(15 downto 0));
	end component;
	signal S1		: std_logic_vector(15 downto 0);
begin

	qpfm:	QuarterPrecFloatMultiplier port map(A => A, B => B, S => S1);
	
	S(15) <= (S1(15) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ((A(7) xor B(7)) and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ((A(7) xor B(7)) and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(14) <= (S1(14) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(13) <= (S1(13) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(12) <= (S1(12) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(11) <= (S1(11) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(10) <= (S1(10) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(9) <= (S1(9) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(8) <= (S1(8) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(7) <= (S1(7) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(6) <= (S1(6) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(5) <= (S1(5) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(4) <= (S1(4) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(3) <= (S1(3) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(2) <= (S1(2) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(1) <= (S1(1) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
	S(0) <= (S1(0) and (not((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))))
		or ('0' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and not((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))))
		or ('1' and (((A(4) and A(5) and A(6)) or (not(A(4)) and not(A(5)) and not(A(6))))) and    ((A(3) or A(2) or A(1) or A(0)) or (B(3) or B(2) or B(1) or B(0))));
end Struct;