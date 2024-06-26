// Exercise 3-2-1-5: DFF With Async Reset
module DFF_AsyncReset (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    reg [7:0] q_r;
    assign q = q_r;

    always @(posedge clk or posedge areset) begin
        if (areset) q_r <= 0;
        else q_r <= d;
    end
endmodule