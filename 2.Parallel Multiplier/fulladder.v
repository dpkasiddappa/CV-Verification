`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2024 14:55:56
// Design Name: 
// Module Name: fulladder
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


module fulladder(  input a,
                  input b,
                  input c_in,
                  output reg sum,
                  output reg c_out
                  );
 
  always @ (a or b or c_in) begin
    {c_out, sum} = a + b + c_in;   
  end
endmodule

