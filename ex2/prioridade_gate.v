module prioridade_gate(A, B, TV, PC, ALE);

    input A, B;
    output TV, PC, ALE;

    assign TV = A;
    assign PC = ~A & B;
    assign ALE = ~A & ~B;

endmodule