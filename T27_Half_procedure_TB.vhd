library ieee;
use ieee.std_logic_1164.all;
 
entity T27_Half_procedure_TB is
end entity;
 
architecture sim of T27_Half_procedure_TB is
 
   	signal X : std_logic := '0';
   	signal Y : std_logic := '0';
    	signal SUM: std_logic ;
    	signal Cout: std_logic ;
 
begin
uut: entity work.T27_Half_procedure (RTL) port map(
        X => X,
        Y => Y,
	SUM => SUM,	
        Cout => Cout);
process is
    begin

        X <= '0';
	Y <= '0';
	wait for 5 ns;
	X <= '0';
	Y <= '1';
	wait for 5 ns;
	X <= '1';
	Y <= '0';
	wait for 5 ns;
	X <= '1';
	Y <= '1';
	wait for 5 ns;
	X <= '0';
	Y <= '0';
	wait for 5 ns;
	X <= '0';
	Y <= '1';
	wait for 5 ns;
	X <= '1';
	Y <= '0';
	wait for 5 ns;
	X <= '1';
	Y <= '1';
	wait for 5 ns;
		
end process;
end architecture;
