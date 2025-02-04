`timescale 1ns / 1ps

module muxi_DF_tb;

    reg [3:0] i;
    reg [1:0] s;
    wire y;
    
    muxi_DF uut (i,s,y);
    
    initial 
    begin
        i = 4'b1010;
        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;
        $stop;
    end

endmodule