`timescale 1ns/1ns
`include "sistema_gate.v"

module sistema_tb;

    reg P, W, M, S;
    wire A;
    sistema_gate uut(P, W, M, S, A);

    initial begin
        $dumpfile("sistema_tb.vcd");
        $dumpvars(0, sistema_tb);

        P = 0; W = 0; M = 0; S = 0; #20;
        P = 0; W = 0; M = 0; S = 1; #20;
        P = 0; W = 0; M = 1; S = 0; #20;
        P = 0; W = 0; M = 1; S = 1; #20;
        P = 0; W = 1; M = 0; S = 0; #20;
        P = 0; W = 1; M = 0; S = 1; #20;
        P = 0; W = 1; M = 1; S = 0; #20;
        P = 0; W = 1; M = 1; S = 1; #20;
	    P = 1; W = 0; M = 0; S = 0; #20;
        P = 1; W = 0; M = 0; S = 1; #20;
        P = 1; W = 0; M = 1; S = 0; #20;
        P = 1; W = 0; M = 1; S = 1; #20;
        P = 1; W = 1; M = 0; S = 0; #20;
        P = 1; W = 1; M = 0; S = 1; #20;
        P = 1; W = 1; M = 1; S = 0; #20;
        P = 1; W = 1; M = 1; S = 1; #20;

        $display("Teste completo");
    end

endmodule