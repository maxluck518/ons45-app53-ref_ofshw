`timescale 1 ps / 1 ps

module onet_core_output
#(
  parameter C_S_AXIS_DATA_WIDTH = 256,
  parameter C_S_AXIS_USER_WIDTH = 32,
  parameter C_M_AXIS_DATA_WIDTH = 32,
  parameter C_M_AXIS_USER_WIDTH = 32,
  parameter ACTION_TUPLE_WIDTH  = 9
)
(
    input 							            axis_aclk,
    input 							            axis_aresetn,

    input 							            s_axis_rxd_tvalid,
    output 		 					            s_axis_rxd_tready,
    input [C_S_AXIS_DATA_WIDTH-1:0] 	        s_axis_rxd_tdata,
    input [C_S_AXIS_DATA_WIDTH/8-1:0]           s_axis_rxd_tkeep,
    input 							            s_axis_rxd_tlast,

    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txd_tdata_0,
    output                                      m_axis_eth_txd_tvalid_0,
    output                                      m_axis_eth_txd_tlast_0,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txd_tkeep_0,
    input                                       m_axis_eth_txd_tready_0,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txd_tdata_1,
    output                                      m_axis_eth_txd_tvalid_1,
    output                                      m_axis_eth_txd_tlast_1,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txd_tkeep_1,
    input                                       m_axis_eth_txd_tready_1,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txd_tdata_2,
    output                                      m_axis_eth_txd_tvalid_2,
    output                                      m_axis_eth_txd_tlast_2,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txd_tkeep_2,
    input                                       m_axis_eth_txd_tready_2,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txd_tdata_3,
    output                                      m_axis_eth_txd_tvalid_3,
    output                                      m_axis_eth_txd_tlast_3,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txd_tkeep_3,
    input                                       m_axis_eth_txd_tready_3,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txd_tdata_4,
    output                                      m_axis_eth_txd_tvalid_4,
    output                                      m_axis_eth_txd_tlast_4,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txd_tkeep_4,
    input                                       m_axis_eth_txd_tready_4,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txd_tdata_5,
    output                                      m_axis_eth_txd_tvalid_5,
    output                                      m_axis_eth_txd_tlast_5,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txd_tkeep_5,
    input                                       m_axis_eth_txd_tready_5,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txd_tdata_6,
    output                                      m_axis_eth_txd_tvalid_6,
    output                                      m_axis_eth_txd_tlast_6,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txd_tkeep_6,
    input                                       m_axis_eth_txd_tready_6,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txd_tdata_7,
    output                                      m_axis_eth_txd_tvalid_7,
    output                                      m_axis_eth_txd_tlast_7,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txd_tkeep_7,
    input                                       m_axis_eth_txd_tready_7,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txd_tdata_0,
    output                                      m_axis_dma_txd_tvalid_0,
    output                                      m_axis_dma_txd_tlast_0,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txd_tkeep_0,
    input                                       m_axis_dma_txd_tready_0,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txd_tdata_1,
    output                                      m_axis_dma_txd_tvalid_1,
    output                                      m_axis_dma_txd_tlast_1,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txd_tkeep_1,
    input                                       m_axis_dma_txd_tready_1,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txd_tdata_2,
    output                                      m_axis_dma_txd_tvalid_2,
    output                                      m_axis_dma_txd_tlast_2,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txd_tkeep_2,
    input                                       m_axis_dma_txd_tready_2,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txd_tdata_3,
    output                                      m_axis_dma_txd_tvalid_3,
    output                                      m_axis_dma_txd_tlast_3,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txd_tkeep_3,
    input                                       m_axis_dma_txd_tready_3,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txd_tdata_4,
    output                                      m_axis_dma_txd_tvalid_4,
    output                                      m_axis_dma_txd_tlast_4,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txd_tkeep_4,
    input                                       m_axis_dma_txd_tready_4,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txd_tdata_5,
    output                                      m_axis_dma_txd_tvalid_5,
    output                                      m_axis_dma_txd_tlast_5,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txd_tkeep_5,
    input                                       m_axis_dma_txd_tready_5,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txd_tdata_6,
    output                                      m_axis_dma_txd_tvalid_6,
    output                                      m_axis_dma_txd_tlast_6,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txd_tkeep_6,
    input                                       m_axis_dma_txd_tready_6,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txd_tdata_7,
    output                                      m_axis_dma_txd_tvalid_7,
    output                                      m_axis_dma_txd_tlast_7,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txd_tkeep_7,
    input                                       m_axis_dma_txd_tready_7,

    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txc_tdata_0,
    output                                      m_axis_eth_txc_tvalid_0,
    output                                      m_axis_eth_txc_tlast_0,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txc_tkeep_0,
    input                                       m_axis_eth_txc_tready_0,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txc_tdata_1,
    output                                      m_axis_eth_txc_tvalid_1,
    output                                      m_axis_eth_txc_tlast_1,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txc_tkeep_1,
    input                                       m_axis_eth_txc_tready_1,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txc_tdata_2,
    output                                      m_axis_eth_txc_tvalid_2,
    output                                      m_axis_eth_txc_tlast_2,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txc_tkeep_2,
    input                                       m_axis_eth_txc_tready_2,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txc_tdata_3,
    output                                      m_axis_eth_txc_tvalid_3,
    output                                      m_axis_eth_txc_tlast_3,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txc_tkeep_3,
    input                                       m_axis_eth_txc_tready_3,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txc_tdata_4,
    output                                      m_axis_eth_txc_tvalid_4,
    output                                      m_axis_eth_txc_tlast_4,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txc_tkeep_4,
    input                                       m_axis_eth_txc_tready_4,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txc_tdata_5,
    output                                      m_axis_eth_txc_tvalid_5,
    output                                      m_axis_eth_txc_tlast_5,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txc_tkeep_5,
    input                                       m_axis_eth_txc_tready_5,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txc_tdata_6,
    output                                      m_axis_eth_txc_tvalid_6,
    output                                      m_axis_eth_txc_tlast_6,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txc_tkeep_6,
    input                                       m_axis_eth_txc_tready_6,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_eth_txc_tdata_7,
    output                                      m_axis_eth_txc_tvalid_7,
    output                                      m_axis_eth_txc_tlast_7,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_eth_txc_tkeep_7,
    input                                       m_axis_eth_txc_tready_7,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txc_tdata_0,
    output                                      m_axis_dma_txc_tvalid_0,
    output                                      m_axis_dma_txc_tlast_0,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txc_tkeep_0,
    input                                       m_axis_dma_txc_tready_0,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txc_tdata_1,
    output                                      m_axis_dma_txc_tvalid_1,
    output                                      m_axis_dma_txc_tlast_1,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txc_tkeep_1,
    input                                       m_axis_dma_txc_tready_1,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txc_tdata_2,
    output                                      m_axis_dma_txc_tvalid_2,
    output                                      m_axis_dma_txc_tlast_2,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txc_tkeep_2,
    input                                       m_axis_dma_txc_tready_2,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txc_tdata_3,
    output                                      m_axis_dma_txc_tvalid_3,
    output                                      m_axis_dma_txc_tlast_3,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txc_tkeep_3,
    input                                       m_axis_dma_txc_tready_3,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txc_tdata_4,
    output                                      m_axis_dma_txc_tvalid_4,
    output                                      m_axis_dma_txc_tlast_4,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txc_tkeep_4,
    input                                       m_axis_dma_txc_tready_4,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txc_tdata_5,
    output                                      m_axis_dma_txc_tvalid_5,
    output                                      m_axis_dma_txc_tlast_5,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txc_tkeep_5,
    input                                       m_axis_dma_txc_tready_5,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txc_tdata_6,
    output                                      m_axis_dma_txc_tvalid_6,
    output                                      m_axis_dma_txc_tlast_6,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txc_tkeep_6,
    input                                       m_axis_dma_txc_tready_6,
    output [C_M_AXIS_DATA_WIDTH-1:0]            m_axis_dma_txc_tdata_7,
    output                                      m_axis_dma_txc_tvalid_7,
    output                                      m_axis_dma_txc_tlast_7,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]          m_axis_dma_txc_tkeep_7,
    input                                       m_axis_dma_txc_tready_7,

    input 		 					            tuple_in_flowstream_valid,
    input [ACTION_TUPLE_WIDTH-1:0] 	            tuple_in_flowstream_data

);

    wire [C_S_AXIS_DATA_WIDTH-1:0]              eth_axis_tdata[7:0];
    wire                                        eth_axis_tvalid[7:0];
    wire                                        eth_axis_tlast[7:0];
    wire [C_S_AXIS_DATA_WIDTH/8-1:0]            eth_axis_tkeep[7:0];
    wire                                        eth_axis_tready[7:0];
    wire [C_S_AXIS_DATA_WIDTH-1:0]              dma_axis_tdata[7:0];
    wire                                        dma_axis_tvalid[7:0];
    wire                                        dma_axis_tlast[7:0];
    wire [C_S_AXIS_DATA_WIDTH/8-1:0]            dma_axis_tkeep[7:0];
    wire                                        dma_axis_tready[7:0];

    wire [C_M_AXIS_DATA_WIDTH-1:0]              m_axis_eth_txd_tdata[7:0];
    wire                                        m_axis_eth_txd_tvalid[7:0];
    wire                                        m_axis_eth_txd_tlast[7:0];
    wire [C_M_AXIS_DATA_WIDTH/8-1:0]            m_axis_eth_txd_tkeep[7:0];
    wire                                        m_axis_eth_txd_tready[7:0];
    wire [C_M_AXIS_DATA_WIDTH-1:0]              m_axis_dma_txd_tdata[7:0];
    wire                                        m_axis_dma_txd_tvalid[7:0];
    wire                                        m_axis_dma_txd_tlast[7:0];
    wire [C_M_AXIS_DATA_WIDTH/8-1:0]            m_axis_dma_txd_tkeep[7:0];
    wire                                        m_axis_dma_txd_tready[7:0];
    wire [C_M_AXIS_DATA_WIDTH-1:0]              m_axis_eth_txc_tdata[7:0];
    wire                                        m_axis_eth_txc_tvalid[7:0];
    wire                                        m_axis_eth_txc_tlast[7:0];
    wire [C_M_AXIS_DATA_WIDTH/8-1:0]            m_axis_eth_txc_tkeep[7:0];
    wire                                        m_axis_eth_txc_tready[7:0];
    wire [C_M_AXIS_DATA_WIDTH-1:0]              m_axis_dma_txc_tdata[7:0];
    wire                                        m_axis_dma_txc_tvalid[7:0];
    wire                                        m_axis_dma_txc_tlast[7:0];
    wire [C_M_AXIS_DATA_WIDTH/8-1:0]            m_axis_dma_txc_tkeep[7:0];
    wire                                        m_axis_dma_txc_tready[7:0];

    wire [11: 0]                                dma_tx_pkt_byte_cnt[7:0];
    wire 	                                    dma_tx_pkt_byte_cnt_vld[7:0];

    assign m_axis_eth_txd_tdata_0    = m_axis_eth_txd_tdata[0];
    assign m_axis_eth_txd_tvalid_0   = m_axis_eth_txd_tvalid[0];
    assign m_axis_eth_txd_tlast_0    = m_axis_eth_txd_tlast[0];
    assign m_axis_eth_txd_tkeep_0    = m_axis_eth_txd_tkeep[0];
    assign m_axis_eth_txd_tready_0   = m_axis_eth_txd_tready[0];
    assign m_axis_dma_txd_tdata_0    = m_axis_dma_txd_tdata[0];
    assign m_axis_dma_txd_tvalid_0   = m_axis_dma_txd_tvalid[0];
    assign m_axis_dma_txd_tlast_0    = m_axis_dma_txd_tlast[0];
    assign m_axis_dma_txd_tkeep_0    = m_axis_dma_txd_tkeep[0];
    assign m_axis_dma_txd_tready_0   = m_axis_dma_txd_tready[0];
    assign m_axis_eth_txc_tdata_0    = m_axis_eth_txc_tdata[0];
    assign m_axis_eth_txc_tvalid_0   = m_axis_eth_txc_tvalid[0];
    assign m_axis_eth_txc_tlast_0    = m_axis_eth_txc_tlast[0];
    assign m_axis_eth_txc_tkeep_0    = m_axis_eth_txc_tkeep[0];
    assign m_axis_eth_txc_tready_0   = m_axis_eth_txc_tready[0];
    assign m_axis_dma_txc_tdata_0    = m_axis_dma_txc_tdata[0];
    assign m_axis_dma_txc_tvalid_0   = m_axis_dma_txc_tvalid[0];
    assign m_axis_dma_txc_tlast_0    = m_axis_dma_txc_tlast[0];
    assign m_axis_dma_txc_tkeep_0    = m_axis_dma_txc_tkeep[0];
    assign m_axis_dma_txc_tready_0   = m_axis_dma_txc_tready[0];
    assign m_axis_eth_txd_tdata_1    = m_axis_eth_txd_tdata[1];
    assign m_axis_eth_txd_tvalid_1   = m_axis_eth_txd_tvalid[1];
    assign m_axis_eth_txd_tlast_1    = m_axis_eth_txd_tlast[1];
    assign m_axis_eth_txd_tkeep_1    = m_axis_eth_txd_tkeep[1];
    assign m_axis_eth_txd_tready_1   = m_axis_eth_txd_tready[1];
    assign m_axis_dma_txd_tdata_1    = m_axis_dma_txd_tdata[1];
    assign m_axis_dma_txd_tvalid_1   = m_axis_dma_txd_tvalid[1];
    assign m_axis_dma_txd_tlast_1    = m_axis_dma_txd_tlast[1];
    assign m_axis_dma_txd_tkeep_1    = m_axis_dma_txd_tkeep[1];
    assign m_axis_dma_txd_tready_1   = m_axis_dma_txd_tready[1];
    assign m_axis_eth_txc_tdata_1    = m_axis_eth_txc_tdata[1];
    assign m_axis_eth_txc_tvalid_1   = m_axis_eth_txc_tvalid[1];
    assign m_axis_eth_txc_tlast_1    = m_axis_eth_txc_tlast[1];
    assign m_axis_eth_txc_tkeep_1    = m_axis_eth_txc_tkeep[1];
    assign m_axis_eth_txc_tready_1   = m_axis_eth_txc_tready[1];
    assign m_axis_dma_txc_tdata_1    = m_axis_dma_txc_tdata[1];
    assign m_axis_dma_txc_tvalid_1   = m_axis_dma_txc_tvalid[1];
    assign m_axis_dma_txc_tlast_1    = m_axis_dma_txc_tlast[1];
    assign m_axis_dma_txc_tkeep_1    = m_axis_dma_txc_tkeep[1];
    assign m_axis_dma_txc_tready_1   = m_axis_dma_txc_tready[1];
    assign m_axis_eth_txd_tdata_2    = m_axis_eth_txd_tdata[2];
    assign m_axis_eth_txd_tvalid_2   = m_axis_eth_txd_tvalid[2];
    assign m_axis_eth_txd_tlast_2    = m_axis_eth_txd_tlast[2];
    assign m_axis_eth_txd_tkeep_2    = m_axis_eth_txd_tkeep[2];
    assign m_axis_eth_txd_tready_2   = m_axis_eth_txd_tready[2];
    assign m_axis_dma_txd_tdata_2    = m_axis_dma_txd_tdata[2];
    assign m_axis_dma_txd_tvalid_2   = m_axis_dma_txd_tvalid[2];
    assign m_axis_dma_txd_tlast_2    = m_axis_dma_txd_tlast[2];
    assign m_axis_dma_txd_tkeep_2    = m_axis_dma_txd_tkeep[2];
    assign m_axis_dma_txd_tready_2   = m_axis_dma_txd_tready[2];
    assign m_axis_eth_txc_tdata_2    = m_axis_eth_txc_tdata[2];
    assign m_axis_eth_txc_tvalid_2   = m_axis_eth_txc_tvalid[2];
    assign m_axis_eth_txc_tlast_2    = m_axis_eth_txc_tlast[2];
    assign m_axis_eth_txc_tkeep_2    = m_axis_eth_txc_tkeep[2];
    assign m_axis_eth_txc_tready_2   = m_axis_eth_txc_tready[2];
    assign m_axis_dma_txc_tdata_2    = m_axis_dma_txc_tdata[2];
    assign m_axis_dma_txc_tvalid_2   = m_axis_dma_txc_tvalid[2];
    assign m_axis_dma_txc_tlast_2    = m_axis_dma_txc_tlast[2];
    assign m_axis_dma_txc_tkeep_2    = m_axis_dma_txc_tkeep[2];
    assign m_axis_dma_txc_tready_2   = m_axis_dma_txc_tready[2];
    assign m_axis_eth_txd_tdata_3    = m_axis_eth_txd_tdata[3];
    assign m_axis_eth_txd_tvalid_3   = m_axis_eth_txd_tvalid[3];
    assign m_axis_eth_txd_tlast_3    = m_axis_eth_txd_tlast[3];
    assign m_axis_eth_txd_tkeep_3    = m_axis_eth_txd_tkeep[3];
    assign m_axis_eth_txd_tready_3   = m_axis_eth_txd_tready[3];
    assign m_axis_dma_txd_tdata_3    = m_axis_dma_txd_tdata[3];
    assign m_axis_dma_txd_tvalid_3   = m_axis_dma_txd_tvalid[3];
    assign m_axis_dma_txd_tlast_3    = m_axis_dma_txd_tlast[3];
    assign m_axis_dma_txd_tkeep_3    = m_axis_dma_txd_tkeep[3];
    assign m_axis_dma_txd_tready_3   = m_axis_dma_txd_tready[3];
    assign m_axis_eth_txc_tdata_3    = m_axis_eth_txc_tdata[3];
    assign m_axis_eth_txc_tvalid_3   = m_axis_eth_txc_tvalid[3];
    assign m_axis_eth_txc_tlast_3    = m_axis_eth_txc_tlast[3];
    assign m_axis_eth_txc_tkeep_3    = m_axis_eth_txc_tkeep[3];
    assign m_axis_eth_txc_tready_3   = m_axis_eth_txc_tready[3];
    assign m_axis_dma_txc_tdata_3    = m_axis_dma_txc_tdata[3];
    assign m_axis_dma_txc_tvalid_3   = m_axis_dma_txc_tvalid[3];
    assign m_axis_dma_txc_tlast_3    = m_axis_dma_txc_tlast[3];
    assign m_axis_dma_txc_tkeep_3    = m_axis_dma_txc_tkeep[3];
    assign m_axis_dma_txc_tready_3   = m_axis_dma_txc_tready[3];
    assign m_axis_eth_txd_tdata_4    = m_axis_eth_txd_tdata[4];
    assign m_axis_eth_txd_tvalid_4   = m_axis_eth_txd_tvalid[4];
    assign m_axis_eth_txd_tlast_4    = m_axis_eth_txd_tlast[4];
    assign m_axis_eth_txd_tkeep_4    = m_axis_eth_txd_tkeep[4];
    assign m_axis_eth_txd_tready_4   = m_axis_eth_txd_tready[4];
    assign m_axis_dma_txd_tdata_4    = m_axis_dma_txd_tdata[4];
    assign m_axis_dma_txd_tvalid_4   = m_axis_dma_txd_tvalid[4];
    assign m_axis_dma_txd_tlast_4    = m_axis_dma_txd_tlast[4];
    assign m_axis_dma_txd_tkeep_4    = m_axis_dma_txd_tkeep[4];
    assign m_axis_dma_txd_tready_4   = m_axis_dma_txd_tready[4];
    assign m_axis_eth_txc_tdata_4    = m_axis_eth_txc_tdata[4];
    assign m_axis_eth_txc_tvalid_4   = m_axis_eth_txc_tvalid[4];
    assign m_axis_eth_txc_tlast_4    = m_axis_eth_txc_tlast[4];
    assign m_axis_eth_txc_tkeep_4    = m_axis_eth_txc_tkeep[4];
    assign m_axis_eth_txc_tready_4   = m_axis_eth_txc_tready[4];
    assign m_axis_dma_txc_tdata_4    = m_axis_dma_txc_tdata[4];
    assign m_axis_dma_txc_tvalid_4   = m_axis_dma_txc_tvalid[4];
    assign m_axis_dma_txc_tlast_4    = m_axis_dma_txc_tlast[4];
    assign m_axis_dma_txc_tkeep_4    = m_axis_dma_txc_tkeep[4];
    assign m_axis_dma_txc_tready_4   = m_axis_dma_txc_tready[4];
    assign m_axis_eth_txd_tdata_5    = m_axis_eth_txd_tdata[5];
    assign m_axis_eth_txd_tvalid_5   = m_axis_eth_txd_tvalid[5];
    assign m_axis_eth_txd_tlast_5    = m_axis_eth_txd_tlast[5];
    assign m_axis_eth_txd_tkeep_5    = m_axis_eth_txd_tkeep[5];
    assign m_axis_eth_txd_tready_5   = m_axis_eth_txd_tready[5];
    assign m_axis_dma_txd_tdata_5    = m_axis_dma_txd_tdata[5];
    assign m_axis_dma_txd_tvalid_5   = m_axis_dma_txd_tvalid[5];
    assign m_axis_dma_txd_tlast_5    = m_axis_dma_txd_tlast[5];
    assign m_axis_dma_txd_tkeep_5    = m_axis_dma_txd_tkeep[5];
    assign m_axis_dma_txd_tready_5   = m_axis_dma_txd_tready[5];
    assign m_axis_eth_txc_tdata_5    = m_axis_eth_txc_tdata[5];
    assign m_axis_eth_txc_tvalid_5   = m_axis_eth_txc_tvalid[5];
    assign m_axis_eth_txc_tlast_5    = m_axis_eth_txc_tlast[5];
    assign m_axis_eth_txc_tkeep_5    = m_axis_eth_txc_tkeep[5];
    assign m_axis_eth_txc_tready_5   = m_axis_eth_txc_tready[5];
    assign m_axis_dma_txc_tdata_5    = m_axis_dma_txc_tdata[5];
    assign m_axis_dma_txc_tvalid_5   = m_axis_dma_txc_tvalid[5];
    assign m_axis_dma_txc_tlast_5    = m_axis_dma_txc_tlast[5];
    assign m_axis_dma_txc_tkeep_5    = m_axis_dma_txc_tkeep[5];
    assign m_axis_dma_txc_tready_5   = m_axis_dma_txc_tready[5];
    assign m_axis_eth_txd_tdata_6    = m_axis_eth_txd_tdata[6];
    assign m_axis_eth_txd_tvalid_6   = m_axis_eth_txd_tvalid[6];
    assign m_axis_eth_txd_tlast_6    = m_axis_eth_txd_tlast[6];
    assign m_axis_eth_txd_tkeep_6    = m_axis_eth_txd_tkeep[6];
    assign m_axis_eth_txd_tready_6   = m_axis_eth_txd_tready[6];
    assign m_axis_dma_txd_tdata_6    = m_axis_dma_txd_tdata[6];
    assign m_axis_dma_txd_tvalid_6   = m_axis_dma_txd_tvalid[6];
    assign m_axis_dma_txd_tlast_6    = m_axis_dma_txd_tlast[6];
    assign m_axis_dma_txd_tkeep_6    = m_axis_dma_txd_tkeep[6];
    assign m_axis_dma_txd_tready_6   = m_axis_dma_txd_tready[6];
    assign m_axis_eth_txc_tdata_6    = m_axis_eth_txc_tdata[6];
    assign m_axis_eth_txc_tvalid_6   = m_axis_eth_txc_tvalid[6];
    assign m_axis_eth_txc_tlast_6    = m_axis_eth_txc_tlast[6];
    assign m_axis_eth_txc_tkeep_6    = m_axis_eth_txc_tkeep[6];
    assign m_axis_eth_txc_tready_6   = m_axis_eth_txc_tready[6];
    assign m_axis_dma_txc_tdata_6    = m_axis_dma_txc_tdata[6];
    assign m_axis_dma_txc_tvalid_6   = m_axis_dma_txc_tvalid[6];
    assign m_axis_dma_txc_tlast_6    = m_axis_dma_txc_tlast[6];
    assign m_axis_dma_txc_tkeep_6    = m_axis_dma_txc_tkeep[6];
    assign m_axis_dma_txc_tready_6   = m_axis_dma_txc_tready[6];
    assign m_axis_eth_txd_tdata_7    = m_axis_eth_txd_tdata[7];
    assign m_axis_eth_txd_tvalid_7   = m_axis_eth_txd_tvalid[7];
    assign m_axis_eth_txd_tlast_7    = m_axis_eth_txd_tlast[7];
    assign m_axis_eth_txd_tkeep_7    = m_axis_eth_txd_tkeep[7];
    assign m_axis_eth_txd_tready_7   = m_axis_eth_txd_tready[7];
    assign m_axis_dma_txd_tdata_7    = m_axis_dma_txd_tdata[7];
    assign m_axis_dma_txd_tvalid_7   = m_axis_dma_txd_tvalid[7];
    assign m_axis_dma_txd_tlast_7    = m_axis_dma_txd_tlast[7];
    assign m_axis_dma_txd_tkeep_7    = m_axis_dma_txd_tkeep[7];
    assign m_axis_dma_txd_tready_7   = m_axis_dma_txd_tready[7];
    assign m_axis_eth_txc_tdata_7    = m_axis_eth_txc_tdata[7];
    assign m_axis_eth_txc_tvalid_7   = m_axis_eth_txc_tvalid[7];
    assign m_axis_eth_txc_tlast_7    = m_axis_eth_txc_tlast[7];
    assign m_axis_eth_txc_tkeep_7    = m_axis_eth_txc_tkeep[7];
    assign m_axis_eth_txc_tready_7   = m_axis_eth_txc_tready[7];
    assign m_axis_dma_txc_tdata_7    = m_axis_dma_txc_tdata[7];
    assign m_axis_dma_txc_tvalid_7   = m_axis_dma_txc_tvalid[7];
    assign m_axis_dma_txc_tlast_7    = m_axis_dma_txc_tlast[7];
    assign m_axis_dma_txc_tkeep_7    = m_axis_dma_txc_tkeep[7];
    assign m_axis_dma_txc_tready_7   = m_axis_dma_txc_tready[7];

    output_scheduler
    #(
        .AXIS_DATA_WIDTH    (C_S_AXIS_DATA_WIDTH),
        .AXIS_USER_WIDTH    (C_S_AXIS_USER_WIDTH),
        .ACTION_TUPLE_WIDTH (C_S_AXIS_USER_WIDTH),
        .QUEUES_NUM         (16)
    )
    (
        .axis_aresetn                       (axis_aresetn),
        .axis_aclk                          (axis_aclk),
        .s_axis_tvalid                      (s_axis_rxd_tvalid),
        .s_axis_tready                      (s_axis_rxd_tready),
        .s_axis_tdata                       (s_axis_rxd_tdata),
        .s_axis_tkeep                       (s_axis_rxd_tkeep),
        .s_axis_tlast                       (s_axis_rxd_tlast),
        .m_axis_tdata_0                     (eth_axis_tdata[0]),
        .m_axis_tvalid_0                    (eth_axis_tvalid[0]),
        .m_axis_tlast_0                     (eth_axis_tlast[0]),
        .m_axis_tkeep_0                     (eth_axis_tkeep[0]),
        .m_axis_tready_0                    (eth_axis_tready[0]),
        .m_axis_tdata_1                     (eth_axis_tdata[1]),
        .m_axis_tvalid_1                    (eth_axis_tvalid[1]),
        .m_axis_tlast_1                     (eth_axis_tlast[1]),
        .m_axis_tkeep_1                     (eth_axis_tkeep[1]),
        .m_axis_tready_1                    (eth_axis_tready[1]),
        .m_axis_tdata_2                     (eth_axis_tdata[2]),
        .m_axis_tvalid_2                    (eth_axis_tvalid[2]),
        .m_axis_tlast_2                     (eth_axis_tlast[2]),
        .m_axis_tkeep_2                     (eth_axis_tkeep[2]),
        .m_axis_tready_2                    (eth_axis_tready[2]),
        .m_axis_tdata_3                     (eth_axis_tdata[3]),
        .m_axis_tvalid_3                    (eth_axis_tvalid[3]),
        .m_axis_tlast_3                     (eth_axis_tlast[3]),
        .m_axis_tkeep_3                     (eth_axis_tkeep[3]),
        .m_axis_tready_3                    (eth_axis_tready[3]),
        .m_axis_tdata_4                     (eth_axis_tdata[4]),
        .m_axis_tvalid_4                    (eth_axis_tvalid[4]),
        .m_axis_tlast_4                     (eth_axis_tlast[4]),
        .m_axis_tkeep_4                     (eth_axis_tkeep[4]),
        .m_axis_tready_4                    (eth_axis_tready[4]),
        .m_axis_tdata_5                     (eth_axis_tdata[5]),
        .m_axis_tvalid_5                    (eth_axis_tvalid[5]),
        .m_axis_tlast_5                     (eth_axis_tlast[5]),
        .m_axis_tkeep_5                     (eth_axis_tkeep[5]),
        .m_axis_tready_5                    (eth_axis_tready[5]),
        .m_axis_tdata_6                     (eth_axis_tdata[6]),
        .m_axis_tvalid_6                    (eth_axis_tvalid[6]),
        .m_axis_tlast_6                     (eth_axis_tlast[6]),
        .m_axis_tkeep_6                     (eth_axis_tkeep[6]),
        .m_axis_tready_6                    (eth_axis_tready[6]),
        .m_axis_tdata_7                     (eth_axis_tdata[7]),
        .m_axis_tvalid_7                    (eth_axis_tvalid[7]),
        .m_axis_tlast_7                     (eth_axis_tlast[7]),
        .m_axis_tkeep_7                     (eth_axis_tkeep[7]),
        .m_axis_tready_7                    (eth_axis_tready[7]),
        .m_axis_tdata_8                     (dma_axis_tdata[0]),
        .m_axis_tvalid_8                    (dma_axis_tvalid[0]),
        .m_axis_tlast_8                     (dma_axis_tlast[0]),
        .m_axis_tkeep_8                     (dma_axis_tkeep[0]),
        .m_axis_tready_8                    (dma_axis_tready[0]),
        .m_axis_tdata_9                     (dma_axis_tdata[1]),
        .m_axis_tvalid_9                    (dma_axis_tvalid[1]),
        .m_axis_tlast_9                     (dma_axis_tlast[1]),
        .m_axis_tkeep_9                     (dma_axis_tkeep[1]),
        .m_axis_tready_9                    (dma_axis_tready[1]),
        .m_axis_tdata_10                    (dma_axis_tdata[2]),
        .m_axis_tvalid_10                   (dma_axis_tvalid[2]),
        .m_axis_tlast_10                    (dma_axis_tlast[2]),
        .m_axis_tkeep_10                    (dma_axis_tkeep[2]),
        .m_axis_tready_10                   (dma_axis_tready[2]),
        .m_axis_tdata_11                    (dma_axis_tdata[3]),
        .m_axis_tvalid_11                   (dma_axis_tvalid[3]),
        .m_axis_tlast_11                    (dma_axis_tlast[3]),
        .m_axis_tkeep_11                    (dma_axis_tkeep[3]),
        .m_axis_tready_11                   (dma_axis_tready[3]),
        .m_axis_tdata_12                    (dma_axis_tdata[4]),
        .m_axis_tvalid_12                   (dma_axis_tvalid[4]),
        .m_axis_tlast_12                    (dma_axis_tlast[4]),
        .m_axis_tkeep_12                    (dma_axis_tkeep[4]),
        .m_axis_tready_12                   (dma_axis_tready[4]),
        .m_axis_tdata_13                    (dma_axis_tdata[5]),
        .m_axis_tvalid_13                   (dma_axis_tvalid[5]),
        .m_axis_tlast_13                    (dma_axis_tlast[5]),
        .m_axis_tkeep_13                    (dma_axis_tkeep[5]),
        .m_axis_tready_13                   (dma_axis_tready[5]),
        .m_axis_tdata_14                    (dma_axis_tdata[6]),
        .m_axis_tvalid_14                   (dma_axis_tvalid[6]),
        .m_axis_tlast_14                    (dma_axis_tlast[6]),
        .m_axis_tkeep_14                    (dma_axis_tkeep[6]),
        .m_axis_tready_14                   (dma_axis_tready[6]),
        .m_axis_tdata_15                    (dma_axis_tdata[7]),
        .m_axis_tvalid_15                   (dma_axis_tvalid[7]),
        .m_axis_tlast_15                    (dma_axis_tlast[7]),
        .m_axis_tkeep_15                    (dma_axis_tkeep[7]),
        .m_axis_tready_15                   (dma_axis_tready[7]),
        .tuple_in_flowstream_data           (tuple_in_flowstream_data),
        .tuple_in_flowstream_valid          (tuple_in_flowstream_valid)
    );
    generate genvar i;
    for(i=0;i<8;i=i+1) begin : eth_channel
        axis_converter_tx
        #(
            .C_M_AXIS_DATA_WIDTH  (C_M_AXIS_DATA_WIDTH),
            .C_S_AXIS_DATA_WIDTH  (C_S_AXIS_DATA_WIDTH),
<<<<<<< HEAD:onets_7045_8x_ref_ofshw/ip/packet_pipeline/src/output_pipeline/onet_core_output.v
            .C_M_AXIS_TUSER_WIDTH (C_M_AXIS_USER_WIDTH),
            .C_S_AXIS_TUSER_WIDTH (C_S_AXIS_USER_WIDTH)
=======
            .C_M_AXIS_TUSER_WIDTH  (C_M_AXIS_USER_WIDTH),
            .C_S_AXIS_TUSER_WIDTH  (C_S_AXIS_USER_WIDTH)
>>>>>>> 12dbc2363991f75f748f42fa796a850676fff2c3:onets_7045_8x_ref_ofshw/ip/output_pipeline/onet_core_output.v
        ) eth_tx
        (
            .axi_aclk               (axis_aclk),
            .axi_resetn             (axis_aresetn),
            .s_axis_tdata           (eth_axis_tdata[i]),
            .s_axis_tstrb           (eth_axis_tkeep[i]),
            .s_axis_tvalid          (eth_axis_tvalid[i]),
            .s_axis_tready          (eth_axis_tready[i]),
            .s_axis_tlast           (eth_axis_tlast[i]),
            .m_axis_tready	        (m_axis_eth_txd_tready[i]),
            .m_axis_tdata		    (m_axis_eth_txd_tdata[i]),
            .m_axis_tstrb		    (m_axis_eth_txd_tkeep[i]),
            .m_axis_tlast		    (m_axis_eth_txd_tlast[i]),
            .m_axis_tvalid		    (m_axis_eth_txd_tvalid[i])
        );
        axis_control_if  
        #(
            .ENABLE_LEN    (0)
        )eth_axis_control_if (
            .m_axis_txd_tvalid            (m_axis_eth_txd_tvalid[i]), 
            .m_axis_txd_tlast             (m_axis_eth_txd_tlast[i]), 
            .m_axis_txd_tready            (m_axis_eth_txd_tready[i]), 
            .s_axis_rxs_aclk              (axis_aclk), 
            .s_axis_rxs_aresetn           (axis_aresetn), 
            .m_axis_txc_aclk              (axis_aclk), 
            .m_axis_txc_aresetn           (axis_aresetn), 
            .m_axis_txc_tvalid            (m_axis_eth_txc_tvalid[i]), 
            .m_axis_txc_tdata             (m_axis_eth_txc_tdata[i]), 
            .m_axis_txc_tkeep             (m_axis_eth_txc_tkeep[i]), 
            .m_axis_txc_tlast             (m_axis_eth_txc_tlast[i]), 
            .m_axis_txc_tready            (m_axis_eth_txc_tready[i])
        );
<<<<<<< HEAD:onets_7045_8x_ref_ofshw/ip/packet_pipeline/src/output_pipeline/onet_core_output.v
        end
=======
    end
>>>>>>> 12dbc2363991f75f748f42fa796a850676fff2c3:onets_7045_8x_ref_ofshw/ip/output_pipeline/onet_core_output.v
    endgenerate

    generate genvar k;
    for(k = 0;k<8;k=k+1) begin : dma_channel
        axis_converter_tx
        #(
            .C_M_AXIS_DATA_WIDTH  (C_M_AXIS_DATA_WIDTH),
            .C_S_AXIS_DATA_WIDTH  (C_S_AXIS_DATA_WIDTH),
            .C_M_AXIS_TUSER_WIDTH (C_M_AXIS_USER_WIDTH),
            .C_S_AXIS_TUSER_WIDTH (C_S_AXIS_USER_WIDTH)
        ) dma_tx
        (
            .axi_aclk               (axis_aclk),
            .axi_resetn             (axis_aresetn),
            .s_axis_tdata           (dma_axis_tdata[k]),
            .s_axis_tstrb           (dma_axis_tkeep[k]),
            .s_axis_tvalid          (dma_axis_tvalid[k]),
            .s_axis_tready          (dma_axis_tready[k]),
            .s_axis_tlast           (dma_axis_tlast[k]),
            .m_axis_tready	        (m_axis_dma_txd_tready[k]),
            .m_axis_tdata		    (m_axis_dma_txd_tdata[k]),
            .m_axis_tstrb		    (m_axis_dma_txd_tkeep[k]),
            .m_axis_tlast		    (m_axis_dma_txd_tlast[k]),
            .m_axis_tvalid		    (m_axis_dma_txd_tvalid[k]),
            .tx_pkt_byte_cnt        (dma_tx_pkt_byte_cnt[k]),
            .tx_pkt_byte_cnt_vld    (dma_tx_pkt_byte_cnt_vld[k])
        );	
        axis_control_if 
        #(
            .ENABLE_LEN    (1)
        )dma_axis_control_if
        (
            .m_axis_txd_tvalid            (m_axis_dma_txd_tvalid[k]), 
            .m_axis_txd_tlast             (m_axis_dma_txd_tlast[k]), 
            .m_axis_txd_tready            (m_axis_dma_txd_tready[k]), 
            .s_axis_rxs_aclk              (axis_aclk), 
            .s_axis_rxs_aresetn           (axis_aresetn), 
            .m_axis_txc_aclk              (axis_aclk), 
            .m_axis_txc_aresetn           (axis_aresetn), 
            .m_axis_txc_tvalid            (m_axis_dma_txc_tvalid[k]), 
            .m_axis_txc_tdata             (m_axis_dma_txc_tdata[k]), 
            .m_axis_txc_tkeep             (m_axis_dma_txc_tkeep[k]), 
            .m_axis_txc_tlast             (m_axis_dma_txc_tlast[k]), 
            .m_axis_txc_tready            (m_axis_dma_txc_tready[k]),
            .tx_pkt_byte_cnt              (dma_tx_pkt_byte_cnt[k]),
            .tx_pkt_byte_cnt_vld          (dma_tx_pkt_byte_cnt_vld[k])
        );
    end
    endgenerate

endmodule
