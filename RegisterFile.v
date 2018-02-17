module Register(reg_wrt,readA,clk,readB,dest,data,readA_out,readB_out);
input reg_wrt;
input [3:0]readA,readB,dest;
input [7:0]data;
input clk;
reg [7:0] Register [0:15];
initial begin
Register[0]=0;//R0 alwayscontains zero
Register[1]=2;  //Random values stored
Register[2]=4;
Register[3]=6;
Register[4]=8;
Register[5]=10; // You can change any value within this initial block
Register[6]=12;
Register[7]=14;
end
output reg [7:0]readA_out,readB_out;
always @(posedge clk)begin
readA_out <= Register[readA];
readB_out <= Register[readB];
if(reg_wrt==1)
Register[dest]=data;
end

endmodule
