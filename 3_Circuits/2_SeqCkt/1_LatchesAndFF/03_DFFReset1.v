// Exercise 3-2-1-3: DFF With Reset
module DFF_Reset (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output [7:0] q
);
    reg [7:0] q_r;
    assign q = q_r;

    always @(posedge clk) begin
        if (reset) q_r <= 0;
        else q_r <= d;
    end
endmodule