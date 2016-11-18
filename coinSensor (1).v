module coinSensor(clk, reset, serialIn, write, penny, nickel, dime, quarter);
input clk, reset, serialIn, write;
output reg penny, nickel, dime, quarter;
reg [9:0] coin;


`define minDime 10'b1011001100
`define maxDime 10'b1011010111
`define minPenny 10'b1011111010
`define maxPenny 10'b1100000101
`define minNickel 10'b1101010001
`define maxNickel 10'b1101011100
`define minQuarter 10'b1111001100
`define maxQuarter 10'b1111010111


always @(posedge clk) begin
 if(reset <= 1 ) begin
    coin = 10'b0000000000;
    assign {penny, nickel, dime, quarter} = 4'b0000;
 
end
 
else if(write) begin
 
  coin[9:0] = {serialIn, coin[9:1]};

end
 
else begin

if(( coin >= `minPenny)&&(coin <= `maxPenny)) begin
	assign {penny, nickel, dime, quarter} = 4'b1000;
end

else if(( coin >= `minNickel)&&(coin <= `maxNickel)) begin

	assign {penny, nickel, dime, quarter} = 4'b0100;
end

else if (( coin >= `minDime)&&(coin <= `maxDime)) begin
	assign {penny, nickel, dime, quarter} = 4'b0010;
end
 
else if((coin >= `minQuarter)&&(coin <= `maxQuarter)) begin
	assign {penny, nickel, dime, quarter} = 4'b0001;
 
end

else begin

	assign {penny, nickel, dime, quarter} = 4'b0000;
end
end
end

endmodule
