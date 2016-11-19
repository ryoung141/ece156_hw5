module sevenSegDispMngrTB();
//inputs
reg clk, reset, apple, banana, carrot, date, error;
reg [7:0] credit;
//outputs
wire [6:0] digit1, digit0;

//instantiate DUT
sevenSegDispMngr DUT(clk, reset, apple, banana, carrot, date, error, credit, digit1, digit0);

initial begin
clk = 0;
reset = 1;
end

 initial begin 
    forever begin
    #10 clk = ~clk;
    end
end

initial begin
reset = 0;


end

endmodule
