//-----------------------------------------------------------------//
//onet_core_logic.v
//
//-----------------------------------------------------------------//
module onet_core_logic
#(
    parameter QUAD_BASE_ADDRESS     = 0,
    parameter DEFAULT_TUSER_ENABLE  = 1,
    parameter AXIS_TUSER_WIDTH      = 128,
    parameter C_M_AXIS_DATA_WIDTH   = 32,
    parameter C_S_AXIS_DATA_WIDTH   = 32,
    parameter ACTION_TUPLE_WIDTH    = 128
)
(
    input          clk,                       //system clk
    input          reset,                     //system reset

    output                                    s_axis_eth_rx_aresetn_0,
    input [C_S_AXIS_DATA_WIDTH-1:0]           s_axis_eth_rx_tdata_0,
    input [AXIS_TUSER_WIDTH-1:0]              s_axis_eth_rx_tuser_0,
    input                                     s_axis_eth_rx_tvalid_0,
    input                                     s_axis_eth_rx_tlast_0,
    input [C_S_AXIS_DATA_WIDTH/8-1:0]         s_axis_eth_rx_tkeep_0,
    output                                    s_axis_eth_rx_tready_0,

    output                                    s_axis_eth_rx_aresetn_1,
    input [C_S_AXIS_DATA_WIDTH-1:0]           s_axis_eth_rx_tdata_1,
    input [AXIS_TUSER_WIDTH-1:0]              s_axis_eth_rx_tuser_1,
    input                                     s_axis_eth_rx_tvalid_1,
    input                                     s_axis_eth_rx_tlast_1,
    input [C_S_AXIS_DATA_WIDTH/8-1:0]         s_axis_eth_rx_tkeep_1,
    output                                    s_axis_eth_rx_tready_1,

    output                                    s_axis_eth_rx_aresetn_2,
    input [C_S_AXIS_DATA_WIDTH-1:0]           s_axis_eth_rx_tdata_2,
    input [AXIS_TUSER_WIDTH-1:0]              s_axis_eth_rx_tuser_2,
    input                                     s_axis_eth_rx_tvalid_2,
    input                                     s_axis_eth_rx_tlast_2,
    input [C_S_AXIS_DATA_WIDTH/8-1:0]         s_axis_eth_rx_tkeep_2,
    output                                    s_axis_eth_rx_tready_2,

    output                                    s_axis_eth_rx_aresetn_3,
    input [C_S_AXIS_DATA_WIDTH-1:0]           s_axis_eth_rx_tdata_3,
    input [AXIS_TUSER_WIDTH-1:0]              s_axis_eth_rx_tuser_3,
    input                                     s_axis_eth_rx_tvalid_3,
    input                                     s_axis_eth_rx_tlast_3,
    input [C_S_AXIS_DATA_WIDTH/8-1:0]         s_axis_eth_rx_tkeep_3,
    output                                    s_axis_eth_rx_tready_3,

    output                                    m_axis_eth_tx_aresetn_0,
    output [C_M_AXIS_DATA_WIDTH-1:0]          m_axis_eth_tx_tdata_0,
    output [AXIS_TUSER_WIDTH-1:0]             m_axis_eth_tx_tuser_0,
    output                                    m_axis_eth_tx_tvalid_0,
    output                                    m_axis_eth_tx_tlast_0,
    output [C_M_AXIS_DATA_WIDTH/8-1:0]        m_axis_eth_tx_tkeep_0,
    input                                     m_axis_eth_tx_tready_0,

    output [ACTION_TUPLE_WIDTH-1:0]           tuple_out_flowstream_data,
    output                                    tuple_out_flowstream_valid
	  
);

    localparam USER_PATH_DATA_WIDTH = 256;
  
    wire [AXIS_TUSER_WIDTH-1:0] DEFAULT_TUSER;
    assign DEFAULT_TUSER = 128'b0;

    wire [USER_PATH_DATA_WIDTH-1:0]             udp_in_tdata_0;
    wire [USER_PATH_DATA_WIDTH/8-1:0]           udp_in_tstrb_0;
    wire                                        udp_in_tvalid_0;
    wire                                        udp_in_tlast_0;
    wire                                        udp_in_tready_0;
    wire [AXIS_TUSER_WIDTH-1:0]                 udp_in_tuser_0;

    wire [USER_PATH_DATA_WIDTH-1:0]             udp_out_tdata;
    wire [USER_PATH_DATA_WIDTH/8-1:0]           udp_out_tstrb;
    wire                                        udp_out_tvalid;
    wire                                        udp_out_tlast;
    wire                                        udp_out_tready;
    wire [AXIS_TUSER_WIDTH-1:0]                 udp_out_tuser;

    wire [USER_PATH_DATA_WIDTH-1:0]             udp_in_tdata_1;
    wire [USER_PATH_DATA_WIDTH/8-1:0]           udp_in_tstrb_1;
    wire                                        udp_in_tvalid_1;
    wire                                        udp_in_tlast_1;
    wire                                        udp_in_tready_1;
    wire [AXIS_TUSER_WIDTH-1:0]                 udp_in_tuser_1;

    wire [USER_PATH_DATA_WIDTH-1:0]             udp_in_tdata_2;
    wire [USER_PATH_DATA_WIDTH/8-1:0]           udp_in_tstrb_2;
    wire                                        udp_in_tvalid_2;
    wire                                        udp_in_tlast_2;
    wire                                        udp_in_tready_2;
    wire [AXIS_TUSER_WIDTH-1:0]                 udp_in_tuser_2;

    wire [USER_PATH_DATA_WIDTH-1:0]             udp_in_tdata_3;
    wire [USER_PATH_DATA_WIDTH/8-1:0]           udp_in_tstrb_3;
    wire                                        udp_in_tvalid_3;
    wire                                        udp_in_tlast_3;
    wire                                        udp_in_tready_3;
    wire [AXIS_TUSER_WIDTH-1:0]                 udp_in_tuser_3;

   ////////////////////////////////////   
   // eth0 -> udp : 32 -> 256 
   ////////////////////////////////////
   axis_converter_rx
    #(.C_M_AXIS_DATA_WIDTH      (USER_PATH_DATA_WIDTH),
      .C_S_AXIS_DATA_WIDTH      (C_S_AXIS_DATA_WIDTH),
      .C_M_AXIS_TUSER_WIDTH     (AXIS_TUSER_WIDTH),
      .C_S_AXIS_TUSER_WIDTH     (AXIS_TUSER_WIDTH),
      .C_DEFAULT_VALUE_ENABLE   (DEFAULT_TUSER_ENABLE),
	  .C_DEFAULT_SRC_PORT       (QUAD_BASE_ADDRESS+8'h00),
	  .C_DEFAULT_DST_PORT       (8'h00)
     ) eth_rx_0
    (
    // Global Ports
    .axi_aclk(clk),
    .axi_resetn(~reset),
	
	// Slave Stream Ports
    .s_axis_tdata           (s_axis_eth_rx_tdata_0),
    .s_axis_tuser           (s_axis_eth_rx_tuser_0),
    .s_axis_tstrb           (s_axis_eth_rx_tkeep_0),
    .s_axis_tvalid          (s_axis_eth_rx_tvalid_0),
    .s_axis_tready          (s_axis_eth_rx_tready_0),
    .s_axis_tlast           (s_axis_eth_rx_tlast_0),

    // Master Stream Ports
    .m_axis_tdata           (udp_in_tdata_0),
    .m_axis_tstrb           (udp_in_tstrb_0),
    .m_axis_tvalid          (udp_in_tvalid_0),
    .m_axis_tready          (udp_in_tready_0),
    .m_axis_tlast           (udp_in_tlast_0),
	.m_axis_tuser           (udp_in_tuser_0)
    
   );
   
   ////////////////////////////////////   
   // eth1 -> udp : 32 -> 256 
   ////////////////////////////////////
   axis_converter_rx
    #(.C_M_AXIS_DATA_WIDTH      (USER_PATH_DATA_WIDTH),
      .C_S_AXIS_DATA_WIDTH      (C_S_AXIS_DATA_WIDTH),
      .C_M_AXIS_TUSER_WIDTH     (AXIS_TUSER_WIDTH),
      .C_S_AXIS_TUSER_WIDTH     (AXIS_TUSER_WIDTH),
      .C_DEFAULT_VALUE_ENABLE   (DEFAULT_TUSER_ENABLE),
	  .C_DEFAULT_SRC_PORT       (QUAD_BASE_ADDRESS+8'h01),
	  .C_DEFAULT_DST_PORT       (8'h00)
     ) eth_rx_1
    (
    // Global Ports
    .axi_aclk(clk),
    .axi_resetn(~reset),
	
	// Slave Stream Ports
    .s_axis_tdata           (s_axis_eth_rx_tdata_1),
    .s_axis_tuser           (s_axis_eth_rx_tuser_1),
    .s_axis_tstrb           (s_axis_eth_rx_tkeep_1),
    .s_axis_tvalid          (s_axis_eth_rx_tvalid_1),
    .s_axis_tready          (s_axis_eth_rx_tready_1),
    .s_axis_tlast           (s_axis_eth_rx_tlast_1),

    // Master Stream Ports
    .m_axis_tdata           (udp_in_tdata_1),
    .m_axis_tstrb           (udp_in_tstrb_1),
    .m_axis_tvalid          (udp_in_tvalid_1),
    .m_axis_tready          (udp_in_tready_1),
    .m_axis_tlast           (udp_in_tlast_1),
	.m_axis_tuser           (udp_in_tuser_1)
    
   );
   
   ////////////////////////////////////   
   // eth2 -> udp : 32 -> 256 
   ////////////////////////////////////
   axis_converter_rx
    #(.C_M_AXIS_DATA_WIDTH      (USER_PATH_DATA_WIDTH),
      .C_S_AXIS_DATA_WIDTH      (C_S_AXIS_DATA_WIDTH),
      .C_M_AXIS_TUSER_WIDTH     (AXIS_TUSER_WIDTH),
      .C_S_AXIS_TUSER_WIDTH     (AXIS_TUSER_WIDTH),
      .C_DEFAULT_VALUE_ENABLE   (DEFAULT_TUSER_ENABLE),
	  .C_DEFAULT_SRC_PORT       (QUAD_BASE_ADDRESS+8'h02),
	  .C_DEFAULT_DST_PORT       (8'h00)
     ) eth_rx_2
    (
    // Global Ports
    .axi_aclk(clk),
    .axi_resetn(~reset),
	
	// Slave Stream Ports
    .s_axis_tdata           (s_axis_eth_rx_tdata_2),
    .s_axis_tuser           (s_axis_eth_rx_tuser_2),
    .s_axis_tstrb           (s_axis_eth_rx_tkeep_2),
    .s_axis_tvalid          (s_axis_eth_rx_tvalid_2),
    .s_axis_tready          (s_axis_eth_rx_tready_2),
    .s_axis_tlast           (s_axis_eth_rx_tlast_2),

    // Master Stream Ports
    .m_axis_tdata           (udp_in_tdata_2),
    .m_axis_tstrb           (udp_in_tstrb_2),
    .m_axis_tvalid          (udp_in_tvalid_2),
    .m_axis_tready          (udp_in_tready_2),
    .m_axis_tlast           (udp_in_tlast_2),
	.m_axis_tuser           (udp_in_tuser_2)
    
   );
   
   ////////////////////////////////////   
   // eth3 -> udp : 32 -> 256 
   ////////////////////////////////////
   axis_converter_rx
    #(.C_M_AXIS_DATA_WIDTH      (USER_PATH_DATA_WIDTH),
      .C_S_AXIS_DATA_WIDTH      (C_S_AXIS_DATA_WIDTH),
      .C_M_AXIS_TUSER_WIDTH     (AXIS_TUSER_WIDTH),
      .C_S_AXIS_TUSER_WIDTH     (AXIS_TUSER_WIDTH),
      .C_DEFAULT_VALUE_ENABLE   (DEFAULT_TUSER_ENABLE),
	  .C_DEFAULT_SRC_PORT       (QUAD_BASE_ADDRESS+8'h03),
	  .C_DEFAULT_DST_PORT       (8'h00)
     ) eth_rx_3
    (
    // Global Ports
    .axi_aclk(clk),
    .axi_resetn(~reset),
	
	// Slave Stream Ports
    .s_axis_tdata           (s_axis_eth_rx_tdata_3),
    .s_axis_tuser           (s_axis_eth_rx_tuser_3),
    .s_axis_tstrb           (s_axis_eth_rx_tkeep_3),
    .s_axis_tvalid          (s_axis_eth_rx_tvalid_3),
    .s_axis_tready          (s_axis_eth_rx_tready_3),
    .s_axis_tlast           (s_axis_eth_rx_tlast_3),

    // Master Stream Ports
    .m_axis_tdata           (udp_in_tdata_3),
    .m_axis_tstrb           (udp_in_tstrb_3),
    .m_axis_tvalid          (udp_in_tvalid_3),
    .m_axis_tready          (udp_in_tready_3),
    .m_axis_tlast           (udp_in_tlast_3),
	.m_axis_tuser           (udp_in_tuser_3)
    
   );
   
///////////////////////////////add udp mon module////////////////////////////////////////////  
    user_data_path user_data_path_inst
   (
      // --- Interface to the input queues
    .s_axis_tdata_0        (udp_in_tdata_0), 
	.s_axis_tstrb_0        (udp_in_tstrb_0),
	.s_axis_tuser_0        (udp_in_tuser_0), 	  
    .s_axis_tvalid_0       (udp_in_tvalid_0), 
    .s_axis_tlast_0        (udp_in_tlast_0), 
    .s_axis_tready_0       (udp_in_tready_0),
	
	.s_axis_tdata_1        (udp_in_tdata_1), 
	.s_axis_tstrb_1        (udp_in_tstrb_1),
	.s_axis_tuser_1        (udp_in_tuser_1), 	  
    .s_axis_tvalid_1       (udp_in_tvalid_1), 
    .s_axis_tlast_1        (udp_in_tlast_1), 
    .s_axis_tready_1       (udp_in_tready_1),
	
	.s_axis_tdata_2        (udp_in_tdata_2), 
	.s_axis_tstrb_2        (udp_in_tstrb_2),
	.s_axis_tuser_2        (udp_in_tuser_2), 	  
    .s_axis_tvalid_2       (udp_in_tvalid_2), 
    .s_axis_tlast_2        (udp_in_tlast_2), 
    .s_axis_tready_2       (udp_in_tready_2),
	
	.s_axis_tdata_3        (udp_in_tdata_3), 
	.s_axis_tstrb_3        (udp_in_tstrb_3),
	.s_axis_tuser_3        (udp_in_tuser_3), 	  
    .s_axis_tvalid_3       (udp_in_tvalid_3), 
    .s_axis_tlast_3        (udp_in_tlast_3), 
    .s_axis_tready_3       (udp_in_tready_3),
	
	  // --- Interface to the output queues
    .m_axis_tdata_0        (udp_out_tdata), 
	.m_axis_tstrb_0        (udp_out_tstrb),
	.m_axis_tuser_0        (udp_out_tuser), 	  
    .m_axis_tvalid_0       (udp_out_tvalid), 
    .m_axis_tlast_0        (udp_out_tlast), 
    .m_axis_tready_0       (udp_out_tready),

    // --- Misc
    .reset                 (reset),
    .clk                   (clk)
    );

   ////////////////////////////////////   
   // engine -> eth0 : 256 -> 32 
   ////////////////////////////////////
   axis_converter_tx
    #(.C_M_AXIS_DATA_WIDTH      (C_M_AXIS_DATA_WIDTH),
      .C_S_AXIS_DATA_WIDTH      (USER_PATH_DATA_WIDTH),
      .C_M_AXIS_TUSER_WIDTH     (AXIS_TUSER_WIDTH),
      .C_S_AXIS_TUSER_WIDTH     (AXIS_TUSER_WIDTH),
      .ACTION_TUPLE_WIDTH       (ACTION_TUPLE_WIDTH) 
     ) eth_tx_0
    (
    // Global Ports
    .axi_aclk(clk),
    .axi_resetn(~reset),

    .s_axis_tdata                   (udp_out_tdata),
    .s_axis_tstrb                   (udp_out_tstrb),
    .s_axis_tvalid                  (udp_out_tvalid),
    .s_axis_tready                  (udp_out_tready),
    .s_axis_tlast                   (udp_out_tlast),
    .s_axis_tuser                   (udp_out_tuser),
    
    .m_axis_tdata                   (m_axis_eth_tx_tdata_0),
    .m_axis_tstrb                   (m_axis_eth_tx_tkeep_0),
    .m_axis_tvalid                  (m_axis_eth_tx_tvalid_0),
    .m_axis_tready                  (m_axis_eth_tx_tready_0),
    .m_axis_tlast                   (m_axis_eth_tx_tlast_0),
    .m_axis_tuser                   (m_axis_eth_tx_tuser_0),
    
    .tuple_out_flowstream_data      (tuple_out_flowstream_data),
    .tuple_out_flowstream_valid     (tuple_out_flowstream_valid)

   );

endmodule
