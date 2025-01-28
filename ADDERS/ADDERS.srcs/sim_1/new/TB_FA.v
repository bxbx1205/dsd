`timescale 1ns / 1ps

module TB_FA();

reg x,y,z;
wire s,cy;

FA_STR FA1 (x,y,z,s,cy);

initial
begin
x=0;y=0;z=0;
end

//initial begin
always begin #5 x=~x; end
always begin #10 y=~y; end
always begin #20 z=~z; end
//#100
//$finish;
//end
endmodule
