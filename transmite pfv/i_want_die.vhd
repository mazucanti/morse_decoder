library ieee;
use ieee.std_logic_1164.all;

package code_types is
	constant MAX_CODE_LENGTH	: integer := 5;
	type integer_vector is array(0 to MAX_CODE_LENGTH-1) of integer range 0 to 2;
end package code_types;

library ieee;
use ieee.std_logic_1164.all;
use work.code_types.all;

entity i_want_die is
	port (clock : in std_logic;
			led	: out std_logic_vector(0 to MAX_CODE_LENGTH-1);
			codein : in integer_vector;
			codeout : buffer integer_vector);
end entity;

architecture aaaaaaa of i_want_die is
	type std_logic_matrix is array(0 to MAX_CODE_LENGTH-1) of std_logic_vector(7 downto 0);
	signal led_intensity	: std_logic_matrix;			-- Guarda a intensidade de cada LED
	
	component modulo_pwm
		port (clk, en			: in std_logic;
				duty				: in std_logic_vector(7 downto 0);
				pwm_out			: out std_logic);
	end component;
	
	begin
		codeout(0) <= 1;
		codeout(1) <= 0;
		codeout(2) <= 2;
		codeout(3) <= 2;
		codeout(4) <= 1;
		
		
		brightness_loop:	for i in 0 to MAX_CODE_LENGTH-1 generate
		led_intensity(i)	<=	"00000000" when codein(i) = 0 else
									"00010000" when codein(i) = 1 else
									"11111111";
		led_intensity_module:	modulo_pwm port map	(clock,'1',led_intensity(i),led(i));
	end generate brightness_loop;
end architecture;