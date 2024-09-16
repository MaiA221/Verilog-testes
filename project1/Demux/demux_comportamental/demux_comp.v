module demux_comp(D, S, Y);

    input D;
    input [1:0] S;
    output reg [3:0] Y;

   always @ (D or S) begin
        if(S == 2'b00) begin
            Y[0] = D;
            Y[1] = 0;
            Y[2] = 0;
            Y[3] = 0;
        end

        else if (S == 2'b01) begin
            Y[0] = 0;
            Y[1] = D;
            Y[2] = 0;
            Y[3] = 0;
        end

        else if (S == 2'b10) begin
            Y[0] = 0;
            Y[1] = 0;
            Y[2] = D;
            Y[3] = 0;
        end
        
        else if (S == 2'b11) begin
            Y[0] = 0;
            Y[1] = 0;
            Y[2] = 0;
            Y[3] = D;
        end
   end

endmodule