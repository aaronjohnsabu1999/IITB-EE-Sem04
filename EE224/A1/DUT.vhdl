library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(15 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
	component Main  is
		port (A, B: in std_logic_vector(7 downto 0); Z: out std_logic_vector(15 downto 0));
	end component Main;
begin
   add_instance: Main
			port map (
					-- order of inputs A(7) to A(0), B(7) to B(0)
					A(7)	=> input_vector(15),
					A(6)	=> input_vector(14),
					A(5)	=> input_vector(13),
					A(4)	=> input_vector(12),
					A(3)	=> input_vector(11),
					A(2)	=> input_vector(10),
					A(1)	=> input_vector(9),
					A(0)	=> input_vector(8),
					B(7)	=> input_vector(7),
					B(6)	=> input_vector(6),
					B(5)	=> input_vector(5),
					B(4)	=> input_vector(4),
					B(3)	=> input_vector(3),
					B(2)	=> input_vector(2),
					B(1)	=> input_vector(1),
					B(0)	=> input_vector(0),
					-- order of outputs Z(15) to Z(0)
					Z(15)	=> output_vector(15),
					Z(14)	=> output_vector(14),
					Z(13)	=> output_vector(13),
					Z(12)	=> output_vector(12),
					Z(11)	=> output_vector(11),
					Z(10)	=> output_vector(10),
					Z(9)	=> output_vector(9),
					Z(8)	=> output_vector(8),
					Z(7)	=> output_vector(7),
					Z(6)	=> output_vector(6),
					Z(5)	=> output_vector(5),
					Z(4)	=> output_vector(4),
					Z(3)	=> output_vector(3),
					Z(2)	=> output_vector(2),
					Z(1)	=> output_vector(1),
					Z(0)	=> output_vector(0));
end DutWrap;