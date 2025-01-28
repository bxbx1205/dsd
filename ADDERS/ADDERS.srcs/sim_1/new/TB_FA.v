`timescale 1ns / 1ps

module TB_FA();

reg x,y,z;
wire s,cy;

FA_STR FA1 (x,y,z,s,cy);

initial
begin
x=0;y=0;z=0;
end

initial begin
always #5 x=~x;
always #10 y=~y;
always #20 z=~z;
#100
$finish;
end
endmodule
