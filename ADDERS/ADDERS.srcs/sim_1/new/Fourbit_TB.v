`timescale 1ns / 1ps

module FOURBIT_ADDER_TB;

reg cin;
reg [3:0]a,b;
wire cout;
wire[3:0]sum;

 FOURBIT_ADDER a1(a,b,cin,sum,cout);
    initial
      begin
      a=4'b0000;b=4'b0000;cin=1'b0;
 #10   a=4'b1010;b=4'b1001;cin=1'b1;
 #10  a=4'b0110;b=4'b0011;cin=1'b0;
 #10 a=4'b1110;b=4'b0111;cin=1'b1;
        $finish;
       end
endmodule