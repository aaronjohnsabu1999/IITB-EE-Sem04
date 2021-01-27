library ieee;
use ieee.std_logic_1164.all;
entity DUT is
  port(input_vector: in std_logic_vector(10 downto 0);
    output_vector: out std_logic_vector(10 downto 0));
end entity DUT;

architecture DutWrap of DUT is
  component Main is
    port (CLK: in std_logic; r: in std_logic; 
      interrupt: in std_logic; DATA: in std_logic_vector(7 downto 0);
      DAC: out std_logic_vector(7 downto 0); CS, RD, WR: out std_logic);
  end component;
begin
  Main1: Main port map(
    CLK => input_vector(9),
    interrupt => input_vector(8),
    DATA => input_vector(7 downto 0),
    r => input_vector(10),
    CS => output_vector(10),
    RD => output_vector(9),
    WR => output_vector(8),
    DAC => output_vector(7 downto 0)
);
end DutWrap;