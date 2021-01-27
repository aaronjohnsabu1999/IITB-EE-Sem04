library ieee;
use ieee.std_logic_1164.all;
entity FSM is
	port (RESET, u: in std_logic; y: out std_logic; CLK: in std_logic);
end entity;
architecture Struct of FSM is
	type InputSymbol is (RESET, u, CLK);
	signal input_symbol: InputSymbol;
	
	function InputSymbolDecode (RST, u std_logic)
		return InputSymbol is
		variable ret_var: InputSymbol;
	begin
		ret_var := RESET;
		if(r = '0') then
			ret_var := UP;
		else
			ret_var := DOWN;
		end if;
		return ret_var;
	end function InputSymbolDecode;
	
	type OutputSymbol is (NO, YES);
	signal output_symbol: OutputSymbol;
	
	function OutputSymbolEncode(x: OutputSymbol)
		return std_logic is
		variable ret_var: std_logic;
	begin
		ret_var := '0';
		if(x = YES)
			then ret_var := '1';
		end if;
		return ret_var;
	end function OutputSymbolEncode;
	
	type StateSymbol is (A, B, C, D, E, F, G);
	signal fsm_state_symbol: StateSymbol;
	
begin
	-- decode input
	input_symbol <= InputSymbolDecode(RESET, u);
	
	-- encode output
	y <= OutputSymbolEncode(output_symbol);
	
	process(input_symbol, fsm_state_symbol, CLK)						--
		-- output
		variable y_var : OutputSymbol;
		-- next-state
		variable nq_var: StateSymbol;
	begin
		nq_var := fsm_state_symbol;
		y_var  := NO;
		
		-- compute next-state, output
		case fsm_state_symbol is
			when A =>							-- state A
				if (input_symbol = UP) then 
					nq_var := B;				-- goto state B
				else 
					nq_var := C;				-- goto state C
				end if;
			when B =>							-- state B
				if (input_symbol = UP) then 
					nq_var := B;				-- remain in state B
				else 
					nq_var := D;				-- goto state D
				end if;
			when C =>							-- state C
				if (input_symbol = UP) then 
					nq_var := E;				-- goto state E
				else 
					nq_var := C;				-- remain in state C
				end if;
			when D =>							-- state D
				if (input_symbol = UP) then 
					nq_var := F;				-- goto state F
				else 
					nq_var := C;				-- goto state C
				end if;
			when E =>							-- state E
				if (input_symbol = UP) then 
					nq_var := B;				-- goto state B
				else 
					nq_var := G;				-- goto state G
				end if;
			when F =>							-- state F
				if (input_symbol = UP) then 
					nq_var := B;				-- goto state B
				else 
					nq_var := G;				-- goto state G
					y_var  := YES;				-- set output to HIGH
				end if;
			when G =>							-- state G
				if (input_symbol = UP) then 
					nq_var := F;				-- goto state F
				else 
					nq_var := C;				-- goto state C
				end if;
			when others => null;				-- no other state
		end case;

		-- y(k)
		output_symbol <= y_var;									-- set y_var to output
		
		-- q(k+1) = nq(k)
		if(clk'event and clk = '1') then			-- at rising edge
			if(input_symbol = RESET) then
				fsm_state_symbol <= A;				-- if RESET is HIGH, goto state '000'
			else
				fsm_state_symbol <= nq_var;			-- if RESET is LOW, goto described state
			end if;
		end if;
	end process;

end Struct;