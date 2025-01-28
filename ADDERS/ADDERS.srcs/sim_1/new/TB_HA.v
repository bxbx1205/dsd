`timescale 1ns / 1ps

module TB_HA();
reg a_tb,b_tb;
wire sum_tb,co_tb;
HA_DF A1 (a_tb,b_tb,sum_tb,co_tb);

initial
begin
a_tb = 1'b0 ; b_tb = 1'b0;
#5 a_tb = 1'b0 ; b_tb = 1'b1;
#5 a_tb = 1'b1 ; b_tb = 1'b0;
#5 a_tb = 1'b1 ; b_tb = 1'b1;
#5 
$finish;
end
endmodule
