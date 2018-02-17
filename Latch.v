module lat(in,out,clk);
input [7:0] in;
input clk;
output reg[7:0] out;
reg [7:0]memdataout;
always @ (posedge clk)
out=in;
endmodule
