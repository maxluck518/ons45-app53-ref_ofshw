`timescale 1 ps / 1 ps

module output_scheduler
#(
  parameter AXIS_DATA_WIDTH    = 256,
  parameter AXIS_USER_WIDTH    = 128,
  parameter ACTION_TUPLE_WIDTH = 128,
  parameter QUEUES_NUM         = 16
)
(

	input 							                    axis_aresetn,
	input 							                    axis_aclk,

	input 							                    s_axis_tvalid,
	output 		 					                    s_axis_tready,
	input [AXIS_DATA_WIDTH-1:0] 	                    s_axis_tdata,
	input [AXIS_DATA_WIDTH/8-1:0] 	                    s_axis_tkeep,
	input 							                    s_axis_tlast,

    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_0,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_0,
    output                                              m_axis_tvalid_0,
    output                                              m_axis_tlast_0,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_0,
    input                                               m_axis_tready_0,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_1,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_1,
    output                                              m_axis_tvalid_1,
    output                                              m_axis_tlast_1,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_1,
    input                                               m_axis_tready_1,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_2,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_2,
    output                                              m_axis_tvalid_2,
    output                                              m_axis_tlast_2,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_2,
    input                                               m_axis_tready_2,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_3,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_3,
    output                                              m_axis_tvalid_3,
    output                                              m_axis_tlast_3,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_3,
    input                                               m_axis_tready_3,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_4,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_4,
    output                                              m_axis_tvalid_4,
    output                                              m_axis_tlast_4,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_4,
    input                                               m_axis_tready_4,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_5,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_5,
    output                                              m_axis_tvalid_5,
    output                                              m_axis_tlast_5,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_5,
    input                                               m_axis_tready_5,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_6,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_6,
    output                                              m_axis_tvalid_6,
    output                                              m_axis_tlast_6,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_6,
    input                                               m_axis_tready_6,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_7,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_7,
    output                                              m_axis_tvalid_7,
    output                                              m_axis_tlast_7,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_7,
    input                                               m_axis_tready_7,

    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_8,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_8,
    output                                              m_axis_tvalid_8,
    output                                              m_axis_tlast_8,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_8,
    input                                               m_axis_tready_8,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_9,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_9,
    output                                              m_axis_tvalid_9,
    output                                              m_axis_tlast_9,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_9,
    input                                               m_axis_tready_9,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_10,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_10,
    output                                              m_axis_tvalid_10,
    output                                              m_axis_tlast_10,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_10,
    input                                               m_axis_tready_10,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_11,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_11,
    output                                              m_axis_tvalid_11,
    output                                              m_axis_tlast_11,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_11,
    input                                               m_axis_tready_11,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_12,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_12,
    output                                              m_axis_tvalid_12,
    output                                              m_axis_tlast_12,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_12,
    input                                               m_axis_tready_12,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_13,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_13,
    output                                              m_axis_tvalid_13,
    output                                              m_axis_tlast_13,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_13,
    input                                               m_axis_tready_13,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_14,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_14,
    output                                              m_axis_tvalid_14,
    output                                              m_axis_tlast_14,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_14,
    input                                               m_axis_tready_14,
    output [AXIS_DATA_WIDTH-1:0]                        m_axis_tdata_15,
    output[AXIS_USER_WIDTH-1:0]                         m_axis_tuser_15,
    output                                              m_axis_tvalid_15,
    output                                              m_axis_tlast_15,
    output [AXIS_DATA_WIDTH/8-1:0]                      m_axis_tkeep_15,
    input                                               m_axis_tready_15,

    input   [ACTION_TUPLE_WIDTH-1:0]                    tuple_in_flowstream_data,
    input                                               tuple_in_flowstream_valid
);

    function integer log2;
       input integer number;
       begin
          log2=0;
          while(2**log2<number) begin
             log2=log2+1;
          end
       end
    endfunction // log2

    // ------------ Internal Params --------
    localparam NUM_QUEUES_WIDTH = log2(QUEUES_NUM);
    localparam BUFFER_SIZE         = 4096; // Buffer size 4096B
    localparam BUFFER_SIZE_WIDTH   = log2(BUFFER_SIZE/(AXIS_DATA_WIDTH/8));
    
    localparam MAX_PACKET_SIZE = 1600;
    localparam BUFFER_THRESHOLD = (BUFFER_SIZE-MAX_PACKET_SIZE)/(AXIS_DATA_WIDTH/8);

    /* pkt_judge */
    (*MARK_DEBUG="true"*)wire [AXIS_USER_WIDTH-1:0]     s_axis_tuser;
    (*MARK_DEBUG="true"*)reg  [AXIS_USER_WIDTH-1:0]     temp_axis_tuser;
    (*MARK_DEBUG="true"*)reg  [AXIS_USER_WIDTH-1:0]     temp_axis_tuser_next;

    assign s_axis_tuser = temp_axis_tuser;

    always @(*) begin
        temp_axis_tuser = temp_axis_tuser_next;
        if(tuple_in_flowstream_valid)  temp_axis_tuser = tuple_in_flowstream_data;
    end
    always @(posedge axis_aclk) begin
        if(~axis_aresetn) temp_axis_tuser_next <= 0;
        else
        temp_axis_tuser_next <= temp_axis_tuser;
    end
    wire    [7:0]                        dst_port;
    wire    [7:0]                        src_port;
    
    assign                               src_port = s_axis_tuser[23:16];
    assign                               dst_port = s_axis_tuser[31:24];

    reg     [QUEUES_NUM-1:0]             op;

    always @(*) begin
        case(dst_port)
            8'd1    : op = 16'h0001;
            8'd2    : op = 16'h0002;
            8'd3    : op = 16'h0004;
            8'd4    : op = 16'h0008;
            8'd5    : op = 16'h0010;
            8'd6    : op = 16'h0020;
            8'd7    : op = 16'h0040;
            8'd8    : op = 16'h0080;
            8'd9    : op = 16'h0100;
            8'd10   : op = 16'h0200;
            8'd11   : op = 16'h0400;
            8'd12   : op = 16'h0800;
            8'd13   : op = 16'h1000;
            8'd14   : op = 16'h2000;
            8'd15   : op = 16'h4000;
            8'd16   : op = 16'h8000;
            default : op= 0;
        endcase
   end

    wire [AXIS_DATA_WIDTH-1:0]            fifo_in_tdata;
    wire [AXIS_USER_WIDTH-1:0]            fifo_in_tuser;
    wire [AXIS_DATA_WIDTH/8-1:0]          fifo_in_tkeep;
    wire                                  fifo_in_tlast;
    reg  [AXIS_DATA_WIDTH-1:0]            fifo_in_tdata_next;
    reg  [AXIS_USER_WIDTH-1:0]            fifo_in_tuser_next;
    reg  [AXIS_DATA_WIDTH/8-1:0]          fifo_in_tkeep_next;
    reg                                   fifo_in_tlast_next;
    wire [AXIS_DATA_WIDTH-1:0]            fifo_out_tdata[QUEUES_NUM-1 : 0];
    wire [AXIS_USER_WIDTH-1:0]            fifo_out_tuser[QUEUES_NUM-1 : 0];
    wire [AXIS_DATA_WIDTH/8-1:0]          fifo_out_tkeep[QUEUES_NUM-1 : 0];
    wire                                  fifo_out_tlast[QUEUES_NUM-1 : 0];
    
    (*MARK_DEBUG="true"*)reg [QUEUES_NUM-1:0]                  wr_en;
    (*MARK_DEBUG="true"*)wire [QUEUES_NUM-1:0]                 wr;
    (*MARK_DEBUG="true"*)wire [QUEUES_NUM-1:0]                 rd;
    (*MARK_DEBUG="true"*)wire [QUEUES_NUM-1:0]                 empty;
    (*MARK_DEBUG="true"*)wire [QUEUES_NUM-1:0]                 nearly_full_fifo;

    generate genvar i;
    for(i=0; i<QUEUES_NUM; i=i+1) begin: output_queues
        fallthrough_small_fifo_v2
        #(.WIDTH((AXIS_DATA_WIDTH/8)+AXIS_DATA_WIDTH+ AXIS_USER_WIDTH+1),
            .MAX_DEPTH_BITS(BUFFER_SIZE_WIDTH)
        )
        output_fifo
        (   .din         ({fifo_in_tkeep, fifo_in_tdata, fifo_in_tuser,fifo_in_tlast}),
            .wr_en       (wr[i]),
            .rd_en       (rd[i]),
            .dout        ({fifo_out_tkeep[i], fifo_out_tdata[i],fifo_out_tuser[i],fifo_out_tlast[i]}),
            .full        (),
            .nearly_full   ( nearly_full_fifo[i]),
            // .prog_full   ( nearly_full_fifo[i]),
            // .nearly_full (),
            .empty       (empty[i]),
            .reset       (~axis_aresetn),
            .clk         (axis_aclk)
        );
    end // block: output_fifos
    endgenerate

    assign fifo_in_tdata = fifo_in_tdata_next;
    assign fifo_in_tuser = fifo_in_tuser_next;
    assign fifo_in_tkeep = fifo_in_tkeep_next;
    assign fifo_in_tlast = fifo_in_tlast_next;

    always @(posedge axis_aclk)
       if (~axis_aresetn) begin
           fifo_in_tdata_next <=0;
           fifo_in_tuser_next <=0;
           fifo_in_tkeep_next <=0;
           fifo_in_tlast_next <=0;
       end
       else if(s_axis_tvalid & s_axis_tready) begin
           fifo_in_tdata_next <= s_axis_tdata;
           fifo_in_tuser_next <= s_axis_tuser;
           fifo_in_tkeep_next <= s_axis_tkeep;
           fifo_in_tlast_next <= s_axis_tlast;
       end

    reg   drop_en;
    always @(posedge axis_aclk)
       if (~axis_aresetn) begin
          wr_en    <= 0;
          drop_en  <= 1;
       end
       else if(~s_axis_tvalid) begin
          wr_en    <= 0;
          drop_en  <= 1;
       end 
       else   begin
          wr_en    <= op;
          drop_en  <= ~|op;
       end
    assign wr = wr_en & ~nearly_full_fifo;
    assign s_axis_tready = |(wr_en & ~nearly_full_fifo) || drop_en;
    
    assign m_axis_tdata_0	 = fifo_out_tdata[0];
    assign m_axis_tkeep_0	 = fifo_out_tkeep[0];
    assign m_axis_tuser_0	 = fifo_out_tuser[0];
    assign m_axis_tlast_0	 = fifo_out_tlast[0];
    assign m_axis_tvalid_0	 = ~empty[0];
    assign rd[0]			 = m_axis_tready_0 & ~empty[0];
    assign m_axis_tdata_1	 = fifo_out_tdata[1];
    assign m_axis_tkeep_1	 = fifo_out_tkeep[1];
    assign m_axis_tuser_1	 = fifo_out_tuser[1];
    assign m_axis_tlast_1	 = fifo_out_tlast[1];
    assign m_axis_tvalid_1	 = ~empty[1];
    assign rd[1]			 = m_axis_tready_1 & ~empty[1];
    assign m_axis_tdata_2	 = fifo_out_tdata[2];
    assign m_axis_tkeep_2	 = fifo_out_tkeep[2];
    assign m_axis_tuser_2	 = fifo_out_tuser[2];
    assign m_axis_tlast_2	 = fifo_out_tlast[2];
    assign m_axis_tvalid_2	 = ~empty[2];
    assign rd[2]			 = m_axis_tready_2 & ~empty[2];
    assign m_axis_tdata_3	 = fifo_out_tdata[3];
    assign m_axis_tkeep_3	 = fifo_out_tkeep[3];
    assign m_axis_tuser_3	 = fifo_out_tuser[3];
    assign m_axis_tlast_3	 = fifo_out_tlast[3];
    assign m_axis_tvalid_3	 = ~empty[3];
    assign rd[3]			 = m_axis_tready_3 & ~empty[3];
    assign m_axis_tdata_4	 = fifo_out_tdata[4];
    assign m_axis_tkeep_4	 = fifo_out_tkeep[4];
    assign m_axis_tuser_4	 = fifo_out_tuser[4];
    assign m_axis_tlast_4	 = fifo_out_tlast[4];
    assign m_axis_tvalid_4	 = ~empty[4];
    assign rd[4]			 = m_axis_tready_4 & ~empty[4];
    assign m_axis_tdata_5	 = fifo_out_tdata[5];
    assign m_axis_tkeep_5	 = fifo_out_tkeep[5];
    assign m_axis_tuser_5	 = fifo_out_tuser[5];
    assign m_axis_tlast_5	 = fifo_out_tlast[5];
    assign m_axis_tvalid_5	 = ~empty[5];
    assign rd[5]			 = m_axis_tready_5 & ~empty[5];
    assign m_axis_tdata_6	 = fifo_out_tdata[6];
    assign m_axis_tkeep_6	 = fifo_out_tkeep[6];
    assign m_axis_tuser_6	 = fifo_out_tuser[6];
    assign m_axis_tlast_6	 = fifo_out_tlast[6];
    assign m_axis_tvalid_6	 = ~empty[6];
    assign rd[6]			 = m_axis_tready_6 & ~empty[6];
    assign m_axis_tdata_7	 = fifo_out_tdata[7];
    assign m_axis_tkeep_7	 = fifo_out_tkeep[7];
    assign m_axis_tuser_7	 = fifo_out_tuser[7];
    assign m_axis_tlast_7	 = fifo_out_tlast[7];
    assign m_axis_tvalid_7	 = ~empty[7];
    assign rd[7]			 = m_axis_tready_7 & ~empty[7];

    assign m_axis_tdata_8	 = fifo_out_tdata[8];
    assign m_axis_tkeep_8	 = fifo_out_tkeep[8];
    assign m_axis_tuser_8	 = fifo_out_tuser[8];
    assign m_axis_tlast_8	 = fifo_out_tlast[8];
    assign m_axis_tvalid_8	 = ~empty[8];
    assign rd[8]			 = m_axis_tready_8 & ~empty[8];
    assign m_axis_tdata_9	 = fifo_out_tdata[9];
    assign m_axis_tkeep_9	 = fifo_out_tkeep[9];
    assign m_axis_tuser_9	 = fifo_out_tuser[9];
    assign m_axis_tlast_9	 = fifo_out_tlast[9];
    assign m_axis_tvalid_9	 = ~empty[9];
    assign rd[9]			 = m_axis_tready_9 & ~empty[9];
    assign m_axis_tdata_10	 = fifo_out_tdata[10];
    assign m_axis_tkeep_10	 = fifo_out_tkeep[10];
    assign m_axis_tuser_10	 = fifo_out_tuser[10];
    assign m_axis_tlast_10	 = fifo_out_tlast[10];
    assign m_axis_tvalid_10	 = ~empty[10];
    assign rd[10]			 = m_axis_tready_10 & ~empty[10];
    assign m_axis_tdata_11	 = fifo_out_tdata[11];
    assign m_axis_tkeep_11	 = fifo_out_tkeep[11];
    assign m_axis_tuser_11	 = fifo_out_tuser[11];
    assign m_axis_tlast_11	 = fifo_out_tlast[11];
    assign m_axis_tvalid_11	 = ~empty[11];
    assign rd[11]			 = m_axis_tready_11 & ~empty[11];
    assign m_axis_tdata_12	 = fifo_out_tdata[12];
    assign m_axis_tkeep_12	 = fifo_out_tkeep[12];
    assign m_axis_tuser_12	 = fifo_out_tuser[12];
    assign m_axis_tlast_12	 = fifo_out_tlast[12];
    assign m_axis_tvalid_12	 = ~empty[12];
    assign rd[12]			 = m_axis_tready_12 & ~empty[12];
    assign m_axis_tdata_13	 = fifo_out_tdata[13];
    assign m_axis_tkeep_13	 = fifo_out_tkeep[13];
    assign m_axis_tuser_13	 = fifo_out_tuser[13];
    assign m_axis_tlast_13	 = fifo_out_tlast[13];
    assign m_axis_tvalid_13	 = ~empty[13];
    assign rd[13]			 = m_axis_tready_13 & ~empty[13];
    assign m_axis_tdata_14	 = fifo_out_tdata[14];
    assign m_axis_tkeep_14	 = fifo_out_tkeep[14];
    assign m_axis_tuser_14	 = fifo_out_tuser[14];
    assign m_axis_tlast_14	 = fifo_out_tlast[14];
    assign m_axis_tvalid_14	 = ~empty[14];
    assign rd[14]			 = m_axis_tready_14 & ~empty[14];
    assign m_axis_tdata_15	 = fifo_out_tdata[15];
    assign m_axis_tkeep_15	 = fifo_out_tkeep[15];
    assign m_axis_tuser_15	 = fifo_out_tuser[15];
    assign m_axis_tlast_15	 = fifo_out_tlast[15];
    assign m_axis_tvalid_15	 = ~empty[15];
    assign rd[15]			 = m_axis_tready_15 & ~empty[15];

endmodule
