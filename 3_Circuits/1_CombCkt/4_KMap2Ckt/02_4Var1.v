// Exercise 3-1-4-2: 4-Variable 1
module KMap4Var_1 (
    input a,
    input b,
    input c,
    input d,
    output out
);
    /*
    cd\ab 00 01 11 10
    -----------------
    00    1  1  0  1
    01    1  0  0  1
    11    0  1  1  1
    10    1  1  0  0
    */
    assign out = (~a & ~d) | (~b & ~c) | (a & c & d) | (b & c & d);
endmodule