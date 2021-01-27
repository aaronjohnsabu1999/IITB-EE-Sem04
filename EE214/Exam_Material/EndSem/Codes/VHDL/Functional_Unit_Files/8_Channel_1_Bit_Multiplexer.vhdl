library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity MUX8C1B is
  port (S: in std_logic; A, B: in std_logic_vector(7 downto 0); Z: out std_logic_vector(7 downto 0));
end entity MUX8C1B;
architecture Struct of MUX8C1B is
begin
  Z(0) <= (A(0) and S) or (B(0) and not(S));
  Z(1) <= (A(1) and S) or (B(1) and not(S));
  Z(2) <= (A(2) and S) or (B(2) and not(S));
  Z(3) <= (A(3) and S) or (B(3) and not(S));
  Z(4) <= (A(4) and S) or (B(4) and not(S));
  Z(5) <= (A(5) and S) or (B(5) and not(S));
  Z(6) <= (A(6) and S) or (B(6) and not(S));
  Z(7) <= (A(7) and S) or (B(7) and not(S));
end Struct;
