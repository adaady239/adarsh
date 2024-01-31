`timescale 1ns / 1ps

module alu_impl_tb;
//Input signals assignment
reg [3:0] a, b;
reg [3:0] sel;
//Output signal assignment
wire [7:0] y;
//Interger for loop
integer i = 0;
//Instantiating the main module
alu_impl alu_dut
(.a(a),
.b(b),
.sel(sel),
.y(y));
//Initilizing the values
initial begin
  a = 4'h1;
  b = 4'h2;
  sel = 4'h0;
  #10;
  //for loop
    for (i=0 ; i<=15 ; i=i+1)
    begin
      a = a + 1;
      b = b + 2;
      sel = sel + 4'h1;
      #10;
    end
end
endmodule
