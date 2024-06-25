// Exercise 2-4-2: Always Blocks (Clocked)
module XOR_AssignNAlways (
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff
);
    // assign
    assign out_assign = a ^ b;

    // always comb
    always @(*) begin
        out_always_comb = a ^ b;
    end

    // always ff
    always @(posedge clk) begin
        out_always_ff <= a ^ b;
    end
endmodule