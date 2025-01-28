`timescale 1ns / 1ps
module FA_STR(x,y,z,s,cy);

input x,y,z;
output s,cy;

wire w1,w2,w3;

HA_DF HA1 (x,y,w1,w2);
HA_DF HA2 (z,w1,s,w3);

or n1 (cy,w2,w3);

endmodule
