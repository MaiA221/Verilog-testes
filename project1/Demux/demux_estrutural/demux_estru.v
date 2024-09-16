module demux_estru(D, S, Y);

    input D;
    input [1:0] S;
    output [3:0] Y;

    wire n_d0, n_d1, y1, y2, y3, y4;

    not(n_d0, S[0]);
    not(n_d1, S[1]);

    and(Y[0], n_d0, n_d1, D);
    and(Y[1], S[0], n_d1, D);
    and(Y[2], n_d0, S[1], D);
    and(Y[3], S[0], S[1], D);

endmodule