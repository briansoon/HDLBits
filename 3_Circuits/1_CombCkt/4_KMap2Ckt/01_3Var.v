// Exercise 3-1-4-1: 3-Variable
module KMap3Var (
    input a,
    input b,
    input c,
    output out
);
    /*
    bc\a 0 1
    --------
    00   0 1
    01   1 1
    11   1 1
    10   1 1
    */

    assign out = a | b | c;
endmodule