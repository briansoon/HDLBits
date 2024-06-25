// Exercise 2-5-5: Combinational For-Loop: 255-bit Population Count
module PopCount (
    input [254:0] in,
    output [7:0] out
);
    reg [7:0] out_r;
    assign out = out_r;

    integer i;
    always @(*) begin
        out_r = 8'b0; // initialise value
        for (i = 0; i < 255; i = i + 1) begin
            out_r = out_r + in[i];
        end
    end
endmodule