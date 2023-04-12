library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T22_SR_Flipflop is
port(
    Clk    : in std_logic;
    negRst   : in std_logic; -- Negative reset
    SET : in std_logic;
    RESET : in std_logic;
    Q : inout std_logic;
    Qbar : inout std_logic);
end entity;
 
architecture RTL of T22_SR_Flipflop is
begin
 
    -- Flip-flop with synchronized reset
    process(Clk) is
    begin
 
        if rising_edge(Clk) then
		
            if negRst = '0' then
			
				if (SET = '1' and RESET ='0')then

					Q <= '1';
					Qbar<='0';
				elsif (SET = '0' and RESET ='1')then
					Q <= '0';
					Qbar<='1';
				elsif (SET = '0' and RESET ='0')then
					Q <= Q;
					Qbar <= Qbar;
				else 
					Q <=  'X';
					Qbar <= 'X';
				end if;
            else 
                Q <= Q;
		Qbar <= Qbar;
            end if;
			
        end if;
 
    end process;
 
end architecture;

