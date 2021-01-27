-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component Four_bit_Adder is
     port(A1, A2, A3, A4, B1, B2, B3, B4: in std_logic; S1, S2, S3, S4: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Four_bit_Adder
			port map (
					-- order of inputs A4 A3 A2 A1 B4 B3 B2 B1
					A4  => input_vector(7),
					A3  => input_vector(6),
					A2  => input_vector(5),
					A1  => input_vector(4),
					B4  => input_vector(3),
					B3  => input_vector(2),
					B2  => input_vector(1),
					B1  => input_vector(0),
                                        -- order of outputs S4 S3 S2 S1
					S4 => output_vector(3),
					S3 => output_vector(2),
					S2 => output_vector(1),
					S1 => output_vector(0));
end DutWrap;

