library ieee;
use ieee.std_logic_1164.all;
 
entity T12_StdLogic_HALF_Adder is
end entity;
 
architecture sim of T12_StdLogic_HALF_Adder is
 
    signal X : std_logic := '0';
    signal Y : std_logic := '0';
    signal Z1 : std_logic := '0';   
	signal Z2 : std_logic := '0';
	signal SUM: std_logic := '0';
	signal Cout: std_logic := '0';
 
begin
process is
    begin

        X <= not X;
		Z1 <= X;
		wait for 5 ns;
		Y <= not Y;
		Z2 <= Y;
		wait for 5 ns;
		
end process;
--XOR GATE BEHAVIOURAL MODEL
 process (Z1,Z2) is
    begin
 
        if (Z1 = Z2)then
            SUM <= '0';
        else
           SUM <= '1';
       end if;
 
 end process;
--AND GATE BEHAVIOURAL MODEL
 process (Z1,Z2) is
    begin
 
        if (Z1 = '1' and  Z2 = '1')then
            Cout <= '1';
        else
           Cout <= '0';
       end if;
 
 end process;
 
 
end architecture;


