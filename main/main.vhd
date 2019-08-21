library ieee;
use ieee.std_logic_1164.all;

entity main is
	generic (MAX_CODE_LENGTH	: integer := 5);
	port (clock	: in std_logic;
			input_button	: in std_logic;
			led	: out std_logic_vector(0 to MAX_CODE_LENGTH-1);
			code_test0, code_test1, code_test2, code_test3, code_test4 : out integer range 0 to MAX_CODE_LENGTH-1;
			index_test	: out integer range 0 to MAX_CODE_LENGTH);
end main;

architecture main_loop of main is
	type integer_vector is array(0 to MAX_CODE_LENGTH-1) of integer range 0 to 2;
	type std_logic_matrix is array(0 to MAX_CODE_LENGTH-1) of std_logic_vector(7 downto 0);
	signal code_input	: std_logic_vector(0 to MAX_CODE_LENGTH-1) := (others => '1');
	signal current_index	: integer range 0 to MAX_CODE_LENGTH-1 := 4;
	signal led_intensity	: std_logic_matrix;			-- Guarda a intensidade de cada LED
	
	signal code	: integer_vector	:= (others => 0);	-- Guarda a "letra" salva atualmente (0: desligado, 1: ponto, 2: traco)

	
	component modulo_pwm
		port (clk, en			: in std_logic;
				duty				: in std_logic_vector(7 downto 0);
				pwm_out			: out std_logic);
	end component;
	
	component short_or_long_signal_identifier is
		port (clock	: in std_logic;
				button_input	: in std_logic;
				output_value	: buffer integer range 0 to 2);
	end component;
	
begin
	code(0) <= 0;
	code(1) <= 1;
	code(2) <= 2;
	code(3) <= 1;
	code(4) <= 2;
	-- Controle de brilho para sinalizar o comando inserido atualmente
	brightness_loop:	for i in 0 to MAX_CODE_LENGTH-1 generate
		led_intensity(i)	<=	"00000000" when code(i) = 0 else
									"00010000" when code(i) = 1 else
									"11111111";
		led_intensity_module:	modulo_pwm port map	(clock,'1',led_intensity(i),led(i));
	end generate brightness_loop;
	------------------------------------------------------------------
	
	-- Preenchimento do codigo da letra (code)	
	
	------------------------------------------
	
	-- [DEBUG]
	code_test0 <= code(0);
	code_test1 <= code(1);
	code_test2 <= code(2);
	code_test3 <= code(3);
	code_test4 <= code(4);
	index_test <= current_index;
	
end main_loop;

-- Referencias
-- 