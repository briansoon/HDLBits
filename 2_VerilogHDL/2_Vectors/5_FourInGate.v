// Exercise 2-2-5: Four-Input Gates
module FourInGate (
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    // AND op, OR op, XOR op
    assign {out_and,out_or,out_xor} = {&in,|in,^in};

    // Beginner
    /*
    assign out_and = &in;
    assign out_or = |in;
    assign out_xor = ^in;
    */
endmodule