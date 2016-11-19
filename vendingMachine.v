//sevenSegDispMngr( clk, reset, apple, banana, carrot, date, error, credit, digit1, digit0);
//module piggyBank(clk, reset, penny, nickel, dime, quarter, apple, banana, carrot, date, credit);
//module purchaseManager(clk, reset, buy, product, credit, apple, banana, carrot, date, error);
//module coinSensor(clk, reset, serialIn, write, penny, nickel, dime, quarter);

module vendingMachine(clk, reset, serialIn, enable, product, buy, digit1, digit0);
input clk, reset, enable;
input serialIn;
input buy;
input [1:0] product;
output [6:0] digit1, digit0;

wire apple, banana, carrot, date, error;
wire penny, nickel, dime, quarter;
wire [7:0] credit;

coinSensor cs(clk, reset, serialIn, enable, penny, nickel, dime, quarter);
piggyBank pb(clk, reset, penny, nickel, dime, quarter, apple, banana, carrot, date, credit);
sevenSegDispMngr ssdm(clk, reset, apple, banana, carrot, date, error, credit, digit1, digit0);
purchaseManager pm(clk, reset, buy, product, credit, apple, banana, carrot, date, error);

endmodule
