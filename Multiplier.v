`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 01:41:05 PM
// Design Name: 
// Module Name: Multiplier
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


module Top_Module(clk, rst, adr1_r, adr2_r, adr_ram, result, st_out);
    input clk, rst;
    input [2:0] adr1_r, adr2_r, adr_ram;
    output[7:0] result;
    
    
    wire[2:0] adr_ram;
    wire rw = 1'b1;
    wire [2:0] ROM_addr;
    output[2:0] st_out;
    
    wire w_rf;
    wire w_ram;
    wire DA, SA, SB;
    
    wire[7:0] product;
    
    wire[3:0] a, b;
    wire[3:0] ROM_data;
    
  
    
    ROM uut1(ROM_data, ROM_addr);
    cu uut4(clk, rst, adr1_r, adr2_r, w_rf, ROM_addr, DA, SA, SB, st_out, w_ram);
    RF uut5(a, b, SA, SB, ROM_data, DA, w_rf, rst, clk);
    C_Multiplier uut2(a, b, product);
    RAM uut3(clk, rst, w_ram, adr_ram, product, result);    
    

endmodule
