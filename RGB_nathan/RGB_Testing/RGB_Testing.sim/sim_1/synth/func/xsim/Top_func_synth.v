// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct 20 14:25:53 2021
// Host        : Asimov running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/natha/OneDrive/Documents/Code/TeslaMoore/RGB/RGB_Testing/RGB_Testing.sim/sim_1/synth/func/xsim/Top_func_synth.v
// Design      : Top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Top
   (CLK100MHZ,
    reset,
    sw,
    left,
    right,
    outerRight,
    center,
    Sensor,
    rgbWave,
    JB,
    enableA,
    directionPinAF,
    directionPinAB,
    enableB,
    directionPinBF,
    directionPinBB,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    dp,
    an,
    LED);
  input CLK100MHZ;
  input reset;
  input [15:0]sw;
  input left;
  input right;
  input outerRight;
  input center;
  input Sensor;
  input rgbWave;
  output [0:3]JB;
  output enableA;
  output directionPinAF;
  output directionPinAB;
  output enableB;
  output directionPinBF;
  output directionPinBB;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  output dp;
  output [3:0]an;
  output [15:0]LED;

  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:3]JB;
  wire [15:0]LED;
  wire [15:13]LED_OBUF;
  wire [18:0]RFC;
  wire \RFC[11]_i_2_n_0 ;
  wire \RFC[11]_i_3_n_0 ;
  wire \RFC[11]_i_4_n_0 ;
  wire \RFC[11]_i_5_n_0 ;
  wire \RFC[15]_i_2_n_0 ;
  wire \RFC[15]_i_3_n_0 ;
  wire \RFC[15]_i_4_n_0 ;
  wire \RFC[15]_i_5_n_0 ;
  wire \RFC[18]_i_2_n_0 ;
  wire \RFC[18]_i_3_n_0 ;
  wire \RFC[18]_i_4_n_0 ;
  wire \RFC[3]_i_2_n_0 ;
  wire \RFC[3]_i_3_n_0 ;
  wire \RFC[3]_i_4_n_0 ;
  wire \RFC[3]_i_5_n_0 ;
  wire \RFC[3]_i_6_n_0 ;
  wire \RFC[7]_i_2_n_0 ;
  wire \RFC[7]_i_3_n_0 ;
  wire \RFC[7]_i_4_n_0 ;
  wire \RFC[7]_i_5_n_0 ;
  wire \RFC_reg[11]_i_1_n_0 ;
  wire \RFC_reg[11]_i_1_n_1 ;
  wire \RFC_reg[11]_i_1_n_2 ;
  wire \RFC_reg[11]_i_1_n_3 ;
  wire \RFC_reg[15]_i_1_n_0 ;
  wire \RFC_reg[15]_i_1_n_1 ;
  wire \RFC_reg[15]_i_1_n_2 ;
  wire \RFC_reg[15]_i_1_n_3 ;
  wire \RFC_reg[18]_i_1_n_2 ;
  wire \RFC_reg[18]_i_1_n_3 ;
  wire \RFC_reg[3]_i_1_n_0 ;
  wire \RFC_reg[3]_i_1_n_1 ;
  wire \RFC_reg[3]_i_1_n_2 ;
  wire \RFC_reg[3]_i_1_n_3 ;
  wire \RFC_reg[7]_i_1_n_0 ;
  wire \RFC_reg[7]_i_1_n_1 ;
  wire \RFC_reg[7]_i_1_n_2 ;
  wire \RFC_reg[7]_i_1_n_3 ;
  wire \RFC_reg_n_0_[0] ;
  wire \RFC_reg_n_0_[10] ;
  wire \RFC_reg_n_0_[11] ;
  wire \RFC_reg_n_0_[12] ;
  wire \RFC_reg_n_0_[13] ;
  wire \RFC_reg_n_0_[14] ;
  wire \RFC_reg_n_0_[15] ;
  wire \RFC_reg_n_0_[16] ;
  wire \RFC_reg_n_0_[17] ;
  wire \RFC_reg_n_0_[18] ;
  wire \RFC_reg_n_0_[1] ;
  wire \RFC_reg_n_0_[2] ;
  wire \RFC_reg_n_0_[3] ;
  wire \RFC_reg_n_0_[4] ;
  wire \RFC_reg_n_0_[5] ;
  wire \RFC_reg_n_0_[6] ;
  wire \RFC_reg_n_0_[7] ;
  wire \RFC_reg_n_0_[8] ;
  wire \RFC_reg_n_0_[9] ;
  wire RGB2;
  wire RGB25_in;
  wire RGB26_in;
  wire RGB27_in;
  wire a;
  wire [3:0]an;
  wire b;
  wire c;
  wire [17:4]clockCounter;
  wire \clockCounter[0]_i_1_n_0 ;
  wire \clockCounter[10]_i_2_n_0 ;
  wire \clockCounter[10]_i_3_n_0 ;
  wire \clockCounter[11]_i_2_n_0 ;
  wire \clockCounter[11]_i_3_n_0 ;
  wire \clockCounter[11]_i_4_n_0 ;
  wire \clockCounter[11]_i_5_n_0 ;
  wire \clockCounter[14]_i_2_n_0 ;
  wire \clockCounter[17]_i_3_n_0 ;
  wire \clockCounter[17]_i_4_n_0 ;
  wire \clockCounter[17]_i_5_n_0 ;
  wire \clockCounter[17]_i_7_n_0 ;
  wire \clockCounter[17]_i_8_n_0 ;
  wire \clockCounter[17]_i_9_n_0 ;
  wire \clockCounter[3]_i_1_n_0 ;
  wire \clockCounter[6]_i_2_n_0 ;
  wire \clockCounter[8]_i_2_n_0 ;
  wire \clockCounter_reg[12]_i_2_n_0 ;
  wire \clockCounter_reg[12]_i_2_n_1 ;
  wire \clockCounter_reg[12]_i_2_n_2 ;
  wire \clockCounter_reg[12]_i_2_n_3 ;
  wire \clockCounter_reg[12]_i_2_n_4 ;
  wire \clockCounter_reg[12]_i_2_n_5 ;
  wire \clockCounter_reg[12]_i_2_n_6 ;
  wire \clockCounter_reg[12]_i_2_n_7 ;
  wire \clockCounter_reg[16]_i_2_n_0 ;
  wire \clockCounter_reg[16]_i_2_n_1 ;
  wire \clockCounter_reg[16]_i_2_n_2 ;
  wire \clockCounter_reg[16]_i_2_n_3 ;
  wire \clockCounter_reg[16]_i_2_n_4 ;
  wire \clockCounter_reg[16]_i_2_n_5 ;
  wire \clockCounter_reg[16]_i_2_n_6 ;
  wire \clockCounter_reg[16]_i_2_n_7 ;
  wire \clockCounter_reg[17]_i_2_n_2 ;
  wire \clockCounter_reg[17]_i_2_n_7 ;
  wire \clockCounter_reg[17]_i_6_n_0 ;
  wire \clockCounter_reg[17]_i_6_n_1 ;
  wire \clockCounter_reg[17]_i_6_n_2 ;
  wire \clockCounter_reg[17]_i_6_n_3 ;
  wire \clockCounter_reg[17]_i_6_n_4 ;
  wire \clockCounter_reg[17]_i_6_n_5 ;
  wire \clockCounter_reg[17]_i_6_n_6 ;
  wire \clockCounter_reg[17]_i_6_n_7 ;
  wire \clockCounter_reg[3]_i_2_n_0 ;
  wire \clockCounter_reg[3]_i_2_n_1 ;
  wire \clockCounter_reg[3]_i_2_n_2 ;
  wire \clockCounter_reg[3]_i_2_n_3 ;
  wire \clockCounter_reg[3]_i_2_n_4 ;
  wire \clockCounter_reg[3]_i_2_n_5 ;
  wire \clockCounter_reg[3]_i_2_n_6 ;
  wire \clockCounter_reg[3]_i_2_n_7 ;
  wire \clockCounter_reg_n_0_[0] ;
  wire \clockCounter_reg_n_0_[10] ;
  wire \clockCounter_reg_n_0_[11] ;
  wire \clockCounter_reg_n_0_[12] ;
  wire \clockCounter_reg_n_0_[13] ;
  wire \clockCounter_reg_n_0_[14] ;
  wire \clockCounter_reg_n_0_[15] ;
  wire \clockCounter_reg_n_0_[16] ;
  wire \clockCounter_reg_n_0_[17] ;
  wire \clockCounter_reg_n_0_[1] ;
  wire \clockCounter_reg_n_0_[2] ;
  wire \clockCounter_reg_n_0_[3] ;
  wire \clockCounter_reg_n_0_[4] ;
  wire \clockCounter_reg_n_0_[5] ;
  wire \clockCounter_reg_n_0_[6] ;
  wire \clockCounter_reg_n_0_[7] ;
  wire \clockCounter_reg_n_0_[8] ;
  wire \clockCounter_reg_n_0_[9] ;
  wire d;
  wire directionPinAB;
  wire directionPinAF;
  wire directionPinBB;
  wire directionPinBF;
  wire dp;
  wire e;
  wire enableA;
  wire enableB;
  wire f;
  wire g;
  wire oldSignal;
  wire [1:0]rgb;
  wire rgbWave;
  wire rgbWave_IBUF;
  wire \rgb[0]_i_10_n_0 ;
  wire \rgb[0]_i_11_n_0 ;
  wire \rgb[0]_i_12_n_0 ;
  wire \rgb[0]_i_13_n_0 ;
  wire \rgb[0]_i_14_n_0 ;
  wire \rgb[0]_i_15_n_0 ;
  wire \rgb[0]_i_16_n_0 ;
  wire \rgb[0]_i_1_n_0 ;
  wire \rgb[0]_i_2_n_0 ;
  wire \rgb[0]_i_6_n_0 ;
  wire \rgb[0]_i_7_n_0 ;
  wire \rgb[0]_i_9_n_0 ;
  wire \rgb[1]_i_10_n_0 ;
  wire \rgb[1]_i_11_n_0 ;
  wire \rgb[1]_i_13_n_0 ;
  wire \rgb[1]_i_14_n_0 ;
  wire \rgb[1]_i_15_n_0 ;
  wire \rgb[1]_i_16_n_0 ;
  wire \rgb[1]_i_17_n_0 ;
  wire \rgb[1]_i_18_n_0 ;
  wire \rgb[1]_i_19_n_0 ;
  wire \rgb[1]_i_1_n_0 ;
  wire \rgb[1]_i_20_n_0 ;
  wire \rgb[1]_i_22_n_0 ;
  wire \rgb[1]_i_23_n_0 ;
  wire \rgb[1]_i_24_n_0 ;
  wire \rgb[1]_i_25_n_0 ;
  wire \rgb[1]_i_26_n_0 ;
  wire \rgb[1]_i_27_n_0 ;
  wire \rgb[1]_i_28_n_0 ;
  wire \rgb[1]_i_29_n_0 ;
  wire \rgb[1]_i_30_n_0 ;
  wire \rgb[1]_i_31_n_0 ;
  wire \rgb[1]_i_32_n_0 ;
  wire \rgb[1]_i_33_n_0 ;
  wire \rgb[1]_i_34_n_0 ;
  wire \rgb[1]_i_35_n_0 ;
  wire \rgb[1]_i_36_n_0 ;
  wire \rgb[1]_i_37_n_0 ;
  wire \rgb[1]_i_38_n_0 ;
  wire \rgb[1]_i_39_n_0 ;
  wire \rgb[1]_i_40_n_0 ;
  wire \rgb[1]_i_41_n_0 ;
  wire \rgb[1]_i_42_n_0 ;
  wire \rgb[1]_i_43_n_0 ;
  wire \rgb[1]_i_44_n_0 ;
  wire \rgb[1]_i_45_n_0 ;
  wire \rgb[1]_i_5_n_0 ;
  wire \rgb[1]_i_6_n_0 ;
  wire \rgb[1]_i_7_n_0 ;
  wire \rgb[1]_i_9_n_0 ;
  wire \rgb_reg[0]_i_3_n_3 ;
  wire \rgb_reg[0]_i_4_n_3 ;
  wire \rgb_reg[0]_i_5_n_0 ;
  wire \rgb_reg[0]_i_5_n_1 ;
  wire \rgb_reg[0]_i_5_n_2 ;
  wire \rgb_reg[0]_i_5_n_3 ;
  wire \rgb_reg[0]_i_8_n_0 ;
  wire \rgb_reg[0]_i_8_n_1 ;
  wire \rgb_reg[0]_i_8_n_2 ;
  wire \rgb_reg[0]_i_8_n_3 ;
  wire \rgb_reg[1]_i_12_n_0 ;
  wire \rgb_reg[1]_i_12_n_1 ;
  wire \rgb_reg[1]_i_12_n_2 ;
  wire \rgb_reg[1]_i_12_n_3 ;
  wire \rgb_reg[1]_i_21_n_0 ;
  wire \rgb_reg[1]_i_21_n_1 ;
  wire \rgb_reg[1]_i_21_n_2 ;
  wire \rgb_reg[1]_i_21_n_3 ;
  wire \rgb_reg[1]_i_2_n_3 ;
  wire \rgb_reg[1]_i_3_n_3 ;
  wire \rgb_reg[1]_i_4_n_0 ;
  wire \rgb_reg[1]_i_4_n_1 ;
  wire \rgb_reg[1]_i_4_n_2 ;
  wire \rgb_reg[1]_i_4_n_3 ;
  wire \rgb_reg[1]_i_8_n_0 ;
  wire \rgb_reg[1]_i_8_n_1 ;
  wire \rgb_reg[1]_i_8_n_2 ;
  wire \rgb_reg[1]_i_8_n_3 ;
  wire [3:2]\NLW_RFC_reg[18]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_RFC_reg[18]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_clockCounter_reg[17]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clockCounter_reg[17]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_rgb_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_rgb_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_reg[0]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_reg[1]_i_12_O_UNCONNECTED ;
  wire [3:2]\NLW_rgb_reg[1]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_reg[1]_i_21_O_UNCONNECTED ;
  wire [3:2]\NLW_rgb_reg[1]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_reg[1]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_reg[1]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_reg[1]_i_8_O_UNCONNECTED ;

  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  OBUF \JB_OBUF[0]_inst 
       (.I(1'b0),
        .O(JB[0]));
  OBUF \JB_OBUF[1]_inst 
       (.I(1'b0),
        .O(JB[1]));
  OBUF \JB_OBUF[2]_inst 
       (.I(1'b0),
        .O(JB[2]));
  OBUF \JB_OBUF[3]_inst 
       (.I(1'b0),
        .O(JB[3]));
  OBUFT \LED_OBUF[0]_inst 
       (.I(1'b0),
        .O(LED[0]),
        .T(1'b1));
  OBUFT \LED_OBUF[10]_inst 
       (.I(1'b0),
        .O(LED[10]),
        .T(1'b1));
  OBUFT \LED_OBUF[11]_inst 
       (.I(1'b0),
        .O(LED[11]),
        .T(1'b1));
  OBUFT \LED_OBUF[12]_inst 
       (.I(1'b0),
        .O(LED[12]),
        .T(1'b1));
  OBUF \LED_OBUF[13]_inst 
       (.I(LED_OBUF[13]),
        .O(LED[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LED_OBUF[13]_inst_i_1 
       (.I0(rgb[0]),
        .I1(rgb[1]),
        .O(LED_OBUF[13]));
  OBUF \LED_OBUF[14]_inst 
       (.I(LED_OBUF[14]),
        .O(LED[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \LED_OBUF[14]_inst_i_1 
       (.I0(rgb[1]),
        .I1(rgb[0]),
        .O(LED_OBUF[14]));
  OBUF \LED_OBUF[15]_inst 
       (.I(LED_OBUF[15]),
        .O(LED[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LED_OBUF[15]_inst_i_1 
       (.I0(rgb[0]),
        .I1(rgb[1]),
        .O(LED_OBUF[15]));
  OBUFT \LED_OBUF[1]_inst 
       (.I(1'b0),
        .O(LED[1]),
        .T(1'b1));
  OBUFT \LED_OBUF[2]_inst 
       (.I(1'b0),
        .O(LED[2]),
        .T(1'b1));
  OBUFT \LED_OBUF[3]_inst 
       (.I(1'b0),
        .O(LED[3]),
        .T(1'b1));
  OBUFT \LED_OBUF[4]_inst 
       (.I(1'b0),
        .O(LED[4]),
        .T(1'b1));
  OBUFT \LED_OBUF[5]_inst 
       (.I(1'b0),
        .O(LED[5]),
        .T(1'b1));
  OBUFT \LED_OBUF[6]_inst 
       (.I(1'b0),
        .O(LED[6]),
        .T(1'b1));
  OBUFT \LED_OBUF[7]_inst 
       (.I(1'b0),
        .O(LED[7]),
        .T(1'b1));
  OBUFT \LED_OBUF[8]_inst 
       (.I(1'b0),
        .O(LED[8]),
        .T(1'b1));
  OBUFT \LED_OBUF[9]_inst 
       (.I(1'b0),
        .O(LED[9]),
        .T(1'b1));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[11]_i_2 
       (.I0(\RFC_reg_n_0_[11] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[11]_i_3 
       (.I0(\RFC_reg_n_0_[10] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[11]_i_4 
       (.I0(\RFC_reg_n_0_[9] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[11]_i_5 
       (.I0(\RFC_reg_n_0_[8] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[15]_i_2 
       (.I0(\RFC_reg_n_0_[15] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[15]_i_3 
       (.I0(\RFC_reg_n_0_[14] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[15]_i_4 
       (.I0(\RFC_reg_n_0_[13] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[15]_i_5 
       (.I0(\RFC_reg_n_0_[12] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[18]_i_2 
       (.I0(\RFC_reg_n_0_[18] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[18]_i_3 
       (.I0(\RFC_reg_n_0_[17] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[18]_i_4 
       (.I0(\RFC_reg_n_0_[16] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[18]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RFC[3]_i_2 
       (.I0(oldSignal),
        .I1(rgbWave_IBUF),
        .O(\RFC[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[3]_i_3 
       (.I0(\RFC_reg_n_0_[3] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[3]_i_4 
       (.I0(\RFC_reg_n_0_[2] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[3]_i_5 
       (.I0(\RFC_reg_n_0_[1] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE01F1FE0)) 
    \RFC[3]_i_6 
       (.I0(\clockCounter[17]_i_3_n_0 ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\RFC_reg_n_0_[0] ),
        .I3(rgbWave_IBUF),
        .I4(oldSignal),
        .O(\RFC[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[7]_i_2 
       (.I0(\RFC_reg_n_0_[7] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[7]_i_3 
       (.I0(\RFC_reg_n_0_[6] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[7]_i_4 
       (.I0(\RFC_reg_n_0_[5] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \RFC[7]_i_5 
       (.I0(\RFC_reg_n_0_[4] ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[3]_i_2_n_4 ),
        .I4(\clockCounter[10]_i_3_n_0 ),
        .O(\RFC[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[0]),
        .Q(\RFC_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[10]),
        .Q(\RFC_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[11]),
        .Q(\RFC_reg_n_0_[11] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RFC_reg[11]_i_1 
       (.CI(\RFC_reg[7]_i_1_n_0 ),
        .CO({\RFC_reg[11]_i_1_n_0 ,\RFC_reg[11]_i_1_n_1 ,\RFC_reg[11]_i_1_n_2 ,\RFC_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(RFC[11:8]),
        .S({\RFC[11]_i_2_n_0 ,\RFC[11]_i_3_n_0 ,\RFC[11]_i_4_n_0 ,\RFC[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[12]),
        .Q(\RFC_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[13]),
        .Q(\RFC_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[14]),
        .Q(\RFC_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[15]),
        .Q(\RFC_reg_n_0_[15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RFC_reg[15]_i_1 
       (.CI(\RFC_reg[11]_i_1_n_0 ),
        .CO({\RFC_reg[15]_i_1_n_0 ,\RFC_reg[15]_i_1_n_1 ,\RFC_reg[15]_i_1_n_2 ,\RFC_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(RFC[15:12]),
        .S({\RFC[15]_i_2_n_0 ,\RFC[15]_i_3_n_0 ,\RFC[15]_i_4_n_0 ,\RFC[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[16]),
        .Q(\RFC_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[17]),
        .Q(\RFC_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[18]),
        .Q(\RFC_reg_n_0_[18] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RFC_reg[18]_i_1 
       (.CI(\RFC_reg[15]_i_1_n_0 ),
        .CO({\NLW_RFC_reg[18]_i_1_CO_UNCONNECTED [3:2],\RFC_reg[18]_i_1_n_2 ,\RFC_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_RFC_reg[18]_i_1_O_UNCONNECTED [3],RFC[18:16]}),
        .S({1'b0,\RFC[18]_i_2_n_0 ,\RFC[18]_i_3_n_0 ,\RFC[18]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[1]),
        .Q(\RFC_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[2]),
        .Q(\RFC_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[3]),
        .Q(\RFC_reg_n_0_[3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RFC_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\RFC_reg[3]_i_1_n_0 ,\RFC_reg[3]_i_1_n_1 ,\RFC_reg[3]_i_1_n_2 ,\RFC_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\RFC[3]_i_2_n_0 }),
        .O(RFC[3:0]),
        .S({\RFC[3]_i_3_n_0 ,\RFC[3]_i_4_n_0 ,\RFC[3]_i_5_n_0 ,\RFC[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[4]),
        .Q(\RFC_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[5]),
        .Q(\RFC_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[6]),
        .Q(\RFC_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[7]),
        .Q(\RFC_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RFC_reg[7]_i_1 
       (.CI(\RFC_reg[3]_i_1_n_0 ),
        .CO({\RFC_reg[7]_i_1_n_0 ,\RFC_reg[7]_i_1_n_1 ,\RFC_reg[7]_i_1_n_2 ,\RFC_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(RFC[7:4]),
        .S({\RFC[7]_i_2_n_0 ,\RFC[7]_i_3_n_0 ,\RFC[7]_i_4_n_0 ,\RFC[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[8]),
        .Q(\RFC_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RFC_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RFC[9]),
        .Q(\RFC_reg_n_0_[9] ),
        .R(1'b0));
  OBUFT a_OBUF_inst
       (.I(1'b0),
        .O(a),
        .T(1'b1));
  OBUFT \an_OBUF[0]_inst 
       (.I(1'b0),
        .O(an[0]),
        .T(1'b1));
  OBUFT \an_OBUF[1]_inst 
       (.I(1'b0),
        .O(an[1]),
        .T(1'b1));
  OBUFT \an_OBUF[2]_inst 
       (.I(1'b0),
        .O(an[2]),
        .T(1'b1));
  OBUFT \an_OBUF[3]_inst 
       (.I(1'b0),
        .O(an[3]),
        .T(1'b1));
  OBUFT b_OBUF_inst
       (.I(1'b0),
        .O(b),
        .T(1'b1));
  OBUFT c_OBUF_inst
       (.I(1'b0),
        .O(c),
        .T(1'b1));
  LUT1 #(
    .INIT(2'h1)) 
    \clockCounter[0]_i_1 
       (.I0(\clockCounter_reg_n_0_[0] ),
        .O(\clockCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \clockCounter[10]_i_1 
       (.I0(\clockCounter_reg[12]_i_2_n_6 ),
        .I1(\clockCounter[10]_i_2_n_0 ),
        .I2(\clockCounter[10]_i_3_n_0 ),
        .O(clockCounter[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFEFF00)) 
    \clockCounter[10]_i_2 
       (.I0(\clockCounter_reg[16]_i_2_n_4 ),
        .I1(\clockCounter_reg[16]_i_2_n_5 ),
        .I2(\clockCounter_reg[16]_i_2_n_6 ),
        .I3(\clockCounter_reg[17]_i_2_n_2 ),
        .I4(\clockCounter_reg[17]_i_2_n_7 ),
        .O(\clockCounter[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clockCounter[10]_i_3 
       (.I0(\clockCounter_reg[12]_i_2_n_5 ),
        .I1(\clockCounter_reg[16]_i_2_n_7 ),
        .I2(\clockCounter_reg[12]_i_2_n_4 ),
        .I3(\clockCounter_reg[17]_i_2_n_2 ),
        .I4(\clockCounter_reg[16]_i_2_n_4 ),
        .I5(\clockCounter_reg[16]_i_2_n_5 ),
        .O(\clockCounter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h888A)) 
    \clockCounter[11]_i_1 
       (.I0(\clockCounter_reg[12]_i_2_n_5 ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter_reg[3]_i_2_n_4 ),
        .I3(\clockCounter[17]_i_5_n_0 ),
        .O(clockCounter[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0037003F)) 
    \clockCounter[11]_i_2 
       (.I0(\clockCounter[11]_i_3_n_0 ),
        .I1(\clockCounter_reg[16]_i_2_n_6 ),
        .I2(\clockCounter[17]_i_9_n_0 ),
        .I3(\clockCounter[17]_i_7_n_0 ),
        .I4(\clockCounter[11]_i_4_n_0 ),
        .I5(\clockCounter[11]_i_5_n_0 ),
        .O(\clockCounter[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clockCounter[11]_i_3 
       (.I0(\clockCounter_reg[17]_i_6_n_4 ),
        .I1(\clockCounter_reg[17]_i_6_n_5 ),
        .O(\clockCounter[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \clockCounter[11]_i_4 
       (.I0(\clockCounter_reg[17]_i_6_n_6 ),
        .I1(\clockCounter_reg[17]_i_6_n_7 ),
        .O(\clockCounter[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \clockCounter[11]_i_5 
       (.I0(\clockCounter_reg[17]_i_2_n_7 ),
        .I1(\clockCounter_reg[17]_i_2_n_2 ),
        .O(\clockCounter[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h020202020202020A)) 
    \clockCounter[12]_i_1 
       (.I0(\clockCounter_reg[12]_i_2_n_4 ),
        .I1(\clockCounter_reg[17]_i_2_n_7 ),
        .I2(\clockCounter_reg[17]_i_2_n_2 ),
        .I3(\clockCounter_reg[16]_i_2_n_6 ),
        .I4(\clockCounter_reg[16]_i_2_n_5 ),
        .I5(\clockCounter_reg[16]_i_2_n_4 ),
        .O(clockCounter[12]));
  LUT6 #(
    .INIT(64'h020202020202020A)) 
    \clockCounter[13]_i_1 
       (.I0(\clockCounter_reg[16]_i_2_n_7 ),
        .I1(\clockCounter_reg[17]_i_2_n_7 ),
        .I2(\clockCounter_reg[17]_i_2_n_2 ),
        .I3(\clockCounter_reg[16]_i_2_n_6 ),
        .I4(\clockCounter_reg[16]_i_2_n_5 ),
        .I5(\clockCounter_reg[16]_i_2_n_4 ),
        .O(clockCounter[13]));
  LUT6 #(
    .INIT(64'hA8A8A8AAA8AAA8AA)) 
    \clockCounter[14]_i_1 
       (.I0(\clockCounter_reg[16]_i_2_n_6 ),
        .I1(\clockCounter[17]_i_3_n_0 ),
        .I2(\clockCounter[14]_i_2_n_0 ),
        .I3(\clockCounter[17]_i_5_n_0 ),
        .I4(\clockCounter_reg[17]_i_6_n_5 ),
        .I5(\clockCounter_reg[17]_i_6_n_4 ),
        .O(clockCounter[14]));
  LUT6 #(
    .INIT(64'h1111111111111FFF)) 
    \clockCounter[14]_i_2 
       (.I0(\clockCounter_reg[17]_i_2_n_2 ),
        .I1(\clockCounter_reg[17]_i_2_n_7 ),
        .I2(\clockCounter_reg[17]_i_6_n_6 ),
        .I3(\clockCounter_reg[17]_i_6_n_7 ),
        .I4(\clockCounter[17]_i_7_n_0 ),
        .I5(\clockCounter[17]_i_9_n_0 ),
        .O(\clockCounter[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \clockCounter[15]_i_1 
       (.I0(\clockCounter_reg[16]_i_2_n_5 ),
        .I1(\clockCounter_reg[17]_i_2_n_2 ),
        .I2(\clockCounter_reg[17]_i_2_n_7 ),
        .O(clockCounter[15]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \clockCounter[16]_i_1 
       (.I0(\clockCounter_reg[16]_i_2_n_4 ),
        .I1(\clockCounter_reg[17]_i_2_n_2 ),
        .I2(\clockCounter_reg[17]_i_2_n_7 ),
        .O(clockCounter[16]));
  LUT6 #(
    .INIT(64'hA8A8A8AAA8AAA8AA)) 
    \clockCounter[17]_i_1 
       (.I0(\clockCounter_reg[17]_i_2_n_7 ),
        .I1(\clockCounter[17]_i_3_n_0 ),
        .I2(\clockCounter[17]_i_4_n_0 ),
        .I3(\clockCounter[17]_i_5_n_0 ),
        .I4(\clockCounter_reg[17]_i_6_n_7 ),
        .I5(\clockCounter_reg[17]_i_6_n_6 ),
        .O(clockCounter[17]));
  LUT6 #(
    .INIT(64'h00000001000000FF)) 
    \clockCounter[17]_i_3 
       (.I0(\clockCounter_reg[12]_i_2_n_6 ),
        .I1(\clockCounter_reg[12]_i_2_n_7 ),
        .I2(\clockCounter_reg[3]_i_2_n_4 ),
        .I3(\clockCounter[17]_i_7_n_0 ),
        .I4(\clockCounter[17]_i_8_n_0 ),
        .I5(\clockCounter_reg[12]_i_2_n_5 ),
        .O(\clockCounter[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0055007F)) 
    \clockCounter[17]_i_4 
       (.I0(\clockCounter_reg[16]_i_2_n_6 ),
        .I1(\clockCounter_reg[17]_i_6_n_4 ),
        .I2(\clockCounter_reg[17]_i_6_n_5 ),
        .I3(\clockCounter[17]_i_7_n_0 ),
        .I4(\clockCounter[17]_i_9_n_0 ),
        .O(\clockCounter[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clockCounter[17]_i_5 
       (.I0(\clockCounter[17]_i_7_n_0 ),
        .I1(\clockCounter_reg[12]_i_2_n_6 ),
        .I2(\clockCounter_reg[12]_i_2_n_7 ),
        .I3(\clockCounter_reg[16]_i_2_n_7 ),
        .I4(\clockCounter_reg[12]_i_2_n_4 ),
        .O(\clockCounter[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \clockCounter[17]_i_7 
       (.I0(\clockCounter_reg[17]_i_2_n_2 ),
        .I1(\clockCounter_reg[16]_i_2_n_4 ),
        .I2(\clockCounter_reg[16]_i_2_n_5 ),
        .O(\clockCounter[17]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \clockCounter[17]_i_8 
       (.I0(\clockCounter_reg[16]_i_2_n_7 ),
        .I1(\clockCounter_reg[12]_i_2_n_4 ),
        .O(\clockCounter[17]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clockCounter[17]_i_9 
       (.I0(\clockCounter_reg[12]_i_2_n_4 ),
        .I1(\clockCounter_reg[16]_i_2_n_7 ),
        .I2(\clockCounter_reg[12]_i_2_n_7 ),
        .I3(\clockCounter_reg[12]_i_2_n_6 ),
        .O(\clockCounter[17]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00A8)) 
    \clockCounter[3]_i_1 
       (.I0(\clockCounter[10]_i_3_n_0 ),
        .I1(\clockCounter_reg[3]_i_2_n_4 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter[11]_i_2_n_0 ),
        .O(\clockCounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \clockCounter[4]_i_1 
       (.I0(\clockCounter_reg[3]_i_2_n_4 ),
        .I1(\clockCounter[11]_i_2_n_0 ),
        .I2(\clockCounter[10]_i_3_n_0 ),
        .O(clockCounter[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA020202AA)) 
    \clockCounter[5]_i_1 
       (.I0(\clockCounter_reg[17]_i_6_n_7 ),
        .I1(\clockCounter_reg[17]_i_6_n_6 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[17]_i_2_n_2 ),
        .I4(\clockCounter_reg[17]_i_2_n_7 ),
        .I5(\clockCounter[6]_i_2_n_0 ),
        .O(clockCounter[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA020202AA)) 
    \clockCounter[6]_i_1 
       (.I0(\clockCounter_reg[17]_i_6_n_6 ),
        .I1(\clockCounter_reg[17]_i_6_n_7 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter_reg[17]_i_2_n_2 ),
        .I4(\clockCounter_reg[17]_i_2_n_7 ),
        .I5(\clockCounter[6]_i_2_n_0 ),
        .O(clockCounter[6]));
  LUT6 #(
    .INIT(64'h5557555F55FF55FF)) 
    \clockCounter[6]_i_2 
       (.I0(\clockCounter[10]_i_3_n_0 ),
        .I1(\clockCounter_reg[3]_i_2_n_4 ),
        .I2(\clockCounter[17]_i_9_n_0 ),
        .I3(\clockCounter[17]_i_7_n_0 ),
        .I4(\clockCounter[11]_i_3_n_0 ),
        .I5(\clockCounter_reg[16]_i_2_n_6 ),
        .O(\clockCounter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA02AA)) 
    \clockCounter[7]_i_1 
       (.I0(\clockCounter_reg[17]_i_6_n_5 ),
        .I1(\clockCounter_reg[17]_i_6_n_4 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter[8]_i_2_n_0 ),
        .I4(\clockCounter[14]_i_2_n_0 ),
        .I5(\clockCounter[17]_i_3_n_0 ),
        .O(clockCounter[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA02AA)) 
    \clockCounter[8]_i_1 
       (.I0(\clockCounter_reg[17]_i_6_n_4 ),
        .I1(\clockCounter_reg[17]_i_6_n_5 ),
        .I2(\clockCounter[17]_i_5_n_0 ),
        .I3(\clockCounter[8]_i_2_n_0 ),
        .I4(\clockCounter[14]_i_2_n_0 ),
        .I5(\clockCounter[17]_i_3_n_0 ),
        .O(clockCounter[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clockCounter[8]_i_2 
       (.I0(\clockCounter_reg[16]_i_2_n_6 ),
        .I1(\clockCounter_reg[16]_i_2_n_5 ),
        .I2(\clockCounter_reg[16]_i_2_n_4 ),
        .I3(\clockCounter_reg[17]_i_2_n_2 ),
        .O(\clockCounter[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \clockCounter[9]_i_1 
       (.I0(\clockCounter_reg[12]_i_2_n_7 ),
        .I1(\clockCounter[10]_i_2_n_0 ),
        .I2(\clockCounter[10]_i_3_n_0 ),
        .O(clockCounter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clockCounter[0]_i_1_n_0 ),
        .Q(\clockCounter_reg_n_0_[0] ),
        .R(\clockCounter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[10]),
        .Q(\clockCounter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[11]),
        .Q(\clockCounter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[12]),
        .Q(\clockCounter_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \clockCounter_reg[12]_i_2 
       (.CI(\clockCounter_reg[17]_i_6_n_0 ),
        .CO({\clockCounter_reg[12]_i_2_n_0 ,\clockCounter_reg[12]_i_2_n_1 ,\clockCounter_reg[12]_i_2_n_2 ,\clockCounter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clockCounter_reg[12]_i_2_n_4 ,\clockCounter_reg[12]_i_2_n_5 ,\clockCounter_reg[12]_i_2_n_6 ,\clockCounter_reg[12]_i_2_n_7 }),
        .S({\clockCounter_reg_n_0_[12] ,\clockCounter_reg_n_0_[11] ,\clockCounter_reg_n_0_[10] ,\clockCounter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[13]),
        .Q(\clockCounter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[14]),
        .Q(\clockCounter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[15]),
        .Q(\clockCounter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[16]),
        .Q(\clockCounter_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \clockCounter_reg[16]_i_2 
       (.CI(\clockCounter_reg[12]_i_2_n_0 ),
        .CO({\clockCounter_reg[16]_i_2_n_0 ,\clockCounter_reg[16]_i_2_n_1 ,\clockCounter_reg[16]_i_2_n_2 ,\clockCounter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clockCounter_reg[16]_i_2_n_4 ,\clockCounter_reg[16]_i_2_n_5 ,\clockCounter_reg[16]_i_2_n_6 ,\clockCounter_reg[16]_i_2_n_7 }),
        .S({\clockCounter_reg_n_0_[16] ,\clockCounter_reg_n_0_[15] ,\clockCounter_reg_n_0_[14] ,\clockCounter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[17]),
        .Q(\clockCounter_reg_n_0_[17] ),
        .R(1'b0));
  CARRY4 \clockCounter_reg[17]_i_2 
       (.CI(\clockCounter_reg[16]_i_2_n_0 ),
        .CO({\NLW_clockCounter_reg[17]_i_2_CO_UNCONNECTED [3:2],\clockCounter_reg[17]_i_2_n_2 ,\NLW_clockCounter_reg[17]_i_2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clockCounter_reg[17]_i_2_O_UNCONNECTED [3:1],\clockCounter_reg[17]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b1,\clockCounter_reg_n_0_[17] }));
  CARRY4 \clockCounter_reg[17]_i_6 
       (.CI(\clockCounter_reg[3]_i_2_n_0 ),
        .CO({\clockCounter_reg[17]_i_6_n_0 ,\clockCounter_reg[17]_i_6_n_1 ,\clockCounter_reg[17]_i_6_n_2 ,\clockCounter_reg[17]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clockCounter_reg[17]_i_6_n_4 ,\clockCounter_reg[17]_i_6_n_5 ,\clockCounter_reg[17]_i_6_n_6 ,\clockCounter_reg[17]_i_6_n_7 }),
        .S({\clockCounter_reg_n_0_[8] ,\clockCounter_reg_n_0_[7] ,\clockCounter_reg_n_0_[6] ,\clockCounter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clockCounter_reg[3]_i_2_n_7 ),
        .Q(\clockCounter_reg_n_0_[1] ),
        .R(\clockCounter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clockCounter_reg[3]_i_2_n_6 ),
        .Q(\clockCounter_reg_n_0_[2] ),
        .R(\clockCounter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\clockCounter_reg[3]_i_2_n_5 ),
        .Q(\clockCounter_reg_n_0_[3] ),
        .R(\clockCounter[3]_i_1_n_0 ));
  CARRY4 \clockCounter_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\clockCounter_reg[3]_i_2_n_0 ,\clockCounter_reg[3]_i_2_n_1 ,\clockCounter_reg[3]_i_2_n_2 ,\clockCounter_reg[3]_i_2_n_3 }),
        .CYINIT(\clockCounter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clockCounter_reg[3]_i_2_n_4 ,\clockCounter_reg[3]_i_2_n_5 ,\clockCounter_reg[3]_i_2_n_6 ,\clockCounter_reg[3]_i_2_n_7 }),
        .S({\clockCounter_reg_n_0_[4] ,\clockCounter_reg_n_0_[3] ,\clockCounter_reg_n_0_[2] ,\clockCounter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[4]),
        .Q(\clockCounter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[5]),
        .Q(\clockCounter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[6]),
        .Q(\clockCounter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[7]),
        .Q(\clockCounter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[8]),
        .Q(\clockCounter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clockCounter_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(clockCounter[9]),
        .Q(\clockCounter_reg_n_0_[9] ),
        .R(1'b0));
  OBUFT d_OBUF_inst
       (.I(1'b0),
        .O(d),
        .T(1'b1));
  OBUFT directionPinAB_OBUF_inst
       (.I(1'b0),
        .O(directionPinAB),
        .T(1'b1));
  OBUFT directionPinAF_OBUF_inst
       (.I(1'b0),
        .O(directionPinAF),
        .T(1'b1));
  OBUFT directionPinBB_OBUF_inst
       (.I(1'b0),
        .O(directionPinBB),
        .T(1'b1));
  OBUFT directionPinBF_OBUF_inst
       (.I(1'b0),
        .O(directionPinBF),
        .T(1'b1));
  OBUFT dp_OBUF_inst
       (.I(1'b0),
        .O(dp),
        .T(1'b1));
  OBUFT e_OBUF_inst
       (.I(1'b0),
        .O(e),
        .T(1'b1));
  OBUFT enableA_OBUF_inst
       (.I(1'b0),
        .O(enableA),
        .T(1'b1));
  OBUFT enableB_OBUF_inst
       (.I(1'b0),
        .O(enableB),
        .T(1'b1));
  OBUFT f_OBUF_inst
       (.I(1'b0),
        .O(f),
        .T(1'b1));
  OBUFT g_OBUF_inst
       (.I(1'b0),
        .O(g),
        .T(1'b1));
  FDRE #(
    .INIT(1'b0)) 
    oldSignal_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(rgbWave_IBUF),
        .Q(oldSignal),
        .R(1'b0));
  IBUF rgbWave_IBUF_inst
       (.I(rgbWave),
        .O(rgbWave_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFFBF000000BF)) 
    \rgb[0]_i_1 
       (.I0(\rgb[0]_i_2_n_0 ),
        .I1(RGB25_in),
        .I2(RGB2),
        .I3(\clockCounter[17]_i_3_n_0 ),
        .I4(\clockCounter[11]_i_2_n_0 ),
        .I5(rgb[0]),
        .O(\rgb[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[0]_i_10 
       (.I0(\RFC_reg_n_0_[13] ),
        .I1(\RFC_reg_n_0_[12] ),
        .O(\rgb[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[0]_i_11 
       (.I0(\RFC_reg_n_0_[11] ),
        .I1(\RFC_reg_n_0_[10] ),
        .O(\rgb[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[0]_i_12 
       (.I0(\RFC_reg_n_0_[9] ),
        .I1(\RFC_reg_n_0_[8] ),
        .O(\rgb[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[0]_i_13 
       (.I0(\RFC_reg_n_0_[7] ),
        .I1(\RFC_reg_n_0_[6] ),
        .O(\rgb[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[0]_i_14 
       (.I0(\RFC_reg_n_0_[5] ),
        .I1(\RFC_reg_n_0_[4] ),
        .O(\rgb[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[0]_i_15 
       (.I0(\RFC_reg_n_0_[3] ),
        .I1(\RFC_reg_n_0_[2] ),
        .O(\rgb[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[0]_i_16 
       (.I0(\RFC_reg_n_0_[1] ),
        .I1(\RFC_reg_n_0_[0] ),
        .O(\rgb[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rgb[0]_i_2 
       (.I0(RGB26_in),
        .I1(RGB27_in),
        .O(\rgb[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb[0]_i_6 
       (.I0(\RFC_reg_n_0_[18] ),
        .O(\rgb[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[0]_i_7 
       (.I0(\RFC_reg_n_0_[17] ),
        .I1(\RFC_reg_n_0_[16] ),
        .O(\rgb[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[0]_i_9 
       (.I0(\RFC_reg_n_0_[15] ),
        .I1(\RFC_reg_n_0_[14] ),
        .O(\rgb[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFF70007)) 
    \rgb[1]_i_1 
       (.I0(RGB27_in),
        .I1(RGB26_in),
        .I2(\clockCounter[17]_i_3_n_0 ),
        .I3(\clockCounter[11]_i_2_n_0 ),
        .I4(rgb[1]),
        .O(\rgb[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb[1]_i_10 
       (.I0(\RFC_reg_n_0_[18] ),
        .O(\rgb[1]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_11 
       (.I0(\RFC_reg_n_0_[17] ),
        .I1(\RFC_reg_n_0_[16] ),
        .O(\rgb[1]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_13 
       (.I0(\RFC_reg_n_0_[14] ),
        .I1(\RFC_reg_n_0_[15] ),
        .O(\rgb[1]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_14 
       (.I0(\RFC_reg_n_0_[12] ),
        .I1(\RFC_reg_n_0_[13] ),
        .O(\rgb[1]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_15 
       (.I0(\RFC_reg_n_0_[10] ),
        .I1(\RFC_reg_n_0_[11] ),
        .O(\rgb[1]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_16 
       (.I0(\RFC_reg_n_0_[8] ),
        .I1(\RFC_reg_n_0_[9] ),
        .O(\rgb[1]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_17 
       (.I0(\RFC_reg_n_0_[15] ),
        .I1(\RFC_reg_n_0_[14] ),
        .O(\rgb[1]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_18 
       (.I0(\RFC_reg_n_0_[13] ),
        .I1(\RFC_reg_n_0_[12] ),
        .O(\rgb[1]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_19 
       (.I0(\RFC_reg_n_0_[11] ),
        .I1(\RFC_reg_n_0_[10] ),
        .O(\rgb[1]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_20 
       (.I0(\RFC_reg_n_0_[9] ),
        .I1(\RFC_reg_n_0_[8] ),
        .O(\rgb[1]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_22 
       (.I0(\RFC_reg_n_0_[14] ),
        .I1(\RFC_reg_n_0_[15] ),
        .O(\rgb[1]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_23 
       (.I0(\RFC_reg_n_0_[12] ),
        .I1(\RFC_reg_n_0_[13] ),
        .O(\rgb[1]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_24 
       (.I0(\RFC_reg_n_0_[10] ),
        .I1(\RFC_reg_n_0_[11] ),
        .O(\rgb[1]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_25 
       (.I0(\RFC_reg_n_0_[8] ),
        .I1(\RFC_reg_n_0_[9] ),
        .O(\rgb[1]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_26 
       (.I0(\RFC_reg_n_0_[15] ),
        .I1(\RFC_reg_n_0_[14] ),
        .O(\rgb[1]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_27 
       (.I0(\RFC_reg_n_0_[13] ),
        .I1(\RFC_reg_n_0_[12] ),
        .O(\rgb[1]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_28 
       (.I0(\RFC_reg_n_0_[11] ),
        .I1(\RFC_reg_n_0_[10] ),
        .O(\rgb[1]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_29 
       (.I0(\RFC_reg_n_0_[9] ),
        .I1(\RFC_reg_n_0_[8] ),
        .O(\rgb[1]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_30 
       (.I0(\RFC_reg_n_0_[6] ),
        .I1(\RFC_reg_n_0_[7] ),
        .O(\rgb[1]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_31 
       (.I0(\RFC_reg_n_0_[4] ),
        .I1(\RFC_reg_n_0_[5] ),
        .O(\rgb[1]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_32 
       (.I0(\RFC_reg_n_0_[2] ),
        .I1(\RFC_reg_n_0_[3] ),
        .O(\rgb[1]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_33 
       (.I0(\RFC_reg_n_0_[0] ),
        .I1(\RFC_reg_n_0_[1] ),
        .O(\rgb[1]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_34 
       (.I0(\RFC_reg_n_0_[7] ),
        .I1(\RFC_reg_n_0_[6] ),
        .O(\rgb[1]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_35 
       (.I0(\RFC_reg_n_0_[5] ),
        .I1(\RFC_reg_n_0_[4] ),
        .O(\rgb[1]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_36 
       (.I0(\RFC_reg_n_0_[3] ),
        .I1(\RFC_reg_n_0_[2] ),
        .O(\rgb[1]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_37 
       (.I0(\RFC_reg_n_0_[1] ),
        .I1(\RFC_reg_n_0_[0] ),
        .O(\rgb[1]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_38 
       (.I0(\RFC_reg_n_0_[6] ),
        .I1(\RFC_reg_n_0_[7] ),
        .O(\rgb[1]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_39 
       (.I0(\RFC_reg_n_0_[4] ),
        .I1(\RFC_reg_n_0_[5] ),
        .O(\rgb[1]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_40 
       (.I0(\RFC_reg_n_0_[2] ),
        .I1(\RFC_reg_n_0_[3] ),
        .O(\rgb[1]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_41 
       (.I0(\RFC_reg_n_0_[0] ),
        .I1(\RFC_reg_n_0_[1] ),
        .O(\rgb[1]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_42 
       (.I0(\RFC_reg_n_0_[7] ),
        .I1(\RFC_reg_n_0_[6] ),
        .O(\rgb[1]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_43 
       (.I0(\RFC_reg_n_0_[5] ),
        .I1(\RFC_reg_n_0_[4] ),
        .O(\rgb[1]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_44 
       (.I0(\RFC_reg_n_0_[3] ),
        .I1(\RFC_reg_n_0_[2] ),
        .O(\rgb[1]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_45 
       (.I0(\RFC_reg_n_0_[1] ),
        .I1(\RFC_reg_n_0_[0] ),
        .O(\rgb[1]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_5 
       (.I0(\RFC_reg_n_0_[16] ),
        .I1(\RFC_reg_n_0_[17] ),
        .O(\rgb[1]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb[1]_i_6 
       (.I0(\RFC_reg_n_0_[18] ),
        .O(\rgb[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rgb[1]_i_7 
       (.I0(\RFC_reg_n_0_[17] ),
        .I1(\RFC_reg_n_0_[16] ),
        .O(\rgb[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb[1]_i_9 
       (.I0(\RFC_reg_n_0_[16] ),
        .I1(\RFC_reg_n_0_[17] ),
        .O(\rgb[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\rgb[0]_i_1_n_0 ),
        .Q(rgb[0]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rgb_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\NLW_rgb_reg[0]_i_3_CO_UNCONNECTED [3:2],RGB25_in,\rgb_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rgb_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b1,1'b1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rgb_reg[0]_i_4 
       (.CI(\rgb_reg[0]_i_5_n_0 ),
        .CO({\NLW_rgb_reg[0]_i_4_CO_UNCONNECTED [3:2],RGB2,\rgb_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rgb_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\rgb[0]_i_6_n_0 ,\rgb[0]_i_7_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rgb_reg[0]_i_5 
       (.CI(\rgb_reg[0]_i_8_n_0 ),
        .CO({\rgb_reg[0]_i_5_n_0 ,\rgb_reg[0]_i_5_n_1 ,\rgb_reg[0]_i_5_n_2 ,\rgb_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rgb_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\rgb[0]_i_9_n_0 ,\rgb[0]_i_10_n_0 ,\rgb[0]_i_11_n_0 ,\rgb[0]_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rgb_reg[0]_i_8 
       (.CI(1'b0),
        .CO({\rgb_reg[0]_i_8_n_0 ,\rgb_reg[0]_i_8_n_1 ,\rgb_reg[0]_i_8_n_2 ,\rgb_reg[0]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rgb_reg[0]_i_8_O_UNCONNECTED [3:0]),
        .S({\rgb[0]_i_13_n_0 ,\rgb[0]_i_14_n_0 ,\rgb[0]_i_15_n_0 ,\rgb[0]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\rgb[1]_i_1_n_0 ),
        .Q(rgb[1]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rgb_reg[1]_i_12 
       (.CI(1'b0),
        .CO({\rgb_reg[1]_i_12_n_0 ,\rgb_reg[1]_i_12_n_1 ,\rgb_reg[1]_i_12_n_2 ,\rgb_reg[1]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb[1]_i_30_n_0 ,\rgb[1]_i_31_n_0 ,\rgb[1]_i_32_n_0 ,\rgb[1]_i_33_n_0 }),
        .O(\NLW_rgb_reg[1]_i_12_O_UNCONNECTED [3:0]),
        .S({\rgb[1]_i_34_n_0 ,\rgb[1]_i_35_n_0 ,\rgb[1]_i_36_n_0 ,\rgb[1]_i_37_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rgb_reg[1]_i_2 
       (.CI(\rgb_reg[1]_i_4_n_0 ),
        .CO({\NLW_rgb_reg[1]_i_2_CO_UNCONNECTED [3:2],RGB27_in,\rgb_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\RFC_reg_n_0_[18] ,\rgb[1]_i_5_n_0 }),
        .O(\NLW_rgb_reg[1]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\rgb[1]_i_6_n_0 ,\rgb[1]_i_7_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rgb_reg[1]_i_21 
       (.CI(1'b0),
        .CO({\rgb_reg[1]_i_21_n_0 ,\rgb_reg[1]_i_21_n_1 ,\rgb_reg[1]_i_21_n_2 ,\rgb_reg[1]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb[1]_i_38_n_0 ,\rgb[1]_i_39_n_0 ,\rgb[1]_i_40_n_0 ,\rgb[1]_i_41_n_0 }),
        .O(\NLW_rgb_reg[1]_i_21_O_UNCONNECTED [3:0]),
        .S({\rgb[1]_i_42_n_0 ,\rgb[1]_i_43_n_0 ,\rgb[1]_i_44_n_0 ,\rgb[1]_i_45_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rgb_reg[1]_i_3 
       (.CI(\rgb_reg[1]_i_8_n_0 ),
        .CO({\NLW_rgb_reg[1]_i_3_CO_UNCONNECTED [3:2],RGB26_in,\rgb_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\RFC_reg_n_0_[18] ,\rgb[1]_i_9_n_0 }),
        .O(\NLW_rgb_reg[1]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\rgb[1]_i_10_n_0 ,\rgb[1]_i_11_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rgb_reg[1]_i_4 
       (.CI(\rgb_reg[1]_i_12_n_0 ),
        .CO({\rgb_reg[1]_i_4_n_0 ,\rgb_reg[1]_i_4_n_1 ,\rgb_reg[1]_i_4_n_2 ,\rgb_reg[1]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb[1]_i_13_n_0 ,\rgb[1]_i_14_n_0 ,\rgb[1]_i_15_n_0 ,\rgb[1]_i_16_n_0 }),
        .O(\NLW_rgb_reg[1]_i_4_O_UNCONNECTED [3:0]),
        .S({\rgb[1]_i_17_n_0 ,\rgb[1]_i_18_n_0 ,\rgb[1]_i_19_n_0 ,\rgb[1]_i_20_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rgb_reg[1]_i_8 
       (.CI(\rgb_reg[1]_i_21_n_0 ),
        .CO({\rgb_reg[1]_i_8_n_0 ,\rgb_reg[1]_i_8_n_1 ,\rgb_reg[1]_i_8_n_2 ,\rgb_reg[1]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb[1]_i_22_n_0 ,\rgb[1]_i_23_n_0 ,\rgb[1]_i_24_n_0 ,\rgb[1]_i_25_n_0 }),
        .O(\NLW_rgb_reg[1]_i_8_O_UNCONNECTED [3:0]),
        .S({\rgb[1]_i_26_n_0 ,\rgb[1]_i_27_n_0 ,\rgb[1]_i_28_n_0 ,\rgb[1]_i_29_n_0 }));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
