// Exercise 3-1-1-13: Ring or Vibrate?
module RingOrVib (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    // ringer when ring and no vibrate
    assign ringer = ring & ~vibrate_mode;

    // motor when ring and vibrate
    assign motor = ring & vibrate_mode;
endmodule