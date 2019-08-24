library ieee;
use ieee.std_logic_1164.all;

entity main is
	generic (MAX_CODE_LENGTH	: integer := 5;
				MAX_WORD_SIZE		: integer := 10);
	port (clock	: in std_logic;
	
			input_button	: in std_logic;
			backspace_in_code	: in std_logic;
			backspace_ready	: out std_logic;
			clear_code	: in std_logic;
			leds_of_inserted_value	: out std_logic_vector(0 to MAX_CODE_LENGTH-1);
			leds_of_received_value	: out std_logic_vector(0 to MAX_CODE_LENGTH-1));
			
			-- [DEBUG]
			--code_test0, code_test1, code_test2, code_test3, code_test4 : out integer range 0 to MAX_CODE_LENGTH-1;
			--[]
end main;

architecture main_loop of main is
	type integer_vector is array(0 to MAX_CODE_LENGTH-1) of integer range 0 to 2;
	type code_vector is array(0 to MAX_WORD_SIZE-1) of integer_vector;
	type std_logic_matrix is array(0 to MAX_CODE_LENGTH-1) of std_logic_vector(7 downto 0);
	signal inserted_led_intensity	: std_logic_matrix;			-- Guarda a intensidade de cada LED
	signal inserted_code	: integer_vector	:= (others => 0);	-- Guarda a "letra" salva atualmente (0: desligado, 1: ponto, 2: traco)
	
	signal received_led_intensity	: std_logic_matrix;
	signal received_codes_vector	: code_vector;
	signal current_received_code	: integer_vector;
	
	constant time_between_codes	: integer := 150000000;
	
	component modulo_pwm
		port (clk, en			: in std_logic;
				duty				: in std_logic_vector(7 downto 0);
				pwm_out			: out std_logic);
	end component;
	
	component short_or_long_signal_identifier is
		port (clock	: in std_logic;
			button_input	: in std_logic;
			backspace, clear	: in std_logic;
				
			code	: buffer integer_vector;
			
			backspace_ready_signal	: out std_logic);

			--code_test0, code_test1, code_test2, code_test3, code_test4 : out integer range 0 to 2);
			--index_test	: out integer range 0 to MAX_CODE_LENGTH-1;
	end component;
	
begin
	-- Controle de brilho para sinalizar o comando inserido atualmente
	brightness_loop:	for i in 0 to MAX_CODE_LENGTH-1 generate
		inserted_led_intensity(i)	<=	"00000000" when inserted_code(i) = 0 else
												"00010000" when inserted_code(i) = 1 else
												"11111111";
		inserted_led_intensity_module:	modulo_pwm port map	(clock,'1',inserted_led_intensity(i),leds_of_inserted_value(i));
	end generate brightness_loop;
	------------------------------------------------------------------
	
	-- Preenchimento do codigo da letra (code)	
	inserted_code_control: short_or_long_signal_identifier port map (clock, input_button, backspace_in_code, clear_code, inserted_code, backspace_ready);
	------------------------------------------
	
	
	-- Recebimento da palavra (conjunto de codigos)
	-- modulo do dani
	-- detalhe ele nao salva, mostra o que estiver atualmente em received_codes_vector
	received_code_control: port map (received_codes_vector);
	------------------------------------------
	
	-- Controle de brilho para sinalizar os codigos recebidos
	received_brightness_loop:	for i in 0 to MAX_CODE_LENGTH-1 generate
		received_led_intensity(i)	<=	"00000000" when current_received_code(i) = 0 else
												"00010000" when current_received_code(i) = 1 else
												"11111111";
		received_led_intensity_module:	modulo_pwm port map	(clock,'1',received_led_intensity(i),leds_of_received_value(i));
	end generate received_brightness_loop;
	------------------------------------------
	
	-- Controle de qual codigo da palavra sera mostrado
	process (clock)
		variable code_change_timer	: integer := time_between_codes;
		variable code_number	: integer range 0 to MAX_WORD_SIZE := 0;
	begin
		if	(clock'event and clock = '0') then
		
			code_change_timer := code_change_timer - 1;
			if	(code_change_timer = 0) then
				code_change_timer := time_between_codes;
				
				code_number := code_number + 1;
				if	(code_number = MAX_WORD_SIZE) then
					current_received_code <= (others => 0);
					
				else
					current_received_code <= received_codes_vector(code_number);
				end if;
				
			end if;
		end if;
	end process;
	------------------------------------------
	
	-- [DEBUG]
	--code_test0 <= code(0);
	--code_test1 <= code(1);
	--code_test2 <= code(2);
	--code_test3 <= code(3);
	--code_test4 <= code(4);
	
end main_loop;

-- Referencias
-- 