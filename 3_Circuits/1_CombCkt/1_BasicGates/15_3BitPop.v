// Exercise 3-1-1-15: 3-Bit Population Count
module PopCount (
    input [2:0] in,
    output [1:0] out
);
    reg [1:0] out_r;
    assign out = out_r;

    integer i;
    always @(*) begin
        out_r = 2'd0;
        for (i = 0; i < 3; i = i + 1) begin
            out_r = out_r + in[i];
        end
    end
endmodule