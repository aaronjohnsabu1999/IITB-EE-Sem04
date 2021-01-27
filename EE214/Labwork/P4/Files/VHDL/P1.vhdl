library ieee;
use ieee.std_logic_1164.all;

entity example_1 is
	port (c : out std_logic);
end example_1;

architecture behav_1 of example_1 is
	signal a, b : std_logic := '0';
begin
	a <= not a after 5 ns;
	b <= not a after 1 ns;
	c <= a or b after 1 ns;
end behav_1;

architecture behav_2 of example_1 is
	signal a, b : std_logic := '0';
begin
	a_proc: process(a) begin
				a <= not a after 5 ns;
			end process;
	b_proc: process(a) begin
				b <= not a after 1 ns;
			end process;
	c_proc: process(a, b) begin
				c <= a or b after 1 ns;
			end process;	
end behav_2;

architecture behav_3 of example_1 is
	signal a, b : std_logic := '0';
begin
	a_proc: process begin
				a <= not a after 5 ns;
				wait on a;
			end process;
	b_proc: process begin
				b <= not a after 1 ns;
				wait on a;
			end process;
	c_proc: process begin
				c <= a or b after 1 ns;
				wait on a, b;
			end process;	
end behav_3;