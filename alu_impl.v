`timescale 1ns / 1ps

module alu_impl(
    input [3:0] a,
    input [3:0] b,
    input [3:0] sel,
    output reg [7:0] y
    );

always@(*) 
begin
   case(sel)
     4'b0000 : y = a + b;                //Add
     4'b0001 : y = a - b;                //Subtraction
     4'b0010 : y = a * b;                //Mul
     4'b0011 : y = a / b;                //Div
     4'b0100 : y = a << 1 ;              //Left Shift A value one time
     4'b0101 : y = a >> 1;               //Right Shift A value one time
     4'b0110 : y = b << 2;               //Left Shift B value two time
     4'b0111 : y = {a[2:0], a[3]};       //Rotate Left
     4'b1000 : y = {a[0], a[3:1]};       //Rotate Right
     4'b1001 : y = a & b;                //AND
     4'b1010 : y = a | b;                //OR
     4'b1011 : y = ~a;                   //NOT
     4'b1100 : y = a ^ b;                //XOR
     4'b1101 : y = ~(a ^ b);             //XNOR
     4'b1110 : y = (a>b)? 8'h1 : 8'h0;   //Greater Comparision
     4'b1111 : y = (a==b)? 8'h1 : 8'h0;  //Equal Comparision
     default : y = a + b;                //Default
   endcase
end
endmodule
