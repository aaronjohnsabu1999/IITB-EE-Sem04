library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity main is
	port (u: in std_logic_vector(7 downto 0); y: out std_logic; r, clk: in std_logic);
end entity main;
architecture al of main is
signal A,B,C,D,E,F: std_logic;
begin
ptnb: bomb   port map(u1 => u, r1 => r, clk => clk, y1 => A);
ptnk: knife  port map(u1 => u, r1 => r, clk => clk, y1 => B);
ptng: gun    port map(u1 => u, r1 => r, clk => clk, y1 => C);
ptnt: terror port map(u1 => u, r1 => r, clk => clk, y1 => D);
or11: OR_2   port map(A => A, B => B, Y => E);
or21: OR_2   port map(A => C, B => D, Y => F);
or31: OR_2   port map(A => E, B => F, Y => y);
end al;