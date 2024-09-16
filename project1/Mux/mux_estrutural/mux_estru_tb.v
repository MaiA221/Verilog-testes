`timescale 1ns/1ns
`include "mux_estru.v"

module mux_estru_tb;

    reg [3:0] D;
    reg [1:0] S;
    wire Y;

    mux_estru uut(D, S, Y);

    initial begin
        $dumpfile("mux_estru_tb.vcd");
        $dumpvars(0, mux_estru_tb);

        D = 4'b0011;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;
        
        $display("Teste completo");
    end

endmodule