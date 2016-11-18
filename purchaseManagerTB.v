module purchaseManagerTB();
//input
reg clk, reset;
reg buy;
reg [1:0] product;
reg [7:0] credit;
//output
wire apple, banana, carrot, date, error;

//instantiate DUT
purchaseManager DUT(clk, reset, buy, product, credit, apple, banana, carrot, date, error);

initial begin
clk = 0;
end

 initial begin 
    forever begin
    #10 clk = ~clk;
    end
end

initial begin
reset = 1;
#20;
reset = 0;
product = 2'b00;
credit = 8'b01001011;
#10;
buy = 1;
//expected apple = 1
#30;
buy = 0;
product = 2'b01;
credit = 8'b00010100;
#10;
buy = 1;
//expected banana = 1
#30;
buy = 0;
product = 2'b10;
credit = 8'b00011110;
#10;
buy = 1;
//expected carrot = 1
#30;
buy = 0;
product = 2'b11;
credit = 8'b00101000;
#10;
buy = 1;
//expected date = 1
#30;
buy = 0;
product = 2'b00;
credit = 8'b00000000;
#10;
buy = 1;
end



endmodule
