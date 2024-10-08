// Module for NOT gate
module not_gate (
    input wire a,    // Input
    output wire y    // Output
);

    // NOT gate operation
    assign y = ~a;

endmodule
