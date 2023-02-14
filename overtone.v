module overtone(
	input wire basic_tone,
	input wire clk,
	output wire overtone_double
);

osc osc(.basic_tone(vib));

always@(posedge clk)
	begin
		
	end

endmodule
