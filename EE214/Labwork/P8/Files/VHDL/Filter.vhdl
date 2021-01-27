library ieee;
use ieee.std_logic_1164.all;
entity Filter is
  port(CLK, RST: in std_logic; DAC: in std_logic_vector(7 downto 0), output: out std_logic_vector(7 downto 0));
end entity Filter;

architecture Struct of Filter is
  signal A, B, C, D, E, F, G, H: std_logic_vector(7 downto 0)
begin
  variable sum: std_logic_vector(10 downto 0);
  begin process(A, B, C, D, E, F, G, H)
    variable a, b, c, d, e, f, g, h: std_logic_vector(7 downto 0) := "00000000";
	variable a1, b1, c1, d1, e1, f1, g1, h1: std_logic_vector(10 downto 0);
	h := G; 	h1 := "000" & h;
	g := F; 	g1 := "000" & g;
	f := E; 	f1 := "000" & f;
	e := D; 	e1 := "000" & e;
	d := C; 	d1 := "000" & d;
	c := B; 	c1 := "000" & c;
	b := A; 	b1 := "000" & b;
	a := DAC; 	a1 := "000" & a;
	sum := (std_logic)((unsigned(a1)+unsigned(b1)+unsigned(c1)+unsigned(d1)+unsigned(e1)+unsigned(f1)+unsigned(g1)+unsigned(h1))/8);
	
    if(CLK'event and CLK='1') then
      if(RST = '1') then
        output <= "00000000";
      else
        output <= sum(7 downto 0);
      end if;
    end if;
  end process;

end Struct;