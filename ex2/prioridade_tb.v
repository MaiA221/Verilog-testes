`timescale 1ns/1ns
`include "prioridade_gate.v"

module prioridade_tb;

    reg A, B;
    wire TV, PC, ALE;
    prioridade_gate uut(A, B, TV, PC, ALE);

    initial begin
        $dumpfile("prioridade_tb.vcd");
        $dumpvars(0, prioridade_tb);

        A = 0; B = 0; #20;
        A = 0; B = 0; #20;
        A = 0; B = 1; #20;
        A = 0; B = 1; #20;
        A = 1; B = 0; #20;
        A = 1; B = 0; #20;
        A = 1; B = 1; #20;
        A = 1; B = 1; #20;

        $display("Teste completo");
    end

endmodule