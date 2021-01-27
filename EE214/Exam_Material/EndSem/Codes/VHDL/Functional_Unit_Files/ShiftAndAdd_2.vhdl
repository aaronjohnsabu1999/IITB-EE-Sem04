library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ShiftAndAddMultiplier is
	port (a, b: in std_logic_vector(3 downto 0); p: out std_logic_vector(7 downto 0);
		Start: in std_logic; Done: out std_logic;
		reset,clk: in std_logic);
end entity ShiftAndAddMultiplier;


architecture RTL of ShiftAndAddMultiplier is
	-- registers.
	signal Count: std_logic_vector(1 downto 0);
	signal T: std_logic_vector(2 downto 0);
	signal R,p_reg: std_logic_vector(7 downto 0);
	
	-- fsm-state.
	type FsmState is (IDLE, WORKS, DONES);
	signal fsm_state: FsmState;
begin
	-- State machine 
	process(clk,reset, fsm_state, a,b, Start)
		variable next_Count_var: std_logic_vector(1 downto 0);
		variable next_T_var: std_logic_vector(2 downto 0);
		variable next_R_var: std_logic_vector(7 downto 0);
		variable next_p_var: std_logic_vector(7 downto 0);
		variable next_fsm_state_var: FsmState;
		variable current_partial_product_var: std_logic_vector(3 downto 0);
		variable Done_var: std_logic;
	begin
		-- default values.
		next_T_var := T;
		next_R_var := R;
		--
                -- p_reg has been introduced because
		-- in vhdl it is not possible to read
		-- an output port.
		--
		next_p_var := p_reg;
		next_Count_var := Count;
		Done_var := '0';
		next_fsm_state_var := fsm_state;


		case fsm_state is 
			when IDLE =>
				if(Start = '1') then
					next_R_var(7) := '0';
					if (b(0) = '1') then
						next_R_var(6 downto 3) := a;
					else
						next_R_var(6 downto 3) := (others => '0');
					end if;
					next_T_var := b(3 downto 1);
					next_Count_var := (others => '0');
					next_fsm_state_var := WORKS;
				end if;
			when WORKS =>
				if(unsigned(Count) < 3) then

					-- current partial product
					if (T(0) = '1') then
						current_partial_product_var := a;
					else
						current_partial_product_var := (others => '0');
					end if;

					-- 4-bit addition
					next_R_var(6 downto 3) :=
						std_logic_vector(unsigned(current_partial_product_var) +
									unsigned(R(7 downto 4)));
					-- carry out of the addition above.
					next_R_var(7) := 
						(current_partial_product_var(3) and R(7)) or
							((current_partial_product_var(3) or R(7)) and (not next_R_var(6)));

					next_R_var(2 downto 0) := R(3 downto 1);
				
					-- shift right.
					next_T_var := std_logic_vector(shift_right(unsigned(T), 1));

					-- increment count.
					next_Count_var := std_logic_vector(unsigned(Count) + 1);
				else
					next_p_var := R(7 downto 0);
					next_fsm_state_var := DONES;
				end if;	
			when DONES =>
				Done_var := '1';
				next_fsm_state_var := IDLE;
		end case;

		Done <= Done_var;

		if(clk'event and clk = '1') then
			if(reset = '1') then
				fsm_state <= IDLE;
			else
				fsm_state <= next_fsm_state_var;

				Count <= next_Count_var;
				R <= next_R_var;	
				T <= next_T_var;
				p <= next_p_var;
			end if;
		end if;
	end process;
end RTL;