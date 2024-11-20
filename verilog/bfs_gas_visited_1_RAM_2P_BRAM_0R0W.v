// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module bfs_gas_visited_1_RAM_2P_BRAM_0R0W (
       
    address1, ce1,
    d1, we1, 
    
     
    reset, clk);

parameter DataWidth = 1;
parameter AddressWidth = 20;
parameter AddressRange = 1000000;
  
input[AddressWidth-1:0] address1;
input ce1;
input[DataWidth-1:0] d1;
input we1; 


input reset;
input clk;

(* ram_style = "block"  *)reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./bfs_gas_visited_1_RAM_2P_BRAM_0R0W.dat", ram);
end 

   

always @(posedge clk)  
begin 
    if (ce1) begin
        if (we1) 
            ram[address1] <= d1; 
    end
end 



 
 

endmodule

