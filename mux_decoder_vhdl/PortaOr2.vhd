library ieee;
use ieee.std_logic_1164.all;

entity PortaOr2 is
    port(
        inp1, inp2: in bit;
        saida_or2: out bit
    );
end PortaOr2;
    
architecture behav of PortaOr2 is
begin
        saida_or2 <= inp1 or inp2;
end architecture behav;