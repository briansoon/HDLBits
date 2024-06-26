// Exercise 3-2-1-11: Mux and DFF 1
module MuxNDFF1 (
    input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q
);
    //seq
    always @(posedge clk) begin
        Q <= L ? r_in : q_in;
    end
endmodule