`timescale 1ns / 1ps
module CLA_TB;
reg [3:0] A;
reg [3:0] B;
reg C_IN;
wire [3:0] SUM;
wire C_OUT;

CLA UUT(
.A(A),
.B(B),
.C_IN(C_IN),
.SUM(SUM),
.C_OUT(C_OUT)
);
initial begin 
 A =4'b0001; B = 4'b1111; C_IN = 0; #10;
 A =4'b0010; B = 4'b0111; C_IN = 0; #10;
 A =4'b0011; B = 4'b0101; C_IN = 0; #10;
 A =4'b0100; B = 4'b0000; C_IN = 0; #10;
 $finish;
 end
endmodule






