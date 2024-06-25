// Exercise 3-1-1-14: Thermostat
module Thermostat (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
);
    // 2 modes: heating (mode = 1), cooling (mode = 0)

    // heater when too cold
    assign heater = mode & too_cold;
    
    // aircon when too hot
    assign aircon = ~mode & too_hot;

    // fan for circulation
    assign fan = heater | aircon | fan_on;
endmodule