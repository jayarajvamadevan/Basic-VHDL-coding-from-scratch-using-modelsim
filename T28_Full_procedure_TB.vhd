library ieee;
use ieee.std_logic_1164.all;
 
entity T28_Full_procedure_TB is
end entity;
 
architecture sim of T28_Full_procedure_TB is
 
   	signal X : std_logic := '0';
   	signal Y : std_logic := '0';
	signal Cin : std_logic := '0';
	signal S1: std_logic;
	signal C1: std_logic;
	signal C2: std_logic;
    	signal SUM: std_logic;
    	signal Cout: std_logic;
 
begin
uut: entity work.T28_Full_procedure(RTL) port map(
        X => X,
        Y => Y,
	Cin => Cin,
	S1 => S1,
	C1 => C1,
	C2 => C2,
	SUM => SUM,	
        Cout => Cout);
process is
    begin

        X <= '0';
	Y <= '0';
	Cin <= '1';
	wait for 5 ns;
	X <= '0';
	Y <= '1';
	Cin <= '1';
	wait for 5 ns;
	X <= '1';
	Y <= '0';
	Cin <= '1';
	wait for 5 ns;
	X <= '1';
	Y <= '1';
	Cin <= '1';
	wait for 5 ns;
	X <= '0';
	Y <= '0';
	Cin <= '0';
	wait for 5 ns;
	X <= '0';
	Y <= '1';
	Cin <= '0';
	wait for 5 ns;
	X <= '1';
	Y <= '0';
	Cin <= '0';
	wait for 5 ns;
	X <= '1';
	Y <= '1';
	Cin <= '0';
	wait for 5 ns;
		
end process;
end architecture;
