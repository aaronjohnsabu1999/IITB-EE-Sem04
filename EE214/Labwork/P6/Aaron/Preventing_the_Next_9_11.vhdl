library ieee;
use ieee.std_logic_1164.all;

entity PTN911 is
   port (u: in std_logic_vector(7 downto 0); y: out std_logic; r, clk: in std_logic);
end entity;

architecture Behave of PTN911 is
	component PTN911B is
		port (u: in std_logic_vector(7 downto 0); y1: out std_logic; r, clk: in std_logic);
	end component;
	component PTN911K is
		port (u: in std_logic_vector(7 downto 0); y2: out std_logic; r, clk: in std_logic);
	end component;
	component PTN911G is
		port (u: in std_logic_vector(7 downto 0); y3: out std_logic; r, clk: in std_logic);
	end component;
	component PTN911T is
		port (u: in std_logic_vector(7 downto 0); y4: out std_logic; r, clk: in std_logic);
	end component;
	signal Y1, Y2, Y3, Y4 : std_logic;
	begin
		ptnb: PTN911B port map(u => u; y1 => Y1; r => r; clk => clk);
		ptnk: PTN911K port map(u => u; y2 => Y2; r => r; clk => clk);
		ptng: PTN911G port map(u => u; y3 => Y3; r => r; clk => clk);
		ptnt: PTN911T port map(u => u; y4 => Y4; r => r; clk => clk);
		y <= Y1 or Y2 or Y3 or Y4;
end Behave;