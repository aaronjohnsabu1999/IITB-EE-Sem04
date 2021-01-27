library ieee;
use ieee.std_logic_1164.all;
package Gates is
  component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;

  component AND2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND2;

  component NAND2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NAND2;

  component OR2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR2;

  component NOR2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NOR2;

  component XOR2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XOR2;

  component XNOR2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XNOR2;

  component HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
  end component HALF_ADDER;

end package Gates;


library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
   port (A: in std_logic; Y: out std_logic);
end entity INVERTER;

architecture Equations of INVERTER is
begin
   Y <= not A;
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity AND2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity AND2;

architecture Equations of AND2 is
begin
   Y <= A and B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NAND2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NAND2;

architecture Equations of NAND2 is
begin
   Y <= not (A and B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity OR2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity OR2;

architecture Equations of OR2 is
begin
   Y <= A or B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NOR2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NOR2;

architecture Equations of NOR2 is
begin
   Y <= not (A or B);
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity XOR2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XOR2;

architecture Equations of XOR2 is
begin
   Y <= A xor B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity XNOR2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XNOR2;

architecture Equations of XNOR2 is
begin
   Y <= not (A xor B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
end entity HALF_ADDER;

architecture Equations of HALF_ADDER is
begin
   S <= (A xor B);
   C <= (A and B);
end Equations;
  
