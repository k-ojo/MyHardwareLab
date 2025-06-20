module dffr (
    input wire clk,
    input wire reset,
    input wire d,
    output reg q
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 1'b0; // Reset the output to 0
        end else begin
            q <= d; // Capture the input on the rising edge of the clock
        end
    end
endmodule