`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 01:41:05 PM
// Design Name: 
// Module Name: RAM
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


module RAM(i_clk, i_rst, i_write_en, i_addr, i_write_data, o_read_data);
    input i_clk, i_rst, i_write_en;
    input[2:0] i_addr;
    input[7:0] i_write_data;
    output reg[7:0] o_read_data;
    
    reg [7:0] mem [7:0];
    
    always @(posedge i_clk) begin
        if(i_rst) begin
            mem[0] <= 4'b0;
            mem[1] <= 4'b0;
            mem[2] <= 4'b0;
            mem[3] <= 4'b0;
            mem[4] <= 4'b0;
            mem[5] <= 4'b0;
            mem[6] <= 4'b0;
            mem[7] <= 4'b0;
        end
        else begin
            if(i_write_en)
                mem[i_addr] <= i_write_data;
            else
                o_read_data <= mem[i_addr];
        end
    end
endmodule
