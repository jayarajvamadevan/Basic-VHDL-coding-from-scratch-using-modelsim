library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T21_Flipflop is
port(
    Clk    : in std_logic;
    negRst   : in std_logic; -- Negative reset
    Input  : in std_logic;
    Output : out std_logic);
end entity;
 
architecture RTL of T21_Flipflop is
begin
 
    -- Flip-flop with synchronized reset
    process(Clk) is
    begin
 
        if rising_edge(Clk) then
            if negRst = '0' then
                Output <= '0';
            else
                Output <= Input;
            end if;
        end if;
 
    end process;
 
end architecture;
