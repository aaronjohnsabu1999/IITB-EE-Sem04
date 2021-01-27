-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  ArithUnit8.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(16 downto 0);
        output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component adder_8bit is
		port (a, b : in std_logic_vector (7 downto 0); cin : in std_logic; sum, cout : out std_logic_vector (7 downto 0));
	end component;
begin
   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: adder_8bit
			port map (
					-- order of inputs cin, a(7) to a(0), b(7) to b(0)
					b(0)  => input_vector(0),
					b(1)  => input_vector(1),
					b(2)  => input_vector(2),
					b(3)  => input_vector(3),
					b(4)  => input_vector(4),
					b(5)  => input_vector(5),
					b(6)  => input_vector(6),
					b(7)  => input_vector(7),
					a(0)  => input_vector(8),
					a(1)  => input_vector(9),
					a(2)  => input_vector(10),
					a(3)  => input_vector(11),
					a(4)  => input_vector(12),
					a(5)  => input_vector(13),
					a(6)  => input_vector(14),
					a(7)  => input_vector(15),
					cin   => input_vector(16),
						-- order of outputs sum(7) to sum(0), cout(7) to cout(0)
					cout(0) => output_vector(0),
					cout(1) => output_vector(1),
					cout(2) => output_vector(2),
					cout(3) => output_vector(3),
					cout(4) => output_vector(4),
					cout(5) => output_vector(5),
					cout(6) => output_vector(6),
					cout(7) => output_vector(7),
					sum(0)  => output_vector(8),
					sum(1)  => output_vector(9),
					sum(2)  => output_vector(10),
					sum(3)  => output_vector(11),
					sum(4)  => output_vector(12),
					sum(5)  => output_vector(13),
					sum(6)  => output_vector(14),
					sum(7)  => output_vector(15));
end DutWrap;