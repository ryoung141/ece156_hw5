module sevenSegDispMngr( clk, reset, apple, banana, carrot, date, error, credit, digit1, digit0);
input clk, reset;
input apple, banana, carrot, date, error;
input [7:0] credit;
output [6:0] digit1 , digit0;

//for decoder
reg [2:0] counter;
reg [3:0] control;

segDecoder digital1(control, digit1);
segDecoder digital0(control, digit0);

always@(posedge clk) //possibilities for decoder
begin
if(counter == 0)
  begin
  control <= credit [7:4];
  control <= credit [3:0];
end
else if(apple)
  begin
  control <= 10;
  //digit1 <= 7'b1110110;
  //digit0 <= 7'b1110110;
  counter <= 6;
end
else if(banana)
  begin
  control <= 11;
  //digit1 <= 7'b0011111;
  //digit0 <= 7'b0011111;
  counter <= 6;
end
else if(carrot)
  begin
  control <= 12;
  //digit1 <= 7'b1001110;
  //digit0 <= 7'b1001110;
  counter <= 6;
end
else if(date)
  begin
  control <= 13;
  //digit1 <= 7'b0111101;
  //digit0 <= 7'b0111101;
  counter <= 6;
end
else if(error)
  begin
  control <= 14;
  //digit1 <= 7'b1001111;
  //digit0 <= 7'b1001111;
  counter <= 6;
end
else
  counter <= counter - 1;
end
endmodule