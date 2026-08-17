`timescale 1ns / 1ps
module CLA(
    input [3:0] A,
    input [3:0] B,
    input C_IN,
    output [3:0] SUM,
    output C_OUT
    );    
    wire [4:0] C;
    wire [3:0] G;
    wire [3:0] P;
assign P = A^B;
assign G = A&B;
assign C[0] = C_IN;
//ASSIGNING THE GENERTAE AND PROPAGATION:
assign C[1] = (G[0]|P[0]&C[0]);
assign C[2] = (G[1]|P[1]&C[1]);
assign C[3] = (G[2]|P[2]&C[2]);
assign C[4] = (G[3]|P[3]&C[3]);
// SUM FORM ALL ADDERS
assign SUM[0] = P[0]^C[0];
assign SUM[1] = P[1]^C[1];
assign SUM[2] = P[2]^C[2];
assign SUM[3] = P[3]^C[3];
// FINIAL CARRY OUT-PUT
assign C_OUT = C[4];
endmodule



