`timescale 1ns / 1ps


module mux4x1 (input [1:0] s, input [3:0] i, output y);

    assign y = (s == 2'b00) ? i[0] :
               (s == 2'b01) ? i[1] :
               (s == 2'b10) ? i[2] : i[3];
endmodule

module mux16x1 (input [15:0] i, input [3:0] s, output y);
    wire [3:0] yi;

    mux4x1 m1 (s[1:0], i[3:0],   yi[0]);
    mux4x1 m2 (s[1:0], i[7:4],   yi[1]);
    mux4x1 m3 (s[1:0], i[11:8],  yi[2]);
    mux4x1 m4 (s[1:0], i[15:12], yi[3]);

    mux4x1 m5 (s[3:2], yi, y);
endmodule