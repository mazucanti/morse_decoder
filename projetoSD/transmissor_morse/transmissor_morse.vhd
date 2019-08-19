library ieee;
use ieee.std_logic_1164.all;

entity transmissor_morse is
	generic	(short_long_limit : integer := 0);
	port (clock, user_input	: in std_logic;
			led	: out std_logic);
end transmissor_morse;

architecture logic of transmissor_morse is
	component clock_reductor_50Mhz_Xms is
		port (fast_clock	: in std_logic;
				miliseconds	: in integer;
				slow_clock	: out std_logic);
	end component;
	
begin
	G1: clock_reductor_50Mhz_Xms port map	(clock, 1, led);
	
end logic;