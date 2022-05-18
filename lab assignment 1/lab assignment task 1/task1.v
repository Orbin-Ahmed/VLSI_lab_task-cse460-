module task1(A,B,Cin,Result,Cout,add_sub);
	output [3:0] Result;
	output Cout;
	
	reg [3:0] Result;
	reg Cout;
	reg [4:0] temp;
	
	input add_sub, Cin;
	input [3:0] A, B;
	
	wire add_sub;
	
	always@(add_sub or A or B or Cin)
	begin
	if (add_sub == 1)
	temp = A + B + Cin;
	Result = temp [3:0];
	Cout = temp[4];
	if (add_sub == 0)
	temp = A - B - Cin;
	Result = temp [3:0];
	Cout = temp[4];
	end
endmodule
