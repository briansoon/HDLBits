// Exercise 3-2-1-6: DFF With Byte Enable
module DFF_ByteEn (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
    reg [15:0] q_r, d_r;
    assign q = q_r;

    // seq
    always @(posedge clk) begin
        if (!resetn) 
            q_r <= 0;
        else 
            q_r <= d_r;  
    end

    // comb
    always @(*) begin
        case (byteena)
            2'b00: d_r = q_r;
            2'b01: d_r = {q_r[15:8],d[7:0]};
            2'b10: d_r = {d[15:8],q_r[7:0]};
            2'b11: d_r = d;
        endcase
    end
endmodule