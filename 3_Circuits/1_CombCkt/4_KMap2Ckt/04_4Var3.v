// Exercise 3-1-4-4: 4-Variable 3
module KMap4Var_3 (
    input a,
    input b,
    input c,
    input d,
    output out
);
    /* 
    cd\ab 00 01 11 10
    -----------------
    00    0  1  0  1
    01    1  0  1  0
    11    0  1  0  1
    10    1  0  1  0
    */

    assign out = a ^ b ^ c ^ d;
endmodule