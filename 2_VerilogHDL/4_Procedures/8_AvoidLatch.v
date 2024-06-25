// Exercise 2-4-8: Avoiding Latches
module AvoidLatch (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up
);
    always @(*) begin
        // default values
        {up,down,left,right} = 4'b0;

        // selection
        case (scancode)
            16'he06b: left = 1'b1;
            16'he072: down = 1'b1;
            16'he074: right = 1'b1;
            16'he075: up = 1'b1;
        endcase 
    end
endmodule