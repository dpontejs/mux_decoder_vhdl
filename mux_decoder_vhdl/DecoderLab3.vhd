library ieee;
use ieee.std_logic_1164.all;


entity DecoderLab3 is
    port(A3,A2,A1,A0, e: in bit;
    S6,S5,S4,S3,S2,S1,S0 : out bit);
end DecoderLab3;

architecture behav OF DecoderLab3 is
    signal out_aux: bit_vector(6 downto 0);
    signal in_aux : bit_vector(4 downto 0);
begin
    in_aux <= A3 & A2  & A1 & A0 & e;
    with in_aux select
        out_aux <= "1000000" when "00001", -- numero 0
        "1111001" when "00011", -- numero 1
        "0100100" when "00101", -- numero 2
        "0110000" when "00111", -- numero 3
        "0011001" when "01001", -- numero 4
        "0010010" when "01011", -- numero 5
        "0000010" when "01101", -- numero 6
        "1111000" when "01111", -- numero 7
        "0000000" when "10001", -- numero 8
        "0010000" when "10011", -- numero 9
        "0001000" when "10101", -- numero A
        "0000011" when "10111", -- numero B
        "1000110" when "11001", -- numero C
        "0100001" when "11011", -- numero D
        "0000110" when "11101", -- numero E
        "0001110" when "11111", -- numero F
        "1111111" when others;  -- enable desligado
    S0 <= out_aux(0);
    S1 <= out_aux(1);
    S2 <= out_aux(2);
    S3 <= out_aux(3);
    S4 <= out_aux(4);
    S5 <= out_aux(5);
    S6 <= out_aux(6);
end architecture behav;
