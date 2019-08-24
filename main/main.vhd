-- Modulo main que une as funcionalidades do transmissor
-- Possui a chamada para o envio e recebimento de codigos morse e a construcao desses codigos
-- assim como o controle dos LEDs que exibem os codigos recebidos e enviados

library ieee;
use ieee.std_logic_1164.all;

entity main is
	generic (MAX_CODE_LENGTH	: integer := 5;
				MAX_WORD_SIZE		: integer := 10);
	port (clock	: in std_logic;
	
			input_button		: in std_logic;						-- Botao de input dos codigos
			backspace_in_code	: in std_logic;						-- Botao de backspace (apaga o ultimo valor inserido no codigo possibilitando a reecrita)
			backspace_ready		: out std_logic;					-- Sinal que sinaliza se backspace ja pode ser utilizado novamente
			clear_code		: in std_logic;						-- Botao para limpar o codigo inserido atualmente
			leds_of_inserted_value	: out std_logic_vector(0 to MAX_CODE_LENGTH-1);		-- Saida para os LEDs que indicam o codigo inserido atualmente
			leds_of_received_value	: out std_logic_vector(0 to MAX_CODE_LENGTH-1));	-- Saida para os LEDs que indicam o codigo recebido atualmente
			
			-- [DEBUG]
			--code_test0, code_test1, code_test2, code_test3, code_test4 : out integer range 0 to MAX_CODE_LENGTH-1;

end main;

architecture main_loop of main is
	type integer_vector is array(0 to MAX_CODE_LENGTH-1) of integer range 0 to 2;			-- Definicao do tipo "vetor de inteiros" utilizado nos codigos
	type code_vector is array(0 to MAX_WORD_SIZE-1) of integer_vector;				-- Definicao do tipo "vetor de codigos" utilizado para as palavras
	type std_logic_matrix is array(0 to MAX_CODE_LENGTH-1) of std_logic_vector(7 downto 0);		-- Definicao do tipo "matrix de std_logics" utilizado para controle dos leds
	signal inserted_led_intensity	: std_logic_matrix;			-- Guarda a intensidade de cada LED do codigo inserido
	signal inserted_code	: integer_vector	:= (others => 0);	-- Guarda o codigo da "letra" inserida atualmente (0: desligado, 1: ponto, 2: traco)
	
	signal received_led_intensity	: std_logic_matrix;			-- Guarda a intensidade de cada LED do codigo recebido
	signal received_codes_vector	: code_vector;				-- Guarda a "palavra" recebida atualmente (vetor de codigos)
	signal current_received_code	: integer_vector;			-- Guarda o codigo recebido que esta sendo lido atualmente
	
	constant time_between_codes	: integer := 150000000;			-- Temporizador para a troca de "letras" na exibicao da "palavra" recebida
	
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

			-- [DEBUG] code_test0, code_test1, code_test2, code_test3, code_test4 : out integer range 0 to 2);
			-- [DEBUG] index_test	: out integer range 0 to MAX_CODE_LENGTH-1;
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
	-- modulo de transmissao
	-- Detalhe de funcionamento: o main nao salva o valor recebido, assim so consegue mostrar enquanto o sinal estiver sendo enviado (mostra o que estiver atualmente em received_codes_vector)
	-- received_code_control: port map (received_codes_vector); -- nao foi finalizado
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
		
			code_change_timer := code_change_timer - 1;			-- Decrementa o timer e
			if	(code_change_timer = 0) then				-- se ele chegou a zero
				code_change_timer := time_between_codes;		-- reseta ele e
				
				code_number := code_number + 1;				-- muda para a proximo codigo da palavra recebida
				if	(code_number = MAX_WORD_SIZE) then		-- Se chegou na ultima letra,
					current_received_code <= (others => 0);		-- Passa um ciclo com os LEDs desligados antes de reiniciar o ciclo
					
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


-- Bah professor, percebi que esqueci de resetar code_number depois que ele chega ao fim e espera um tempo na parte do repetidor entao ele so mostraria uma vez a palavra e depois ficaria apagado...

-- Referencias
-- 
