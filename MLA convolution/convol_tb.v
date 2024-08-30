`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2024 10:54:21
// Design Name: 
// Module Name: convol_tb
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


module convol_tb();
parameter m=6,n=5;
reg clk,rst;
reg [7:0]A,B;
wire [7:0]out;

convol #(m,n) c1 (clk,rst,A,B,out);

initial clk=1;
always #5 clk=~clk;

initial
begin
rst=1'b1;A=8'd0;B=8'd0;
#100 rst=1'b0;
#10 A=8'd1;B=8'd3;
#10 A=8'd4;B=8'd2;
#10 A=8'd3;B=8'd3;
#10 A=8'd4;B=8'd2;
#10 A=8'd3;B=8'd3;
#10 A=8'd1;


end

endmodule

