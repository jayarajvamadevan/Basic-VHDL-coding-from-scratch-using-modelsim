-- 2 Half Adder reduced code
library ieee;
use ieee.std_logic_1164.all;
 
entity T14_StdLogic_Full_Adder2 is
end entity;
 
architecture sim of T14_StdLogic_Full_Adder2 is
 
    signal X : std_logic := '0';
    signal Y : std_logic := '0';
	signal Cin : std_logic := '0';
    signal SUM1 : std_logic := '0';   
	signal Cout1: std_logic := '0';
	signal Cout2: std_logic := '0';
	signal SUM_OUT: std_logic := '0';
	signal Carry_OUT: std_logic := '0';
 
begin
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
		
		--HALF ADDER 1 BEHAVIOURAL MODEL
		 process (X,Y) is
			begin
		 
				if (X = Y)then
					SUM1 <= '0';
					--nested if used here
						if (X = '1' and  Y = '1')then
						Cout1 <= '1';
						else
						Cout1 <= '0';
						end if;	
				else
				   SUM1 <= '1';
				   Cout1 <= '0';
			   end if;
		 
		 end process;

		 --HALF ADDER 2 BEHAVIOURAL MODEL
		 process (SUM1,Cin) is
			begin
		 
				if (SUM1 = Cin)then
					SUM_OUT <= '0';
					--nested if used here
						if (SUM1 = '1' and  Cin = '1')then
						Cout2 <= '1';
						else
						Cout2 <= '0';
						end if;
				else
				   SUM_OUT <= '1';
				   Cout2 <= '0';
			   end if;
		 
		 end process;
		 --OR GATE 1 BEHAVIOURAL MODEL
		 process (Cout1,Cout2) is
			begin
		 
				if (Cout1 = '0' and  Cout2 = '0')then
					Carry_OUT <= '0';
				else
				   Carry_OUT <= '1';
			   end if;
		 
		 end process;
 
end architecture;


