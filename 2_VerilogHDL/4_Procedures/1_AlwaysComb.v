// Exercise 2-4-1: Always Blocks (Combinational)
module AND_gate_AlwaysNAssign (
    input a,
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    // assign
    assign out_assign = a & b;

    // always block
    always @(*) begin
        out_alwaysblock = a & b;
    end
endmodule