--Modulo de comuicacao entre FPGAs
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

entity mod_com is
	port (clk, r_w, recieve: in std_logic;
			r_perm, w_perm, send: out std_logic); 
			--(clk, enter, r_w, recieve : in std_logic; 
			--enter: controle de envio de mensagem
			
			--code : inout integer_vector; 
			--Mensagem a ser enviada ou recebida
			
			--send envia o sinal de permissao
			--w_perm gera um led indicador de que algo pode ser recebido
			--r_perm gera um led indicador de que algo pode ser enviado
end entity;

--Arquitetura de envio de mensagem
architecture send of mod_com is
	begin
	--r_w e diferente para cada placa, por isso essa etapa extra
	send <= r_w;
	process(clk)
	--reduçao de clock para 4Hz
		variable count : integer range 0 to 12500000;
		begin
			if(recieve = '0') then
				if count < 12500000 then
					count := count +1;
					r_perm <= '0';
				else
					r_perm <= '1';
					count := 0;
				end if;
			else
				if count < 12500000 then
					count := count +1;
					w_perm <= '0';
				else
					w_perm <= '1';
					count := 0;
				end if;
			end if;
	end process;
end architecture;