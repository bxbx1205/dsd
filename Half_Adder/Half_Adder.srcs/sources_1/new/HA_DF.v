`timescale 1ns / 1ps

module HA_DF(A,B,sum,carry);

input A,B;
output sum,carry;

assign sum=A^B;
assign carry = A&B;
       
endmodule

