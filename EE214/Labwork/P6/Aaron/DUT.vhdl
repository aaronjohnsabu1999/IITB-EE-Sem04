-- A DUT entity is used to wrap your design.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(9 downto 0);
        output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	component PTN911 is
		port (u: in std_logic_vector(7 downto 0); y: out std_logic; r, clk: in std_logic);
	end component;
	begin
	-- input/output vector element ordering is critical,
	-- and must match the ordering in the trace file!
	add_instance: PTN911 port map (
		-- order of inputs clk, r, u(7) to u(0)
			u(0)  => input_vector(0),
			u(1)  => input_vector(1),
			u(2)  => input_vector(2),
			u(3)  => input_vector(3),
			u(4)  => input_vector(4),
			u(5)  => input_vector(5),
			u(6)  => input_vector(6),
			u(7)  => input_vector(7),
			r     => input_vector(8),
			clk   => input_vector(9),
		-- order of outputs out
			y  => output_vector(0));
end DutWrap;