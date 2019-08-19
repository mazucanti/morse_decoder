library ieee;
use ieee.std_logic_1164.all;

entity main is
	generic (LEDS	: integer := 5);
	port (clock	: in std_logic;
			input_button	: in std_logic;
			led	: out std_logic_vector(0 to LEDS-1));
end main;

architecture main_loop of main is
	type integer_vector is array(0 to LEDS-1) of integer range 0 to 2;
	type std_logic_matrix is array(0 to LEDS-1) of std_logic_vector(7 downto 0);
	signal code	: integer_vector	:= (others => 0);	-- Guarda a "letra" salva atualmente (0: desligado, 1: ponto, 2: traco)
	signal led_intensity	: std_logic_matrix;			-- Guarda a intensidade de cada LED
	
	component modulo_pwm
		port (clk, en			: in std_logic;
				duty				: in std_logic_vector(7 downto 0);
				pwm_out			: out std_logic);
	end component;
	
begin
	-- Controle de brilho para sinalizar o comando inserido atualmente
	brightness_loop:	for i in 0 to LEDS-1 generate
		led_intensity(i)	<=	"00000000" when code(i) = 0 else
									"00010000" when code(i) = 1 else
									"11111111";
		led_intensity_module:	modulo_pwm port map	(clock,'1',led_intensity(i),led(i));
	end generate brightness_loop;
	------------------------------------------------------------------
	
	-- Preenchimento do codigo da letra (code)
	------------------------------------------
	
end main_loop;

-- Referencias
-- 