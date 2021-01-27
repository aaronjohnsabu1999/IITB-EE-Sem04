library ieee;
use ieee.std_logic_1164.all;
entity DUT is
	port(input_vector : in  std_logic_vector(3 downto 0);
		 output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	component Main is
		port (reset, a, b: in std_logic; s: out std_logic; clk: in std_logic);
	end component;
begin
	add_instance: Main
		port map (
			-- order of inputs reset, clk, a, b
			reset	=> input_vector(3),
			clk	=> input_vector(2),
			a  	=> input_vector(1),
			b  	=> input_vector(0),
			-- order of outputs s
			s => output_vector(0));
end DutWrap;