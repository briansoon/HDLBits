// Exercise 2-4-4: If Statement Latches 
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //
    
    // fix latches
    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        // fix
        else
            shut_off_computer = 0;
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
        // fix
        else
            keep_driving = 0;
    end

endmodule