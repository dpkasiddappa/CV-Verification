`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 22:21:24
// Design Name: 
// Module Name: mult1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mult1(a,b,y);
input [31:0]a,b;
output [31:0]y;
reg [22:0]s;
wire [22:0]m;
wire [47:0]prod;
wire [1:0]norm;

assign prod={1'b1,a[22:0]}*{1'b1,b[22:0]};
assign y[31]=a[31]^b[31];
assign y[30:23]=a[30:23]+b[30:23]-127+prod[47];
always@(*)
begin
if(prod[47])
 s[22:0]=prod[46:24];

else 
 s[22:0]=prod[45:23];
end

assign y[22:0]=s;
endmodule
