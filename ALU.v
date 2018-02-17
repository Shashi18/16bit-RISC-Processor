module ALU(ain,bin,func,result,z);
input [7:0]ain;
input [7:0]bin;
output reg[7:0]result;
reg carry,temp=0;
input [3:0]func;
output reg z;
//wire [7:0]result;
//assign n = result[7];
always @(ain or bin)begin
if(func==4'b0000)begin
{temp,result} = ain + bin;
carry = temp;
if(result==0)
z=1;
end
else if(func==4'b0001)begin
{temp,result} = ain - bin;
carry = temp;
if(result==0)
z=1;
end
else if(func==4'b0010)begin
{temp,result} = ain + 1;
carry = temp;
if(result==0)
z=1;
end
else if(func==4'b0011)begin
{temp,result} = ain - 1;
carry = temp;
if(result==0)
z=1;
end
else if(func==4'b0100)begin
result = ain | bin;
carry = 0;
if(result==0)
z=1;end //OR
else if(func==4'b0101)begin 
result = ain & bin;
carry = 0;
if(result==0)
z=1;end //AND
else if(func==4'b0110)begin 
result = ain^bin;
carry = 0;
if(result==0)
z=1;end //XOR
else if(func==4'b0111)begin 
result[0] = ~(ain[0]&bin[0]);
result[1] = ~(ain[1]&bin[1]);
result[2] = ~(ain[2]&bin[2]);
result[3] = ~(ain[3]&bin[3]);
result[4] = ~(ain[4]&bin[4]);
result[5] = ~(ain[5]&bin[5]);
result[6] = ~(ain[6]&bin[6]);
result[7] = ~(ain[7]&bin[7]);
carry = 0;
if(result==0)
z=1;end //NAND
else if(func==4'b1000)begin 
result[0] = ~ain[0];
result[1] = ~ain[1];
result[2] = ~ain[2];
result[3] = ~ain[3];
result[4] = ~ain[4];
result[5] = ~ain[5];
result[6] = ~ain[6];
result[7] = ~ain[7];
carry = 0;
if(result==0)
z=1;end //NOT
else begin 
result = 4'bxxxx;
carry = 0;
end //Default
if(result==0)
z = 1'b1;
else
z = 0;
end

endmodule
