// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module bfs_gas_distances_0_RAM_1P_URAM_0R0W (
     
    address0, ce0,
    d0, we0, 
    
     
    reset, clk);

parameter DataWidth = 32;
parameter AddressWidth = 16;
parameter AddressRange = 62500;
 
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 


input reset;
input clk;

(* ram_style = "hls_ultra" , cascade_height = 1 *)reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./bfs_gas_distances_0_RAM_1P_URAM_0R0W.dat", ram);
end 

 

always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram[address0] <= d0; 
    end
end 



 
 

endmodule

