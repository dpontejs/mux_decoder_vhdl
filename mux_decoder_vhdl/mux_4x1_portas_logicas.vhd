library ieee;
use ieee.std_logic_1164.all;

entity mux_4x1_portas_logicas is
    port(
        I0, I1, I2, I3, s0, s1: in bit;
        d: out bit
    );
end mux_4x1_portas_logicas;

architecture behav of mux_4x1_portas_logicas is
    signal F1, F2: bit;

    component mux_2x1_portas_logicas is
        port(
            I0, I1, s0: in bit;
            d: out bit
        );
    end component;

begin
    u1: mux_2x1_portas_logicas port map(I0 => I0, I1 => I1, s0 => s1, d => F1);
    u2: mux_2x1_portas_logicas port map(I0 => I2, I1 => I3, s0 => s1, d => F2);
    u3: mux_2x1_portas_logicas port map(I0 => F1, I1 => F2, s0 => s0, d => d);
end architecture behav;
