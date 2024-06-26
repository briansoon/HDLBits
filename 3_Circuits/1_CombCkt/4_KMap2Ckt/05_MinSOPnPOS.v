// Exercise 3-1-4-5: Minimum SOP and POS
module SOPnPOS (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
);
    // a,b,c,d
    // logic 1 when {a,b,c,d} = 2, 7, 15
    // logic 0 when {a,b,c,d} = 0, 1, 4, 5, 6, 9, 10, 13, 14
    // {a,b,c,d} = 3, 8, 11, 12  never occur aka don't care
    assign out_sop = (c & d) | (~a & ~b & c);
    assign out_pos = c & (~b | ~c | d) & (~a | ~c | d);
endmodule