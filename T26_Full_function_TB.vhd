library ieee;
use ieee.std_logic_1164.all;
 
entity T26_Full_function_TB is
end entity;
 
architecture sim of T26_Full_function_TB is
 
   	signal X : integer := 0;
   	signal Y : integer := 0;
	signal Cin : integer := 0;
	signal W1: integer;
	signal W2: integer;
	signal W3: integer;
    	signal SUM: integer;
    	signal Cout: integer;
 
begin
uut: entity work.T26_Full_function(RTL) port map(
        X => X,
        Y => Y,
	Cin => Cin,
	W1 => W1,
	W2 => W2,
	W3 => W3,
	SUM => SUM,	
        Cout => Cout);
process is
    begin

        X <= 0;
	Y <= 0;
	Cin <= 1;
	wait for 5 ns;
	X <= 0;
	Y <= 1;
	Cin <= 1;
	wait for 5 ns;
	X <= 1;
	Y <= 0;
	Cin <= 1;
	wait for 5 ns;
	X <= 1;
	Y <= 1;
	Cin <= 1;
	wait for 5 ns;
	X <= 0;
	Y <= 0;
	Cin <= 0;
	wait for 5 ns;
	X <= 0;
	Y <= 1;
	Cin <= 0;
	wait for 5 ns;
	X <= 1;
	Y <= 0;
	Cin <= 0;
	wait for 5 ns;
	X <= 1;
	Y <= 1;
	Cin <= 0;
	wait for 5 ns;
		
end process;
end architecture;
