library ieee;
use ieee.std_logic_1164.all;

entity mux_2x1_portas_logicas is
    port(
        I0, I1, s0: in bit;
        d: out bit
    );
end mux_2x1_portas_logicas;

architecture behav of mux_2x1_portas_logicas is
    signal F1, F2: bit;

    component PortaAnd2 is
        port(
            input1, input2: in bit;
            saida_and2: out bit
        );
    end component;

    component PortaOr2 is
        port(
            inp1, inp2: in bit;
            saida_or2: out bit
        );
    end component;

begin
    u1: PortaAnd2 port map(input1 => I0, input2 => not(s0), saida_and2 => F1);
    u2: PortaAnd2 port map(input1 => I1, input2 => s0, saida_and2 => F2);
    u3: PortaOr2 port map(inp1 => F1, inp2 => F2, saida_or2 => d);
end architecture behav;