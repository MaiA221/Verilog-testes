`timescale 1ns/1ns
`include "mux_comportamental.v"

module mux_comportamental_tb;

    reg [3:0] D;
    reg [1:0] S;
    wire Y;

    mux_comportamental uut(D, S, Y);

    initial begin
        $dumpfile("mux_comportamental_tb.vcd");
        $dumpvars(0, mux_comportamental_tb);

        D = 4'b0011;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;
        
        $display("Teste completo");
    end

endmodule