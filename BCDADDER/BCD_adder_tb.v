`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2026 10:25:41
// Design Name: 
// Module Name: BCD_adder_tb
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


module BCD_adder_tb();
reg [3:0]A,B;
reg C;
wire [3:0]sum;
wire carry;
BCD_bit_adder dut (.A(A),.B(B),.C(C),.sum(sum),.carry(carry));
initial begin
$monitor("Time=%0t,A=%d,B=%d,C=%b,sum=%d,carry=%b",$time,A,B,C,sum,carry);
A=0000;B=00000;C=0;
#10 A=4'b0011;B=4'b0101;C=0; //3+5
#10 A=4'b0111;B=4'b0101;C=1; //7+5+1
#10 A=4'b1000;B=4'b1010;C=0; //8+9
#10 A=4'b0100;B=4'b0101;C=1; //4+5+1
#10 A=4'b0010;B=4'b0011;C=1; //2+3+1
#10 A=4'b0011;B=4'b0111;C=1; //2+7+1
#10 A=4'b1000;B=4'b0001;C=0; //8+1
#10 $finish;
end
endmodule
