module mux_estru(D, S, Y);

    input [3:0] D;
    input [1:0] S;
    output Y;

    wire n_s0, n_s1, y1, y2, y3, y4;

    not(n_s0, S[0]);
    not(n_s1, S[1]);

    and(y1, n_s0, n_s1, D[0]);
    and(y2, n_s0, n_s1, D[1]);
    and(y3, n_s0, n_s1, D[2]);
    and(y4, n_s0, n_s1, D[3]);

    or(Y, y1, y2, y3, y4);

endmodule