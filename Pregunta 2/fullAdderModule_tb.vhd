LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;  -- Para convertir std_logic_vector a integer

ENTITY fullAdderModule_tb IS
END fullAdderModule_tb;

ARCHITECTURE behavior OF fullAdderModule_tb IS

  -- Component Declaration for the Unit Under Test (UUT)
  COMPONENT fullAdderModule
    PORT(
      A     : IN std_logic_vector(3 downto 0);
      B     : IN std_logic_vector(3 downto 0);
      Cin   : IN std_logic;
      Sum     : BUFFER std_logic_vector(3 downto 0);
      Cout  : BUFFER std_logic;
      seg1  : OUT std_logic_vector(6 downto 0);
      seg2  : OUT std_logic_vector(6 downto 0)
    );
  END COMPONENT;

  -- Inputs
  signal A    : std_logic_vector(3 downto 0) := (others => '0');
  signal B    : std_logic_vector(3 downto 0) := (others => '0');
  signal Cin  : std_logic := '0';

  -- Outputs
  signal Sum    : std_logic_vector(3 downto 0);
  signal Cout : std_logic;
  signal seg1 : std_logic_vector(6 downto 0);
  signal seg2 : std_logic_vector(6 downto 0);

BEGIN

  -- Instantiate the Unit Under Test (UUT)
  uut: fullAdderModule PORT MAP (
    A    => A,
    B    => B,
    Cin  => Cin,
    Sum    => Sum,
    Cout => Cout,
    seg1 => seg1,
    seg2 => seg2
  );

  -- Stimulus process
  stim_proc: process
  begin

    -- Estímulos de prueba con impresión
    A <= "0001"; B <= "0011"; wait for 10 ns;
    report "A=" & integer'image(to_integer(unsigned(A))) &
           ", B=" & integer'image(to_integer(unsigned(B))) &
           ", Sum=" & integer'image(to_integer(unsigned(Sum))) &
           ", Cout=" & std_logic'image(Cout) &
           ", seg1=" & std_logic'image(seg1(6)) & std_logic'image(seg1(5)) & std_logic'image(seg1(4)) &
                     std_logic'image(seg1(3)) & std_logic'image(seg1(2)) & std_logic'image(seg1(1)) & std_logic'image(seg1(0)) &
           ", seg2=" & std_logic'image(seg2(6)) & std_logic'image(seg2(5)) & std_logic'image(seg2(4)) &
                     std_logic'image(seg2(3)) & std_logic'image(seg2(2)) & std_logic'image(seg2(1)) & std_logic'image(seg2(0));

    A <= "0110"; B <= "0010"; wait for 10 ns;
    report "A=" & integer'image(to_integer(unsigned(A))) &
           ", B=" & integer'image(to_integer(unsigned(B))) &
           ", Sum=" & integer'image(to_integer(unsigned(Sum))) &
           ", Cout=" & std_logic'image(Cout) &
           ", seg1=" & std_logic'image(seg1(6)) & std_logic'image(seg1(5)) & std_logic'image(seg1(4)) &
                     std_logic'image(seg1(3)) & std_logic'image(seg1(2)) & std_logic'image(seg1(1)) & std_logic'image(seg1(0)) &
           ", seg2=" & std_logic'image(seg2(6)) & std_logic'image(seg2(5)) & std_logic'image(seg2(4)) &
                     std_logic'image(seg2(3)) & std_logic'image(seg2(2)) & std_logic'image(seg2(1)) & std_logic'image(seg2(0));

    A <= "1100"; B <= "0101"; wait for 10 ns;
    report "A=" & integer'image(to_integer(unsigned(A))) &
           ", B=" & integer'image(to_integer(unsigned(B))) &
           ", Sum=" & integer'image(to_integer(unsigned(Sum))) &
           ", Cout=" & std_logic'image(Cout) &
           ", seg1=" & std_logic'image(seg1(6)) & std_logic'image(seg1(5)) & std_logic'image(seg1(4)) &
                     std_logic'image(seg1(3)) & std_logic'image(seg1(2)) & std_logic'image(seg1(1)) & std_logic'image(seg1(0)) &
           ", seg2=" & std_logic'image(seg2(6)) & std_logic'image(seg2(5)) & std_logic'image(seg2(4)) &
                     std_logic'image(seg2(3)) & std_logic'image(seg2(2)) & std_logic'image(seg2(1)) & std_logic'image(seg2(0));

    A <= "1111"; B <= "0001"; wait for 10 ns;
    report "A=" & integer'image(to_integer(unsigned(A))) &
           ", B=" & integer'image(to_integer(unsigned(B))) &
           ", Sum=" & integer'image(to_integer(unsigned(Sum))) &
           ", Cout=" & std_logic'image(Cout) &
           ", seg1=" & std_logic'image(seg1(6)) & std_logic'image(seg1(5)) & std_logic'image(seg1(4)) &
                     std_logic'image(seg1(3)) & std_logic'image(seg1(2)) & std_logic'image(seg1(1)) & std_logic'image(seg1(0)) &
           ", seg2=" & std_logic'image(seg2(6)) & std_logic'image(seg2(5)) & std_logic'image(seg2(4)) &
                     std_logic'image(seg2(3)) & std_logic'image(seg2(2)) & std_logic'image(seg2(1)) & std_logic'image(seg2(0));

    A <= "0000"; B <= "0000"; wait;
  end process;

END behavior;
