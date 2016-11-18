module segDecoder(control, display);

input [0:3] control;
output reg [0:6] display;

always @ (control[0] or control[1] or control[2] or control[3])
begin
	case({control[0], control[1], control[2], control[3]})
		4'd0 : display = 7'd63;
		4'd1 : display = 7'd48;
		4'd2 : display = 7'd109;
		4'd3 : display = 7'd121;
		4'd4 : display = 7'd51;
		4'd5 : display = 7'd91;
		4'd6 : display = 7'd95;
		4'd7 : display = 7'd112;
		4'd8 : display = 7'd127;
		4'd9 : display = 7'd123;
		4'd10 : display = 7'd119;
		4'd11 : display = 7'd31;
		4'd12 : display = 7'd78;
		4'd13 : display = 7'd61;
		4'd14 : display = 7'd79;
		4'd15 : display = 7'd71;
	endcase
end

endmodule
