library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity ShiftAndAdd is 
	port(a, b				: in  std_logic_vector(3 downto 0);
		Start, clk, reset	: in  std_logic; 
		p					: out std_logic_vector(7 downto 0); 
		Done				: out std_logic);
end entity;
architecture Struct of ShiftAndAdd is
	type 	FsmState is (IDLE, WORKS, DONES);
	
	signal 	fsm_state: 	FsmState;
	signal 	R: 			std_logic_vector(7 downto 0);
	signal 	T: 			std_logic_vector(2 downto 0);
	signal 	Count: 		std_logic_vector(1 downto 0);

	constant Z32: std_logic_vector(31 downto 0) := (others => '0');

begin 
	process(clk, reset, fsm_state, R, T, Count, a, b)
		variable next_counter_var: std_logic_vector(31 downto 0);
		variable next_fsm_state_var: FsmState;
		variable Done_var: std_logic;
		variable sub_A, sub_B, sub_Result: std_logic_vector(31 downto 0);
		variable use_sub_var: std_logic;
	begin
		next_fsm_state_var := fsm_state;
		Done_var := '0';
		--   Note: here the register transfers are identified using the variables update_counter_var, sub_A, sub_B.
		case fsm_state is
			when IDLE => 
				if (Start = '1') then
					next_fsm_state_var := WORKS;
					R(7) <= '0';
					R(2 downto 0) <= "000";
					if(b(0) = '1') then
						R(6 downto 3) <= a(3 downto 0);
					else
						R(6 downto 3) <= "0000";
					end if;
					T <= b(3 downto 1); Count <= "00";
				else
					next_fsm_state_var := IDLE;
				end if;
			when WORKS => 
				if (Count(0) = '1' and Count(1) = '1') then
					next_fsm_state_var := DONES;
					p <= R(7 downto 0);
				else
					next_fsm_state_var := WORKS;
					if(T(0) = '1') then
						R(7 downto 3) <= std_logic_vector(unsigned('0' & R(7 downto 4)) + unsigned('0' & a(3 downto 0)));
					else
						R(6 downto 3) <= R(7 downto 4);
					end if;
					R(2 downto 0) <= R(3 downto 1);
					T(2 downto 0) <= '0' & (T(2 downto 1));				-- concatenate '0' and T(2 downto 1)
					Count <= std_logic_vector(unsigned(Count) + 1);
				end if;
			when DONES => 
				Done_var := '1';
				next_fsm_state_var := IDLE;
		end case;
	
		-- Done is an output of the FSM
		Done <= Done_var;
		
		-- update state, registers.
		if(clk'event and clk='1') then
			if(reset = '1') then
				fsm_state <= IDLE;
			else
				fsm_state <= next_fsm_state_var;
			end if;
		end if;
	end process;
	
end Struct;