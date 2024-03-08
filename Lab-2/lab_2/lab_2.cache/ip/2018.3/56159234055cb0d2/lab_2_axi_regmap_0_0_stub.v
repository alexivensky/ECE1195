// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb  1 22:51:42 2024
// Host        : ALEXIVENSKY1668 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lab_2_axi_regmap_0_0_stub.v
// Design      : lab_2_axi_regmap_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_regmap,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(REG0_OUT, REG0_IN, REG0_WR, REG0_RD, REG1_OUT, 
  REG1_IN, REG1_WR, REG1_RD, REG2_OUT, REG2_IN, REG2_WR, REG2_RD, REG3_OUT, REG3_IN, REG3_WR, REG3_RD, 
  REG4_OUT, REG4_IN, REG4_WR, REG4_RD, REG5_OUT, REG5_IN, REG5_WR, REG5_RD, S_AXI_ACLK, 
  S_AXI_ARESETN, S_AXI_AWADDR, S_AXI_AWPROT, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, 
  S_AXI_WSTRB, S_AXI_WVALID, S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, 
  S_AXI_ARADDR, S_AXI_ARPROT, S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, 
  S_AXI_RVALID, S_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="REG0_OUT[31:0],REG0_IN[31:0],REG0_WR,REG0_RD,REG1_OUT[31:0],REG1_IN[31:0],REG1_WR,REG1_RD,REG2_OUT[4:0],REG2_IN[4:0],REG2_WR,REG2_RD,REG3_OUT[3:0],REG3_IN[3:0],REG3_WR,REG3_RD,REG4_OUT[0:0],REG4_IN[0:0],REG4_WR,REG4_RD,REG5_OUT[0:0],REG5_IN[0:0],REG5_WR,REG5_RD,S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[15:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[15:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY" */;
  output [31:0]REG0_OUT;
  input [31:0]REG0_IN;
  output REG0_WR;
  output REG0_RD;
  output [31:0]REG1_OUT;
  input [31:0]REG1_IN;
  output REG1_WR;
  output REG1_RD;
  output [4:0]REG2_OUT;
  input [4:0]REG2_IN;
  output REG2_WR;
  output REG2_RD;
  output [3:0]REG3_OUT;
  input [3:0]REG3_IN;
  output REG3_WR;
  output REG3_RD;
  output [0:0]REG4_OUT;
  input [0:0]REG4_IN;
  output REG4_WR;
  output REG4_RD;
  output [0:0]REG5_OUT;
  input [0:0]REG5_IN;
  output REG5_WR;
  output REG5_RD;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [15:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [15:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
endmodule
