library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CountDownTimer is
   port (Start: in std_logic;
         Count_in: in std_logic_vector(31 downto 0);
         Done: out std_logic;
         clk, reset : in std_logic);
end entity;


-- a better implementation? uses only one subtractor.
architecture Behave of CountDownTimer is
   -- Q
   type FsmState is (IDLE, DECR, DONESTATE);
   signal fsm_state: FsmState;

   -- R
   signal counter: std_logic_vector(31 downto 0);

   -- useful constant.
   constant Z32: std_logic_vector(31 downto 0) := (others => '0');
begin

  process(clk, reset, fsm_state, counter, Start)
    variable next_counter_var: std_logic_vector(31 downto 0);
    variable next_fsm_state_var: FsmState;
    variable Done_var: std_logic;

    -- inputs to subtractor, result from subtractor.
    variable sub_A, sub_B, sub_Result: std_logic_vector(31 downto 0);

    -- flag to indicate that the counter is to be updated.
    variable use_sub_var: std_logic;

  begin
    -- default values.
    next_counter_var := counter;
    next_fsm_state_var := fsm_state;
    Done_var := '0';
    use_sub_var := '0';

    -- delta, mu, lambda functions.
    --   Note: here the register transfers are identified
    --      using the variables update_counter_var, sub_A, sub_B.
    case fsm_state is
       when IDLE => 
            if (Start = '1') then
                  next_fsm_state_var := DECR;
                  sub_A := count_in;
                  sub_B := std_logic_vector(to_unsigned(1,32));
                  use_sub_var := '1';
            end if;
       when DECR => 
            if (counter = Z32) then
                  next_fsm_state_var := DONESTATE;
                  sub_A := counter;
                  sub_B := std_logic_vector(to_unsigned(1,32));
                  use_sub_var := '1';
            end if;
       when DONESTATE => 
            Done_var := '1';
            if (Start = '1') then
                  next_fsm_state_var := DECR;
                  sub_A := count_in;
                  sub_B := std_logic_vector(to_unsigned(1,32));
                  use_sub_var := '1';
            end if;
    end case;
                   
    -- subtractor.
    sub_result := std_logic_vector(unsigned(sub_A) - unsigned(sub_B));

    -- update next-counter 
    if(use_sub_var = '1') then
      next_counter_var := sub_result;
    end if;

    -- Done is an output of the FSM
    Done <= Done_var;

    -- update state, registers.
    if(clk'event and clk='1') then
        if(reset = '1') then
           fsm_state <= IDLE;
        else
           fsm_state <= next_fsm_state_var;       
	   counter   <= next_counter_var;
        end if;
    end if;
  end process;

end Behave;