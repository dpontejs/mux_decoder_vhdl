entity PortaAnd2 is
    port(
        input1, input2: in bit;
        saida_and2: out bit
    );
end PortaAnd2;
    
architecture behav of PortaAnd2 is
    begin
        saida_and2 <= input1 and input2;
    end architecture behav;