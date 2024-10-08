// Test bench for NOT gate
module tb_not_gate();

    reg a;           // Input (reg type for test bench)
    wire y;          // Output (wire type for test bench)

    // Instantiate the NOT gate module
    not_gate uut (
        .a(a),      // Connect the input
        .y(y)       // Connect the output
    );

    // Test stimulus
    initial begin
        // Display headers for output
        $monitor("Time: %0t | a = %b | y = %b", $time, a, y);
        
        // Apply input stimulus
        a = 0;       // Test case: a = 0
        #10;         // Wait for 10 time units
        
        a = 1;       // Test case: a = 1
        #10;         // Wait for 10 time units

        $stop;       // Stop the simulation
    end

endmodule
