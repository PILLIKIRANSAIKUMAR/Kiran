`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2026 09:40:58
// Design Name: 
// Module Name: BCD_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module full_adder(input a,b,c,output reg s,co);
always@(a,b,c)
begin
s=a^b^c;
co=(a&b)|(b&c)|(c&a);
end
endmodule
//4bit adder using fulladder
module BCD_bit_adder(input [3:0] A,B, input C,output reg[3:0]sum,output reg carry);
wire c1,c2,c3,c4;
wire [3:0]S;
full_adder f1(.a(A[0]),.b(B[0]),.c(C),.s(S[0]),.co(c1));
full_adder f2(.a(A[1]),.b(B[1]),.c(c1),.s(S[1]),.co(c2));
full_adder f3(.a(A[2]),.b(B[2]),.c(c2),.s(S[2]),.co(c3));
full_adder f4(.a(A[3]),.b(B[3]),.c(c3),.s(S[3]),.co(c4));
always @(*) begin 
    if( c4 || S > 4'd9)
     begin 
     carry=1'b1;
     sum = S + 5'b00110; //if sum is greater than 9 than add 6 for BCD number 
    end
         else
        begin 
           sum = S;
         carry=1'b0;
        end
end
endmodule

