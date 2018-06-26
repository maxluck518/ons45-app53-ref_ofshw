//----------------------------------------------------------------------------
//   This file is owned and controlled by Xilinx and must be used solely    //
//   for design, simulation, implementation and creation of design files    //
//   limited to Xilinx devices or technologies. Use with non-Xilinx         //
//   devices or technologies is expressly prohibited and immediately        //
//   terminates your license.                                               //
//                                                                          //
//   XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY   //
//   FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY   //
//   PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE            //
//   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS     //
//   MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY     //
//   CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY      //
//   RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY      //
//   DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE  //
//   IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         //
//   REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        //
//   INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A  //
//   PARTICULAR PURPOSE.                                                    //
//                                                                          //
//   Xilinx products are not intended for use in life support appliances,   //
//   devices, or systems.  Use in such applications are expressly           //
//   prohibited.                                                            //
//                                                                          //
//   (c) Copyright 1995-2015 Xilinx, Inc.                                   //
//   All rights reserved.                                                   //
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------


//----------------------------------------------------------------------------
// File name: S_RESETTER_line.v
// File created: 2018/06/25 10:09:55
// Created by: Xilinx SDNet Compiler version 2017.4, build 2093981

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_RESETTER_line (


     reset_out_active_high, 
     reset_out_active_low, 
     init_done, 

     clk, 
     rst 

);

//-------------------------------------------------------------
// I/O
//-------------------------------------------------------------
 output		reset_out_active_high ;
 output		reset_out_active_low ;
 output	reg	init_done ;
 input		clk ;
 input		rst ;






 reg	ud9ispz1ax3pfeh0jo2ru6f2lkjge_807;	 initial ud9ispz1ax3pfeh0jo2ru6f2lkjge_807 = 1'b0 ;
 reg	s2e8rzwxp3d4y2flwi4ti6n12t7ef2z_220;	 initial s2e8rzwxp3d4y2flwi4ti6n12t7ef2z_220 = 1'b0 ;
 reg [4:0] abwc2991nfdchp4xlf2clywbjlaqak_809;	 initial abwc2991nfdchp4xlf2clywbjlaqak_809 = 5'b00000 ;
 reg [4:0] r4hleyki5y3aiig36w0ms1rjfru2ly_262;	 initial r4hleyki5y3aiig36w0ms1rjfru2ly_262 = 5'b00000 ;
 wire	pnbmyu6ls9af8137kxtx847n_67 ;
 reg	a4a0ppizve51bjiv6_485;	 initial a4a0ppizve51bjiv6_485 = 1'b1 ;
 reg	x2cpqe32wvnplo2imwg9q6gra4luvf_737;	 initial x2cpqe32wvnplo2imwg9q6gra4luvf_737 = 1'b0 ;
 reg	k9aw69zssie0qny15x8jk8k0u_262;	 initial k9aw69zssie0qny15x8jk8k0u_262 = 1'b1 ;
 reg	xrhyt7xrv6r7vebcieq0ecp_689;	 initial xrhyt7xrv6r7vebcieq0ecp_689 = 1'b0 ;
 wire [4:0] irspw3fe99mbla1qoy19lqs8zaogagq_334 ;
 wire [4:0] ovnlncypf98cnbhhwth8m_727 ;
 wire	hsltu9g7z7xu7asl_442 ;
 wire	ezd9oqqlqsfncb1z2ikzpdj9xwotl9_329 ;
 wire	pj2rizae204i316thx82rc1eor_833 ;
 wire	fqf41v45rhwj74mb6hi2_146 ;
 wire	hpxnq4ll8498160zikpxsuzxops_745 ;
 wire	pyxsu7l4li7ul01798gv2ypvv3_592 ;
 wire	aiw0ocp0xlni5jzg3vob7r_173 ;
 wire	smzfzlgtjba2kntlg0ne_30 ;
 wire	oa4vk1bak5g1m9xv3k49fx1p1oqcj6sn_507 ;
 wire	bgq1j1gs4p5jk8vl2_250 ;
 wire	goqopzh6q6vdmmdd_663 ;
 wire	web6qo57al89mwdk6a4j_766 ;


 assign irspw3fe99mbla1qoy19lqs8zaogagq_334 = 
	abwc2991nfdchp4xlf2clywbjlaqak_809 + 1 ;
 assign ovnlncypf98cnbhhwth8m_727 = 
	r4hleyki5y3aiig36w0ms1rjfru2ly_262 + 1 ;
 assign hsltu9g7z7xu7asl_442 = (
	((abwc2991nfdchp4xlf2clywbjlaqak_809 > 5'b00000))?1'b1:
	0)  ;
 assign ezd9oqqlqsfncb1z2ikzpdj9xwotl9_329 = 
	rst | s2e8rzwxp3d4y2flwi4ti6n12t7ef2z_220 ;
 assign pj2rizae204i316thx82rc1eor_833 = 
	ezd9oqqlqsfncb1z2ikzpdj9xwotl9_329 | hsltu9g7z7xu7asl_442 ;
 assign fqf41v45rhwj74mb6hi2_146 = (
	((s2e8rzwxp3d4y2flwi4ti6n12t7ef2z_220 == 1'b1) && (web6qo57al89mwdk6a4j_766 == 1'b1) && (abwc2991nfdchp4xlf2clywbjlaqak_809 == 5'b00000))?1'b1:
	((abwc2991nfdchp4xlf2clywbjlaqak_809 != 5'b00000) && (s2e8rzwxp3d4y2flwi4ti6n12t7ef2z_220 != 1'b1))?1'b1:
	0)  ;
 assign hpxnq4ll8498160zikpxsuzxops_745 = (
	((ud9ispz1ax3pfeh0jo2ru6f2lkjge_807 == 1'b1))?1'b1:
	0)  ;
 assign pyxsu7l4li7ul01798gv2ypvv3_592 = (
	((abwc2991nfdchp4xlf2clywbjlaqak_809 == 5'b01111) && (s2e8rzwxp3d4y2flwi4ti6n12t7ef2z_220 != 1'b1) && (web6qo57al89mwdk6a4j_766 == 1'b1))?1'b1:
	((r4hleyki5y3aiig36w0ms1rjfru2ly_262 != 5'b00000) && (r4hleyki5y3aiig36w0ms1rjfru2ly_262 != 5'b01111) && (s2e8rzwxp3d4y2flwi4ti6n12t7ef2z_220 != 1'b1) && (web6qo57al89mwdk6a4j_766 == 1'b1))?1'b1:
	0)  ;
 assign aiw0ocp0xlni5jzg3vob7r_173 = (
	((r4hleyki5y3aiig36w0ms1rjfru2ly_262 == 5'b01111))?1'b1:
	0)  ;
 assign smzfzlgtjba2kntlg0ne_30 = 
	1'b1 ;
 assign oa4vk1bak5g1m9xv3k49fx1p1oqcj6sn_507 = 
	1'b0 ;
 assign bgq1j1gs4p5jk8vl2_250 = 
	 ~(pnbmyu6ls9af8137kxtx847n_67) ;
 assign goqopzh6q6vdmmdd_663 = (
	((r4hleyki5y3aiig36w0ms1rjfru2ly_262 == 5'b01111))?1'b1:
	0)  ;
 assign web6qo57al89mwdk6a4j_766 = 
	1'b1 ;
 assign reset_out_active_high 	= k9aw69zssie0qny15x8jk8k0u_262 ;
 assign reset_out_active_low 	= xrhyt7xrv6r7vebcieq0ecp_689 ;


assign pnbmyu6ls9af8137kxtx847n_67 = (
	((pj2rizae204i316thx82rc1eor_833 == 1'b1) && (abwc2991nfdchp4xlf2clywbjlaqak_809 < 5'b10000))?smzfzlgtjba2kntlg0ne_30 :
1'b0) ;



always @(posedge clk)
begin
		ud9ispz1ax3pfeh0jo2ru6f2lkjge_807 <= rst ;
		s2e8rzwxp3d4y2flwi4ti6n12t7ef2z_220 <= ud9ispz1ax3pfeh0jo2ru6f2lkjge_807 ;
	if (hpxnq4ll8498160zikpxsuzxops_745) 
	begin 
	  abwc2991nfdchp4xlf2clywbjlaqak_809 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (fqf41v45rhwj74mb6hi2_146) 
		begin 
			abwc2991nfdchp4xlf2clywbjlaqak_809 <= irspw3fe99mbla1qoy19lqs8zaogagq_334 ;
		end 
	end 
	if (hpxnq4ll8498160zikpxsuzxops_745) 
	begin 
	  r4hleyki5y3aiig36w0ms1rjfru2ly_262 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (pyxsu7l4li7ul01798gv2ypvv3_592) 
		begin 
			r4hleyki5y3aiig36w0ms1rjfru2ly_262 <= ovnlncypf98cnbhhwth8m_727 ;
		end 
	end 
	if (rst) 
	begin 
	  a4a0ppizve51bjiv6_485 <= 1'b1 ;
	 end 
	else 
	begin 
			a4a0ppizve51bjiv6_485 <= pnbmyu6ls9af8137kxtx847n_67 ;
	end 
	if (rst) 
	begin 
	  x2cpqe32wvnplo2imwg9q6gra4luvf_737 <= 1'b0 ;
	 end 
	else 
	begin 
			x2cpqe32wvnplo2imwg9q6gra4luvf_737 <= bgq1j1gs4p5jk8vl2_250 ;
	end 
	if (rst) 
	begin 
	  k9aw69zssie0qny15x8jk8k0u_262 <= 1'b1 ;
	 end 
	else 
	begin 
			k9aw69zssie0qny15x8jk8k0u_262 <= a4a0ppizve51bjiv6_485 ;
	end 
	if (rst) 
	begin 
	  xrhyt7xrv6r7vebcieq0ecp_689 <= 1'b0 ;
	 end 
	else 
	begin 
			xrhyt7xrv6r7vebcieq0ecp_689 <= x2cpqe32wvnplo2imwg9q6gra4luvf_737 ;
	end 
		init_done <= goqopzh6q6vdmmdd_663 ;
end

endmodule 
