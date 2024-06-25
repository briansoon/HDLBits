// Exercise 2-4-6: Priority Encoder 
module PriorEncode (
    input [3:0] in,
    output reg [1:0] pos
);
    always @(*) begin
        case (in)
            4'h0: pos = 2'd0; // no bits high
            4'h1, 4'h3, 4'h5, 4'h7, 4'h9, 4'hb, 4'hd, 4'hf: pos = 2'd0; // bit 0 high
            4'h2, 4'h6, 4'ha, 4'he: pos = 2'd1; // bit 1 high
            4'h4, 4'hc: pos = 2'd2;  // bit 2 high
            4'h8: pos = 2'd3; // bit 3 high
        endcase
    end
endmodule