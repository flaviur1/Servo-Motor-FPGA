-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Dec 18 17:24:57 2024
-- Host        : DESKTOP-A86H2ER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/flavi/Desktop/SSC/PROIECT/vivado/Proiect/Proiect.gen/sources_1/bd/design_1/ip/design_1_servoDriver_0_0/design_1_servoDriver_0_0_sim_netlist.vhdl
-- Design      : design_1_servoDriver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_servoDriver_0_0_servoClock is
  port (
    aux_clk_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_servoDriver_0_0_servoClock : entity is "servoClock";
end design_1_servoDriver_0_0_servoClock;

architecture STRUCTURE of design_1_servoDriver_0_0_servoClock is
  signal aux_clk_i_1_n_0 : STD_LOGIC;
  signal \^aux_clk_reg_0\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_1\ : STD_LOGIC;
  signal \counter0_carry__3_n_2\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal \counter0_carry__4_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_1\ : STD_LOGIC;
  signal \counter0_carry__4_n_2\ : STD_LOGIC;
  signal \counter0_carry__4_n_3\ : STD_LOGIC;
  signal \counter0_carry__5_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_n_1\ : STD_LOGIC;
  signal \counter0_carry__5_n_2\ : STD_LOGIC;
  signal \counter0_carry__5_n_3\ : STD_LOGIC;
  signal \counter0_carry__6_n_2\ : STD_LOGIC;
  signal \counter0_carry__6_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \counter[31]_i_7_n_0\ : STD_LOGIC;
  signal \counter[31]_i_8_n_0\ : STD_LOGIC;
  signal \counter[31]_i_9_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of aux_clk_i_1 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair0";
begin
  aux_clk_reg_0 <= \^aux_clk_reg_0\;
aux_clk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => \^aux_clk_reg_0\,
      O => aux_clk_i_1_n_0
    );
aux_clk_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => aux_clk_i_1_n_0,
      Q => \^aux_clk_reg_0\
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \counter0_carry__2_n_0\,
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3) => \counter0_carry__3_n_0\,
      CO(2) => \counter0_carry__3_n_1\,
      CO(1) => \counter0_carry__3_n_2\,
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => counter(20 downto 17)
    );
\counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__3_n_0\,
      CO(3) => \counter0_carry__4_n_0\,
      CO(2) => \counter0_carry__4_n_1\,
      CO(1) => \counter0_carry__4_n_2\,
      CO(0) => \counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => counter(24 downto 21)
    );
\counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__4_n_0\,
      CO(3) => \counter0_carry__5_n_0\,
      CO(2) => \counter0_carry__5_n_1\,
      CO(1) => \counter0_carry__5_n_2\,
      CO(0) => \counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => counter(28 downto 25)
    );
\counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter0_carry__6_n_2\,
      CO(0) => \counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => counter(31 downto 29)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \counter[31]_i_4_n_0\,
      I1 => \counter[31]_i_3_n_0\,
      I2 => \counter[31]_i_2_n_0\,
      I3 => counter(0),
      O => counter_0(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(10),
      O => counter_0(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(11),
      O => counter_0(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(12),
      O => counter_0(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(13),
      O => counter_0(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(14),
      O => counter_0(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(15),
      O => counter_0(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(16),
      O => counter_0(16)
    );
\counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(17),
      O => counter_0(17)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(18),
      O => counter_0(18)
    );
\counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(19),
      O => counter_0(19)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(1),
      O => counter_0(1)
    );
\counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(20),
      O => counter_0(20)
    );
\counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(21),
      O => counter_0(21)
    );
\counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(22),
      O => counter_0(22)
    );
\counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(23),
      O => counter_0(23)
    );
\counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(24),
      O => counter_0(24)
    );
\counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(25),
      O => counter_0(25)
    );
\counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(26),
      O => counter_0(26)
    );
\counter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(27),
      O => counter_0(27)
    );
\counter[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(28),
      O => counter_0(28)
    );
\counter[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(29),
      O => counter_0(29)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(2),
      O => counter_0(2)
    );
\counter[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(30),
      O => counter_0(30)
    );
\counter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(31),
      O => counter_0(31)
    );
\counter[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(12),
      I1 => counter(13),
      I2 => counter(10),
      I3 => counter(11),
      I4 => \counter[31]_i_5_n_0\,
      O => \counter[31]_i_2_n_0\
    );
\counter[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      I2 => counter(2),
      I3 => counter(3),
      I4 => \counter[31]_i_6_n_0\,
      O => \counter[31]_i_3_n_0\
    );
\counter[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter[31]_i_7_n_0\,
      I1 => \counter[31]_i_8_n_0\,
      I2 => counter(31),
      I3 => counter(30),
      I4 => counter(1),
      I5 => \counter[31]_i_9_n_0\,
      O => \counter[31]_i_4_n_0\
    );
\counter[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => counter(14),
      I1 => counter(15),
      I2 => counter(17),
      I3 => counter(16),
      O => \counter[31]_i_5_n_0\
    );
\counter[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter(6),
      I1 => counter(7),
      I2 => counter(9),
      I3 => counter(8),
      O => \counter[31]_i_6_n_0\
    );
\counter[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(23),
      I1 => counter(22),
      I2 => counter(25),
      I3 => counter(24),
      O => \counter[31]_i_7_n_0\
    );
\counter[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => counter(19),
      I1 => counter(18),
      I2 => counter(21),
      I3 => counter(20),
      O => \counter[31]_i_8_n_0\
    );
\counter[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(27),
      I1 => counter(26),
      I2 => counter(29),
      I3 => counter(28),
      O => \counter[31]_i_9_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(3),
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(4),
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(5),
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(6),
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(7),
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(8),
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(9),
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(12),
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(15),
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(16),
      Q => counter(16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(17),
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(18),
      Q => counter(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(19),
      Q => counter(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(1),
      Q => counter(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(20),
      Q => counter(20)
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(21),
      Q => counter(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(22),
      Q => counter(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(23),
      Q => counter(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(24),
      Q => counter(24)
    );
\counter_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(25),
      Q => counter(25)
    );
\counter_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(26),
      Q => counter(26)
    );
\counter_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(27),
      Q => counter(27)
    );
\counter_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(28),
      Q => counter(28)
    );
\counter_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(29),
      Q => counter(29)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(2),
      Q => counter(2)
    );
\counter_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(30),
      Q => counter(30)
    );
\counter_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(31),
      Q => counter(31)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(9),
      Q => counter(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_servoDriver_0_0_servoSignal is
  port (
    toMotor : out STD_LOGIC;
    \counter_reg[0]_0\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    angle : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_servoDriver_0_0_servoSignal : entity is "servoSignal";
end design_1_servoDriver_0_0_servoSignal;

architecture STRUCTURE of design_1_servoDriver_0_0_servoSignal is
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 16 downto 4 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal pulse_width : STD_LOGIC_VECTOR ( 9 downto 4 );
  signal \pulse_width[4]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_width[5]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_width[5]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_width[9]_i_1_n_0\ : STD_LOGIC;
  signal \pwm0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwm0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwm0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pwm0_carry__0_n_1\ : STD_LOGIC;
  signal \pwm0_carry__0_n_2\ : STD_LOGIC;
  signal \pwm0_carry__0_n_3\ : STD_LOGIC;
  signal pwm0_carry_i_1_n_0 : STD_LOGIC;
  signal pwm0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm0_carry_i_4_n_0 : STD_LOGIC;
  signal pwm0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm0_carry_i_7_n_0 : STD_LOGIC;
  signal pwm0_carry_i_8_n_0 : STD_LOGIC;
  signal pwm0_carry_n_0 : STD_LOGIC;
  signal pwm0_carry_n_1 : STD_LOGIC;
  signal pwm0_carry_n_2 : STD_LOGIC;
  signal pwm0_carry_n_3 : STD_LOGIC;
  signal \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_pwm0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pwm0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pulse_width[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pulse_width[5]_i_1\ : label is "soft_lutpair1";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of pwm0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm0_carry__0\ : label is 11;
begin
\counter[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => \counter_reg_n_0_[3]\,
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => \counter_reg_n_0_[2]\,
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => \counter_reg_n_0_[1]\,
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AB"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_6_n_0\
    );
\counter[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => counter_reg(15),
      I1 => counter_reg(16),
      I2 => counter_reg(11),
      I3 => counter_reg(14),
      I4 => counter_reg(13),
      I5 => counter_reg(12),
      O => \counter[0]_i_7_n_0\
    );
\counter[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000000000000000"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(4),
      I2 => counter_reg(8),
      I3 => counter_reg(9),
      I4 => counter_reg(6),
      I5 => counter_reg(7),
      O => \counter[0]_i_8_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(15),
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(14),
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(13),
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(12),
      O => \counter[12]_i_5_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(16),
      O => \counter[16]_i_2_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(7),
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(6),
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(5),
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(4),
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(11),
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_reg(10),
      I1 => \counter[0]_i_7_n_0\,
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(9),
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => \counter[0]_i_7_n_0\,
      I1 => \counter[0]_i_8_n_0\,
      I2 => counter_reg(10),
      I3 => counter_reg(8),
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1_n_7\,
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter[0]_i_2_n_0\,
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3) => \counter[0]_i_3_n_0\,
      S(2) => \counter[0]_i_4_n_0\,
      S(1) => \counter[0]_i_5_n_0\,
      S(0) => \counter[0]_i_6_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12)
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16)
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \counter[16]_i_2_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1_n_6\,
      Q => \counter_reg_n_0_[1]\
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1_n_5\,
      Q => \counter_reg_n_0_[2]\
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[0]_i_1_n_4\,
      Q => \counter_reg_n_0_[3]\
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4)
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8)
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9)
    );
\pulse_width[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \pulse_width[5]_i_2_n_0\,
      I1 => reset,
      I2 => pulse_width(4),
      O => \pulse_width[4]_i_1_n_0\
    );
\pulse_width[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \pulse_width[5]_i_2_n_0\,
      I1 => reset,
      I2 => pulse_width(5),
      O => \pulse_width[5]_i_1_n_0\
    );
\pulse_width[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11155555FFFFFFFF"
    )
        port map (
      I0 => angle(4),
      I1 => angle(3),
      I2 => angle(0),
      I3 => angle(1),
      I4 => angle(2),
      I5 => angle(5),
      O => \pulse_width[5]_i_2_n_0\
    );
\pulse_width[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => reset,
      I1 => pulse_width(9),
      O => \pulse_width[9]_i_1_n_0\
    );
\pulse_width_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \pulse_width[4]_i_1_n_0\,
      Q => pulse_width(4),
      R => '0'
    );
\pulse_width_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \pulse_width[5]_i_1_n_0\,
      Q => pulse_width(5),
      R => '0'
    );
\pulse_width_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \pulse_width[9]_i_1_n_0\,
      Q => pulse_width(9),
      R => '0'
    );
pwm0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm0_carry_n_0,
      CO(2) => pwm0_carry_n_1,
      CO(1) => pwm0_carry_n_2,
      CO(0) => pwm0_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm0_carry_i_1_n_0,
      DI(2) => pwm0_carry_i_2_n_0,
      DI(1) => pwm0_carry_i_3_n_0,
      DI(0) => pwm0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm0_carry_i_5_n_0,
      S(2) => pwm0_carry_i_6_n_0,
      S(1) => pwm0_carry_i_7_n_0,
      S(0) => pwm0_carry_i_8_n_0
    );
\pwm0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm0_carry_n_0,
      CO(3) => \NLW_pwm0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \pwm0_carry__0_n_1\,
      CO(1) => \pwm0_carry__0_n_2\,
      CO(0) => \pwm0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \pwm0_carry__0_i_1_n_0\,
      DI(1) => \pwm0_carry__0_i_2_n_0\,
      DI(0) => \pwm0_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_pwm0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \pwm0_carry__0_i_4_n_0\,
      S(1) => \pwm0_carry__0_i_5_n_0\,
      S(0) => \pwm0_carry__0_i_6_n_0\
    );
\pwm0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pulse_width(4),
      I1 => counter_reg(16),
      O => \pwm0_carry__0_i_1_n_0\
    );
\pwm0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => counter_reg(15),
      I1 => pulse_width(4),
      I2 => pulse_width(9),
      I3 => counter_reg(14),
      O => \pwm0_carry__0_i_2_n_0\
    );
\pwm0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => pulse_width(4),
      I1 => counter_reg(13),
      I2 => counter_reg(12),
      O => \pwm0_carry__0_i_3_n_0\
    );
\pwm0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_reg(16),
      I1 => pulse_width(4),
      O => \pwm0_carry__0_i_4_n_0\
    );
\pwm0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pulse_width(4),
      I1 => counter_reg(15),
      I2 => pulse_width(9),
      I3 => counter_reg(14),
      O => \pwm0_carry__0_i_5_n_0\
    );
\pwm0_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => counter_reg(13),
      I1 => pulse_width(4),
      I2 => counter_reg(12),
      O => \pwm0_carry__0_i_6_n_0\
    );
pwm0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => counter_reg(11),
      I1 => pulse_width(9),
      I2 => pulse_width(5),
      I3 => counter_reg(10),
      O => pwm0_carry_i_1_n_0
    );
pwm0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => counter_reg(9),
      I1 => pulse_width(9),
      I2 => pulse_width(4),
      I3 => counter_reg(8),
      O => pwm0_carry_i_2_n_0
    );
pwm0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => pulse_width(4),
      I1 => counter_reg(7),
      I2 => counter_reg(6),
      O => pwm0_carry_i_3_n_0
    );
pwm0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => counter_reg(5),
      I1 => pulse_width(5),
      I2 => pulse_width(4),
      I3 => counter_reg(4),
      O => pwm0_carry_i_4_n_0
    );
pwm0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pulse_width(9),
      I1 => counter_reg(11),
      I2 => pulse_width(5),
      I3 => counter_reg(10),
      O => pwm0_carry_i_5_n_0
    );
pwm0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pulse_width(9),
      I1 => counter_reg(9),
      I2 => pulse_width(4),
      I3 => counter_reg(8),
      O => pwm0_carry_i_6_n_0
    );
pwm0_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => counter_reg(7),
      I1 => pulse_width(4),
      I2 => counter_reg(6),
      O => pwm0_carry_i_7_n_0
    );
pwm0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pulse_width(5),
      I1 => counter_reg(5),
      I2 => pulse_width(4),
      I3 => counter_reg(4),
      O => pwm0_carry_i_8_n_0
    );
pwm_reg: unisim.vcomponents.FDCE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      CLR => reset,
      D => \pwm0_carry__0_n_1\,
      Q => toMotor
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_servoDriver_0_0_servoDriver is
  port (
    toMotor : out STD_LOGIC;
    angle : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_servoDriver_0_0_servoDriver : entity is "servoDriver";
end design_1_servoDriver_0_0_servoDriver;

architecture STRUCTURE of design_1_servoDriver_0_0_servoDriver is
  signal clkDiv_n_0 : STD_LOGIC;
begin
clkDiv: entity work.design_1_servoDriver_0_0_servoClock
     port map (
      aux_clk_reg_0 => clkDiv_n_0,
      clk => clk,
      reset => reset
    );
pwmGen: entity work.design_1_servoDriver_0_0_servoSignal
     port map (
      angle(5 downto 0) => angle(5 downto 0),
      \counter_reg[0]_0\ => clkDiv_n_0,
      reset => reset,
      toMotor => toMotor
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_servoDriver_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    angle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    toMotor : out STD_LOGIC;
    potentiometer : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_servoDriver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_servoDriver_0_0 : entity is "design_1_servoDriver_0_0,servoDriver,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_servoDriver_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_servoDriver_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_servoDriver_0_0 : entity is "servoDriver,Vivado 2024.1";
end design_1_servoDriver_0_0;

architecture STRUCTURE of design_1_servoDriver_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_servoDriver_0_0_servoDriver
     port map (
      angle(5 downto 0) => angle(7 downto 2),
      clk => clk,
      reset => reset,
      toMotor => toMotor
    );
end STRUCTURE;
