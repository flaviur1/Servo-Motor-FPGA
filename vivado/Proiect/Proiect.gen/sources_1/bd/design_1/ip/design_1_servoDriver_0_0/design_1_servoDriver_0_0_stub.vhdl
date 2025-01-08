-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Jan  8 09:53:26 2025
-- Host        : DESKTOP-A86H2ER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/flavi/Desktop/SSC/PROIECT/vivado/Proiect/Proiect.gen/sources_1/bd/design_1/ip/design_1_servoDriver_0_0/design_1_servoDriver_0_0_stub.vhdl
-- Design      : design_1_servoDriver_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_servoDriver_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    angle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    toMotor : out STD_LOGIC
  );

end design_1_servoDriver_0_0;

architecture stub of design_1_servoDriver_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,angle[7:0],toMotor";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "servoDriver,Vivado 2024.1";
begin
end;
