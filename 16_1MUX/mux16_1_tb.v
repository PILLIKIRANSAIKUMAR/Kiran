`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 21:57:39
// Design Name: 
// Module Name: mux16_1_tb
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


module mux16_1_tb( );
reg [15:0]I;
reg [3:0] S;
wire Yout;
MUX16_1 dut(.I(I),.S(S),.Yout(Yout));
integer k;
initial begin 
I=16'hACDF; //1010 1100 1101 1111
for(k=0;k<16;k=k+1)
begin
S=k;
#10 ;
$display("Time=%0t,I=%h,S=%0d,Yout=%b",$time,I,S,Yout);
end
#10 $finish;
end
endmodule


