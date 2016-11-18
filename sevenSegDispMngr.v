module sevenSegDispMngr( clk, reset, apple, banana, carrot, date, error, credit, digital, digital0);
input clk, reset;
input apple, banana, carrot, date, error;
input [7:0] credit;
output reg [6:0] digit1 , digit0;


always@(posedge clk)
begin
  if(apple)
    
     