`timescale 1ns/1ns
`include "decodificadorbcd.v"

module decodificadorbcd_tb;

    reg [2:0] A;
    reg enable;
    wire [7:0] S;

    decodificadorbcd uut(A, enable, S);

    initial begin
        $dumpfile("decodificadorbcd_tb.vcd");
        $dumpvars(0, decodificadorbcd_tb);
        enable = 1;
        A = 3'b000; #20
        A = 3'b001; #20
        A = 3'b010; #20
        A = 3'b011; #20
        A = 3'b100; #20
        A = 3'b101; #20
        A = 3'b110; #20
        A = 3'b111; #20
        enable = 0; #20
        $display("Teste completo");
    end

endmodule