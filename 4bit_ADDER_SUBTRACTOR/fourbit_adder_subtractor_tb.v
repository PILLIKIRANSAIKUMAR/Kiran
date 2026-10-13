`timescale 1ns / 1ps

module fourbit_adder_subtractor_tb( );
reg [3:0]A,B;
reg C;
wire [3:0]S;
wire carry;
fourbit_adder_subtractor dut (.A(A),.B(B),.C(C),.S(S),.carry(carry));
initial 
begin  
$monitor("Time=%0t,A=%d,B=%d,C=%b,S=%d,carry=%b",$time,A,B,C,S,carry);  //inputs to adder and subtractor
A='d0;B='d0;C=1'b0;//adder
#10 A='d10;B='d5;C=1'b0;//adder
#10 A='d11;B='d5;C=1'b1;//subtractor
#10 A='d9;B='d3;C=1'b0;//adder
#10 A='d12;B='d6;C=1'b1;//subtractor
#10 A='d9;B='d5;C=1'b0;//adder
#10 A='d15;B='d9;C=1'b1;//subtractor
#10 A='d3;B='d9;C=1'b0;//adder
#10 A='d12;B='d10;C=1'b1;//subtractor
#10 $finish;
end
endmodule
