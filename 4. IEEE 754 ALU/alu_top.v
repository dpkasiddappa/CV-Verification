`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 22:32:55
// Design Name: 
// Module Name: alu_top
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


module alu_top(input1, input2, op, out1, out2, out3, out4);
input [31:0] input1, input2;
input op;
output [31:0]out1, out2, out3;
output  out4;

addsub1 as1(input1, input2,op, out1);
mult1 m1(input1, input2, out2);
div1 d1(input1, input2, out3);
comp1 c1(input1, input2, out4);


endmodule
