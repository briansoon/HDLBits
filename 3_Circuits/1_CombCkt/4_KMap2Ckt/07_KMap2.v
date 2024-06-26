// Exercise 3-1-4-7: K-Map 2
module KMap2 (
    input [4:1] x,
    output f
);
    /* 
    x3x4\x1x2 00 01 11 10
    ---------------------
    00        1  0  0  1
    01        0  0  0  0
    11        1  1  1  0
    10        1  1  0  1
    */

    assign f = (~x[2] & ~x[3] & ~x[4]) | (~x[1] & x[3]) | (x[2] & x[3] & x[4]) | (~x[2] & x[3] & ~x[4]);
endmodule