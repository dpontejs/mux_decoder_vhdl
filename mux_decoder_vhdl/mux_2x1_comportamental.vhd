library ieee;
use ieee.std_logic_1164.all;

entity mux_2x1_comportamental is
    port(
        I0, I1, s0: in bit;
        d: out bit
    );
end;

architecture behav of mux_2x1_comportamental is
    begin
        with s0 select
            d <= I0 when '0',
                 I1 when '1';
    end;
