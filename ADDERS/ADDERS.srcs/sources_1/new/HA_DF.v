`timescale 1ns / 1ps

module HA_DF(a,b,sum,co);

input a,b;
output sum,co;

assign sum = a^b;
assign co = a&b;

endmodule
