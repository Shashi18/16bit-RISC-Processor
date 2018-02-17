module instruction(address,clk,opcode,jump,jiz,addA,addB,write_add,iformat,im_select);
input [15:0]address;
input clk,im_select;
output reg[3:0]opcode;
output reg[11:0] jump;
output reg[7:0] jiz;
output reg[3:0] addA;
output reg[3:0] addB;
output reg[3:0] write_add;
output reg[3:0] iformat;
reg [3:0]dest;
reg [15:0]instruction;
reg [15:0] imem[0:15];
initial begin
imem[2]<=16'b0000_0000_0000_0101; 
imem[1]<=16'b0001_0010_0011_0011; 
imem[3]<=16'b0010_0100_0010_0011;
imem[0]<=16'b0010_0000_0000_0101;
imem[4]<=16'b0010_0111_0010_0011;
imem[5]<=16'b0011_0010_0011_0010;
imem[6]<=16'b0110_0001_0001_0011;
imem[7]<=16'b0001_0110_0001_0011;
imem[8]<=16'b0110_0001_0011_0001; 
end
always @(im_select)begin
if(im_select==1)begin
dest=write_add;
instruction = imem[address];
opcode = instruction[15:12];
jump = instruction[11:0];
jiz = instruction[7:0];
addA = instruction[11:8];
addB = instruction[7:4];
write_add = instruction[3:0];
iformat = instruction[3:0];
end
end

endmodule
