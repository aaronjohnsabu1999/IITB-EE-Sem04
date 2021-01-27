library ieee;
use ieee.std_logic_1164.all;
entity FSM is
	port (RESET, u: in std_logic; y: out std_logic; CLK: in std_logic);
end entity;
architecture Struct of FSM is
	signal q2, q1, q0: std_logic;
begin
	process(RESET, u, q2, q1, q0, CLK)						-- u = input signal, qi = present state
		-- current state.
		variable q_var : std_logic_vector(2 downto 0);
		-- output
		variable y_var: std_logic;
		-- next-state
		variable nq_var : std_logic_vector(2 downto 0);
	begin
		q_var(2) := q2; q_var(1) := q1; q_var(0) := q0;		-- initialize q_var to present state
		nq_var := q_var;
		y_var := '0';										-- initialize y_var to present output (0)

		-- compute next-state, output
		case q_var is
			when "000" =>							-- state '000'
				if (u = '1') then 
					nq_var := "001";				-- goto state '001'
				else 
					nq_var := "010";				-- goto state '010'
				end if;
			when "001" =>							-- state '001'
				if (u = '1') then 
					nq_var := "001";				-- remain in state '001'
				else 
					nq_var := "011";				-- goto state '011'
				end if;
			when "010" =>							-- state '010'
				if (u = '1') then 
					nq_var := "100";				-- goto state '100'
				else 
					nq_var := "010";				-- remain in state '010'
				end if;
			when "011" =>							-- state '011'
				if (u = '1') then 
					nq_var := "101";				-- goto state '101'
				else 
					nq_var := "010";				-- goto state '010'
				end if;
			when "100" =>							-- state '100'
				if (u = '1') then 
					nq_var := "001";				-- goto state '001'
				else 
					nq_var := "110";				-- goto state '110'
				end if;
			when "101" =>							-- state '101'
				if (u = '1') then 
					nq_var := "001";				-- goto state '001'
				else 
					nq_var := "110";				-- goto state '110'
					y_var  := '1';					-- set output to HIGH
				end if;
			when "110" =>							-- state '110'
				if (u = '1') then 
					nq_var := "101";				-- goto state '101'
				else 
					nq_var := "010";				-- goto state '010'
				end if;
			when others => null;					-- no other state
		end case;

		-- y(k)
		y <= y_var;									-- set y_var to output
		
		-- q(k+1) = nq(k)
		if(clk'event and clk = '1') then			-- at rising edge
			if(RESET = '1') then
				q2 <= '0'; q1 <= '0'; q0 <= '0';	-- if RESET is HIGH, goto state '000'
			else
				q2 <= nq_var(2);
				q1 <= nq_var(1);
				q0 <= nq_var(0);					-- if RESET is LOW, goto described state
			end if;
		end if;
	end process;

end Struct;