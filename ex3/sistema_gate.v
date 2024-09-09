module sistema_gate(P, W, M, S, A);

    input P, W, M, S;
    output A;

    assign A = (W & S) | (P & S) | M;

endmodule