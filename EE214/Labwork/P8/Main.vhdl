library ieee;
use ieee.std_logic_1164.all;
entity Main is
  port(CLK: in std_logic; r: in std_logic; 
      interrupt: in std_logic; DATA: in std_logic_vector(7 downto 0);
      DAC: out std_logic_vector(7 downto 0); CS, RD, WR: out std_logic);
end entity Main;

architecture Struct of Main is
  component Filter is
	port(CLK, RST: in std_logic; DAC: in std_logic_vector(7 downto 0), output: out std_logic_vector(7 downto 0));
  end component Filter;
  component ADC is
    port (CLK: in std_logic; r: in std_logic; 
      interrupt: in std_logic; DATA: in std_logic_vector(7 downto 0);
      DAC: out std_logic_vector(7 downto 0); CS, RD, WR: out std_logic);
  end component;
  component Counter50 is
    port(CLK, RST: in std_logic; output: out std_logic_vector(7 downto 0));
  end component Counter50;
  signal CLK2: std_logic; signal temp: std_logic_vector(7 downto 0);
begin
  cnt:	Counter50 port map(CLK => CLK, RST => RST, output => CLK2);
  adc1:	ADC port map(CLK => CLK, r => RST, interrupt => interrupt, DATA => DATA, DAC => temp, CS => CS, RD => RD, WR => WR);
  flt1:	Filter port map(CLK => CLK2, RST => r, DAC => temp, output => DAC);
end Struct;