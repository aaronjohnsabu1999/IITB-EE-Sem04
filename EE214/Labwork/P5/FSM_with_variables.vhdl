library ieee;
use ieee.std_logic_1164.all;

entity Fsm is
   port (r,u: in std_logic; y: out std_logic; clk: in std_logic);
end entity;

architecture Behave of Fsm is
  signal q1, q0: std_logic;
begin

  process(r,u,q1,q0, clk)
     -- current state.
     variable q_var : std_logic_vector(1 downto 0);
     -- output
     variable y_var: std_logic;
     -- next-state
     variable nq_var : std_logic_vector(1 downto 0);
  begin
     q_var(1) := q1; q_var(0) := q0;
     nq_var := q_var; y_var := '0';
     
     -- compute next-state, output
     case q_var is
       when "00" =>
          if (u = '1') then 
             nq_var := "01";
          else 
             nq_var := "10";
          end if;
       when "01" =>
          if (u = '1') then 
             nq_var := "10";
          else 
             nq_var := "00";
          end if;
       when "10" =>
          if (u = '1') then 
             nq_var := "00";
             y_var  := '1';
          else 
             nq_var := "01";
          end if;
       when others => null;
     end case;
  
     -- y(k)
     y <= y_var;
  
     -- q(k+1) = nq(k)
     if(clk'event and clk = '1') then
          if(r = '1') then
             q1 <= '0'; q0 <= '0';
          else
             q1 <= nq_var (0);
             q0 <= nq_var (1);
          end if;
     end if;
  end process;

end Behave;

