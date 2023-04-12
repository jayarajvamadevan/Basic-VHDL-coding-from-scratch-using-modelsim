library ieee;
use ieee.std_logic_1164.all;
entity T01_HelloWorld is
end entity;
 
architecture sim of T01_HelloWorld is
begin
 
    process is
    begin
 
        report "Hello World!";
        wait;
 
    end process;
 
end architecture;