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
	port (clk, enter : in std_logic; --enter: controle de envio de mensagem
			code : inout integer_vector); --Mensagem a ser enviadarecebida
end entity;

--Arquitetura de envio de mensagem
architecture send of mod_com is
	