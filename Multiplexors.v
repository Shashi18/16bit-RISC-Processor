module Mux1(a,b,sel,c);

input [3:0] a,b;

input sel;

output reg [3:0]c;

always @(*)begin

if(sel==0)

c = a;

else

c = b;

end

endmodule

module Mux2(a,b,sel,c);
input [7:0] a,b;
input [1:0]sel;
output reg [7:0]c;
always @(*)begin
if(sel==2'b0)
c = a;
else if(sel==2'b01)
c = b;
else if(sel==2'b10)
c = 8'b0;
end
endmodule

module Mux3(a,b,sel,c);
input [15:0] a,b;
input sel;
output reg [15:0]c;
always @(*)begin
if(sel==0)
c = a;
else
c = b;
end
endmodule
