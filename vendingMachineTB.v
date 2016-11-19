module vendingMachineTB();
reg clk, reset, enable;
reg serialIn;
reg buy;
reg [1:0] product;
wire [6:0] digit1, digit0;

reg [9:0] coin;

`define minDime 10'b1011001100
`define maxDime 10'b1011010111
`define minPenny 10'b1011111010
`define maxPenny 10'b1100000101
`define minNickel 10'b1101010001
`define maxNickel 10'b1101011100
`define minQuarter 10'b1111001100
`define maxQuarter 10'b1111010111

vendingMachine DUT(clk, reset, serialIn, enable, product, buy, digit1, digit0);

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

//testing basic cases
coin = 10'b1111010111; //add 3.85 to bank to test all purchasing cases
//product = 2'b01
enable = 1;
#10
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //1 quarter added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //2 quarters added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //3 quarters added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //4 quarters added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //5 quarters added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //6 quarters added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //7 quarters added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //8 quarters added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //9 quarters added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //10 quarters added (2.50)
#10;
/*enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //11 quarters added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //12 quarters added
#10;
//total = 3 dollars, now need .85c
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //13 quarters added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //14 quarters added
#10;
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //15 quarters added
#10;
//3.75 added, need a dime
coin = 10'b1011001100; //dime
enable = 1;
serialIn = coin[9];
#10;
serialIn = coin[8];
#10;
serialIn = coin[7];
#10;
serialIn = coin[6];
#10;
serialIn = coin[5];
#10;
serialIn = coin[4];
#10;
serialIn = coin[3];
#10;
serialIn = coin[2];
#10;
serialIn = coin[1];
#10;
serialIn = coin[0];
#10;
enable = 0; //15 quarters and a dime added
#10;*/
//end adding money

//begin purchasing
product = 2'b00;
#10;
buy = 1; //buy apple
#10;
buy = 0;
#10;
product = 2'b01;
#10;
buy = 1; //buy banana
#10;
buy = 0;
#10;
product = 2'b10;
#10;
buy = 1; //buy carrot
#10;
buy = 0;
#10;
product = 2'b11;
#10;
buy = 1; //buy date
#10;
buy = 0;
#10;
product = 2'b01;
#10;
buy = 1; //try to buy banana, should send error
#10;
buy = 0;
#10;
end


endmodule
