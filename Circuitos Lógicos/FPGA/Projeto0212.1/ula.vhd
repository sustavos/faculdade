-- ULA com 4 bits de entrada e 5 bits de saida, 
-- Autores: Nicolas e Leandro	
-- Data 02/12/2019

Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ula is
	Port( NUM1: in std_logic_vector (3 downto 0);  
			NUM2: in std_logic_vector (3 downto 0);								
			OP_CODE : in std_logic_vector (2 downto 0);
			saida : out std_logic_vector (4 downto 0));													
end ula;

architecture behavioral of ula is
begin

    process (op_code, NUM1, NUM2)
    begin
        case op_code is
            when "000" => saida <= ('0' & NUM1) + ('0' & NUM2);
            when "001" => saida <= ('0' & NUM1) - ('0' & NUM2);
            when "010" => saida <= ('0' & NUM1) and ('0' & NUM2);
            when "011" => saida <= ('0' & NUM1) or ('0' & NUM2);
            when "100" => saida <= ('0' & NUM1) xor ('0' & NUM2);
            when "101" => saida <= ('0' & NUM1) xnor ('0' & NUM2);
            when others => saida <= "00000";
        end case;
    end 
	 
	 process;
	 
end behavioral;