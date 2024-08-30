`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2024 10:52:46
// Design Name: 
// Module Name: convol
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


module convol#(parameter m=6,n=5)(clk,rst,A,B,out); 
input clk,rst;
input [7:0]A;
input [7:0]B;
output reg [7:0]out=0;

reg done;

reg [7:0]reg_A[0:m+n-2];
reg [7:0]reg_B[0:m+n-2];

reg [7:0]sum[0:m+n-2];
reg [7:0]sum1[0:m+n-2];

reg [n:0]i,j;
reg [1:0]state=0,next_state=0;


always@(posedge clk)
begin
if(rst)
    state<=0;
else 
    state<=next_state;
end


always@(*)
begin
case(state)
    0: begin
       next_state=1;
       done=0;
       end
    1: begin
       next_state=1;
       done=0;
       if(i==m+n-2)
          next_state=2;
       end
    2: begin
       next_state=2;
       done=0;
       if((i==m+n-2)&&(j==m+n-2))
          begin
          next_state=3;
          end
       end
    3: begin
       next_state=3;
       done=0;
       if(i==(m+n-2))
          begin
          next_state=1;
          done=1;
          end
       end
endcase
end



always@(posedge clk)
begin
case(state)
    0:  begin
        i<=0;
        j<=0;
        end
    1:  begin
            out=0;
            if(i<m)
                reg_A[i]<=A;
            else
                reg_A[i]<=0;
                
            if(i<n)
                reg_B[i]<=B;
            else
                reg_B[i]<=0;
                
            if(i<m+n-2)
                i<=i+1;
            else
                begin
                i<=0;
                j<=0;
                end
         end
            
    2:  begin
        if(j==0)
            begin
            sum[i]=reg_A[i]*reg_B[j];
            end
            
        else
            begin
            if(i<j)
                sum[i]=sum1[i]+0;
            else
                sum[i]=sum1[i]+reg_A[i-j]*reg_B[j];
            end
            
        sum1[i]=sum[i];
        
        if(i<m+n-2)
            i<=i+1;
        else
            begin
            i<=0;
            if(j<m+n-2)
                j<=j+1;
            else
                begin
                j<=0;
                end
            end
        end
        
     3: begin
        out=0;
        if(i<(m+n-1))
            out<=sum1[i];
            
        if(i<(m+n-2))
           i<=i+1;
        else
           begin
           i<=0;
           j<=0;
           end
        end
endcase
end



endmodule
