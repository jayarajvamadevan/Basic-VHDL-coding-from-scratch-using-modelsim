library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T23_JK_Flipflop_Tb is
end entity;
 
architecture sim of T23_JK_Flipflop_Tb is
 
    constant ClockFrequency : integer := 500e6; -- 500MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
 
    signal Clk    : std_logic := '1';
    signal negRst   : std_logic := '0';
    signal J  : std_logic := '1';
    signal K : std_logic:= '0';
    signal Q : std_logic;
    signal Qbar : std_logic;
 
begin
 
    -- The Device Under Test (DUT)
    uut : entity work.T23_JK_Flipflop(RTL)
    port map(
        Clk  => Clk,
        negRst => negRst,
        J  => J,
        K => K,
		Q => Q,
		Qbar => Qbar);
 
    -- Process for generating the clock
    Clk <= not Clk after ClockPeriod / 2;
 
    -- Testbench sequence
    process is
    begin
        -- Take the DUT out of K
        negRst <= '0';
 
        wait for 15 ns;
        J <= '0';
		K <= '0';
        wait for 15 ns;
        J <= '0';
		K <= '1';
        wait for 15 ns;
        J <= '1';
		K <= '0';
        wait for 15 ns;
		J <= '1';
		K <= '1';
        wait for 30 ns;
		J <= '1';
		K <= '0';
        wait for 15 ns;
		J <= '0';
		K <= '1';
        wait for 15 ns;
		J <= '0';
		K <= '0';
        wait for 15 ns;
        -- K the DUT
        negRst <= '1';
        wait;
    end process;
 
end architecture;