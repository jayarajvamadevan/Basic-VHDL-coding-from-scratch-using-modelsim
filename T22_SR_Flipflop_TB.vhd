library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T22_SR_Flipflop_Tb is
end entity;
 
architecture sim of T22_SR_Flipflop_Tb is
 
    constant ClockFrequency : integer := 500e6; -- 500MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
 
    signal Clk    : std_logic := '1';
    signal negRst   : std_logic := '0';
    signal SET  : std_logic := '1';
    signal RESET : std_logic:= '0';
    signal Q : std_logic;
    signal Qbar : std_logic;
 
begin
 
    -- The Device Under Test (DUT)
    uut : entity work.T22_SR_Flipflop(RTL)
    port map(
        Clk    => Clk,
        negRst   => negRst,
        SET  => SET,
        RESET => RESET,
	Q => Q,
	Qbar => Qbar);
 
    -- Process for generating the clock
    Clk <= not Clk after ClockPeriod / 2;
 
    -- Testbench sequence
    process is
    begin
        -- Take the DUT out of reset
        negRst <= '0';
 
        wait for 20 ns;
        SET <= '0';
	RESET <= '0';
        wait for 20 ns;
        SET <= '0';
	RESET <= '1';
        wait for 20 ns;
        SET <= '0';
	RESET <= '0';
        wait for 20 ns;
	SET <= '1';
	RESET <= '0';
        wait for 20 ns;
	SET <= '1';
	RESET <= '1';
        wait for 20 ns;
        -- Reset the DUT
        negRst <= '1';
        wait;
    end process;
 
end architecture;
