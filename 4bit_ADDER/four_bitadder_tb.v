`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2026 22:21:50
// Design Name: 
// Module Name: four_bitadder_tb
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

//testbench for four bitadder
module four_bitadder_tb();
reg [3:0] A,B;
reg C;
wire [3:0]sum;
wire carry;
four_bit_adder dut(.A(A),.B(B),.C(C),.sum(sum),.carry(carry));
always@(A,B,C) 
$strobe("%t,A=%d,B=%d,C=%b,sum=%d,carry=%b",$time,A,B,C,sum,carry);
initial 
begin
A='d0;B='d0;C='b0;
#5 A='d5;B='d6;C='b0;
#5 A='d1;B='d10;C='b1;
#5 A='d2;B='d13;C='b0;
#5 $finish;
end
endmodule
