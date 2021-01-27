library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Multiplexer1 is
  port (A, B, C, D: in std_logic_vector(7 downto 0); OP: in std_logic_vector(1 downto 0); Z: out std_logic_vector(7 downto 0));
end entity Multiplexer1;
architecture Struct of Multiplexer1 is
begin
  Z(0) <= (A(0) and not(OP(0)) and not(OP(1))) or (B(0) and (OP(0)) and not(OP(1))) or (C(0) and not(OP(0)) and (OP(1))) or (D(0) and (OP(0)) and (OP(1)));
  Z(1) <= (A(1) and not(OP(0)) and not(OP(1))) or (B(1) and (OP(0)) and not(OP(1))) or (C(1) and not(OP(0)) and (OP(1))) or (D(1) and (OP(0)) and (OP(1)));
  Z(2) <= (A(2) and not(OP(0)) and not(OP(1))) or (B(2) and (OP(0)) and not(OP(1))) or (C(2) and not(OP(0)) and (OP(1))) or (D(2) and (OP(0)) and (OP(1)));
  Z(3) <= (A(3) and not(OP(0)) and not(OP(1))) or (B(3) and (OP(0)) and not(OP(1))) or (C(3) and not(OP(0)) and (OP(1))) or (D(3) and (OP(0)) and (OP(1)));
  Z(4) <= (A(4) and not(OP(0)) and not(OP(1))) or (B(4) and (OP(0)) and not(OP(1))) or (C(4) and not(OP(0)) and (OP(1))) or (D(4) and (OP(0)) and (OP(1)));
  Z(5) <= (A(5) and not(OP(0)) and not(OP(1))) or (B(5) and (OP(0)) and not(OP(1))) or (C(5) and not(OP(0)) and (OP(1))) or (D(5) and (OP(0)) and (OP(1)));
  Z(6) <= (A(6) and not(OP(0)) and not(OP(1))) or (B(6) and (OP(0)) and not(OP(1))) or (C(6) and not(OP(0)) and (OP(1))) or (D(6) and (OP(0)) and (OP(1)));
  Z(7) <= (A(7) and not(OP(0)) and not(OP(1))) or (B(7) and (OP(0)) and not(OP(1))) or (C(7) and not(OP(0)) and (OP(1))) or (D(7) and (OP(0)) and (OP(1)));
end Struct;
