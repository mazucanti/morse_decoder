library ieee;
use ieee.std_logic_1164.all;

--Definicao do mesmo tipo usado na criacao dos sinais em morse
package code_types is
	constant MAX_CODE_LENGTH	: integer := 5;
	type integer_vector is array(0 to MAX_CODE_LENGTH-1) of integer range 0 to 2;
end package code_types;

library ieee;
use ieee.std_logic_1164.all;
use work.code_types.all;


entity send_control is
--r_w controla o modo de escrita ou registro de mensagem
--recebe sinal de permissao
--send envia o sinal de permissao
--w_perm gera um led indicador de que algo pode ser recebido
--r_perm gera um led indicador de que algo pode ser enviado
	port (clk, r_w, recieve, enter : in std_logic;
			r_perm, w_perm : buffer std_logic;
			send: out std_logic;
			user_input : in integer_vector;
			display : out integer_vector;
			code : inout integer_vector);
end entity;

architecture behav of send_control is
	begin
	--r_w é uma referéncia para a OUTRA placa
	send <= r_w;
	process(clk)
	--reduçao de clock para 4Hz
		variable count : integer range 0 to 12500000 := 0;
	begin
		if clk'event and clk = '0' then
			if recieve = '0' then
				--contador faz com que o sinal do led de envio alterne em 4 Hz
				w_perm <= '0';
				if count < 12500000 then
					count := count +1;
				else
					r_perm <= not r_perm;
					count := 0;
				end if;
				--definiçao de um botao de envio na placa, colocando code como um sinal out
				if enter = '0' then
					code <= user_input;
				end if;
			else
			--mesmo contador do caso anterior, mas para o led de recebimento
				r_perm <= '0';
				if count < 12500000 then
					count := count + 1;
				else
					w_perm <= not w_perm;
					count := 0;
				end if;
				--quando recieve = 1, code se torna input para envio para outra placa
				display <= code;
			end if;
		end if;
	end process;
end architecture;


