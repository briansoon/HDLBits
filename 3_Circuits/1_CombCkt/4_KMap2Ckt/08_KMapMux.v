// Exercise 3-1-4-8: K-Map Implemented with Mux
module KMap_Mux (
    input c,
    input d,
    output [3:0] mux_in
);
    /* 
    cd\ab 00 01 11 10
    -----------------
    00    0  0  0  1
    01    1  0  0  0
    11    1  0  1  0
    10    1  0  0  1
    */

    // treat ab as sel
    assign mux_in[0] = c | d;
    assign mux_in[1] = 0;
    assign mux_in[2] = ~d; 
    assign mux_in[3] = c & d;
endmodule