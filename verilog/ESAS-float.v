`timescale 1ns / 1ps
module ESAS_float(input [31:0]A,output [15:0] final_sqrt);
wire [7:0] exponent;
wire [22:0] A_in;
wire [9:0]x,x_apprx,x_apprx2,temp_sqrt;
wire [4:0]exp,k,k_bias,exp_bias;
wire [9:0] mantissa;
wire odd;
assign exponent=A[30:23];
assign A_in= A[22:0];
assign final_sqrt={1'b0,exp_bias,mantissa[8:0],1'b0};
trunc_block tr1(.in(A_in),.out(x));
trunc_block_exp tr2(.in(exponent),.out(k_bias));
subtractor sub(.in1(k_bias),.out(k));					//bias value is subtracted from input exponent part 
ln_approx  ln(.x(x),.x_apprx(x_apprx));
shifter_2 shift1(.in(x_apprx),.out(x_apprx2));
shifter_logic shift2(.in(k),.out(exp),.odd(odd));
error_comp ec(.in(x_apprx2),.odd(odd),.out(mantissa));
adder add(.in1(exp),.out(exp_bias));					//bias value is added in output exponent part 
endmodule

module subtractor(input [4:0]in1,output reg [4:0]out);
always @(*)
out=in1-5'b01111;
endmodule

module ln_approx(input [9:0]x,output reg [9:0]x_apprx);
always @ (*)
begin
	if(x[9])
	x_apprx=x-10'b0010101111;
	else
	x_apprx=x;
end
endmodule

module shifter_2(input [9:0]in,output [9:0]out);
reg [9:0] temp;
assign out={1'b1,temp[9:1]};
always @(*)
temp=in>>2'b01;
endmodule

module shifter_logic(input [4:0]in,output reg odd,output reg [4:0]out);
always @(*)
if(in[0])
begin
out={in[4:1],1'b0}>>2'b01;
odd=1'b1;
end
else
begin
out=in>>2'b01;
odd=1'b0;
end
endmodule

module error_comp(input [9:0]in,input odd,output [9:0]out);
reg [9:0]temp,op1,op2,op3;
assign out=(odd)?temp:in;
always @(*)
begin
op1=in>>2'b10;
op2=in>>2'b11;
op3=in>>3'b101;
temp=in+op1+op2+op3;
end
endmodule

module adder(input [4:0]in1,output reg [4:0]out);
always @(*)
out=in1+5'b01111;
endmodule

module trunc_block(input [22:0]in,output [9:0]out);
assign out=in[22:13];

endmodule
module trunc_block_exp(input [7:0]in,output [4:0]out);
assign out=in[4:0];

endmodule