library ieee;
use ieee.std_logic_1164.all;

entity bomb is 
	port (u1: in std_logic_vector(7 downto 0); y1: out std_logic; r1, clk: in std_logic);
end entity;

architecture bomb_behav of bomb is
type InputSymbol is (RST,b,o,m,none);
signal input_symbol: InputSymbol;


--InputSymbolDecode
function InputSymbolDecode(r1:std_logic;x1:std_logic_vector(7 downto 0))
return InputSymbol is 
variable ret_var: InputSymbol;
begin
 ret_var:=none;
 if(r1='1') then ret_var:=RST; end if;
if(r1='0') then
 if(x1="01100010") then ret_var:=b; end if;
 if(x1="01101111") then ret_var:=o; end if;
 if(x1="01101101") then ret_var:=m; end if;
end if;
 return(ret_var); 
end function InputSymbolDecode;


type OutputSymbol is (y,n);
signal output_symbol: OutputSymbol;
 --OutputSymbolEncode

function OutputSymbolEncode(op: OutputSymbol)
return std_logic is
variable ret_var: std_logic;
begin
 if(op=y) then ret_var:='1'; end if;
 if(op=n) then ret_var:='0'; end if;
 return (ret_var);
end function OutputSymbolEncode;


--define the states
--states are non-overlapping - i.e. bombomb does not ouptut y twice
type StateSymbol is (rst_state,b_state,bo_state,bom_state);
signal fsm_state_symbol: StateSymbol;

--now begin the architecture

begin
  -- decode input..
  input_symbol <= InputSymbolDecode(r1,u1);

  -- encode output...
  y1 <= OutputSymbolEncode(output_symbol);

  process(input_symbol, fsm_state_symbol, clk)
     variable nq_var : StateSymbol;
     variable op_var  : OutputSymbol;
  begin
     nq_var := fsm_state_symbol; 
     op_var  := n;

     -- compute next-state, output
     case fsm_state_symbol is
	when rst_state=>
	if(input_symbol=b) then nq_var:=b_state;
	else nq_var:=rst_state;	end if;

	when b_state=>
	if(input_symbol=o) then nq_var:=bo_state;
	else nq_var:=b_state;end if;

	when bo_state=>
	if(input_symbol=m) then nq_var:=bom_state;
	else nq_var:=bo_state;end if;

	when bom_state=>
	if(input_symbol=b) then nq_var:=rst_state; op_var:=y;
	else nq_var:=bom_state;end if;

	when others  => null;
     end case;
  -- y(k)
     output_symbol <= op_var;
  
     -- q(k+1) = nq(k)
     if(clk'event and clk = '1') then
          if (input_symbol = RST) then
             fsm_state_symbol <= rst_state;
          else
             fsm_state_symbol <= nq_var;
          end if;
     end if;

  end process;

end bomb_behav;