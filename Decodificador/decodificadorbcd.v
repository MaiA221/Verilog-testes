module decodificadorbcd(A, enable, S);

    input [2:0] A;
    input enable;
    output reg [7:0] S;

    always @ (A) begin
        if (enable == 1)
            case(A)
                3'b000: S = 8'b00000001;
                3'b001: S = 8'b00000010;
                3'b010: S = 8'b00000100;
                3'b011: S = 8'b00001000;
                3'b100: S = 8'b00010000;
                3'b101: S = 8'b00100000;
                3'b110: S = 8'b01000000;
                3'b111: S = 8'b10000000;
                default: S = 8'b00000000;
            endcase
        else
            S = 8'b00000000;
    end

endmodule