`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 01:57:28 PM
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb();
    reg [2:0] ROM_addr;
    wire [3:0] ROM_data;
    
    ROM uut(.ROM_data(ROM_data), .ROM_addr(ROM_addr));
    
    initial begin
        ROM_addr = 4'b0000; #50;
        ROM_addr = 4'b0001; #50;
        ROM_addr = 4'b0010; #50;
        ROM_addr = 4'b0011; #50;
        ROM_addr = 4'b0100; #50;
        ROM_addr = 4'b0101; #50;
        ROM_addr = 4'b0110; #50;
        ROM_addr = 4'b0111; #50;
    end
endmodule
