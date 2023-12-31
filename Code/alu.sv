module alu(input logic [31:0] a,b, input logic [2:0] aluctrl, output logic [31:0] out, output logic [3:0] ALUFlags);  
logic z, neg, c, v;
logic [31:0] temp;
logic cout;
mux2 #(32) m2(b,~b,aluctrl[0],temp);
always_ff@(*)
begin
case(aluctrl)
3'b000: out <= a & temp;
3'b001: out <= a | b;
3'b010: out <= a ^ b;
3'b011: out <= a & temp; 
3'b100: {cout,out} <= a + temp;
3'b101: {cout,out} <= a + temp + 1;
default: out = 32'bx;
endcase
end
assign z = (out == 0);
assign neg = out[31]& ~(aluctrl[2]);
assign c = aluctrl[2] & cout;
assign v = (~aluctrl[1]) & (a[31] ^ out[31]) & ~(aluctrl[0] ^ a[31] ^ b[31]);
assign ALUFlags = {neg, z, c, v};  
endmodule
