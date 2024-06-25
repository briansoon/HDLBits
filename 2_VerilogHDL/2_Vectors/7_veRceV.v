// Exercise 2-2-7: Vector Reversal 1
module veRceV (
    input [7:0] in,
    output [7:0] out
);
    assign out = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};

    // for loop method
    /*
    reg [7:0] out_r;
    assign out = out_r;

    integer i;
    always @(*) begin
        for (i = 0; i < 8; i = i + 1) begin
            out_r[i] = in[7-i];
        end
    end
    */

    // genvar method
    /*
    generate
        genvar i;
        for (i = 0; i < 8; i = i + 1)
        begin: vec_reverse
            assign out[i] = in[7-i];
        end
    endgenerate
    */
endmodule