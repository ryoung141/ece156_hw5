module downCount(out, enable, clk, reset);

output reg [2:0] out;
input enable, clk, reset;

always @(posedge clk)
	if (reset)
		out <= 3'b110;
	else if (enable)
		out <= out - 1;

endmodule
