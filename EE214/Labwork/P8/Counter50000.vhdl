library ieee;
use ieee.std_logic_1164.all;
entity Counter50 is
  port(CLK, RST: in std_logic; output: out std_logic_vector(7 downto 0));
end entity Counter50;

architecture Struct of Counter50 is
  signal Count1: std_logic_vector(15 downto 0);
begin
  process(CLK, R, fsm_state)
  begin
    variable Count1_var: std_logic_vector(15 downto 0);
    variable next_fsm_state_var: FsmState;
    begin
      -- default values.
      Count1_var := Count1;
      next_fsm_state_var := fsm_state;
      case fsm_state is
        when OFFSTATE => 
          output := '1';
          if(Count1 = "1100001101010000") then
			next_fsm_state_var := ONSTATE;
          else 
            next_fsm_state_var := OFFSTATE;
            Count1_var := std_logic_vector(unsigned(Count1) + 1);
          end if;
        when ONSTATE => 
          output := '1';
          next_fsm_state_var := OFFSTATE;
    end case;     
    
    if(CLK'event and CLK='1') then
      if(R = '1') then
        fsm_state <= OFFSTATE;
      else
        fsm_state <= next_fsm_state_var;
        Count1 <= Count1_var;
      end if;
    end if;
  end process;

end Struct;