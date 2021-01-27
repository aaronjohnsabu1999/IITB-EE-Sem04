library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADC is
	port (clk		: in  std_logic;
		RST			: in  std_logic;
        DATA		: in  std_logic_vector(7 downto 0);
		CS,RD,WR	: out std_logic;
		INTR		: in  std_logic;
		DAC			: out std_logic_vector(7 downto 0));
end entity;

architecture Struct of ADC is
	type FsmState is (IDLE, INITIAL, WRI, WRI_DONE, RDI, DONE);
	signal fsm_state: FsmState;
	
	signal R	 	: std_logic_vector(7 downto 0);
	signal Count1	: std_logic_vector(2 downto 0);
	signal Count2	: std_logic_vector(3 downto 0);
	signal Count3	: std_logic_vector(2 downto 0);
	signal Timer 	: std_logic_vector(15 downto 0);
begin
	process(clk, R, fsm_state, Count1, Count2, Count3)
		variable next_fsm_state_var		: FsmState;
		variable CS_var, WR_var, RD_var : std_logic;
		variable Count1_var, Count3_var	: std_logic_vector(2 downto 0);
		variable Count2_var				: std_logic_vector(3 downto 0);
		variable R_var					: std_logic_vector(7 downto 0);
		variable Timer_var				: std_logic_vector(15 downto 0);
	begin
		-- default values.
		count1_var 			:= Count1;
		count2_var 			:= Count2;
		count3_var 			:= Count3;
		next_fsm_state_var 	:= fsm_state;
	
		case fsm_state is
			when IDLE => 
				CS_var 				:= '1';
				WR_var 				:= '1';
				RD_var 				:= '1';
				next_fsm_state_var 	:= INITIAL;
				Timer_var 			:= "0000000000000001";
			when INITIAL => 
				CS_var 				:= '0';
				WR_var 				:= '1';
				RD_var 				:= '1';
				count1_var 			:= "000";
				next_fsm_state_var 	:= WRI;
				Timer_var 			:= std_logic_vector(unsigned(Timer) + 1);
			when WRI => 
				CS_var 				:= '0';
				WR_var 				:= '0';
				RD_var 				:= '1';
				Timer_var 			:= std_logic_vector(unsigned(Timer) + 1);
				if(Count1 = "100") then
					next_fsm_state_var 	:= WRI_DONE;
					Count2_var 			:= "0000";
				else 
					next_fsm_state_var 	:= WRI;
					Count1_var 			:= std_logic_vector(unsigned(Count1) + 1);
				end if;
			when WRI_DONE =>
				CS_var 				:= '0';
				WR_var 				:= '1';
				RD_var 				:= '1';
				Timer_var 			:= std_logic_vector(unsigned(Timer) + 1);
				if(Count2 = "1000")then
					if(INTR = '0') then
						next_fsm_state_var 	:= RDI;
						count3_var 			:= "000";
					else
						next_fsm_state_var 	:= WRI_DONE;
					end if;
				else
					next_fsm_state_var 		:= WRI_DONE;
					Count2_var 				:= std_logic_vector(unsigned(Count2) + 1);
				end if;
			when RDI =>
				CS_var 				:= '0';
				WR_var 				:= '1';
				RD_var 				:= '0';
				Timer_var 			:= std_logic_vector(unsigned(Timer) + 1);
				if(Count3 = "110") then
					next_fsm_state_var 	:= DONE;
					R_var 				:= DATA;
				else 
					next_fsm_state_var 	:= RDI;
					Count3_var 			:= std_logic_vector(unsigned(Count3) + 1);
				end if;  
			when DONE =>
				CS_var				:= '0';
				WR_var 				:= '1';
				RD_var 				:= '1';
				Timer_var 			:= std_logic_vector(unsigned(Timer) + 1);
				if(Timer_var = "1100001101010000")then
					next_fsm_state_var	:= IDLE;
					DAC 				<= R_var;
				end if;
		end case;     
    
		if(clk'event and clk='1') then
			if(RST = '1') then
				fsm_state <= IDLE;
			else
				fsm_state 	<= next_fsm_state_var;
				count1 		<= count1_var;
				count2 		<= count2_var;
				count3 		<= count3_var;
				CS 			<= CS_var;
				WR 			<= WR_var;
				RD 			<= RD_var;
				R 			<= R_var;
				Timer 		<= Timer_var;
			end if;
		end if;
	end process;

end Struct;