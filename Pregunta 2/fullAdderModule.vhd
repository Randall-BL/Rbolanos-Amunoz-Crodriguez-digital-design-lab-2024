library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity fullAdderModule is
 Port ( 
	A : in STD_LOGIC_VECTOR (3 downto 0);
	B : in STD_LOGIC_VECTOR (3 downto 0);
	Cin : in STD_LOGIC;
	Sum : buffer STD_LOGIC_VECTOR (3 downto 0);
	Cout : buffer STD_LOGIC;
	seg1: out STD_LOGIC_VECTOR (6 downto 0);
	seg2: out STD_LOGIC_VECTOR (6 downto 0)
	);
	
end fullAdderModule;
 
architecture fullAdderModuleFourBits of fullAdderModule is

  component fullAdderModuleOneBit
      port (
        A: in std_logic;
        B: in std_logic;
        Cin: in std_logic;
        Sum: buffer std_logic;
        Cout: buffer std_logic
      );
    end component;

	 
  component HEX2Seg
  
		port(
		hex : in STD_LOGIC_VECTOR (3 downto 0);
		seg : out STD_LOGIC_VECTOR (6 downto 0)
		);
		
	end component;
	 
	
	signal i_carry: std_logic_vector(2 downto 0);
	
	signal carryOut: std_logic_vector(3 downto 0) := "0000";
	 
  begin
  
    cell_1: fullAdderModuleOneBit
      port map (A(0), B(0), Cin, Sum(0), i_carry(0));

    cell_2: fullAdderModuleOneBit
      port map (A(1), B(1), i_carry(0), Sum(1), i_carry(1));

    cell_3: fullAdderModuleOneBit
      port map (A(2), B(2), i_carry(1), Sum(2), i_carry(2));

    cell_4: fullAdderModuleOneBit
      port map (A(3), B(3), i_carry(2), Sum(3), Cout);
		
		carryOut(0) <= Cout;
		
		
	 decoder_1: HEX2Seg
		port map (Sum, seg1);
		
	 decoder_2: HEX2Seg
		port map (carryOut, seg2);
		
	 
		
 
end fullAdderModuleFourBits;
