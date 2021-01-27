library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity adder_8bit is
	port (a, b : in std_logic_vector (7 downto 0); cin : in std_logic; sum, cout : out std_logic_vector (7 downto 0));
end entity;

architecture behav_1 of adder_8bit is
	signal co : std_logic_vector (8 downto 0);
begin
	co(0) <= cin;
	gen_for:
		for i in 0 to 7 generate
			faX : FULL_ADDER port map(a(i), b(i), co(i), sum(i), co(i+1));
	end generate gen_for;
end behav_1;

architecture behav_2 of adder_8bit is
	signal C  : std_logic_vector (8 downto 0);
begin
	C(0) <= cin;
	gen_add:
		for i in 0 to 7 generate
			c(i+1) <= (((a(i) or b(i)) and c(i)) or (a(i) and b(i)));
			sum(i) <= ((a(i) xor b(i)) xor c(i));
	end generate gen_add;
end behav_2;

architecture behav_3 of adder_8bit is
begin
	process(a, b, cin)
		variable cvar : std_logic;
			begin
				cvar := cin;
				for i in 0 to 7 loop
					sum(i) <= (a(i) xor b(i) xor cvar);
					cvar   := (((a(i) or b(i)) and cvar) or (a(i) and b(i)));
				end loop;
	end process;
end behav_3;