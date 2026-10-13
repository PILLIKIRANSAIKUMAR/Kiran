`timescale 1ns / 1ps

module fourbit_adder_subtractor(input [3:0]A,B,input C,output reg[3:0]S,output reg carry);
reg [3:0]b;
always@(A,B,C) begin
b=B^{4{C}};//every B bit is Ex-or with carry
{carry,S}=A+b+C;
end
endmodule
