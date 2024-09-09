module semaforo_gate(A, B, verdA, verA, verdB, verB);

    input A, B;
    output verdA, verA, verdB, verB;

    assign verdA = A;
    assign verA = ~A & B;
    assign verdB = ~A & B;
    assign verB = A;

endmodule