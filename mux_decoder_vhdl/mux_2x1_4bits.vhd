library ieee;
use ieee.std_logic_1164.all;

entity mux_2x1_4bits is
    port(
        a0, b0, a1, b1, a2, b2, a3, b3, s0: in bit;
        c0, c1, c2, c3: out bit
    );
end mux_2x1_4bits;

architecture behav of mux_2x1_4bits is
    component mux_2x1_portas_logicas is
        port(
        I0, I1, s0: in bit;
        d: out bit
    );
    end component;

begin
    u1: mux_2x1_portas_logicas port map(I0 => a0, I1 => b0, s0 => s0, d => c0);
    u2: mux_2x1_portas_logicas port map(I0 => a1, I1 => b1, s0 => s0, d => c1);
    u3: mux_2x1_portas_logicas port map(I0 => a2, I1 => b2, s0 => s0, d => c2);
    u4: mux_2x1_portas_logicas port map(I0 => a3, I1 => b3, s0 => s0, d => c3);
end architecture behav;
