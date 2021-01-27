library ieee;
use ieee.std_logic_1164.all;

entity Fsm is
   port (r,u: in std_logic; y: out std_logic; clk: in std_logic);
end entity;

architecture Behave of Fsm is
  signal q2, q1, q0: std_logic;
begin

  process(r,u,q2,q1,q0,clk)
     -- current state.
     variable q_var : std_logic_vector(2 downto 0);
     -- output
     variable y_var: std_logic;
     -- next-state
     variable nq_var : std_logic_vector(2 downto 0);
  begin
     q_var(2) := q2; q_var(1) := q1; q_var(0) := q0;
     nq_var := q_var; y_var := '0';
     
     -- compute next-state, output
     case q_var is
       when "000" =>					-- phi - 000
          if (u = '1') then 
             nq_var := "001";		-- a - 001
          else 
             nq_var := "010";		-- b - 010
          end if;
       when "001" =>
          if (u = '1') then 
             nq_var := "001";		-- a - 001
          else 
             nq_var := "011";		-- ab - 011
          end if;
       when "010" =>
          if (u = '1') then 
             nq_var := "100";		-- ba - 100
		  else 
             nq_var := "010";		-- b - 010
          end if;
	   when "011" =>
          if (u = '1') then 
             nq_var := "101";		-- aba - 101
		  else 
             nq_var := "010";		-- b - 010
          end if;
	   when "100" =>
          if (u = '1') then 
             nq_var := "001";		-- a - 001
		  else 
             nq_var := "110";		-- bab - 110
          end if;
	   when "101" =>
          if (u = '1') then 
             nq_var := "001";		-- a - 001
		  else 
             nq_var := "110";		-- bab - 110
			 y_var  := '1';
          end if;
	   when "110" =>
          if (u = '1') then 
             nq_var := "101";		-- aba - 101
		  else 
             nq_var := "010";		-- b - 010
          end if;
       when others => null;
     end case;
  
     -- y(k)
     y <= y_var;
  
     -- q(k+1) = nq(k)
     if(clk'event and clk = '1') then
          if(r = '1') then
             q2 <= '0'; q1 <= '0'; q0 <= '0';
          else
			 q2 <= nq_var (2);
             q1 <= nq_var (1);
             q0 <= nq_var (0);
          end if;
     end if;
  end process;

end Behave;