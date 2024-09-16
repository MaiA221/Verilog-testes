`timescale 1ns/1ns
`include "mux_gate.v"

module mux_tb;

    reg [3:0] D;
    reg [1:0] S;
    wire Y;

    mux_gate uut(D, S, Y);

    initial begin
        $dumpfile("mux_tb.vcd");
        $dumpvars(0, mux_tb);

        D = 4'b0011;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;
        
        $display("Teste completo");
    end

endmodule