`timescale 1ns/1ns
`include "demux_estru.v"

module demux_estru_tb;

    reg D;
    reg [1:0] S;
    wire [3:0] Y;

    demux_estru uut(D, S, Y);

    initial begin
        $dumpfile("demux_estru_tb.vcd");
        $dumpvars(0, demux_estru_tb);

        D = 1'b1;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;
        
        $display("Teste completo");
    end

endmodule