`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2024 15:08:18
// Design Name: 
// Module Name: testbench
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


module testbench();
reg [7:0]a,b;
wire [14:0]c;

parmult p1 (a,b,c);

initial 
begin
a = 8'b0000_1000; b = 8'b0000_1000;
#30 a = 8'b1111_1111; b = 8'b1111_1111;
#30 a = 8'b0001_0011; b = 8'b0011_0111;
#30 a = 8'b0010_1100; b = 8'b0110_1010;
#30 a = 8'b1101_1010; b = 8'b0101_0110;
#30 a = 8'b1111_1011; b = 8'b1011_1110;//
#30 a = 8'b1111_0100; b = 8'b1001_1100;
#30 a = 8'b1101_1111; b = 8'b1011_1010;
#30 a = 8'b1001_1001; b = 8'b1111_1101;
#100 $stop;
end
endmodule
