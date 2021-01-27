library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Multiply is
  port (A, B: in std_logic_vector(7 downto 0); S: out std_logic_vector(7 downto 0));
end entity Multiply;

architecture Struct of Multiply is
  component Eight_bit_Adder  is
	port (A, B: in std_logic_vector(7 downto 0); Z: out std_logic_vector(7 downto 0));
  end component Eight_bit_Adder;
  component ShiftByOne  is
   port (X: in std_logic_vector(7 downto 0); K: in std_logic; S: out std_logic_vector(7 downto 0));
  end component ShiftByOne;
  component Multiplexer is
	port (B: in std_logic; A: in std_logic_vector(7 downto 0); Z: out std_logic_vector(7 downto 0));
  end component Multiplexer;
  type matrix8x8 is array (0 to 7) of std_logic_vector(7 downto 0);
  signal A1, B1, C1: matrix8x8;
begin
  sbo1: SHIFTBYONE port map(X => A, K => '1', S => A1(0));
  sbo2: SHIFTBYONE port map(X => A1(0), K => '1', S => A1(1));
  sbo3: SHIFTBYONE port map(X => A1(1), K => '1', S => A1(2));
  sbo4: SHIFTBYONE port map(X => A1(2), K => '1', S => A1(3));
  sbo5: SHIFTBYONE port map(X => A1(3), K => '1', S => A1(4));
  sbo6: SHIFTBYONE port map(X => A1(4), K => '1', S => A1(5));
  sbo7: SHIFTBYONE port map(X => A1(5), K => '1', S => A1(6));
  
  mux1: MULTIPLEXER port map(A => A, B => B(0), Z => B1(0));
  mux2: MULTIPLEXER port map(A => A1(0), B => B(1), Z => B1(1));
  mux3: MULTIPLEXER port map(A => A1(1), B => B(2), Z => B1(2));
  mux4: MULTIPLEXER port map(A => A1(2), B => B(3), Z => B1(3));
  mux5: MULTIPLEXER port map(A => A1(3), B => B(4), Z => B1(4));
  mux6: MULTIPLEXER port map(A => A1(4), B => B(5), Z => B1(5));
  mux7: MULTIPLEXER port map(A => A1(5), B => B(6), Z => B1(6));
  mux8: MULTIPLEXER port map(A => A1(6), B => B(7), Z => B1(7));
  
  eba1: EIGHT_BIT_ADDER port map(A => B1(0), B => B1(1), Z => C1(0));
  eba2: EIGHT_BIT_ADDER port map(A => B1(2), B => B1(3), Z => C1(1));
  eba3: EIGHT_BIT_ADDER port map(A => B1(4), B => B1(5), Z => C1(2));
  eba4: EIGHT_BIT_ADDER port map(A => B1(6), B => B1(7), Z => C1(3));
  
  eba5: EIGHT_BIT_ADDER port map(A => C1(0), B => C1(1), Z => C1(4));
  eba6: EIGHT_BIT_ADDER port map(A => C1(2), B => C1(3), Z => C1(5));
  
  eba7: EIGHT_BIT_ADDER port map(A => C1(4), B => C1(5), Z => S);
end Struct;
