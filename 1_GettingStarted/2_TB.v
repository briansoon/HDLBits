// Testbench for Exercise 1-2: Output Zero
module tb;
// inputs as registers, outputs as wires
wire zero;

// unit under test (UUT)
zero_out UUT(.zero(zero));

// creates fsdb file for nWave debugging
initial begin
    $fsdbDumpfile("Ex2.fsdb");
    $fsdbDumpvars(0, tb, "+mda");
end

// test
initial begin
    #5 $finish;
end

endmodule