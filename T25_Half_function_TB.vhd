library ieee;
use ieee.std_logic_1164.all;
 
entity T25_Half_function_TB is
end entity;
 
architecture sim of T25_Half_function_TB is
 
   	signal X : integer := 0;
   	signal Y : integer := 0;
    	signal SUM: integer;
    	signal Cout: integer;
 
begin
uut: entity work.T25_Half_function(RTL) port map(
        X => X,
        Y => Y,
	SUM => SUM,	
        Cout => Cout);
process is
    begin

        X <= 0;
	Y <= 0;
	wait for 5 ns;
	X <= 0;
	Y <= 1;
	wait for 5 ns;
	X <= 1;
	Y <= 0;
	wait for 5 ns;
	X <= 1;
	Y <= 1;
	wait for 5 ns;
	X <= 0;
	Y <= 0;
	wait for 5 ns;
	X <= 0;
	Y <= 1;
	wait for 5 ns;
	X <= 1;
	Y <= 0;
	wait for 5 ns;
	X <= 1;
	Y <= 1;
	wait for 5 ns;
		
end process;
end architecture;
