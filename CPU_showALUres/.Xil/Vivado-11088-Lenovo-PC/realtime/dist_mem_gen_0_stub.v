// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2016.3" *)
module dist_mem_gen_0(a, clk, spo);
  input [6:0]a;
  input clk;
  output [31:0]spo;
endmodule
