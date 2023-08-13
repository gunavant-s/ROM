`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 13.08.2023 07:58:27
// Design Name: 
// Module Name: tb_rom
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_rom();
    reg clk;
    reg en;
    reg [3:0]add;
    wire [15:0]data;
    
    rom DUT(.clk(clk),
            .en(en),
            .add(add),
            .data(data)
            );    
     
     integer i;
     initial begin
        clk = 0;
        en = 1;
        for(i=1;i<=7;i=i+1) begin
            #10
            add = i;
        end
        #10 $stop;
     end
     
     always #5 clk = ~clk;
     
    
endmodule
