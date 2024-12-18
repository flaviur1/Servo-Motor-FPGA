// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Dec 18 17:24:57 2024
// Host        : DESKTOP-A86H2ER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/flavi/Desktop/SSC/PROIECT/vivado/Proiect/Proiect.gen/sources_1/bd/design_1/ip/design_1_servoDriver_0_0/design_1_servoDriver_0_0_sim_netlist.v
// Design      : design_1_servoDriver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_servoDriver_0_0,servoDriver,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "servoDriver,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_servoDriver_0_0
   (clk,
    reset,
    angle,
    toMotor,
    potentiometer,
    sw,
    btn);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [7:0]angle;
  output toMotor;
  input potentiometer;
  input [3:0]sw;
  input [3:0]btn;

  wire [7:0]angle;
  wire clk;
  wire reset;
  wire toMotor;

  design_1_servoDriver_0_0_servoDriver U0
       (.angle(angle[7:2]),
        .clk(clk),
        .reset(reset),
        .toMotor(toMotor));
endmodule

(* ORIG_REF_NAME = "servoClock" *) 
module design_1_servoDriver_0_0_servoClock
   (aux_clk_reg_0,
    clk,
    reset);
  output aux_clk_reg_0;
  input clk;
  input reset;

  wire aux_clk_i_1_n_0;
  wire aux_clk_reg_0;
  wire clk;
  wire [31:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_1;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__6_n_2;
  wire counter0_carry__6_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[31]_i_2_n_0 ;
  wire \counter[31]_i_3_n_0 ;
  wire \counter[31]_i_4_n_0 ;
  wire \counter[31]_i_5_n_0 ;
  wire \counter[31]_i_6_n_0 ;
  wire \counter[31]_i_7_n_0 ;
  wire \counter[31]_i_8_n_0 ;
  wire \counter[31]_i_9_n_0 ;
  wire [31:0]counter_0;
  wire [31:1]data0;
  wire reset;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    aux_clk_i_1
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(aux_clk_reg_0),
        .O(aux_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    aux_clk_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(aux_clk_i_1_n_0),
        .Q(aux_clk_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(counter[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,counter0_carry__5_n_1,counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(counter[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO({NLW_counter0_carry__6_CO_UNCONNECTED[3:2],counter0_carry__6_n_2,counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,counter[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \counter[0]_i_1 
       (.I0(\counter[31]_i_4_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_2_n_0 ),
        .I3(counter[0]),
        .O(counter_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[10]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[10]),
        .O(counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[11]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[11]),
        .O(counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[12]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[12]),
        .O(counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[13]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[13]),
        .O(counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[14]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[14]),
        .O(counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[15]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[15]),
        .O(counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[16]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[16]),
        .O(counter_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[17]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[17]),
        .O(counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[18]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[18]),
        .O(counter_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[19]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[19]),
        .O(counter_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[1]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[1]),
        .O(counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[20]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[20]),
        .O(counter_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[21]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[21]),
        .O(counter_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[22]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[22]),
        .O(counter_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[23]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[23]),
        .O(counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[24]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[24]),
        .O(counter_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[25]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[25]),
        .O(counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[26]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[26]),
        .O(counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[27]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[27]),
        .O(counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[28]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[28]),
        .O(counter_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[29]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[29]),
        .O(counter_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[2]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[2]),
        .O(counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[30]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[30]),
        .O(counter_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[31]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[31]),
        .O(counter_0[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_2 
       (.I0(counter[12]),
        .I1(counter[13]),
        .I2(counter[10]),
        .I3(counter[11]),
        .I4(\counter[31]_i_5_n_0 ),
        .O(\counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_3 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(\counter[31]_i_6_n_0 ),
        .O(\counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[31]_i_4 
       (.I0(\counter[31]_i_7_n_0 ),
        .I1(\counter[31]_i_8_n_0 ),
        .I2(counter[31]),
        .I3(counter[30]),
        .I4(counter[1]),
        .I5(\counter[31]_i_9_n_0 ),
        .O(\counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \counter[31]_i_5 
       (.I0(counter[14]),
        .I1(counter[15]),
        .I2(counter[17]),
        .I3(counter[16]),
        .O(\counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[31]_i_6 
       (.I0(counter[6]),
        .I1(counter[7]),
        .I2(counter[9]),
        .I3(counter[8]),
        .O(\counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_7 
       (.I0(counter[23]),
        .I1(counter[22]),
        .I2(counter[25]),
        .I3(counter[24]),
        .O(\counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter[31]_i_8 
       (.I0(counter[19]),
        .I1(counter[18]),
        .I2(counter[21]),
        .I3(counter[20]),
        .O(\counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_9 
       (.I0(counter[27]),
        .I1(counter[26]),
        .I2(counter[29]),
        .I3(counter[28]),
        .O(\counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[3]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[3]),
        .O(counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[4]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[4]),
        .O(counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[5]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[5]),
        .O(counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[6]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[6]),
        .O(counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[7]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[7]),
        .O(counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[8]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[8]),
        .O(counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[9]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[9]),
        .O(counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[16]),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[20]),
        .Q(counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[21]),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[22]),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[23]),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[24]),
        .Q(counter[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[25]),
        .Q(counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[26]),
        .Q(counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[27]),
        .Q(counter[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[28]),
        .Q(counter[28]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[29]),
        .Q(counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[30]),
        .Q(counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[31]),
        .Q(counter[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[9]),
        .Q(counter[9]));
endmodule

(* ORIG_REF_NAME = "servoDriver" *) 
module design_1_servoDriver_0_0_servoDriver
   (toMotor,
    angle,
    clk,
    reset);
  output toMotor;
  input [5:0]angle;
  input clk;
  input reset;

  wire [5:0]angle;
  wire clk;
  wire clkDiv_n_0;
  wire reset;
  wire toMotor;

  design_1_servoDriver_0_0_servoClock clkDiv
       (.aux_clk_reg_0(clkDiv_n_0),
        .clk(clk),
        .reset(reset));
  design_1_servoDriver_0_0_servoSignal pwmGen
       (.angle(angle),
        .\counter_reg[0]_0 (clkDiv_n_0),
        .reset(reset),
        .toMotor(toMotor));
endmodule

(* ORIG_REF_NAME = "servoSignal" *) 
module design_1_servoDriver_0_0_servoSignal
   (toMotor,
    \counter_reg[0]_0 ,
    reset,
    angle);
  output toMotor;
  input \counter_reg[0]_0 ;
  input reset;
  input [5:0]angle;

  wire [5:0]angle;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [16:4]counter_reg;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire [9:4]pulse_width;
  wire \pulse_width[4]_i_1_n_0 ;
  wire \pulse_width[5]_i_1_n_0 ;
  wire \pulse_width[5]_i_2_n_0 ;
  wire \pulse_width[9]_i_1_n_0 ;
  wire pwm0_carry__0_i_1_n_0;
  wire pwm0_carry__0_i_2_n_0;
  wire pwm0_carry__0_i_3_n_0;
  wire pwm0_carry__0_i_4_n_0;
  wire pwm0_carry__0_i_5_n_0;
  wire pwm0_carry__0_i_6_n_0;
  wire pwm0_carry__0_n_1;
  wire pwm0_carry__0_n_2;
  wire pwm0_carry__0_n_3;
  wire pwm0_carry_i_1_n_0;
  wire pwm0_carry_i_2_n_0;
  wire pwm0_carry_i_3_n_0;
  wire pwm0_carry_i_4_n_0;
  wire pwm0_carry_i_5_n_0;
  wire pwm0_carry_i_6_n_0;
  wire pwm0_carry_i_7_n_0;
  wire pwm0_carry_i_8_n_0;
  wire pwm0_carry_n_0;
  wire pwm0_carry_n_1;
  wire pwm0_carry_n_2;
  wire pwm0_carry_n_3;
  wire reset;
  wire toMotor;
  wire [3:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_pwm0_carry_O_UNCONNECTED;
  wire [3:3]NLW_pwm0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pwm0_carry__0_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[0]_i_2 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[0]_i_3 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(\counter_reg_n_0_[3] ),
        .O(\counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[0]_i_4 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(\counter_reg_n_0_[2] ),
        .O(\counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[0]_i_5 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(\counter_reg_n_0_[1] ),
        .O(\counter[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00AB)) 
    \counter[0]_i_6 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[0]_i_7 
       (.I0(counter_reg[15]),
        .I1(counter_reg[16]),
        .I2(counter_reg[11]),
        .I3(counter_reg[14]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(\counter[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \counter[0]_i_8 
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .I4(counter_reg[6]),
        .I5(counter_reg[7]),
        .O(\counter[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[12]_i_2 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[15]),
        .O(\counter[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[12]_i_3 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[14]),
        .O(\counter[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[12]_i_4 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[13]),
        .O(\counter[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[12]_i_5 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[12]),
        .O(\counter[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[16]_i_2 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[16]),
        .O(\counter[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[4]_i_2 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[7]),
        .O(\counter[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[4]_i_3 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[6]),
        .O(\counter[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[4]_i_4 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[5]),
        .O(\counter[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[4]_i_5 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[4]),
        .O(\counter[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[8]_i_2 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[11]),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(\counter[0]_i_7_n_0 ),
        .O(\counter[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[8]_i_4 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[9]),
        .O(\counter[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \counter[8]_i_5 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[10]),
        .I3(counter_reg[8]),
        .O(\counter[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2_n_0 }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_1_O_UNCONNECTED [3:1],\counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\counter[16]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD1)) 
    \pulse_width[4]_i_1 
       (.I0(\pulse_width[5]_i_2_n_0 ),
        .I1(reset),
        .I2(pulse_width[4]),
        .O(\pulse_width[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \pulse_width[5]_i_1 
       (.I0(\pulse_width[5]_i_2_n_0 ),
        .I1(reset),
        .I2(pulse_width[5]),
        .O(\pulse_width[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11155555FFFFFFFF)) 
    \pulse_width[5]_i_2 
       (.I0(angle[4]),
        .I1(angle[3]),
        .I2(angle[0]),
        .I3(angle[1]),
        .I4(angle[2]),
        .I5(angle[5]),
        .O(\pulse_width[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \pulse_width[9]_i_1 
       (.I0(reset),
        .I1(pulse_width[9]),
        .O(\pulse_width[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_reg[4] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\pulse_width[4]_i_1_n_0 ),
        .Q(pulse_width[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_reg[5] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\pulse_width[5]_i_1_n_0 ),
        .Q(pulse_width[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_reg[9] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\pulse_width[9]_i_1_n_0 ),
        .Q(pulse_width[9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm0_carry
       (.CI(1'b0),
        .CO({pwm0_carry_n_0,pwm0_carry_n_1,pwm0_carry_n_2,pwm0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm0_carry_i_1_n_0,pwm0_carry_i_2_n_0,pwm0_carry_i_3_n_0,pwm0_carry_i_4_n_0}),
        .O(NLW_pwm0_carry_O_UNCONNECTED[3:0]),
        .S({pwm0_carry_i_5_n_0,pwm0_carry_i_6_n_0,pwm0_carry_i_7_n_0,pwm0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm0_carry__0
       (.CI(pwm0_carry_n_0),
        .CO({NLW_pwm0_carry__0_CO_UNCONNECTED[3],pwm0_carry__0_n_1,pwm0_carry__0_n_2,pwm0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pwm0_carry__0_i_1_n_0,pwm0_carry__0_i_2_n_0,pwm0_carry__0_i_3_n_0}),
        .O(NLW_pwm0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,pwm0_carry__0_i_4_n_0,pwm0_carry__0_i_5_n_0,pwm0_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    pwm0_carry__0_i_1
       (.I0(pulse_width[4]),
        .I1(counter_reg[16]),
        .O(pwm0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm0_carry__0_i_2
       (.I0(counter_reg[15]),
        .I1(pulse_width[4]),
        .I2(pulse_width[9]),
        .I3(counter_reg[14]),
        .O(pwm0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    pwm0_carry__0_i_3
       (.I0(pulse_width[4]),
        .I1(counter_reg[13]),
        .I2(counter_reg[12]),
        .O(pwm0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm0_carry__0_i_4
       (.I0(counter_reg[16]),
        .I1(pulse_width[4]),
        .O(pwm0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm0_carry__0_i_5
       (.I0(pulse_width[4]),
        .I1(counter_reg[15]),
        .I2(pulse_width[9]),
        .I3(counter_reg[14]),
        .O(pwm0_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    pwm0_carry__0_i_6
       (.I0(counter_reg[13]),
        .I1(pulse_width[4]),
        .I2(counter_reg[12]),
        .O(pwm0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm0_carry_i_1
       (.I0(counter_reg[11]),
        .I1(pulse_width[9]),
        .I2(pulse_width[5]),
        .I3(counter_reg[10]),
        .O(pwm0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm0_carry_i_2
       (.I0(counter_reg[9]),
        .I1(pulse_width[9]),
        .I2(pulse_width[4]),
        .I3(counter_reg[8]),
        .O(pwm0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    pwm0_carry_i_3
       (.I0(pulse_width[4]),
        .I1(counter_reg[7]),
        .I2(counter_reg[6]),
        .O(pwm0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm0_carry_i_4
       (.I0(counter_reg[5]),
        .I1(pulse_width[5]),
        .I2(pulse_width[4]),
        .I3(counter_reg[4]),
        .O(pwm0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm0_carry_i_5
       (.I0(pulse_width[9]),
        .I1(counter_reg[11]),
        .I2(pulse_width[5]),
        .I3(counter_reg[10]),
        .O(pwm0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm0_carry_i_6
       (.I0(pulse_width[9]),
        .I1(counter_reg[9]),
        .I2(pulse_width[4]),
        .I3(counter_reg[8]),
        .O(pwm0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    pwm0_carry_i_7
       (.I0(counter_reg[7]),
        .I1(pulse_width[4]),
        .I2(counter_reg[6]),
        .O(pwm0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm0_carry_i_8
       (.I0(pulse_width[5]),
        .I1(counter_reg[5]),
        .I2(pulse_width[4]),
        .I3(counter_reg[4]),
        .O(pwm0_carry_i_8_n_0));
  FDCE pwm_reg
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .CLR(reset),
        .D(pwm0_carry__0_n_1),
        .Q(toMotor));
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
