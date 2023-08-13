`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 13.08.2023 07:42:21
// Design Name: 
// Module Name: rom
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


module rom(input en,
           input clk,
           input [3:0]add,
           output reg [15:0]data);
      
      wire [15:0] temp[7:0];
      
      assign temp[0] = 16'b0;
      assign temp[1] = 16'h1;
      assign temp[2] = 16'h111;
      assign temp[3] = 16'h1111;
      assign temp[4] = 16'h2222;
      assign temp[5] = 16'h3333;
      assign temp[6] = 16'h4444;
      assign temp[7] = 16'h5555;
      
      always @(posedge clk) begin
        if(~en)
            data <= 16'bz;
        else
            case(add)
                0: data <= temp[0];
                1: data <= temp[1];
                2: data <= temp[2];
                3: data <= temp[3];
                5: data <= temp[4];
                4: data <= temp[5];
                6: data <= temp[6];
                7: data <= temp[7];
            endcase
       end
             
endmodule
