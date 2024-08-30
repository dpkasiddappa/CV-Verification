`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 22:22:29
// Design Name: 
// Module Name: div1
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

module div1(  input [31:0] a,
    input [31:0] b, 
    output reg [31:0] out
    );
reg [26:0]a1,a2,a3,a4,a5;
reg [3:0]q;
reg [26:0]M;
reg k;
always @ (a or b)
begin
    out[31]=a[31]^b[31];
    a1={1'b1,25'd0}-{3'b001,b[22:0]};
    a2={1'b1,25'd0}-(2*{3'b001,b[22:0]});
    a3={1'b1,25'd0}-(3*{3'b001,b[22:0]});
    a4={1'b1,25'd0}-(4*{3'b001,b[22:0]});
    a5={1'b1,25'd0}-(5*{3'b001,b[22:0]});
    if(a1[26]==1)
        q=3'd0;
    else if(a2[26]==1)
        q=3'd1;
    else if(a3[26]==1)
        q=3'd2;
    else if(a4[26]==1)
        q=3'd3;
    else if(a5[26]==1)
        q=3'd4;
M={1'b1,a[22:0]}*q;
out[30:23]=(M[26]==1) ? (a[30:23]-b[30:23]+8'd126) :(a[30:23]-b[30:23]+8'd127);
          out[22:0]=(M[26]==1)  ? M[25:3] : M[24:2];
end    
endmodule
