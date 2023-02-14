module dfilter(
	input indata,clk,
	output out
	);
	reg [5:0] counter;
	reg [14:0] d_clk=15'd0;
	reg [6:0] filter;
	reg after_data;
	
	always@(posedge clk)
	begin
		d_clk <= d_clk + 15'd1;
		if(d_clk == 15'd446)begin
			filter <= {filter[6:0],indata};
			counter <= filter[0]+filter[1]+filter[2]+filter[3]+filter[4]+filter[5]+filter[6];
			d_clk <= 15'd0;
			if(counter > 6'd5)begin
				after_data <= 1'b1;
			end if(counter < 6'd2) begin
				after_data <= 1'b0;
			end
		end
	end
	
	assign out = after_data;
	
endmodule