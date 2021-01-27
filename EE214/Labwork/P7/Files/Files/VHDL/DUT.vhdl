-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
	port(input_vector: in std_logic_vector(11 downto 0); output_vector: out std_logic_vector(8 downto 0));
end entity;

architecture DutWrap of DUT is
component ShiftAndAdd is 
	port (a, b: in std_logic_vector(3 downto 0); Start, clk, reset : in std_logic; p: out std_logic_vector(7 downto 0); Done: out std_logic);
end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: ShiftAndAdd 
		port map (
		-- order of inputs clk, Start, reset, a(3) to a(0), b(3) to b(0)
			b(0)  => input_vector(0),
			b(1)  => input_vector(1),
			b(2)  => input_vector(2),
			b(3)  => input_vector(3),
			a(0)  => input_vector(4),
			a(1)  => input_vector(5),
			a(2)  => input_vector(6),
			a(3)  => input_vector(7),
			reset => input_vector(8),
			Start => input_vector(9),
			clk   => input_vector(10),
		-- order of outputs Done, p(7) to p(0)
			p(0)  => output_vector(0),
			p(1)  => output_vector(1),
			p(2)  => output_vector(2),
			p(3)  => output_vector(3),
			p(4)  => output_vector(4),
			p(5)  => output_vector(5),
			p(6)  => output_vector(6),
			p(7)  => output_vector(7),
			Done  => output_vector(8));
end DutWrap;