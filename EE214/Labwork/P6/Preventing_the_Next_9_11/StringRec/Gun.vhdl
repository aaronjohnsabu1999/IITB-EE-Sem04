library ieee;
use ieee.std_logic_1164.all;

entity gun is
   port (u1: in std_logic_vector(7 downto 0); y1: out std_logic; r1, clk: in std_logic);
end entity;

architecture Behave of gun is
  type InputSymbol  is (RST, g, u, n, none);
  signal input_symbol: InputSymbol;

  function InputSymbolDecode (r1: std_logic; x1: std_logic_vector(7 downto 0))
	return  InputSymbol is
      variable ret_var: InputSymbol;
  begin
      ret_var := RST;
      if(r1='0') then
	if(x1 = "01100111") then
           ret_var := g;
        elsif(x1 = "01110101") then
           ret_var := u;
	elsif(x1 = "01101110") then
           ret_var := n;
	else
	   ret_var := none;
        end if;
     end if;
     return ret_var;
  end function InputSymbolDecode;

  type OutputSymbol is (y,n);
  signal output_symbol: OutputSymbol;
  function OutputSymbolEncode (op: OutputSymbol)
	return std_logic is
    variable ret_var: std_logic;
  begin
    ret_var := '0';
    if (op = y)  then
      ret_var := '1';
    end if;
    return(ret_var);
  end function OutputSymbolEncode;

  type StateSymbol  is (Reset,g1,gu);
  signal fsm_state_symbol: StateSymbol;


begin
  -- decode input..
  input_symbol <= InputSymbolDecode(r1,u1);

  -- encode output...
  y1 <= OutputSymbolEncode(output_symbol);

  process(input_symbol, fsm_state_symbol, clk)
     variable nq_var : StateSymbol;
     variable y_var  : OutputSymbol;
  begin
     nq_var := fsm_state_symbol; 
     y_var  := n;

     -- compute next-state, output
     case fsm_state_symbol is
       when Reset =>
          if (input_symbol = g) then
             nq_var := g1;
          else
             nq_var := Reset;
          end if;
       when g1 =>
          if (input_symbol = u) then
             nq_var := gu;
          else
             nq_var := g1;
          end if;
       when gu =>
          if (input_symbol = n) then
             nq_var := Reset;
	     y_var := y;
          else
             nq_var := gu;
          end if;
       
       when others => null;
     end case;
  
     -- y(k)
     output_symbol <= y_var;
  
     -- q(k+1) = nq(k)
     if(clk'event and clk = '1') then
          if (input_symbol = RST) then
             fsm_state_symbol <= Reset;
          else
             fsm_state_symbol <= nq_var;
          end if;
     end if;

  end process;

end Behave;


