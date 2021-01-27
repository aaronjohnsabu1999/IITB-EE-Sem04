library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity MULTIPLEXER12_1 is
  port (B: in std_logic; A: in std_logic_vector(11 downto 0); Z: out std_logic_vector(11 downto 0));
end entity MULTIPLEXER12_1;
architecture Struct of MULTIPLEXER12_1 is
begin
  Z(0)  <= A(0)  and B;
  Z(1)  <= A(1)  and B;
  Z(2)  <= A(2)  and B;
  Z(3)  <= A(3)  and B;
  Z(4)  <= A(4)  and B;
  Z(5)  <= A(5)  and B;
  Z(6)  <= A(6)  and B;
  Z(7)  <= A(7)  and B;
  Z(8)  <= A(8)  and B;
  Z(9)  <= A(9)  and B;
  Z(10) <= A(10) and B;
  Z(11) <= A(11) and B;
end Struct;
