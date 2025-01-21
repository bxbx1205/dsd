`timescale 1ns / 1ps

module HA_Struct(a,b,sum,co);
input a,b;
output sum,co;

xor x1(sum,a,b);
and a1(co,a,b);

endmodule
