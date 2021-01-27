library ieee;
use ieee.std_logic_1164.all;

entity Fsm is
   port (u: in std_logic; y: out std_logic; r, clk: in std_logic);
end entity;

architecture Behave of Fsm is
  type InputSymbol  is (RST,UP,DOWN);
  signal input_symbol: InputSymbol;

  function InputSymbolDecode (r,u: std_logic) 
	return  InputSymbol is
      variable ret_var: InputSymbol;
  begin
      ret_var := RST;
      if(r='0') then
	if(u = '1') then 
           ret_var := UP;
        else 
           ret_var := DOWN;
        end if;
     end if;
     return ret_var;
  end function InputSymbolDecode;

  type OutputSymbol is (NO,YES);
  signal output_symbol: OutputSymbol;
  function OutputSymbolEncode (x: OutputSymbol)
	return std_logic is
    variable ret_var: std_logic;
  begin
    ret_var := '0';
    if (x = YES)  then
      ret_var := '1';
    end if;
    return(ret_var);
  end function OutputSymbolEncode;

  type StateSymbol  is (A,B,C);
  signal fsm_state_symbol: StateSymbol;


begin
  -- decode input..
  input_symbol <= InputSymbolDecode(r,u);

  -- encode output...
  y <= OutputSymbolEncode(output_symbol);

  process(input_symbol, fsm_state_symbol, clk)
     variable nq_var : StateSymbol;
     variable y_var  : OutputSymbol;
  begin
     nq_var := fsm_state_symbol; 
     y_var  := NO;

     -- compute next-state, output
     case fsm_state_symbol is
       when A =>
          if (input_symbol = UP) then
             nq_var := B;
          else
             nq_var := C;
          end if;
       when B =>
          if (input_symbol = UP) then
             nq_var := C;
          else
             nq_var := A;
          end if;
       when C =>
          if (input_symbol = UP) then
             nq_var := A;
             y_var  := YES;
          else
             nq_var := B;
          end if;
       when others => null;
     end case;
  
     -- y(k)
     output_symbol <= y_var;
  
     -- q(k+1) = nq(k)
     if(clk'event and clk = '1') then
          if (input_symbol = RST) then
             fsm_state_symbol <= A;
          else
             fsm_state_symbol <= nq_var;
          end if;
     end if;

  end process;

end Behave;

