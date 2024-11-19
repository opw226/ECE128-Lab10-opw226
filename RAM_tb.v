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


module RAM_tb();
    reg i_clk, i_rst, i_write_en;
    reg[2:0] i_addr;
    reg[7:0] i_write_data;
    wire [7:0] o_read_data;
    
    RAM uut(.i_clk(i_clk), .i_rst(i_rst), .i_write_en(i_write_en), .i_addr(i_addr), .i_write_data(i_write_data), .o_read_data(o_read_data));
    
    always #5 i_clk = ~i_clk;
    
    initial begin
        i_clk = 0;
        i_rst = 1;
        i_write_en = 0;
        i_addr = 0;
        i_write_data = 0;
        
        #10;
        i_rst = 0;
        
        //5
        #10;
        i_write_en = 1;
        i_addr = 0;
        i_write_data = 11110011;
        #10;
        i_write_en = 0;
        
        //6
        #10;
        i_addr = 0;
        
        
        //1
        i_write_en = 1;
        i_addr = 1;
        i_write_data = 10101010;
        #10;
        i_write_en = 0;
        
        //2
        #10;
        i_addr = 1;
        
        //3
        #10;
        i_write_en = 1;
        i_addr = 2;
        i_write_data = 01010101;
        #10;
        i_write_en = 0;
        
        //4
        #10;
        i_addr = 2;
        
        //5
        #10;
        i_write_en = 1;
        i_addr = 3;
        i_write_data = 10010011;
        #10;
        i_write_en = 0;
        
        //6
        #10;
        i_addr = 3;
        
        
        //1
        i_write_en = 1;
        i_addr = 4;
        i_write_data = 10001010;
        #10;
        i_write_en = 0;
        
        //2
        #10;
        i_addr = 4;
        
        //3
        #10;
        i_write_en = 1;
        i_addr = 5;
        i_write_data = 01010001;
        #10;
        i_write_en = 0;
        
        //4
        #10;
        i_addr = 5;
        
        //5
        #10;
        i_write_en = 1;
        i_addr = 6;
        i_write_data = 10000111;
        #10;
        i_write_en = 0;
        
        //6
        #10;
        i_addr = 6;
        
        #10;
        i_write_en = 1;
        i_addr = 7;
        i_write_data = 11000101;
        #10;
        i_write_en = 0;
        
        //4
        #10;
        i_addr = 7;
        
        
        #50;
        $finish;
    end 
   

endmodule