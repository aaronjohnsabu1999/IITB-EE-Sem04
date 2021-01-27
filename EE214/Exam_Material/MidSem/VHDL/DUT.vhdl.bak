-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  ArithUnit8.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
        output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component ArithUnit8 is
     port (X, Y: in std_logic_vector(7 downto 0); Z: out std_logic_vector(7 downto 0); OP: in std_logic_vector(1 downto 0));
   end component;
begin
   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: ArithUnit8
			port map (
					-- order of inputs OP(1) to OP(0), X(7) to X(0), Y(7) to Y(0)
					Y(0)  => input_vector(0),
					Y(1)  => input_vector(1),
					Y(2)  => input_vector(2),
					Y(3)  => input_vector(3),
					Y(4)  => input_vector(4),
					Y(5)  => input_vector(5),
					Y(6)  => input_vector(6),
					Y(7)  => input_vector(7),
					X(0)  => input_vector(8),
					X(1)  => input_vector(9),
					X(2)  => input_vector(10),
					X(3)  => input_vector(11),
					X(4)  => input_vector(12),
					X(5)  => input_vector(13),
					X(6)  => input_vector(14),
					X(7)  => input_vector(15),
					OP(0) => input_vector(16),
					OP(1) => input_vector(17),
					-- order of outputs Z(7) to Z(0)
					Z(0) => output_vector(0),
					Z(1) => output_vector(1),
					Z(2) => output_vector(2),
					Z(3) => output_vector(3),
					Z(4) => output_vector(4),
					Z(5) => output_vector(5),
					Z(6) => output_vector(6),
					Z(7) => output_vector(7));
end DutWrap;

