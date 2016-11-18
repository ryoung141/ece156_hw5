module sevenSegDispMngr( clk, reset, apple, banana, carrot, date, error, credit, digit1, digit0);
input clk, reset;
input apple, banana, carrot, date, error;
input [7:0] credit;
output reg [6:0] digit1 , digit0;

reg enable;
reg [2:0] c_out;
reg [3:0] d1_in, d0_in;
reg [3:0] spec_reg; //possible values: AA, BB, CC, DD, EE

initial begin
segDecoder d1(d1_in, digit1);
segDecoder d0(d0_in, digit0);
downCount dc(c_out, enable, clk, reset);
d1_in = 4'b0000;
d0_in = 4'b0000;
end

always@(posedge clk)
begin

     