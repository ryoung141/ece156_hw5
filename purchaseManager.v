module purcaseManager(clk, reset, buy, product, credit, apple, banana, carrot, date, error);
input clk, reset;
input buy;
input [1:0] product;
input [7:0] credit;
output reg apple, banana, carrot, date, error;

//when buy && cred == a/b/c/d/e
always@(posedge clk)
begin
if (buy) begin
	if(product == 2'b00 && credit == 2'h4B)
		apple = 1;
	else if(product == 2'b01 && credit == 2'h14)
		banana = 1;
	else if(product == 2'b10 && credit == 2'h1E)
		carrot = 1;
	else if(product == 2'b11 && credit == 2'h28)
		date = 1;
	else
		error = 1;
end
end



endmodule