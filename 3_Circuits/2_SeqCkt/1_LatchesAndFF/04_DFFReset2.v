// Exercise 3-2-1-4: DFF With Reset Value
module DFF_Reset2 (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
);
    reg [7:0] q_r;
    assign q = q_r;

    always @(negedge clk) begin
        if (reset) q_r <= 8'h34;
        else q_r <= d;
    end
endmodule