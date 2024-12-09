`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 03:15:23 PM
// Design Name: 
// Module Name: Top_Module_tb
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


module Top_Module_tb();
    reg clk, rst;
    reg [2:0] adr1_r, adr2_r;
    wire[7:0] result;
    
    Top_Module uut6(.clk(clk), .rst(rst), .adr1_r(adr1_r), .adr2_r(adr2_r), .result(result));
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        rst = 1;
        adr1_r = 0;
        adr2_r = 0;
        #10;
        
        rst = 0;
        
        adr1_r = 3'b111;
        adr2_r = 3'b110;
        #10;
    end
    
endmodule
