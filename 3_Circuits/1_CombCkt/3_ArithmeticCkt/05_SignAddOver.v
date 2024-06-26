// Exercise 3-1-3-5: Signed Addition Overflow
module SignAddOver (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);
    // sum directly with '+'
    assign s = a + b;

    // overflow
    assign overflow = ((~s[7] & a[7] & b[7]) | (s[7] & ~a[7] & ~b[7]))? 1 : 0;
endmodule