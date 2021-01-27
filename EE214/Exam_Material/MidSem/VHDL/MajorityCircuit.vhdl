library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity MajorityCircuit is
  port (a, b, c, d, e: in std_logic; decision: out std_logic);
end entity MajorityCircuit;

architecture Struct of MajorityCircuit is
signal A1, A2, A3, An, B1, B2, B3, Bn, C1, Cn, AB: std_logic;
begin
  andAB:   AND_2 port map(A => a,  B => b,  Y => A1);
  orCD:    OR_2  port map(A => c,  B => d,  Y => A2);
  orA2E:   OR_2  port map(A => A2, B => e,  Y => A3);
  andA1A3: AND_2 port map(A => A1, B => A3, Y => An);
  
  andCD:   AND_2 port map(A => c,  B => d,  Y => B1);
  orAB:    OR_2  port map(A => a,  B => b,  Y => B2);
  orB2E:   OR_2  port map(A => B2, B => e,  Y => B3);
  andB1B3: AND_2 port map(A => B1, B => B3, Y => Bn);
  
  andA2B2: AND_2 port map(A => A2, B => B2, Y => C1);
  andC1E:  AND_2 port map(A => C1, B => e,  Y => Cn);
  orAnBn:  OR_2  port map(A => An, B => Bn, Y => AB);

  orN:     OR_2  port map(A => AB, B => Cn, Y => decision);  
end Struct;
