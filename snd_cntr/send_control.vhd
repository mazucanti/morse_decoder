library ieee;
use ieee.std_logic_1164.all;

entity mod_com is
--r_w controla o modo de escrita ou registro de mensagem
--recebe sinal de permissao
	port (clk, r_w, recieve: in std_logic;
			r_perm, w_perm, send: out std_logic); 