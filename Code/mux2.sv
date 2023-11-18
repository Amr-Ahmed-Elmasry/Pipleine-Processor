module mux2 #(parameter H = 8)(input logic [H-1:0] d0, d1, input logic s, output logic [H-1:0] y);
	assign y = s ? d1 : d0;
endmodule 