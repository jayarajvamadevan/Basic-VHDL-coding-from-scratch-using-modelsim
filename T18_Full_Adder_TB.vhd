library ieee;
use ieee.std_logic_1164.all;
 
entity T18_Full_Adder_TB is
end entity;
 
architecture sim of T18_Full_Adder_TB is
 
    signal X : std_logic := '0';
    signal Y : std_logic := '0';
	signal Cin : std_logic := '0';
    signal SUM1 : std_logic := '0';   
	signal Cout1: std_logic := '0';
	signal Cout2: std_logic := '0';
	signal SUM_OUT: std_logic := '0';
	signal Carry_OUT: std_logic := '0';
 
begin
 uut: entity work.T18_Full_Adder(RTL) port map(
        X    => X,
        Y   => Y,
        Cin   => Cin,
        SUM1   => SUM1,
        Cout1   => Cout1,
		Cout2   => Cout2,
		SUM_OUT => SUM_OUT,	
        Carry_OUT => Carry_OUT);
		--NOtT Operation
		process is
			begin

				X <= not X;
				wait for 5 ns;
				Y <= not Y;
				wait for 5 ns;
				Cin <= not Cin;
				wait for 5 ns;
				
		end process;
		
end architecture;



