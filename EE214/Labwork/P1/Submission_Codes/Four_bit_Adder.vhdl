library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Four_bit_Adder  is
  port (A1, A2, A3, A4, B1, B2, B3, B4: in std_logic; S1, S2, S3, S4, Cout: out std_logic);
end entity Four_bit_Adder;
architecture Struct of Four_bit_Adder is
  signal C1, C2, C3: std_logic;
begin
  -- component instances
  ha: HALF_ADDER port map (A => A1, B => B1, S => S1, C => C1);
  fa1: FULL_ADDER port map (A => A2, B => B2, Cin => C1, S => S2, Cout => C2);
  fa2: FULL_ADDER port map (A => A3, B => B3, Cin => C2, S => S3, Cout => C3);
  fa3: FULL_ADDER port map (A => A4, B => B4, Cin => C3, S => S4, Cout => Cout);
  
end Struct;
