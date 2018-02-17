module RAM(address,clk,data_in,data_out,re,wr);
input [7:0]address;
input [7:0]data_in;
input clk,re,wr;
output [7:0]data_out;
reg[7:0] mem [0:30];
reg[7:0] data;
assign data_out = data;
initial
mem[16]=25;
always @(posedge clk)begin
if(wr)begin
mem[address] = data_in;
end
end
always @(address or re)begin
if(re)begin
data = mem[address];
end
end

endmodule
