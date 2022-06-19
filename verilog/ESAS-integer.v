`timescale 1ns / 1ps
module proposed_sqrt(input [31:0]A,output [15:0] final_sqrt);
wire [15:0]x,x_apprx,x_apprx2,temp_sqrt;
wire [7:0]k,exp;
wire odd;
normalize nor1(.in(A),.data(x),.exp(k));
ln_approx  ln(.x(x),.x_apprx(x_apprx));
shifter_2 shift1(.in(x_apprx),.out(x_apprx2));
shifter_logic shift2(.in(k),.out(exp),.odd(odd));
error_comp ec(.in(x_apprx2),.odd(odd),.out(temp_sqrt));
shifter_final shift3(.in1(temp_sqrt),.in2(exp),.out(final_sqrt));
endmodule

//normalize the input data into range of 0 to 1
module normalize(
input [31:0]in,output [15:0]data ,output reg [7:0] exp
    );
    reg [7:0] temp; wire [31:0]temp_data;
    assign temp_data=in<<temp;
    assign data=temp_data[31:16];
    always @ (*)
	begin
	if(in[31])
	begin
	exp=8'b00011111;
	temp=8'b00000001;
	end
	else if(in[30])
	begin
	exp=8'b00011110;
	temp=8'b00000010;
	end
	else if(in[29])
	begin
	exp=8'b00011101;
	temp=8'b00000011;
	end
	else if(in[28])
	begin
	exp=8'b00011100;
	temp=8'b00000100;
	end
	else if(in[27])
	begin
	exp=8'b00011011;
	temp=8'b00000101;
	end
	else if(in[26])
	begin
	exp=8'b00011010;
	temp=8'b00000110;
	end
	else if(in[25])
	begin
	exp=8'b00011001;
	temp=8'b00000111;
	end
	else if(in[24])
	begin
	exp=8'b00011000;
	temp=8'b00001000;
	end
	else if(in[23])
	begin
	exp=8'b00010111;
	temp=8'b00001001;
	end
	else if(in[22])
	begin
	exp=8'b00010110;temp=8'b00001010;
	end
	else if(in[21])
	begin
	exp=8'b00010101;temp=8'b00001011;
	end
	else if(in[20])begin
	exp=8'b00010100;temp=8'b00001100;end
	else if(in[19])begin
	exp=8'b00010011; temp=8'b00001101; end
	else if(in[18])begin
	exp=8'b00010010; temp=8'b00001110; end
	else if(in[17])begin
	exp=8'b00010001; temp=8'b00001111; end
	else if(in[16])begin
	exp=8'b00010000;	temp=8'b00010000; end
	else if(in[15])begin
	exp=8'b00001111; temp=8'b00010001; end
	else if(in[14]) begin
	exp=8'b00001110; temp=8'b00010010; end
	else if(in[13]) begin
	exp=8'b00001101; temp=8'b00010011; end
	else if(in[12]) begin
	exp=8'b00001100; temp=8'b00010100; end
	else if(in[11]) begin
	exp=8'b00001011; temp=8'b00010101; end
	else if(in[10]) begin
	exp=8'b00001010; temp=8'b00010110; end
	else if(in[9]) begin
	exp=8'b00001001; temp=8'b00010111; end
	else if(in[8]) begin
	exp=8'b00001000;	temp=8'b00011000; end
      else if (in[7]) begin
     exp=8'b00000111; temp=8'b00011001; end
     else if(in[6]) begin
     exp=8'b00000110; temp=8'b00011010; end
     else if(in[5]) begin
     exp=8'b00000101; temp=8'b00011011; end
     else if(in[4]) begin 
     exp=8'b00000100; temp=8'b00011100; end
     else if(in[3]) begin
     exp=8'b00000011; temp=8'b00011101; end
     else if(in[2]) begin
     exp=8'b00000010; temp=8'b00011110; end
     else if(in[1]) begin
     exp=8'b00000001;    temp=8'b00011111; end
     else begin
     exp=8'b00000000; temp=8'b00100000; end
     end
endmodule

//logarithmic approximation
module ln_approx(input [15:0]x,output reg [15:0]x_apprx);

always @ (*)
if(x[15])
x_apprx=x-16'b0010101111110100;
else
x_apprx=x;

endmodule

module shifter_2(input [15:0]in,output [15:0]out);
reg [15:0] temp;
assign out={1'b1,temp[15:1]};
always @(*)
temp=in>>2'b01;
endmodule

//shifter logic 
module shifter_logic(input [7:0]in,output reg odd,output reg [7:0]out);
always @(*)
if(in[0])
begin
out={in[7:1],1'b0}>>2'b01;
odd=1'b1;
end
else
begin
out=in>>2'b01;
odd=1'b0;
end
endmodule

//error compensation 
module error_comp(input [15:0]in,input odd,output [15:0]out);
reg [15:0]temp,op1,op2,op3;
assign out=(odd)?temp:in;
always @(*)
begin
op1=in>>2'b10;
op2=in>>2'b11;
op3=in>>3'b101;
temp=in+op1+op2+op3;
end
endmodule

//final shifter value
module shifter_final(input [15:0]in1,input [7:0]in2,output reg [15:0]out);
reg [8:0]temp_wire;
always @(*)
begin
if(in2+1'b1==8'b11111111)
out=in1;
else
begin
temp_wire=9'd16-{1'b0,in2+1'b1};
out=in1>>temp_wire;
end
end
endmodule