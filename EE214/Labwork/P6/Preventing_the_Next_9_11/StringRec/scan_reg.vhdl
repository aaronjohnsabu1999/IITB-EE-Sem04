----------------------------------------
-- Scan Chain Module : WEL Lab
-- Author : Raunak Gupta, Soumik Sarkar
-- Date : 20/3/2016
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Scan_Reg is
  generic (
    length	: integer			-- length of the register
    );
  port (
    clock, reset	: in std_ulogic;						-- clock and reset input
    PI			: in  unsigned(length-1 downto 0);  		-- parallel data input
    PO			: out  unsigned(length-1 downto 0);		-- parallel data output
    SI			: in std_ulogic ;					-- serial data input
    SO			: out std_ulogic;					-- serial data output
    L1_en, L2_en	: in std_ulogic;						-- Enable signal for two flip-flops
    cap_shft		: in std_ulogic;						-- Capture / Shift signal
    sel_reg		: in std_ulogic						-- Select register
    );
end Scan_Reg;

architecture behave of Scan_Reg is

signal mux1, mux2, L1, L2 : unsigned(length-1 downto 0); 
begin	--behave

	Multiplexor_1 : process (PI, SI, cap_shft, L1)
	begin
		if (cap_shft = '0') then
			mux1 <= PI;
		else
			mux1 <= SI & L1(length-1 downto 1);
		end if;
	end process Multiplexor_1;

	Latch_1 : process (clock, reset)
	begin
		if (clock'event and clock = '1') then
			if (reset = '1') then
				L1 <= unsigned(to_unsigned(0, length));
			elsif (L1_en  = '1' ) then
				L1 <= mux1;
			else
				L1 <= L1;
			end if;
		end if;
	end process Latch_1;

	Latch_2 : process (clock, reset)
	begin
		if (clock'event and clock = '1') then
			if (reset = '1') then
				L2 <= unsigned(to_unsigned(0, length));
			elsif (L2_en  = '1' ) then
				L2 <= L1;
			else
				L2 <= L2;
			end if;
		end if;
	end process Latch_2;

	Multiplexor_2 : process (L2, PI, sel_reg)
	begin
		if (sel_reg = '0') then
			mux2 <= PI;
		else
			mux2 <= L2;
		end if;
	end process Multiplexor_2;

	PO <= mux2;
	SO <= L1(0);

end architecture behave;