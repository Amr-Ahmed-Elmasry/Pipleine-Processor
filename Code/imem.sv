module imem(input logic [31:0] a, output logic [31:0] rd);
logic [31:0] RAM[2097151:0];
initial
$readmemh("memfile.dat",RAM);
assign rd = RAM[a[22:2]]; 
endmodule 