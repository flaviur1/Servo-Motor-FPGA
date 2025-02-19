
-- file: design_1_xadc_wiz_0_1.vhd
-- (c) Copyright 2009 - 2023 AMD, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
Library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity design_1_xadc_wiz_0_1 is
   port
   (
    -- System interface
    s_axi_aclk      : in  std_logic;                                      
    s_axi_aresetn   : in  std_logic;                                      
    -- AXI Write address channel signals                                        
    s_axi_awaddr    : in  std_logic_vector(10 downto 0);                  
    s_axi_awvalid   : in  std_logic;                                      
    s_axi_awready   : out std_logic;                                      
    -- AXI Write data channel signals                                           
    s_axi_wdata     : in  std_logic_vector(31 downto 0);                  
    s_axi_wstrb     : in  std_logic_vector(3 downto 0);              
    s_axi_wvalid    : in  std_logic;                                      
    s_axi_wready    : out std_logic;                                      
    -- AXI Write response channel signals                                       
    s_axi_bresp     : out std_logic_vector(1 downto 0);                   
    s_axi_bvalid    : out std_logic;                                      
    s_axi_bready    : in  std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_araddr    : in  std_logic_vector(10 downto 0);                  
    s_axi_arvalid   : in  std_logic;                                      
    s_axi_arready   : out std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_rdata     : out std_logic_vector(31 downto 0);                  
    s_axi_rresp     : out std_logic_vector(1 downto 0);                   
    s_axi_rvalid    : out std_logic;                                      
    s_axi_rready    : in  std_logic;                                      
                                                                                
   -- Input to the system from the axi_xadc core
    ip2intc_irpt    : out std_logic;
    s_axis_aclk     : in  std_logic;
    m_axis_tdata    : out std_logic_vector(15 downto 0);
    m_axis_tvalid   : out std_logic;
    m_axis_tid      : out std_logic_vector(4 downto 0);
    m_axis_tready   : in  std_logic;
    vauxp6          : in  STD_LOGIC;                         -- Auxiliary Channel 6
    vauxn6          : in  STD_LOGIC;
    vauxp7          : in  STD_LOGIC;                         -- Auxiliary Channel 7
    vauxn7          : in  STD_LOGIC;
    vauxp14         : in  STD_LOGIC;                         -- Auxiliary Channel 14
    vauxn14         : in  STD_LOGIC;
    vauxp15         : in  STD_LOGIC;                         -- Auxiliary Channel 15
    vauxn15         : in  STD_LOGIC;
    busy_out        : out  STD_LOGIC;                        -- ADC Busy signal
    channel_out     : out  STD_LOGIC_VECTOR (4 downto 0);    -- Channel Selection Outputs
    eoc_out         : out  STD_LOGIC;                        -- End of Conversion Signal
    eos_out         : out  STD_LOGIC;                        -- End of Sequence Signal
    ot_out          : out  STD_LOGIC;                        -- Over-Temperature alarm output
    vccddro_alarm_out : out  STD_LOGIC;                        -- VCCDDRO-sensor alarm output
    vccpint_alarm_out : out  STD_LOGIC;                        -- VCCPINT-sensor alarm output
    vccpaux_alarm_out : out  STD_LOGIC;                        -- VCCPAUX-sensor alarm output
    vccaux_alarm_out : out  STD_LOGIC;                        -- VCCAUX-sensor alarm output
    vccint_alarm_out : out  STD_LOGIC;                        -- VCCINT-sensor alarm output
    user_temp_alarm_out : out  STD_LOGIC;                        -- Temperature-sensor alarm output
    alarm_out       : out STD_LOGIC;                         -- OR'ed output of all the Alarms
    vp_in           : in  STD_LOGIC;                         -- Dedicated Analog Input Pair
    vn_in           : in  STD_LOGIC
);
end design_1_xadc_wiz_0_1;

architecture AMD of design_1_xadc_wiz_0_1 is

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of AMD : architecture is "design_1_xadc_wiz_0_1,xadc_wiz_v3_3_10,{component_name=design_1_xadc_wiz_0_1,enable_axi=true,enable_axi4stream=true,dclk_frequency=100,enable_busy=true,enable_convst=false,enable_convstclk=false,enable_dclk=true,enable_drp=false,enable_eoc=true,enable_eos=true,enable_vbram_alaram=false,enable_vccddro_alaram=true,enable_Vccint_Alaram=true,enable_Vccaux_alaram=trueenable_vccpaux_alaram=true,enable_vccpint_alaram=true,ot_alaram=true,user_temp_alaram=true,timing_mode=continuous,channel_averaging=None,sequencer_mode=on,startup_channel_selection=contineous_sequence}";


  component design_1_xadc_wiz_0_1_axi_xadc 
   generic
   (
    -----------------------------------------
--    C_BASEADDR              : std_logic_vector  := X"FFFF_FFFF";
--    C_HIGHADDR              : std_logic_vector  := X"0000_0000";
    -----------------------------------------
    -- AXI slave single block generics
    C_INSTANCE              : string := "design_1_xadc_wiz_0_1_axi_xadc";
    C_FAMILY                : string                   := "virtex7";
    C_S_AXI_ADDR_WIDTH      : integer range 2 to 32   := 11;
    C_S_AXI_DATA_WIDTH      : integer range 32 to 128  := 32;
    -----------------------------------------
    -- SYSMON Generics
    C_INCLUDE_INTR          : integer range 0 to 1   := 1;
    C_SIM_MONITOR_FILE      : string                 := "design.txt"
   );
   port
   (
    -- System interface
    s_axi_aclk      : in  std_logic;                                      
    s_axi_aresetn   : in  std_logic;                                      
    -- AXI Write address channel signals                                        
    s_axi_awaddr    : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);                  
    s_axi_awvalid   : in  std_logic;                                      
    s_axi_awready   : out std_logic;                                      
    -- AXI Write data channel signals                                           
    s_axi_wdata     : in  std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);                  
    s_axi_wstrb     : in  std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);              
    s_axi_wvalid    : in  std_logic;                                      
    s_axi_wready    : out std_logic;                                      
    -- AXI Write response channel signals                                       
    s_axi_bresp     : out std_logic_vector(1 downto 0);                   
    s_axi_bvalid    : out std_logic;                                      
    s_axi_bready    : in  std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_araddr    : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);                  
    s_axi_arvalid   : in  std_logic;                                      
    s_axi_arready   : out std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_rdata     : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);                  
    s_axi_rresp     : out std_logic_vector(1 downto 0);                   
    s_axi_rvalid    : out std_logic;                                      
    s_axi_rready    : in  std_logic;                                      
                                                                                
   -- Input to the system from the axi_xadc core
    ip2intc_irpt    : out std_logic;
  -- axi4stream master signals 
    s_axis_aclk     : in  std_logic;
    m_axis_tdata    : out std_logic_vector(15 downto 0);
    m_axis_tvalid   : out std_logic;
    m_axis_tid      : out std_logic_vector(4 downto 0);
    m_axis_tready   : in  std_logic;
   -- XADC External interface signals

    -- Conversion start control signal for Event driven mode
    vauxp6          : in  STD_LOGIC;                         -- Auxiliary Channel 6
    vauxn6          : in  STD_LOGIC;
    vauxp7          : in  STD_LOGIC;                         -- Auxiliary Channel 7
    vauxn7          : in  STD_LOGIC;
    vauxp14         : in  STD_LOGIC;                         -- Auxiliary Channel 14
    vauxn14         : in  STD_LOGIC;
    vauxp15         : in  STD_LOGIC;                         -- Auxiliary Channel 15
    vauxn15         : in  STD_LOGIC;
    busy_out        : out  STD_LOGIC;                        -- ADC Busy signal
    channel_out     : out  STD_LOGIC_VECTOR (4 downto 0);    -- Channel Selection Outputs
    eoc_out         : out  STD_LOGIC;                        -- End of Conversion Signal
    eos_out         : out  STD_LOGIC;                        -- End of Sequence Signal
    ot_out          : out  STD_LOGIC;                        -- Over-Temperature alarm output
    alarm_out       : out STD_LOGIC_VECTOR(7 downto 0);
    vp_in           : in  STD_LOGIC;                         -- Dedicated Analog Input Pair
    vn_in           : in  STD_LOGIC
   );
  end component;

  signal alm_int : std_logic_vector (7 downto 0);

begin

       alarm_out <= alm_int(7);
       vccddro_alarm_out <= alm_int(6);
       vccpaux_alarm_out <= alm_int(5);
       vccpint_alarm_out <= alm_int(4);
       vccaux_alarm_out <= alm_int(2);
       vccint_alarm_out <= alm_int(1);
       user_temp_alarm_out <= alm_int(0);

   U0 : design_1_xadc_wiz_0_1_axi_xadc 
   generic map
   (
    C_INSTANCE              => "design_1_xadc_wiz_0_1_axi_xadc",
    C_FAMILY                => "virtex7",
    C_S_AXI_ADDR_WIDTH      => 11,
    C_S_AXI_DATA_WIDTH      => 32,
    C_INCLUDE_INTR          => 1,
    C_SIM_MONITOR_FILE      => "design.txt"
   )
   port map
   (
    s_axi_aclk      => s_axi_aclk,                    
    s_axi_aresetn   => s_axi_aresetn,                    
    s_axi_awaddr    => s_axi_awaddr,                    
    s_axi_awvalid   => s_axi_awvalid,                    
    s_axi_awready   => s_axi_awready,                    
    s_axi_wdata     => s_axi_wdata,                    
    s_axi_wstrb     => s_axi_wstrb,                    
    s_axi_wvalid    => s_axi_wvalid,                    
    s_axi_wready    => s_axi_wready,                    
    s_axi_bresp     => s_axi_bresp,                    
    s_axi_bvalid    => s_axi_bvalid,                    
    s_axi_bready    => s_axi_bready,                    
    s_axi_araddr    => s_axi_araddr,                    
    s_axi_arvalid   => s_axi_arvalid,                    
    s_axi_arready   => s_axi_arready,                    
    s_axi_rdata     => s_axi_rdata,                    
    s_axi_rresp     => s_axi_rresp,                    
    s_axi_rvalid    => s_axi_rvalid,                    
    s_axi_rready    => s_axi_rready,                    
    ip2intc_irpt    => ip2intc_irpt,  
    s_axis_aclk     => s_axis_aclk,
    m_axis_tdata    => m_axis_tdata,
    m_axis_tvalid   => m_axis_tvalid,
    m_axis_tid      => m_axis_tid,
    m_axis_tready   => m_axis_tready,
    vauxp6 => vauxp6,
    vauxn6 => vauxn6,
    vauxp7 => vauxp7,
    vauxn7 => vauxn7,
    vauxp14 => vauxp14,
    vauxn14 => vauxn14,
    vauxp15 => vauxp15,
    vauxn15 => vauxn15,
    busy_out => busy_out,
    channel_out => channel_out,
    eoc_out => eoc_out,
    eos_out => eos_out,
    ot_out => ot_out,
    alarm_out  => alm_int,
    vp_in => vp_in,
    vn_in => vn_in
         );
end AMD;

