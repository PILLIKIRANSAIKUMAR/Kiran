`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 21:25:20
// Design Name: 
// Module Name: MUX16_1
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
//4*1 MUX 
module mux4_1(input [3:0]A,input[1:0]SEL,output reg Y);
always@(*) begin
case(SEL)
2'b00:Y=A[0];
2'b01:Y=A[1];
2'b10:Y=A[2];
2'b11:Y=A[3];
default:Y=1'b0;
endcase
end
endmodule

// 16*1 MUX create by usin five 4*1 MUX
module MUX16_1(input [15:0]I,input [3:0]S,output wire Yout);
wire [3:0]y;
mux4_1 M1(.A(I[3:0]),.SEL(S[1:0]),.Y(y[0]));
mux4_1 M2(.A(I[7:4]),.SEL(S[1:0]),.Y(y[1]));
mux4_1 M3(.A(I[11:8]),.SEL(S[1:0]),.Y(y[2]));
mux4_1 M4(.A(I[15:12]),.SEL(S[1:0]),.Y(y[3]));
mux4_1 M5(.A(y[3:0]),.SEL(S[3:2]),.Y(Yout));
endmodule
