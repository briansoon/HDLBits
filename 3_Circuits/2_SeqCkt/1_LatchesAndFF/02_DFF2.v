// Exercise 3-2-1-2: DFF2
module DFF8 (
    input clk,
    input [7:0] d,
    output [7:0] q
);
    // 8-bit DFF
    always @(posedge clk) begin
        q <= d;
    end
endmodule