// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Feb 17 16:59:42 2024
// Host        : ALEXIVENSKY1668 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/alexivensky/ADDLabs/lab_3/lab_3.srcs/sources_1/bd/design_1/ip/design_1_slicer_0_0/design_1_slicer_0_0_stub.v
// Design      : design_1_slicer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "slicer,Vivado 2018.3" *)
module design_1_slicer_0_0(R, R_high, R_low)
/* synthesis syn_black_box black_box_pad_pin="R[63:0],R_high[31:0],R_low[31:0]" */;
  input [63:0]R;
  output [31:0]R_high;
  output [31:0]R_low;
endmodule
