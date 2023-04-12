library ieee;
use ieee.std_logic_1164.all;
entity T02_Delay is
end entity;
 
architecture sim of T02_Delay is
begin
 
    process is
    begin
 
        report "Hello World!";
        wait for 10 ns;
 
    end process;
 
end architecture;
