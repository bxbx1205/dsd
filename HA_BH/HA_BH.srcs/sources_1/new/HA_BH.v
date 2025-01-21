`timescale 1ns / 1ps

module FA_BH(a,b,c,sum,co);

input a,b,c;
output reg sum,co;

always@(a or b or c)
    begin
    
    sum = a^b^c;
    co=(a&b)+(b&c)+(a&c);
end

endmodule
