module floprc #(parameter H = 8) (input logic clk, reset, clear, input logic [H-1:0] d, output logic [H-1:0] q);
always_ff @(posedge clk, posedge reset)
if (reset) q <= 0;
else
if (clear) q <= 0;
else q <= d;
endmodule 