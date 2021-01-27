library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity ShiftByOne  is
  port (X: in std_logic_vector(7 downto 0); K: in std_logic; S: out std_logic_vector(7 downto 0));
end entity ShiftByOne;
architecture Struct of ShiftByOne is
begin
S(7) <= X(6) when K='1' else '0';
S(6) <= X(5) when K='1' else X(7);
S(5) <= X(4) when K='1' else X(6);
S(4) <= X(3) when K='1' else X(5);
S(3) <= X(2) when K='1' else X(4);
S(2) <= X(1) when K='1' else X(3);
S(1) <= X(0) when K='1' else X(2);
S(0) <= '0'  when K='1' else X(1);
end Struct;
