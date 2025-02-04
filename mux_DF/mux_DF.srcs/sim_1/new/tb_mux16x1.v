`timescale 1ns / 1ps

module tb_mux16x1;
    reg [15:0] i;   
    reg [3:0] s;    
    wire y;         
    
    mux16x1 uut (.i(i),.s(s),.y(y));

    initial begin
        
        i = 16'h1001; 
        s = 4'b0000;
         
        $monitor("Time = %0t | s = %b | i = %h | y = %b", $time, s, i, y);
        
        repeat (16) 
        begin
            #10 s = s + 1; 
        end
        
        #10 $finish;
    end
endmodule