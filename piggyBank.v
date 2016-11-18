module piggyBank(clk, reset, penny, nickel, dime, quarter, apple, banana, carrot, date, credit);
input clk, reset; 
input penny, nickel, dime, quarter;
input apple, banana, carrot, date;
output reg [7:0] credit;
reg [7:0] tmp; //will change name of register

always@(posedge clk)
begin
	if(reset)
		tmp <= 8'b00000000;
	else if(penny || nickel || dime || quarter)
		tmp <= tmp + penny + (nickel * 5) + (dime * 10) + (25 * quarter);
	else if( apple || banana || carrot || date)
		tmp <= tmp - (apple * 75) - (20 * banana) - (30 * carrot) - (40 * date);
	end

always @* begin 	
credit = tmp;
end

endmodule 