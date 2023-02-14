module top(
	input wire clk,
	input wire cap1,
	inout wire res1,
	inout wire vib1,
	output wire out
	);

osc osc(
	.cap(cap1), .res(res1), .vib(vib1)
	);

dfilter dfilter(
	.indata(indata), .clk(clk), .out(out)
	);

assign indata = vib1;

endmodule
