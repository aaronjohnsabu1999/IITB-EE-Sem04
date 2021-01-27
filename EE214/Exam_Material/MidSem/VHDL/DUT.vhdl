-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  ArithUnit8.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(4 downto 0);
        output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component MajorityCircuit is
     port (a, b, c, d, e: in std_logic; decision: out std_logic);
   end component;
begin
   add_instance: MajorityCircuit
			port map (
					-- order of inputs - a, b, c, d, e
					e  => input_vector(0),
					d  => input_vector(1),
					c  => input_vector(2),
					b  => input_vector(3),
					a  => input_vector(4),
					
					-- order of output - decision
					decision => output_vector(0));
end DutWrap;
