library ieee;
use ieee.std_logic_1164.all;
entity Main is
	port (reset, a, b: in std_logic; s: out std_logic; clk: in std_logic);
end entity;
architecture Struct of Main is
	signal q1, q0: std_logic;
begin
	process(reset, a, b, q1, q0, clk)				-- a, b = input signals, q1q0 = present state
		-- current state.
		variable q_var : std_logic_vector(1 downto 0);
		-- output
		variable y_var: std_logic;
		-- next-state
		variable nq_var : std_logic_vector(1 downto 0);
	begin
		q_var(1) := q1; q_var(0) := q0;				-- initialize q_var to present state
		nq_var := q_var;
		

		-- compute next-state, output
		case q_var is
			when "00" =>									-- state O
				if(reset = '0') then
					if ((a and b) = '1') then 
						nq_var := "10";					-- goto state CI
						y_var  := '0';						-- s(1 + 1) = 0
					else 
						nq_var := "01";					-- goto state CO
						y_var  := (a or b);				-- s(a + b) = a xor b
					end if;
				else
					nq_var := "00";
					y_var  := '0';
				end if;
			when "01" =>									-- state CO
				if(reset = '0') then
					if ((a and b) = '1') then 
						nq_var := "10";					-- goto state CI
						y_var  := '0';						-- s(1 + 1) = 0
					else 
						nq_var := "01";					-- remain in state CO
						y_var  := (a or b);				-- s(a + b) = a xor b
					end if;
				else
					nq_var := "00";
					y_var  := '0';
				end if;
			when "10" =>									-- state CI
				if(reset = '0') then
					if ((a or b) = '1') then
						nq_var := "10";					-- remain in state CI
						y_var  := (a and b);
					else 
						nq_var := "01";					-- goto state CO
						y_var  := '1';
					end if;
				else
					nq_var := "00";
					y_var  := '1';
				end if;
			when others => null;							-- no other state
		end case;

		-- y(k)
		s <= y_var;											-- set y_var to output
		
		-- q(k+1) = nq(k)
		if(clk'event and clk = '1') then				-- at rising edge
			if(reset = '1') then
				q1 <= '0'; q0 <= '0';					-- if reset is HIGH, goto state '000'
			else
				q1 <= nq_var(1); q0 <= nq_var(0);	-- if reset is LOW, goto described state
			end if;
		end if;
	end process;

end Struct;