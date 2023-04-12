library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T23_JK_Flipflop is
port(
    Clk    : in std_logic;
    negRst   : in std_logic; -- Negative K
    J : in std_logic;
    K : in std_logic;
    Q : inout std_logic;
    Qbar : inout std_logic);
end entity;
 
architecture RTL of T23_JK_Flipflop is
begin
 
    -- Flip-flop with synchronized K
    process(Clk) is
    begin
 
        if rising_edge(Clk) then
		
            if negRst = '0' then
			
				if (J = '1' and K ='0')then

					Q <= '1';
					Qbar<='0';
				elsif (J = '0' and K ='1')then
					Q <= '0';
					Qbar<='1';
				elsif (J = '0' and K ='0')then
					Q <= Q;
					Qbar <= Qbar;
				else 
					Q <=  not Q;
					Qbar <= not Qbar;
				end if;
            else 
                Q <= Q;
		Qbar <= Qbar;
            end if;
			
        end if;
 
    end process;
 
end architecture;

