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
      S     : BUFFER std_logic_vector(3 downto 0);
      Cout  : BUFFER std_logic;
      seg1  : OUT std_logic_vector(6 downto 0);
      seg2  : OUT std_logic_vector(6 downto 0);
      dp1   : OUT std_logic;
      dp2   : OUT std_logic
    );
  END COMPONENT;

  -- Inputs
  signal A    : std_logic_vector(3 downto 0) := (others => '0');
  signal B    : std_logic_vector(3 downto 0) := (others => '0');
  signal Cin  : std_logic := '0';

  -- Outputs
  signal S    : std_logic_vector(3 downto 0);
  signal Cout : std_logic;
  signal seg1 : std_logic_vector(6 downto 0);
  signal seg2 : std_logic_vector(6 downto 0);
  signal dp1  : std_logic;
  signal dp2  : std_logic;

BEGIN

  -- Instantiate the Unit Under Test (UUT)
  uut: fullAdderModule PORT MAP (
    A    => A,
    B    => B,
    Cin  => Cin,
    S    => S,
    Cout => Cout,
    seg1 => seg1,
    seg2 => seg2,
    dp1  => dp1,
    dp2  => dp2
  );

  -- Stimulus process
  stim_proc: process
  begin
    -- Espera inicial
    wait for 100 ns;

    -- Estímulos de prueba con impresión
    A <= "0110"; B <= "1100"; wait for 10 ns;
    report "A=" & integer'image(to_integer(unsigned(A))) &
           ", B=" & integer'image(to_integer(unsigned(B))) &
           ", S=" & integer'image(to_integer(unsigned(S))) &
           ", Cout=" & std_logic'image(Cout) &
           ", seg1=" & std_logic'image(seg1(6)) & std_logic'image(seg1(5)) & std_logic'image(seg1(4)) &
                     std_logic'image(seg1(3)) & std_logic'image(seg1(2)) & std_logic'image(seg1(1)) & std_logic'image(seg1(0)) &
           ", seg2=" & std_logic'image(seg2(6)) & std_logic'image(seg2(5)) & std_logic'image(seg2(4)) &
                     std_logic'image(seg2(3)) & std_logic'image(seg2(2)) & std_logic'image(seg2(1)) & std_logic'image(seg2(0));

    A <= "1111"; B <= "1100"; wait for 10 ns;
    report "A=" & integer'image(to_integer(unsigned(A))) &
           ", B=" & integer'image(to_integer(unsigned(B))) &
           ", S=" & integer'image(to_integer(unsigned(S))) &
           ", Cout=" & std_logic'image(Cout) &
           ", seg1=" & std_logic'image(seg1(6)) & std_logic'image(seg1(5)) & std_logic'image(seg1(4)) &
                     std_logic'image(seg1(3)) & std_logic'image(seg1(2)) & std_logic'image(seg1(1)) & std_logic'image(seg1(0)) &
           ", seg2=" & std_logic'image(seg2(6)) & std_logic'image(seg2(5)) & std_logic'image(seg2(4)) &
                     std_logic'image(seg2(3)) & std_logic'image(seg2(2)) & std_logic'image(seg2(1)) & std_logic'image(seg2(0));

    A <= "0110"; B <= "0111"; wait for 10 ns;
    report "A=" & integer'image(to_integer(unsigned(A))) &
           ", B=" & integer'image(to_integer(unsigned(B))) &
           ", S=" & integer'image(to_integer(unsigned(S))) &
           ", Cout=" & std_logic'image(Cout) &
           ", seg1=" & std_logic'image(seg1(6)) & std_logic'image(seg1(5)) & std_logic'image(seg1(4)) &
                     std_logic'image(seg1(3)) & std_logic'image(seg1(2)) & std_logic'image(seg1(1)) & std_logic'image(seg1(0)) &
           ", seg2=" & std_logic'image(seg2(6)) & std_logic'image(seg2(5)) & std_logic'image(seg2(4)) &
                     std_logic'image(seg2(3)) & std_logic'image(seg2(2)) & std_logic'image(seg2(1)) & std_logic'image(seg2(0));

    A <= "1111"; B <= "1111"; wait for 10 ns;
    report "A=" & integer'image(to_integer(unsigned(A))) &
           ", B=" & integer'image(to_integer(unsigned(B))) &
           ", S=" & integer'image(to_integer(unsigned(S))) &
           ", Cout=" & std_logic'image(Cout) &
           ", seg1=" & std_logic'image(seg1(6)) & std_logic'image(seg1(5)) & std_logic'image(seg1(4)) &
                     std_logic'image(seg1(3)) & std_logic'image(seg1(2)) & std_logic'image(seg1(1)) & std_logic'image(seg1(0)) &
           ", seg2=" & std_logic'image(seg2(6)) & std_logic'image(seg2(5)) & std_logic'image(seg2(4)) &
                     std_logic'image(seg2(3)) & std_logic'image(seg2(2)) & std_logic'image(seg2(1)) & std_logic'image(seg2(0));

    A <= "0000"; B <= "0000"; wait;
  end process;

END behavior;
