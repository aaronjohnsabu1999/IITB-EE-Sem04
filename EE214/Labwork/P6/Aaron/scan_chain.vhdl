----------------------------------------
-- Scan Chain Module : WEL Lab
-- Author : Raunak Gupta, Soumik Sarkar
-- Date : 20/3/2016
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Scan_Chain is
  generic (
    in_pins	: integer;									-- Number of input pins
    out_pins	: integer								-- Number of output pins
 );
  port (
    TDI		: in std_ulogic;							-- Test Data In
    TDO		: out std_ulogic;							-- Test Data Out
    TMS		: in std_ulogic;							-- TAP controller signal
    TCLK		: in std_ulogic;							-- Test clock
    TRST		: in std_ulogic;							-- Test reset
    dut_in	: out unsigned(in_pins-1 downto 0);	-- Input for the DUT
    dut_out	: in unsigned(out_pins-1 downto 0)	-- Output from the DUT
    );
end Scan_Chain;

architecture behave of Scan_Chain is

component Scan_reg is												-- register as a component
  generic (
    length	: integer												-- length of the register
    );
  port (
    clock, reset	: in std_ulogic;								-- clock and reset input
    PI				: in  unsigned(length-1 downto 0);  	-- parallel data input
    PO				: out  unsigned(length-1 downto 0);		-- parallel data output
    SI				: in std_ulogic ;								-- serial data input
    SO				: out std_ulogic;								-- serial data output
    L1_en, L2_en	: in std_ulogic;								-- Enable signal for two flip-flops
    cap_shft		: in std_ulogic;								-- Capture / Shift signal
    sel_reg			: in std_ulogic								-- Select register
    );
end component;

signal connct_reg : std_ulogic;
signal L1_en, L2_en, cap_shft, sel_reg : std_ulogic;
signal unused: unsigned(out_pins-1 downto 0);
type MyState is (s_idle, s_DR, s_capture, s_shift, s_update);
signal current_state, next_state : MyState;

begin	--behave


	In_Reg  : Scan_reg generic map (in_pins) port map (TCLK, TRST, to_unsigned(0, in_pins), dut_in, TDI, connct_reg, L1_en, L2_en, cap_shft, sel_reg);
																									----my edit----
	Out_Reg : Scan_reg generic map (out_pins) port map (TCLK, TRST, dut_out, unused, connct_reg, TDO, L1_en, L2_en, cap_shft, sel_reg);
																									
	TAP_Controller_trans : process(TCLK, TRST)
	begin
		if TRST = '1' then
			current_state <= s_idle;
		elsif TCLK'event and TCLK = '1' then
			current_state <= next_state;
		end if;
	end process TAP_Controller_trans;
	
	TAP_Controller_out : process(current_state, TMS, TRST)
	begin
	   L1_en <= '0';
	   L2_en <= '0';
	   cap_shft <= '0';
	   sel_reg <= '0';
		next_state <=  current_state;
		if TRST = '0' then
			case current_state is
				when s_idle =>
					L1_en <= '0';
						L2_en <= '0';
						cap_shft <= '0';
						sel_reg <= '1';
					if TMS = '1' then
						next_state <= s_DR;
					else
						next_state <= s_idle;
					end if;
				when s_DR =>
					if TMS = '0' then
						next_state <= s_capture;
						L1_en <= '1';
						L2_en <= '0';
						cap_shft <= '0';
						sel_reg <= '1';
					else
						next_state <= s_DR;
						L1_en <= '0';
						L2_en <= '0';
						cap_shft <= '0';
						sel_reg <= '1';
					end if;
				when s_capture =>
					if ( TMS = '0' ) then
						next_state <= s_shift;
						L1_en <= '1';
						L2_en <= '0';
						cap_shft <= '1';
						sel_reg <= '1';
					else
						next_state <= s_update;
						L1_en <= '0';
						L2_en <= '1';
						cap_shft <= '0';
						sel_reg <= '1';
					end if;
				when s_shift =>
					if TMS = '1' then
						next_state <= s_update;
						L1_en <= '0';
						L2_en <= '1';
						cap_shft <= '0';
						sel_reg <= '1';
					else
						next_state <= s_shift;
						L1_en <= '1';
						L2_en <= '0';
						cap_shft <= '1';
						sel_reg <= '1';
					end if;
				when s_update =>
					L1_en <= '0';
					L2_en <= '0';
					cap_shft <= '0';
					sel_reg <= '1';
					next_state <= s_idle;
			end case;
		end if;
	end process TAP_Controller_out;

end architecture behave;
