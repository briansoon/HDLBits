// Exercise 3-1-4-6: K-Map 1
module KMap1 (
    input [4:1] x, 
    output f
);
    /* 
    x3x4\x1x2 00 01 11 10
    ---------------------
    00        d  0  d  d
    01        0  d  1  0
    11        1  1  d  d
    10        1  1  0  0
    */

    assign f = (~x[1] & x[3]) | (x[1] & x[2] & ~x[3]);
endmodule