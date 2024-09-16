module demux_gate(D, S, Y);

    input D;
    input [1:0] S;
    output [3:0] Y;

    assign Y[0] = (D & ~S[0] & ~S[1]);
    assign Y[1] = (D & ~S[1] & S[0]);
    assign Y[2] = (D & S[1] & ~S[0]);
    assign Y[3] = (D & S[0] & S[1]);

endmodule