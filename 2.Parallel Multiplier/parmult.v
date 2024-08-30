`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2024 14:16:45
// Design Name: 
// Module Name: parmult
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


module parmult(a,b,c);
input [7:0]a,b;
output [14:0]c;

wire pp01,pp11,pp21,pp31,pp41,pp51,pp61,pp71, pp02,pp12,pp22,pp32,pp42,pp52,pp62,pp73;
wire pp03,pp13,pp23,pp33,pp43,pp53,pp63,pp73, pp04,pp14,pp24,pp34,pp44,pp54,pp64,pp74;
wire pp05,pp15,pp25,pp35,pp45,pp55,pp65,pp75, pp06,pp16,pp26,pp36,pp46,pp56,pp66,pp76;
wire  c0, c1, c2, c3, c4, c5, c6, c7,c8, c9, c10;
wire c11, c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30;
wire c31, c32, c33, c34, c35, c36, c37, c38,c39, c40,c41,c42,c43,c44,c45,c46,c47,c48,c49,c50;
wire c51, c52, c53, c54, c55;

fulladder f0 (a[1]*b[0], a[0]*b[1], 1'b0, pp01, c0);
fulladder f1 (a[2]*b[0], a[1]*b[1], c0, pp11, c1);
fulladder f2 (a[3]*b[0], a[2]*b[1], c1, pp21, c2);
fulladder f3 (a[4]*b[0], a[3]*b[1], c2, pp31, c3);
fulladder f4 (a[5]*b[0], a[4]*b[1], c3, pp41, c4);
fulladder f5 (a[6]*b[0], a[5]*b[1], c4, pp51, c5);
fulladder f6 (a[7]*b[0], a[6]*b[1], c5, pp61, c6);
fulladder f7 (a[7]*b[0], a[7]*b[1], c6, pp71, c7);


fulladder f8 (pp11, a[0]*b[2], 1'b0, pp02, c8);
fulladder f9 (pp21, a[1]*b[2], c8, pp12, c9);
fulladder f10 (pp31, a[2]*b[2], c9, pp22, c10);
fulladder f11 (pp41, a[3]*b[2], c10, pp32, c11);
fulladder f12 (pp51, a[4]*b[2], c11, pp42, c12);
fulladder f13 (pp61, a[5]*b[2], c12, pp52, c13);
fulladder f14 (pp71, a[6]*b[2], c13, pp62, c14);
fulladder f15 (pp71, a[7]*b[2], c14, pp72, c15);


fulladder f16 (pp12, a[0]*b[3], 1'b0, pp03, c16);
fulladder f17 (pp22, a[1]*b[3], c16, pp13, c17);
fulladder f18 (pp32, a[2]*b[3], c17, pp23, c18);
fulladder f19 (pp42, a[3]*b[3], c18, pp33, c19);
fulladder f20 (pp52, a[4]*b[3], c19, pp43, c20);
fulladder f21 (pp62, a[5]*b[3], c20, pp53, c21);
fulladder f22 (pp72, a[6]*b[3], c21, pp63, c22);
fulladder f23 (pp72, a[7]*b[3], c22, pp73, c23);


fulladder f24 (pp13, a[0]*b[4], 1'b0, pp04, c24);
fulladder f25 (pp23, a[1]*b[4], c24, pp14, c25);
fulladder f26 (pp33, a[2]*b[4], c25, pp24, c26);
fulladder f27 (pp43, a[3]*b[4], c26, pp34, c27);
fulladder f28 (pp53, a[4]*b[4], c27, pp44, c28);
fulladder f29 (pp63, a[5]*b[4], c28, pp54, c29);
fulladder f30 (pp73, a[6]*b[4], c29, pp64, c30);
fulladder f31 (pp73, a[7]*b[4], c30, pp74, c31);


fulladder f32 (pp14, a[0]*b[5], 1'b0, pp05, c32);
fulladder f33 (pp24, a[1]*b[5], c32, pp15, c33);
fulladder f34 (pp34, a[2]*b[5], c33, pp25, c34);
fulladder f35 (pp44, a[3]*b[5], c34, pp35, c35);
fulladder f36 (pp54, a[4]*b[5], c35, pp45, c36);
fulladder f37 (pp64, a[5]*b[5], c36, pp55, c37);
fulladder f38 (pp74, a[6]*b[5], c37, pp65, c38);
fulladder f39 (pp74, a[7]*b[5], c38, pp75, c39);


fulladder f40 (pp15, a[0]*b[6], 1'b0, pp06, c40);
fulladder f41 (pp25, a[1]*b[6], c40, pp16, c41);
fulladder f42 (pp35, a[2]*b[6], c41, pp26, c42);
fulladder f43 (pp45, a[3]*b[6], c42, pp36, c43);
fulladder f44 (pp55, a[4]*b[6], c43, pp46, c44);
fulladder f45 (pp65, a[5]*b[6], c44, pp56, c45);
fulladder f46 (pp75, a[6]*b[6], c45, pp66, c46);
fulladder f47 (pp75, a[7]*b[6], c46, pp76, c47);

fulladder f48 (pp16, (~a[0])*b[7], b[7], c[7], c48);
fulladder f49 (pp26, (~a[1])*b[7], c48, c[8], c49);
fulladder f50 (pp36, (~a[2])*b[7], c49, c[9], c50);
fulladder f51 (pp46, (~a[3])*b[7], c50, c[10], c51);
fulladder f52 (pp56, (~a[4])*b[7], c51, c[11], c52);
fulladder f53 (pp66, (~a[5])*b[7], c52, c[12], c53);
fulladder f54 (pp76, (~a[6])*b[7], c53, c[13], c54);
fulladder f55 (pp76, (~a[7])*b[7], c54, c[14], c55);



assign c[0] = a[0]*b[0];
assign c[1] = pp01;
assign c[2] = pp02;
assign c[3] = pp03;
assign c[4] = pp04;
assign c[5] = pp05;
assign c[6] = pp06;

endmodule
