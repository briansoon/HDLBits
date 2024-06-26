// Exercise 3-1-2-3: 9-to-1 Mux
module Mux_9to1 (
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out
);
    reg [15:0] out_r;
    assign out = out_r;

    always @(*) begin
        case (sel)
            4'd0    : out_r = a;  
            4'd1    : out_r = b;
            4'd2    : out_r = c; 
            4'd3    : out_r = d;
            4'd4    : out_r = e;
            4'd5    : out_r = f;
            4'd6    : out_r = g;
            4'd7    : out_r = h;
            4'd8    : out_r = i;
            default : out_r = 16'hffff;
        endcase
    end
endmodule