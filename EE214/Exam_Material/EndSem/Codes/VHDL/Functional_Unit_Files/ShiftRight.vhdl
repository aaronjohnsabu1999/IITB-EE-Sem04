library ieee;
use ieee.std_logic_1164.all;
entity right_shift_by1 is
	port (X: in std_logic_vector(7 downto 0); S: in std_logic; Y: out std_logic_vector(7 downto 0));
end entity right_shift_by1;
architecture Struct1 of right_shift_by1 is
begin
	Y(7) <= '0'  when S='1' else X(7);
	Y(6) <= X(7) when S='1' else X(6);
	Y(5) <= X(6) when S='1' else X(5);
	Y(4) <= X(5) when S='1' else X(4);
	Y(3) <= X(4) when S='1' else X(3);
	Y(2) <= X(3) when S='1' else X(2);
	Y(1) <= X(2) when S='1' else X(1);
	Y(0) <= X(1) when S='1' else X(0);
end Struct1;

library ieee;
use ieee.std_logic_1164.all;
entity right_shift_by2 is
	port (X: in std_logic_vector(7 downto 0);
		S: in std_logic;
		Y: out std_logic_vector(7 downto 0));
end entity right_shift_by2;
architecture Struct2 of right_shift_by2 is
begin
	Y(7) <= '0'  when S='1' else X(7);
	Y(6) <= '0'  when S='1' else X(6);
	Y(5) <= X(7) when S='1' else X(5);
	Y(4) <= X(6) when S='1' else X(4);
	Y(3) <= X(5) when S='1' else X(3);
	Y(2) <= X(4) when S='1' else X(2);
	Y(1) <= X(3) when S='1' else X(1);
	Y(0) <= X(2) when S='1' else X(0);
end Struct2;

library ieee;
use ieee.std_logic_1164.all;
entity right_shift_by4 is
	port (X: in std_logic_vector(7 downto 0);
		  S: in std_logic;
		  Y: out std_logic_vector(7 downto 0));
end entity right_shift_by4;
architecture Struct3 of right_shift_by4 is
begin
	Y(7) <=  '0' when S='1' else X(7);
	Y(6) <=  '0' when S='1' else X(6);
	Y(5) <=  '0' when S='1' else X(5);
	Y(4) <=  '0' when S='1' else X(4);
	Y(3) <= X(7) when S='1' else X(3);
	Y(2) <= X(6) when S='1' else X(2);
	Y(1) <= X(5) when S='1' else X(1);
	Y(0) <= X(4) when S='1' else X(0);
end Struct3;

-- POSSIBLY ERRONEOUS FUNCTION
library ieee;
use ieee.std_logic_1164.all;
entity right_shift_by8 is
	port (X: in std_logic_vector(7 downto 0);
		  S: in std_logic_vector(7 downto 3);
		  Y: out std_logic_vector(7 downto 0));
end entity right_shift_by8;
architecture Struct4 of right_shift_by8 is
begin
	Y <= "00000000" when (S(7) or S(6) or S(5) or S(4) or S(3))='1' else X;
end Struct4;

library ieee;
use ieee.std_logic_1164.all;
entity SHIFTRIGHT is
	port (X: in std_logic_vector(7 downto 0);
		  S: in std_logic_vector(7 downto 0);
		  Y: out std_logic_vector(7 downto 0));
end entity;
architecture Struct of SHIFTRIGHT is
	component right_shift_by1 is
		port (X: in std_logic_vector(7 downto 0); S: in std_logic; Y: out std_logic_vector(7 downto 0));
	end component;

	component right_shift_by2 is
		port (X: in std_logic_vector(7 downto 0); S: in std_logic; Y: out std_logic_vector(7 downto 0));
	end component;

	component right_shift_by4 is
		port (X: in std_logic_vector(7 downto 0); S: in std_logic; Y: out std_logic_vector(7 downto 0));
	end component;

	component right_shift_by8 is
		port (X: in std_logic_vector(7 downto 0); S: in std_logic_vector(7 downto 3); Y: out std_logic_vector(7 downto 0));
	end component;
signal I1,I2,I3: std_logic_vector(7 downto 0);
begin
	L1: right_shift_by1 port map(X => X, S => S(0), Y => I1);
	L2: right_shift_by2 port map(X => I1, S => S(1), Y => I2);
	L3: right_shift_by4 port map(X => I2, S => S(2), Y => I3);
	L4: right_shift_by8 port map(X => I3, S => S(7 downto 3), Y => Y);
end Struct;
