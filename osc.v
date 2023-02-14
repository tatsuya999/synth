module osc(
	input wire cap,
	inout wire res,
	output wire vib
	);

assign res = ~cap;
assign vib = ~res;

endmodule