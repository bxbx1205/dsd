`timescale 1ns / 1ps


module FOURBIT_ADDER(a,b,cin,sum,cout);
input cin;
input [3:0]a,b;
output cout;
output [3:0]sum;
wire [2:0]w;
FA_STR f1(a[0],b[0],cin,sum[0],w[0]);
FA_STR f2(a[1],b[1],w[0],sum[1],w[1]);
FA_STR f3(a[2],b[2],w[1],sum[2],w[2]);
FA_STR f4(a[3],b[3],w[2],sum[3],cout);

endmodule