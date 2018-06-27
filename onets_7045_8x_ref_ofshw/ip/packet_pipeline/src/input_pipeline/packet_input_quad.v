//-------------------------------------------------------------------
// AXI4 interface wrapper for packet processing pipeline.
//-------------------------------------------------------------------

module packet_input_quad
#(
    parameter AXIS_CONTROL_IF_ENABLE        = 0,
    parameter DEFAULT_TUSER_ENABLE          = 1,
    parameter QUAD_BASE_ADDRESS             = 0,
    parameter C_S_AXIS_RXD_TDATA_WIDTH      = 32,
    parameter C_M_AXIS_TXD_TDATA_WIDTH      = 32,
    parameter C_S_AXIS_RXS_TDATA_WIDTH      = 32,
    parameter C_M_AXIS_TXC_TDATA_WIDTH      = 32,
    parameter C_S_AXIS_TUSER_WIDTH          = 128,
    parameter C_M_AXIS_TUSER_WIDTH          = 128,
    parameter ACTION_TUPLE_WIDTH            = 128
)
(
    // Users to add ports here
    input wire s_axis_rxd_aclk,
    input wire s_axis_rxd_aresetn,
    input wire s_axis_txd_aclk,
    input wire s_axis_txd_aresetn,

    output wire  													s_axis_rxd_0_tready,
    input wire [C_S_AXIS_RXD_TDATA_WIDTH-1 : 0] 					s_axis_rxd_0_tdata,
    input wire [C_S_AXIS_TUSER_WIDTH-1 : 0] 					    s_axis_rxd_0_tuser,
    input wire [(C_S_AXIS_RXD_TDATA_WIDTH/8)-1 : 0] 				s_axis_rxd_0_tkeep,
    input wire  													s_axis_rxd_0_tlast,
    input wire  													s_axis_rxd_0_tvalid,
	
	output wire  													s_axis_rxd_1_tready,
    input wire [C_S_AXIS_RXD_TDATA_WIDTH-1 : 0] 					s_axis_rxd_1_tdata,
    input wire [C_S_AXIS_TUSER_WIDTH-1 : 0] 					    s_axis_rxd_1_tuser,
    input wire [(C_S_AXIS_RXD_TDATA_WIDTH/8)-1 : 0] 				s_axis_rxd_1_tkeep,
    input wire  													s_axis_rxd_1_tlast,
    input wire  													s_axis_rxd_1_tvalid,
	
	output wire  													s_axis_rxd_2_tready,
    input wire [C_S_AXIS_RXD_TDATA_WIDTH-1 : 0] 					s_axis_rxd_2_tdata,
    input wire [C_S_AXIS_TUSER_WIDTH-1 : 0] 					    s_axis_rxd_2_tuser,
    input wire [(C_S_AXIS_RXD_TDATA_WIDTH/8)-1 : 0] 				s_axis_rxd_2_tkeep,
    input wire  													s_axis_rxd_2_tlast,
    input wire  													s_axis_rxd_2_tvalid,
	
	output wire  													s_axis_rxd_3_tready,
    input wire [C_S_AXIS_RXD_TDATA_WIDTH-1 : 0] 					s_axis_rxd_3_tdata,
    input wire [C_S_AXIS_TUSER_WIDTH-1 : 0] 					    s_axis_rxd_3_tuser,
    input wire [(C_S_AXIS_RXD_TDATA_WIDTH/8)-1 : 0] 				s_axis_rxd_3_tkeep,
    input wire  													s_axis_rxd_3_tlast,
    input wire  													s_axis_rxd_3_tvalid,

	
	output      													s_axis_rxs_0_tready,
    input [C_S_AXIS_RXS_TDATA_WIDTH-1 : 0]       					s_axis_rxs_0_tdata,
    input [(C_S_AXIS_RXS_TDATA_WIDTH/8)-1 : 0]   					s_axis_rxs_0_tkeep,
    input       													s_axis_rxs_0_tlast,
    input       													s_axis_rxs_0_tvalid,
	
    output      													s_axis_rxs_1_tready,
    input [C_S_AXIS_RXS_TDATA_WIDTH-1 : 0]       					s_axis_rxs_1_tdata,
    input [(C_S_AXIS_RXS_TDATA_WIDTH/8)-1 : 0]   					s_axis_rxs_1_tkeep,
    input       													s_axis_rxs_1_tlast,
    input       													s_axis_rxs_1_tvalid,
	
	output      													s_axis_rxs_2_tready,
    input [C_S_AXIS_RXS_TDATA_WIDTH-1 : 0]       					s_axis_rxs_2_tdata,
    input [(C_S_AXIS_RXS_TDATA_WIDTH/8)-1 : 0]   					s_axis_rxs_2_tkeep,
    input       													s_axis_rxs_2_tlast,
    input       													s_axis_rxs_2_tvalid,
	
	output      													s_axis_rxs_3_tready,
    input [C_S_AXIS_RXS_TDATA_WIDTH-1 : 0]       					s_axis_rxs_3_tdata,
    input [(C_S_AXIS_RXS_TDATA_WIDTH/8)-1 : 0]   					s_axis_rxs_3_tkeep,
    input       													s_axis_rxs_3_tlast,
    input       													s_axis_rxs_3_tvalid,


    output wire  													m_axis_txd_0_tvalid,
    output wire [C_M_AXIS_TXD_TDATA_WIDTH-1 : 0] 					m_axis_txd_0_tdata,
    output wire [C_M_AXIS_TUSER_WIDTH-1 : 0] 					    m_axis_txd_0_tuser,
    output wire [(C_M_AXIS_TXD_TDATA_WIDTH/8)-1 : 0] 				m_axis_txd_0_tkeep,
    output wire  													m_axis_txd_0_tlast,
    input wire  													m_axis_txd_0_tready,	
	
	output      													m_axis_txc_0_tvalid,
	output [C_M_AXIS_TXC_TDATA_WIDTH-1 : 0]      					m_axis_txc_0_tdata,
	output [(C_M_AXIS_TXC_TDATA_WIDTH/8)-1 : 0]  					m_axis_txc_0_tkeep,
	output     														m_axis_txc_0_tlast,
	input      														m_axis_txc_0_tready,

    output [ACTION_TUPLE_WIDTH-1:0]           tuple_out_flowstream_data,
    output                                    tuple_out_flowstream_valid
	
   );
   
   wire axis_aclk = s_axis_rxd_aclk;
   wire axis_aresetn = s_axis_rxd_aresetn;
   onet_core_logic 
   #(
       .QUAD_BASE_ADDRESS       (QUAD_BASE_ADDRESS),
       .DEFAULT_TUSER_ENABLE    (DEFAULT_TUSER_ENABLE), 
       .AXIS_TUSER_WIDTH        (128),
       .C_M_AXIS_DATA_WIDTH     (C_M_AXIS_TXD_TDATA_WIDTH),
       .C_S_AXIS_DATA_WIDTH     (C_S_AXIS_RXD_TDATA_WIDTH),
       .ACTION_TUPLE_WIDTH      (ACTION_TUPLE_WIDTH)
   )
   onet_core_logic_inst
   (
      .clk                          (axis_aclk), 
      .reset                        (~axis_aresetn), 

      .m_axis_eth_tx_tdata_0        (m_axis_txd_0_tdata), 
      .m_axis_eth_tx_tuser_0        (m_axis_txd_0_tuser), 
      .m_axis_eth_tx_tvalid_0       (m_axis_txd_0_tvalid), 
      .m_axis_eth_tx_tlast_0        (m_axis_txd_0_tlast), 
      .m_axis_eth_tx_tkeep_0        (m_axis_txd_0_tkeep), 
      .m_axis_eth_tx_tready_0       (m_axis_txd_0_tready), 

	  .s_axis_eth_rx_tdata_0        (s_axis_rxd_0_tdata), 
	  .s_axis_eth_rx_tuser_0        (s_axis_rxd_0_tuser), 
      .s_axis_eth_rx_tvalid_0       (s_axis_rxd_0_tvalid), 
      .s_axis_eth_rx_tlast_0        (s_axis_rxd_0_tlast), 
      .s_axis_eth_rx_tkeep_0        (s_axis_rxd_0_tkeep), 
      .s_axis_eth_rx_tready_0       (s_axis_rxd_0_tready),

	  .s_axis_eth_rx_tdata_1        (s_axis_rxd_1_tdata), 
	  .s_axis_eth_rx_tuser_1        (s_axis_rxd_1_tuser), 
      .s_axis_eth_rx_tvalid_1       (s_axis_rxd_1_tvalid), 
      .s_axis_eth_rx_tlast_1        (s_axis_rxd_1_tlast), 
      .s_axis_eth_rx_tkeep_1        (s_axis_rxd_1_tkeep), 
      .s_axis_eth_rx_tready_1       (s_axis_rxd_1_tready),

	  .s_axis_eth_rx_tdata_2        (s_axis_rxd_2_tdata), 
	  .s_axis_eth_rx_tuser_2        (s_axis_rxd_2_tuser), 
      .s_axis_eth_rx_tvalid_2       (s_axis_rxd_2_tvalid), 
      .s_axis_eth_rx_tlast_2        (s_axis_rxd_2_tlast), 
      .s_axis_eth_rx_tkeep_2        (s_axis_rxd_2_tkeep), 
      .s_axis_eth_rx_tready_2       (s_axis_rxd_2_tready),

	  .s_axis_eth_rx_tdata_3        (s_axis_rxd_3_tdata), 
	  .s_axis_eth_rx_tuser_3        (s_axis_rxd_3_tuser), 
      .s_axis_eth_rx_tvalid_3       (s_axis_rxd_3_tvalid), 
      .s_axis_eth_rx_tlast_3        (s_axis_rxd_3_tlast), 
      .s_axis_eth_rx_tkeep_3        (s_axis_rxd_3_tkeep), 
      .s_axis_eth_rx_tready_3       (s_axis_rxd_3_tready),

      .tuple_out_flowstream_data    (tuple_out_flowstream_data),
      .tuple_out_flowstream_valid   (tuple_out_flowstream_valid)

   ); 

   generate
   if(AXIS_CONTROL_IF_ENABLE == 0) begin: temp_quad
       assign s_axis_rxs_0_tready = 1'b1;
       assign s_axis_rxs_1_tready = 1'b1;
       assign s_axis_rxs_2_tready = 1'b1;
       assign s_axis_rxs_3_tready = 1'b1;
   end
   else begin: final_quad
       axis_control_if  
       #(
           .ENABLE_LEN    (0)
       )eth_axis_control_if_0 (
           .m_axis_txd_tvalid            (m_axis_txd_0_tvalid), 
           .m_axis_txd_tlast             (m_axis_txd_0_tlast), 
           .m_axis_txd_tready            (m_axis_txd_0_tready), 

           .s_axis_rxs_aclk              (axis_aclk), 
           .s_axis_rxs_aresetn           (axis_aresetn ), 
           .s_axis_rxs_tready            (s_axis_rxs_0_tready), 
           .s_axis_rxs_tdata             (s_axis_rxs_0_tdata), 
           .s_axis_rxs_tkeep             (s_axis_rxs_0_tkeep), 
           .s_axis_rxs_tlast             (s_axis_rxs_0_tlast), 
           .s_axis_rxs_tvalid            (s_axis_rxs_0_tvalid), 

           .m_axis_txc_aclk              (axis_aclk), 
           .m_axis_txc_aresetn           (axis_aresetn), 
           .m_axis_txc_tvalid            (m_axis_txc_0_tvalid), 
           .m_axis_txc_tdata             (m_axis_txc_0_tdata), 
           .m_axis_txc_tkeep             (m_axis_txc_0_tkeep), 
           .m_axis_txc_tlast             (m_axis_txc_0_tlast), 
           .m_axis_txc_tready            (m_axis_txc_0_tready),

           .tx_pkt_byte_cnt              (),
           .tx_pkt_byte_cnt_vld          ()
       );
       assign s_axis_rxs_1_tready = 1'b1;
       assign s_axis_rxs_2_tready = 1'b1;
       assign s_axis_rxs_3_tready = 1'b1;
   end
   endgenerate

 endmodule
