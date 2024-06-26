// Exercise 3-1-4-3: 4-Variable 2
module KMap4Var_2 (
    input a,
    input b,
    input c,
    input d,
    output out
);
    /* x = don't care
    cd\ab 00 01 11 10
    -----------------
    00    x  0  1  1
    01    0  0  x  x
    11    0  1  1  1
    10    0  1  1  1
    */

    assign out = a | ~b & c;
endmodule