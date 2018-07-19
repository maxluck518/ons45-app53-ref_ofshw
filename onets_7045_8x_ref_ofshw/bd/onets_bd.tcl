create_bd_design "onets_bd"

# Create interface ports
set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
set mdio_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_io:1.0 mdio_0 ]
set mdio_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_io:1.0 mdio_1 ]
set mdio_2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_io:1.0 mdio_2 ]
set mdio_3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_io:1.0 mdio_3 ]
set rgmii_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii_0 ]
set rgmii_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii_1 ]
set rgmii_2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii_2 ]
set rgmii_3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii_3 ]
set sfp_refclk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sfp_refclk ]
set sfp_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sfp_rtl:1.0 sfp_0 ]
set sfp_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sfp_rtl:1.0 sfp_1 ]
set sfp_2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sfp_rtl:1.0 sfp_2 ]
set sfp_3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sfp_rtl:1.0 sfp_3 ]

# Create ports
set bd_fclk0_125m [ create_bd_port -dir O -type clk bd_fclk0_125m ]
set bd_fclk1_75m [ create_bd_port -dir O -type clk bd_fclk1_75m ]
set bd_fclk2_200m [ create_bd_port -dir O -type clk bd_fclk2_200m ]
set phy_rst_n_0 [ create_bd_port -dir O -type rst phy_rst_n_0 ]
set phy_rst_n_1 [ create_bd_port -dir O -type rst phy_rst_n_1 ]
set phy_rst_n_2 [ create_bd_port -dir O -type rst phy_rst_n_2 ]
set phy_rst_n_3 [ create_bd_port -dir O -type rst phy_rst_n_3 ]

# zynq
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
set_property -dict [list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {125} CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {76.923080} CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {200} CONFIG.PCW_EN_CLK1_PORT {1} CONFIG.PCW_EN_CLK2_PORT {1}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_USE_S_AXI_HP0 {1}] [get_bd_cells processing_system7_0]

# RGMII
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.1 axi_ethernet_0
set_property -dict [list CONFIG.PHY_TYPE {RGMII}] [get_bd_cells axi_ethernet_0]
set_property -dict [list CONFIG.axiliteclkrate {76.923080} CONFIG.axisclkrate {125}] [get_bd_cells axi_ethernet_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.1 axi_ethernet_1
set_property -dict [list CONFIG.SupportLevel {0}] [get_bd_cells axi_ethernet_1]
set_property -dict [list CONFIG.PHY_TYPE {RGMII}] [get_bd_cells axi_ethernet_1]
set_property -dict [list CONFIG.axiliteclkrate {76.923080} CONFIG.axisclkrate {125}] [get_bd_cells axi_ethernet_1]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.1 axi_ethernet_2
set_property -dict [list CONFIG.SupportLevel {0}] [get_bd_cells axi_ethernet_2]
set_property -dict [list CONFIG.PHY_TYPE {RGMII}] [get_bd_cells axi_ethernet_2]
set_property -dict [list CONFIG.axiliteclkrate {76.923080} CONFIG.axisclkrate {125}] [get_bd_cells axi_ethernet_2]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.1 axi_ethernet_3
set_property -dict [list CONFIG.SupportLevel {0}] [get_bd_cells axi_ethernet_3]
set_property -dict [list CONFIG.PHY_TYPE {RGMII}] [get_bd_cells axi_ethernet_3]
set_property -dict [list CONFIG.axiliteclkrate {76.923080} CONFIG.axisclkrate {125}] [get_bd_cells axi_ethernet_3]

# 1000BaseX
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.1 axi_ethernet_4
set_property -dict [list CONFIG.PHY_TYPE {1000BaseX}] [get_bd_cells axi_ethernet_4]
set_property -dict [list CONFIG.axiliteclkrate {76.923080} CONFIG.axisclkrate {125}] [get_bd_cells axi_ethernet_4]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.1 axi_ethernet_5
set_property -dict [list CONFIG.SupportLevel {0}] [get_bd_cells axi_ethernet_5]
set_property -dict [list CONFIG.PHY_TYPE {1000BaseX}] [get_bd_cells axi_ethernet_5]
set_property -dict [list CONFIG.axiliteclkrate {76.923080} CONFIG.axisclkrate {125}] [get_bd_cells axi_ethernet_5]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.1 axi_ethernet_6
set_property -dict [list CONFIG.SupportLevel {0}] [get_bd_cells axi_ethernet_6]
set_property -dict [list CONFIG.PHY_TYPE {1000BaseX}] [get_bd_cells axi_ethernet_6]
set_property -dict [list CONFIG.axiliteclkrate {76.923080} CONFIG.axisclkrate {125}] [get_bd_cells axi_ethernet_6]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.1 axi_ethernet_7
set_property -dict [list CONFIG.SupportLevel {0}] [get_bd_cells axi_ethernet_7]
set_property -dict [list CONFIG.PHY_TYPE {1000BaseX}] [get_bd_cells axi_ethernet_7]
set_property -dict [list CONFIG.axiliteclkrate {76.923080} CONFIG.axisclkrate {125}] [get_bd_cells axi_ethernet_7]

# rst_ps7_0_125M
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_125M
# connect_bd_net [get_bd_pins rst_ps7_0_125M/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0]
# connect_bd_net [get_bd_pins rst_ps7_0_125M/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]

# rst_ps7_0_75M
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_75M
# connect_bd_net [get_bd_pins rst_ps7_0_125M/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0]
# connect_bd_net [get_bd_pins rst_ps7_0_125M/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]

# axi_ic_hp
set axi_ic_hp [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_hp ]
set_property -dict [ list CONFIG.NUM_MI {1} CONFIG.NUM_SI {3}  ] $axi_ic_hp
# axi_ic_gp
set axi_ic_gp [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_gp ]
set_property -dict [ list CONFIG.NUM_MI {12} CONFIG.NUM_SI {1}  ] $axi_ic_gp

# Create instance: axi_dma_0, and set properties
set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
set_property -dict [ list CONFIG.c_include_mm2s_dre {1} CONFIG.c_include_s2mm_dre {1} CONFIG.c_sg_use_stsapp_length {1}  ] $axi_dma_0

# Create instance: gnd, and set properties
set gnd [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd]
set_property -dict [list CONFIG.CONST_VAL {0}] [get_bd_cells gnd]

# Create instance: vcc, and set properties
set gnd [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 vcc]
set_property -dict [list CONFIG.CONST_VAL {1}] [get_bd_cells vcc]

# Create instance: packet_pipeline, and set properties
set packet_pipeline [ create_bd_cell -type ip -vlnv user.org:user:packet_pipeline:1.0 packet_pipeline]

# Create interface connections
connect_bd_intf_net [ get_bd_intf_ports DDR]        [ get_bd_intf_pins processing_system7_0/DDR]
connect_bd_intf_net [ get_bd_intf_ports FIXED_IO]   [ get_bd_intf_pins processing_system7_0/FIXED_IO]
connect_bd_intf_net [ get_bd_intf_ports mdio_0]     [ get_bd_intf_pins axi_ethernet_0/mdio]
connect_bd_intf_net [ get_bd_intf_ports rgmii_0]    [ get_bd_intf_pins axi_ethernet_0/rgmii]
connect_bd_intf_net [ get_bd_intf_ports mdio_1]     [ get_bd_intf_pins axi_ethernet_1/mdio]
connect_bd_intf_net [ get_bd_intf_ports rgmii_1]    [ get_bd_intf_pins axi_ethernet_1/rgmii]
connect_bd_intf_net [ get_bd_intf_ports mdio_2]     [ get_bd_intf_pins axi_ethernet_2/mdio]
connect_bd_intf_net [ get_bd_intf_ports rgmii_2]    [ get_bd_intf_pins axi_ethernet_2/rgmii]
connect_bd_intf_net [ get_bd_intf_ports mdio_3]     [ get_bd_intf_pins axi_ethernet_3/mdio]
connect_bd_intf_net [ get_bd_intf_ports rgmii_3]    [ get_bd_intf_pins axi_ethernet_3/rgmii]
connect_bd_intf_net [ get_bd_intf_ports sfp_refclk] [ get_bd_intf_pins axi_ethernet_4/mgt_clk]
connect_bd_intf_net [ get_bd_intf_ports sfp_0]      [ get_bd_intf_pins axi_ethernet_4/sfp]
connect_bd_intf_net [ get_bd_intf_ports sfp_1]      [ get_bd_intf_pins axi_ethernet_5/sfp]
connect_bd_intf_net [ get_bd_intf_ports sfp_2]      [ get_bd_intf_pins axi_ethernet_6/sfp]
connect_bd_intf_net [ get_bd_intf_ports sfp_3]      [ get_bd_intf_pins axi_ethernet_7/sfp]

# Create port connections
connect_bd_net [ get_bd_ports phy_rst_n_0]   [ get_bd_pins axi_ethernet_0/phy_rst_n]
connect_bd_net [ get_bd_ports phy_rst_n_1]   [ get_bd_pins axi_ethernet_1/phy_rst_n]
connect_bd_net [ get_bd_ports phy_rst_n_2]   [ get_bd_pins axi_ethernet_2/phy_rst_n]
connect_bd_net [ get_bd_ports phy_rst_n_3]   [ get_bd_pins axi_ethernet_3/phy_rst_n]
connect_bd_net [ get_bd_ports bd_fclk0_125m] [ get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [ get_bd_ports bd_fclk1_75m]  [ get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [ get_bd_ports bd_fclk2_200m] [ get_bd_pins processing_system7_0/FCLK_CLK2]
connect_bd_net [ get_bd_pins vcc/dout]      [ get_bd_pins rst_ps7_0_75M/ext_reset_in]
connect_bd_net [ get_bd_pins vcc/dout]      [ get_bd_pins rst_ps7_0_125M/ext_reset_in]
connect_bd_net [ get_bd_pins vcc/dout]      [ get_bd_pins axi_ethernet_4/signal_detect] 
connect_bd_net [ get_bd_pins vcc/dout]      [ get_bd_pins axi_ethernet_5/signal_detect] 
connect_bd_net [ get_bd_pins vcc/dout]      [ get_bd_pins axi_ethernet_6/signal_detect] 
connect_bd_net [ get_bd_pins vcc/dout]      [ get_bd_pins axi_ethernet_7/signal_detect] 

# proc_sys_reset connections
connect_bd_net [ get_bd_pins rst_ps7_0_125M/slowest_sync_clk] [ get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [ get_bd_pins rst_ps7_0_125M/aux_reset_in]     [ get_bd_pins processing_system7_0/FCLK_RESET0_N]
connect_bd_net [ get_bd_pins rst_ps7_0_75M/slowest_sync_clk]  [ get_bd_pins processing_system7_0/FCLK_CLK1]
connect_bd_net [ get_bd_pins rst_ps7_0_75M/aux_reset_in]      [ get_bd_pins processing_system7_0/FCLK_RESET0_N]

# axi_interconnection axi bus connections
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_0/s_axi] [get_bd_intf_pins axi_ic_gp/M00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_1/s_axi] [get_bd_intf_pins axi_ic_gp/M01_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_2/s_axi] [get_bd_intf_pins axi_ic_gp/M02_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_3/s_axi] [get_bd_intf_pins axi_ic_gp/M03_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_4/s_axi] [get_bd_intf_pins axi_ic_gp/M04_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_5/s_axi] [get_bd_intf_pins axi_ic_gp/M05_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_6/s_axi] [get_bd_intf_pins axi_ic_gp/M06_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_7/s_axi] [get_bd_intf_pins axi_ic_gp/M07_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins axi_ic_gp/M08_AXI]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/control_S_AXI] [get_bd_intf_pins axi_ic_gp/M10_AXI]
# connect_bd_intf_net [get_bd_intf_pins packet_pipeline/s_axi_lite] [get_bd_intf_pins axi_ic_gp/M11_AXI]

connect_bd_intf_net [get_bd_intf_pins axi_ic_hp/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
connect_bd_intf_net [get_bd_intf_pins axi_ic_gp/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]

connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [ get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [ get_bd_intf_pins axi_ic_hp/S01_AXI]
connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [ get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [ get_bd_intf_pins axi_ic_hp/S02_AXI]
connect_bd_intf_net -intf_net axi_dma_0_M_AXI_SG   [ get_bd_intf_pins axi_dma_0/M_AXI_SG]   [ get_bd_intf_pins axi_ic_hp/S00_AXI]

# axi_interconnection clk connections
connect_bd_net  [get_bd_pins processing_system7_0/FCLK_CLK1] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] \
[get_bd_pins axi_ic_gp/ACLK] [get_bd_pins axi_ic_gp/S00_ACLK] [get_bd_pins axi_ic_gp/M00_ACLK] [get_bd_pins axi_ic_gp/M01_ACLK] [get_bd_pins axi_ic_gp/M02_ACLK] [get_bd_pins axi_ic_gp/M03_ACLK] [get_bd_pins axi_ic_gp/M04_ACLK] [get_bd_pins axi_ic_gp/M05_ACLK] [get_bd_pins axi_ic_gp/M06_ACLK] [get_bd_pins axi_ic_gp/M07_ACLK] [get_bd_pins axi_ic_gp/M08_ACLK] [get_bd_pins axi_ic_gp/M09_ACLK] [get_bd_pins axi_ic_gp/M10_ACLK] [get_bd_pins axi_ic_gp/M11_ACLK] \

connect_bd_net  [get_bd_pins processing_system7_0/FCLK_CLK1] \
[get_bd_pins axi_ethernet_0/s_axi_lite_clk] [get_bd_pins axi_ethernet_1/s_axi_lite_clk] [get_bd_pins axi_ethernet_2/s_axi_lite_clk] [get_bd_pins axi_ethernet_3/s_axi_lite_clk] \
[get_bd_pins axi_ethernet_4/s_axi_lite_clk] [get_bd_pins axi_ethernet_5/s_axi_lite_clk] [get_bd_pins axi_ethernet_6/s_axi_lite_clk] [get_bd_pins axi_ethernet_7/s_axi_lite_clk] \
[get_bd_pins axi_dma_0/s_axi_lite_aclk] \
[get_bd_pins packet_pipeline/s_axi_lite_aclk]  

connect_bd_net  [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] \
[get_bd_pins axi_ethernet_0/axis_clk] [get_bd_pins axi_ethernet_1/axis_clk] [get_bd_pins axi_ethernet_2/axis_clk] [get_bd_pins axi_ethernet_3/axis_clk] \
[get_bd_pins axi_ethernet_4/axis_clk] [get_bd_pins axi_ethernet_5/axis_clk] [get_bd_pins axi_ethernet_6/axis_clk] [get_bd_pins axi_ethernet_7/axis_clk] \
[get_bd_pins axi_ethernet_0/gtx_clk] \
[get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/m_axi_sg_aclk] \
[get_bd_pins axi_ic_hp/ACLK] [get_bd_pins axi_ic_hp/S00_ACLK] [get_bd_pins axi_ic_hp/S01_ACLK] [get_bd_pins axi_ic_hp/S02_ACLK] [get_bd_pins axi_ic_hp/M00_ACLK] 

connect_bd_net  [get_bd_pins processing_system7_0/FCLK_CLK0] \
 [get_bd_pins packet_pipeline/s_axis_rxd_aclk] [get_bd_pins packet_pipeline/s_axis_txd_aclk]

# axi_interconnection rst connections
connect_bd_net  [get_bd_pins rst_ps7_0_75M/peripheral_aresetn] \
[get_bd_pins axi_ic_gp/ARESETN] [get_bd_pins axi_ic_gp/S00_ARESETN] [get_bd_pins axi_ic_gp/M00_ARESETN] [get_bd_pins axi_ic_gp/M01_ARESETN] [get_bd_pins axi_ic_gp/M02_ARESETN] [get_bd_pins axi_ic_gp/M03_ARESETN] [get_bd_pins axi_ic_gp/M04_ARESETN] [get_bd_pins axi_ic_gp/M05_ARESETN] [get_bd_pins axi_ic_gp/M06_ARESETN] [get_bd_pins axi_ic_gp/M07_ARESETN] [get_bd_pins axi_ic_gp/M08_ARESETN] [get_bd_pins axi_ic_gp/M09_ARESETN] [get_bd_pins axi_ic_gp/M10_ARESETN] [get_bd_pins axi_ic_gp/M11_ARESETN] \

connect_bd_net  [get_bd_pins rst_ps7_0_75M/peripheral_aresetn] \
[get_bd_pins axi_ethernet_0/s_axi_lite_resetn] [get_bd_pins axi_ethernet_1/s_axi_lite_resetn] [get_bd_pins axi_ethernet_2/s_axi_lite_resetn] [get_bd_pins axi_ethernet_3/s_axi_lite_resetn] \
[get_bd_pins axi_ethernet_4/s_axi_lite_resetn] [get_bd_pins axi_ethernet_5/s_axi_lite_resetn] [get_bd_pins axi_ethernet_6/s_axi_lite_resetn] [get_bd_pins axi_ethernet_7/s_axi_lite_resetn] \
[get_bd_pins axi_dma_0/axi_resetn] \
[get_bd_pins packet_pipeline/s_axi_lite_aresetn] 

connect_bd_net  [get_bd_pins rst_ps7_0_125M/peripheral_aresetn] \
[get_bd_pins axi_ic_hp/ARESETN] [get_bd_pins axi_ic_hp/S00_ARESETN] [get_bd_pins axi_ic_hp/S01_ARESETN] [get_bd_pins axi_ic_hp/S02_ARESETN] [get_bd_pins axi_ic_hp/M00_ARESETN] 

connect_bd_net  [get_bd_pins rst_ps7_0_125M/peripheral_aresetn] \
[get_bd_pins axi_ethernet_0/axi_txd_arstn] [get_bd_pins axi_ethernet_0/axi_txc_arstn] [get_bd_pins axi_ethernet_0/axi_rxd_arstn] [get_bd_pins axi_ethernet_0/axi_rxs_arstn] \
[get_bd_pins axi_ethernet_1/axi_txd_arstn] [get_bd_pins axi_ethernet_1/axi_txc_arstn] [get_bd_pins axi_ethernet_1/axi_rxd_arstn] [get_bd_pins axi_ethernet_1/axi_rxs_arstn] \
[get_bd_pins axi_ethernet_2/axi_txd_arstn] [get_bd_pins axi_ethernet_2/axi_txc_arstn] [get_bd_pins axi_ethernet_2/axi_rxd_arstn] [get_bd_pins axi_ethernet_2/axi_rxs_arstn] \
[get_bd_pins axi_ethernet_3/axi_txd_arstn] [get_bd_pins axi_ethernet_3/axi_txc_arstn] [get_bd_pins axi_ethernet_3/axi_rxd_arstn] [get_bd_pins axi_ethernet_3/axi_rxs_arstn] \
[get_bd_pins axi_ethernet_4/axi_txd_arstn] [get_bd_pins axi_ethernet_4/axi_txc_arstn] [get_bd_pins axi_ethernet_4/axi_rxd_arstn] [get_bd_pins axi_ethernet_4/axi_rxs_arstn] \
[get_bd_pins axi_ethernet_5/axi_txd_arstn] [get_bd_pins axi_ethernet_5/axi_txc_arstn] [get_bd_pins axi_ethernet_5/axi_rxd_arstn] [get_bd_pins axi_ethernet_5/axi_rxs_arstn] \
[get_bd_pins axi_ethernet_6/axi_txd_arstn] [get_bd_pins axi_ethernet_6/axi_txc_arstn] [get_bd_pins axi_ethernet_6/axi_rxd_arstn] [get_bd_pins axi_ethernet_6/axi_rxs_arstn] \
[get_bd_pins axi_ethernet_7/axi_txd_arstn] [get_bd_pins axi_ethernet_7/axi_txc_arstn] [get_bd_pins axi_ethernet_7/axi_rxd_arstn] [get_bd_pins axi_ethernet_7/axi_rxs_arstn] \
[get_bd_pins packet_pipeline/s_axis_rxd_aresetn] [get_bd_pins packet_pipeline/s_axis_txd_aresetn] 

# axi_ethernet subsystem
# rgmii
connect_bd_net [get_bd_pins axi_ethernet_0/gtx_clk_out] [get_bd_pins axi_ethernet_1/gtx_clk] [get_bd_pins axi_ethernet_2/gtx_clk] [get_bd_pins axi_ethernet_3/gtx_clk]
connect_bd_net [get_bd_pins axi_ethernet_0/gtx_clk90_out] [get_bd_pins axi_ethernet_1/gtx_clk90] [get_bd_pins axi_ethernet_2/gtx_clk90] [get_bd_pins axi_ethernet_3/gtx_clk90]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK2] [get_bd_pins axi_ethernet_0/ref_clk]

# 1000baseX
connect_bd_net [ get_bd_pins axi_ethernet_4/mmcm_locked_out]       [ get_bd_pins axi_ethernet_5/mmcm_locked] [ get_bd_pins axi_ethernet_6/mmcm_locked] [ get_bd_pins axi_ethernet_7/mmcm_locked] 
connect_bd_net [ get_bd_pins axi_ethernet_4/rxuserclk_out]         [ get_bd_pins axi_ethernet_5/rxuserclk] [ get_bd_pins axi_ethernet_6/rxuserclk] [ get_bd_pins axi_ethernet_7/rxuserclk] 
connect_bd_net [ get_bd_pins axi_ethernet_4/rxuserclk2_out]        [ get_bd_pins axi_ethernet_5/rxuserclk2] [ get_bd_pins axi_ethernet_6/rxuserclk2] [ get_bd_pins axi_ethernet_7/rxuserclk2] 
connect_bd_net [ get_bd_pins axi_ethernet_4/userclk_out]           [ get_bd_pins axi_ethernet_5/userclk] [ get_bd_pins axi_ethernet_6/userclk] [ get_bd_pins axi_ethernet_7/userclk] 
connect_bd_net [ get_bd_pins axi_ethernet_4/userclk2_out]          [ get_bd_pins axi_ethernet_5/userclk2] [ get_bd_pins axi_ethernet_6/userclk2] [ get_bd_pins axi_ethernet_7/userclk2] 
connect_bd_net [ get_bd_pins axi_ethernet_4/pma_reset_out]         [ get_bd_pins axi_ethernet_5/pma_reset] [ get_bd_pins axi_ethernet_6/pma_reset] [ get_bd_pins axi_ethernet_7/pma_reset] 
connect_bd_net [ get_bd_pins axi_ethernet_4/gt0_qplloutclk_out]    [ get_bd_pins axi_ethernet_5/gt0_qplloutclk_in] [ get_bd_pins axi_ethernet_6/gt0_qplloutclk_in] [ get_bd_pins axi_ethernet_7/gt0_qplloutclk_in] 
connect_bd_net [ get_bd_pins axi_ethernet_4/gt0_qplloutrefclk_out] [ get_bd_pins axi_ethernet_5/gt0_qplloutrefclk_in] [ get_bd_pins axi_ethernet_6/gt0_qplloutrefclk_in] [ get_bd_pins axi_ethernet_7/gt0_qplloutrefclk_in] 
connect_bd_net [ get_bd_pins axi_ethernet_4/gtref_clk_out]         [ get_bd_pins axi_ethernet_5/gtref_clk] [ get_bd_pins axi_ethernet_6/gtref_clk] [ get_bd_pins axi_ethernet_7/gtref_clk] 
connect_bd_net [ get_bd_pins axi_ethernet_4/gtref_clk_buf_out]     [ get_bd_pins axi_ethernet_5/gtref_clk_buf]   [ get_bd_pins axi_ethernet_6/gtref_clk_buf] [ get_bd_pins axi_ethernet_7/gtref_clk_buf] 

connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK2] \
[get_bd_pins axi_ethernet_4/ref_clk] [get_bd_pins axi_ethernet_5/ref_clk] [get_bd_pins axi_ethernet_6/ref_clk] [get_bd_pins axi_ethernet_7/ref_clk]

# packet_pipeline
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_0/m_axis_rxd] [get_bd_intf_pins packet_pipeline/s_axis_rxd_0]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_0/m_axis_rxs] [get_bd_intf_pins packet_pipeline/s_axis_rxs_0]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txd_0] [get_bd_intf_pins axi_ethernet_0/s_axis_txd]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txc_0] [get_bd_intf_pins axi_ethernet_0/s_axis_txc]

connect_bd_intf_net [get_bd_intf_pins axi_ethernet_1/m_axis_rxd] [get_bd_intf_pins packet_pipeline/s_axis_rxd_1]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_1/m_axis_rxs] [get_bd_intf_pins packet_pipeline/s_axis_rxs_1]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txd_1] [get_bd_intf_pins axi_ethernet_1/s_axis_txd]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txc_1] [get_bd_intf_pins axi_ethernet_1/s_axis_txc]

connect_bd_intf_net [get_bd_intf_pins axi_ethernet_2/m_axis_rxd] [get_bd_intf_pins packet_pipeline/s_axis_rxd_2]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_2/m_axis_rxs] [get_bd_intf_pins packet_pipeline/s_axis_rxs_2]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txd_2] [get_bd_intf_pins axi_ethernet_2/s_axis_txd]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txc_2] [get_bd_intf_pins axi_ethernet_2/s_axis_txc]

connect_bd_intf_net [get_bd_intf_pins axi_ethernet_3/m_axis_rxd] [get_bd_intf_pins packet_pipeline/s_axis_rxd_3]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_3/m_axis_rxs] [get_bd_intf_pins packet_pipeline/s_axis_rxs_3]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txd_3] [get_bd_intf_pins axi_ethernet_3/s_axis_txd]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txc_3] [get_bd_intf_pins axi_ethernet_3/s_axis_txc]

connect_bd_intf_net [get_bd_intf_pins axi_ethernet_4/m_axis_rxd] [get_bd_intf_pins packet_pipeline/s_axis_rxd_4]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_4/m_axis_rxs] [get_bd_intf_pins packet_pipeline/s_axis_rxs_4]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txd_4] [get_bd_intf_pins axi_ethernet_4/s_axis_txd]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txc_4] [get_bd_intf_pins axi_ethernet_4/s_axis_txc]

connect_bd_intf_net [get_bd_intf_pins axi_ethernet_5/m_axis_rxd] [get_bd_intf_pins packet_pipeline/s_axis_rxd_5]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_5/m_axis_rxs] [get_bd_intf_pins packet_pipeline/s_axis_rxs_5]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txd_5] [get_bd_intf_pins axi_ethernet_5/s_axis_txd]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txc_5] [get_bd_intf_pins axi_ethernet_5/s_axis_txc]

connect_bd_intf_net [get_bd_intf_pins axi_ethernet_6/m_axis_rxd] [get_bd_intf_pins packet_pipeline/s_axis_rxd_6]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_6/m_axis_rxs] [get_bd_intf_pins packet_pipeline/s_axis_rxs_6]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txd_6] [get_bd_intf_pins axi_ethernet_6/s_axis_txd]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txc_6] [get_bd_intf_pins axi_ethernet_6/s_axis_txc]

connect_bd_intf_net [get_bd_intf_pins axi_ethernet_7/m_axis_rxd] [get_bd_intf_pins packet_pipeline/s_axis_rxd_7]
connect_bd_intf_net [get_bd_intf_pins axi_ethernet_7/m_axis_rxs] [get_bd_intf_pins packet_pipeline/s_axis_rxs_7]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txd_7] [get_bd_intf_pins axi_ethernet_7/s_axis_txd]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_txc_7] [get_bd_intf_pins axi_ethernet_7/s_axis_txc]

connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXIS_CNTRL] [get_bd_intf_pins packet_pipeline/s_axis_ctrl_0]
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] [get_bd_intf_pins packet_pipeline/s_axis_mm2s_0]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_s2mm_0] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
connect_bd_intf_net [get_bd_intf_pins packet_pipeline/m_axis_s2mm_sts_0] [get_bd_intf_pins axi_dma_0/S_AXIS_STS]

connect_bd_net [get_bd_pins packet_pipeline/s_axis_ctrl_1_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_ctrl_2_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_ctrl_3_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_ctrl_4_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_ctrl_5_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_ctrl_6_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_ctrl_7_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_mm2s_1_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_mm2s_2_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_mm2s_3_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_mm2s_4_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_mm2s_5_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_mm2s_6_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins packet_pipeline/s_axis_mm2s_7_tvalid] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins rst_ps7_0_125M/mb_debug_sys_rst] [get_bd_pins gnd/dout]
connect_bd_net [get_bd_pins rst_ps7_0_75M/mb_debug_sys_rst] [get_bd_pins gnd/dout]

# Create address segments
create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_SG] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
create_bd_addr_seg -range 0x10000 -offset 0x40400000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
# create_bd_addr_seg -range 0x10000 -offset 0x40410000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_ethernet_1_dma/S_AXI_LITE/Reg] SEG_axi_dma_1_Reg
# create_bd_addr_seg -range 0x10000 -offset 0x40420000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_ethernet_2_dma/S_AXI_LITE/Reg] SEG_axi_dma_2_Reg
# create_bd_addr_seg -range 0x10000 -offset 0x40430000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_ethernet_3_dma/S_AXI_LITE/Reg] SEG_axi_dma_3_Reg
create_bd_addr_seg -range 0x40000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_ethernet_0/s_axi/REG0] SEG_eth_buf_REG
create_bd_addr_seg -range 0x40000 -offset 0x43C40000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_ethernet_1/s_axi/REG0] SEG_eth_buf_REG2
create_bd_addr_seg -range 0x40000 -offset 0x43C80000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_ethernet_2/s_axi/REG0] SEG_eth_buf_REG4
create_bd_addr_seg -range 0x40000 -offset 0x43CC0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_ethernet_3/s_axi/REG0] SEG_eth_buf_REG6
create_bd_addr_seg -range 0x40000 -offset 0x43D00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_ethernet_4/s_axi/REG0] SEG_eth_buf_REG8
create_bd_addr_seg -range 0x40000 -offset 0x43D40000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_ethernet_5/s_axi/REG0] SEG_eth_buf_REG10
create_bd_addr_seg -range 0x40000 -offset 0x43D80000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_ethernet_6/s_axi/REG0] SEG_eth_buf_REG12
create_bd_addr_seg -range 0x40000 -offset 0x43DC0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_ethernet_7/s_axi/REG0] SEG_eth_buf_REG14
create_bd_addr_seg -range 0x40000 -offset 0x43E00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs packet_pipeline/control_S_AXI/reg0] SEG_eth_buf_REG16
# create_bd_addr_seg -range 0x8000000 -offset 0x48000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs packet_pipeline/s_axi_lite/reg0] SEG_eth_buf_REG18


save_bd_design
