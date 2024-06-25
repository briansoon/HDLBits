// Exercise 2-4-3: If Statement
module Mux2to1 (
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always
);
    // select signal for mux
    wire [1:0] sel;
    assign sel = {sel_b1,sel_b2};

    // assign
    assign out_assign = (sel == 2'b11) ? b : a;

    // always
    always @(*) begin
        if (sel == 2'b11) out_always = b;
        else out_always = a;
    end
endmodule