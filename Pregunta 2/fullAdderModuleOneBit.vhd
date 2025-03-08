library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity fullAdderModuleOneBit is
 Port ( 
 A : in STD_LOGIC;
 B : in STD_LOGIC;
 Cin : in STD_LOGIC;
 Sum : buffer STD_LOGIC;
 Cout : buffer STD_LOGIC
 );
end fullAdderModuleOneBit;
 
architecture oneBitModule of fullAdderModuleOneBit is
 
begin
 
 Sum <= A XOR B XOR Cin ;
 Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;
 
end oneBitModule;
