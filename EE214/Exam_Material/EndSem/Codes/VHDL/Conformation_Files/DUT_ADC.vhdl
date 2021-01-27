library ieee;
use ieee.std_logic_1164.all;
entity DUT is
	port(input_vector: in  std_logic_vector(10 downto 0);
		output_vector: out std_logic_vector(10 downto 0));
end entity DUT;

architecture DutWrap of DUT is
	component ADC is
		port(clk	: in  std_logic;
			INTR	: in  std_logic;
			RST 	: in  std_logic;
			DATA	: in  std_logic_vector(7 downto 0);
			DAC		: out std_logic_vector(7 downto 0);
			CS,RD,WR: out std_logic);
	end component;
begin
	ADC_1: ADC port map(
		RST  => input_vector (10),
		clk  => input_vector (9),
		INTR => input_vector (8),
		DATA => input_vector (7 downto 0),
		CS   => output_vector(10),
		RD   => output_vector(9),
		WR   => output_vector(8),
		DAC  => output_vector(7 downto 0)
	);
end DutWrap;