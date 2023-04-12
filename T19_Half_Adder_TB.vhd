library ieee;
use ieee.std_logic_1164.all;
 
entity T19_Half_Adder_TB is
end entity;
 
architecture sim of T19_Half_Adder_TB is
 
    signal X : std_logic := '0';
    signal Y : std_logic := '0';
	signal SUM: std_logic := '0';
	signal Cout: std_logic := '0';
 
begin
uut: entity work.T19_Half_Adder(RTL) port map(
        X => X,
        Y => Y,
		SUM => SUM,	
        Cout => Cout);
process is
    begin

        X <= not X;
		wait for 5 ns;
		Y <= not Y;
		wait for 5 ns;
		
end process;
end architecture;



