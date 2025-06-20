`timescale 1ns / 1ps

module tb ();
    reg clk;

    initial begin
        clk = 0; // Initialize clock to 0
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    initial begin
        // Run the simulation for 100 time units
        #100;
        $finish; // End the simulation
    end
    reg reset;
    reg d;
    wire q;
    initial begin
        reset = 1; // Start with reset high
        d = 0; // Initialize d to 0
        #10 reset = 0; // Release reset after 10 time units
        #10 d = 1; // Change d to 1 after another 10 time units
        #10 d = 0; // Change d back to 0 after another 10 time units
        #10 d = 1; // Change d to 1 again after another 10 time units
    end

    // Instantiate the dffr module

    dffr dut(
        .clk(clk),
        .reset(reset),
        .d(d),
        .q(q)
    );

        initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);
    end
    initial begin
        $monitor("Time: %0t, Reset: %b, D: %b, Q: %b", $time, reset, d, q);
    end
endmodule