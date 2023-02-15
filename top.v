module top(
	input wire clk,
	input wire a1,a2,a3,
	inout wire res1,res2,res3,
	inout wire vib1,vib2,vib3
	);

osc osc1(
	.cap(a1), .res(res1), .vib(vib1)
	);

osc osc2(
	.cap(a2), .res(res2), .vib(vib2)
	);

osc osc3(
	.cap(a3), .res(res3), .vib(vib3)
	);

endmodule
