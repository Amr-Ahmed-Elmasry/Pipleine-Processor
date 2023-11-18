module mux3 #(parameter H = 8) (input logic [H-1:0] d0, d1, d2, input logic [1:0] s, output logic [H-1:0] y);
	assign y = s[1] ? d2 : (s[0] ? d1 : d0);
endmodule 