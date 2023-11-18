module adder #(parameter H=8) (input logic [H-1:0] a, b,output logic [H-1:0] y);
	assign y = a + b;
endmodule 