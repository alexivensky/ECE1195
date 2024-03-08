-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Jan 23 17:57:01 2024
-- Host        : ALEXIVENSKY1668 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/alexivensky/ADDLabs/Lab-1/lab1/lab1.srcs/sources_1/bd/design_1/ip/design_1_adder_subtractor_0_0/design_1_adder_subtractor_0_0_stub.vhdl
-- Design      : design_1_adder_subtractor_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_adder_subtractor_0_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    K : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_out : out STD_LOGIC
  );

end design_1_adder_subtractor_0_0;

architecture stub of design_1_adder_subtractor_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[31:0],B[31:0],K,S[31:0],c_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "adder_subtractor,Vivado 2018.3";
begin
end;
