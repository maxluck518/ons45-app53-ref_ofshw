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
// File name: S_RESETTER_control.v
// File created: 2018/06/25 10:09:55
// Created by: Xilinx SDNet Compiler version 2017.4, build 2093981

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_RESETTER_control (


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






 reg	kg0tvhkeb3cyny9hss7csth7iz8_343;	 initial kg0tvhkeb3cyny9hss7csth7iz8_343 = 1'b0 ;
 reg	o551ym02iatpqhhw6izcnq33_452;	 initial o551ym02iatpqhhw6izcnq33_452 = 1'b0 ;
 reg [4:0] bvmdwg4o6wl5qpd83fedscd71gr_793;	 initial bvmdwg4o6wl5qpd83fedscd71gr_793 = 5'b00000 ;
 reg [4:0] yfuhwe5kyuo9gecv6spgrftg33jnk_359;	 initial yfuhwe5kyuo9gecv6spgrftg33jnk_359 = 5'b00000 ;
 wire	n92qknvuejpg60ut_262 ;
 reg	ardojzgrjkt252r3r_13;	 initial ardojzgrjkt252r3r_13 = 1'b1 ;
 reg	qqmrpatunbtlht4o0kdcg2p3933r_519;	 initial qqmrpatunbtlht4o0kdcg2p3933r_519 = 1'b0 ;
 reg	webj5dpi016y65mxkxnqz2eppnwio_362;	 initial webj5dpi016y65mxkxnqz2eppnwio_362 = 1'b1 ;
 reg	secdmet728azww9y5p6hz4_282;	 initial secdmet728azww9y5p6hz4_282 = 1'b0 ;
 wire [4:0] eesejsy5s5jnyx8o2b2_593 ;
 wire [4:0] hadw5nab1qugjqjj3mk5n448lr_110 ;
 wire	uoitlu3yzhryltpa_421 ;
 wire	z1av67mbspeysnioqi7o9l_678 ;
 wire	ybemiasxec8jsi1hh9x_584 ;
 wire	cnvo9m1qgbffmbzfzi32h8xfl6v_539 ;
 wire	cm483fasdn57cxn79g39on0u_599 ;
 wire	d1igzqy2p832b8zt_711 ;
 wire	corh2zkvhbxti4ospf7dswpdjjypj_594 ;
 wire	a3wrqe1xzkhitv5qm6gsq9pnvjoq90_137 ;
 wire	b7ookkvjjfq1mj6h82y9aibold_81 ;
 wire	bbkxyvnjyfeshj4c2q0g24jrh_221 ;
 wire	aswtukh786msbi1nv9pqbhcm8jn9_317 ;
 wire	fgb7mrbttmm6zpogdj9xoqssh7y_643 ;


 assign eesejsy5s5jnyx8o2b2_593 = 
	bvmdwg4o6wl5qpd83fedscd71gr_793 + 1 ;
 assign hadw5nab1qugjqjj3mk5n448lr_110 = 
	yfuhwe5kyuo9gecv6spgrftg33jnk_359 + 1 ;
 assign uoitlu3yzhryltpa_421 = (
	((bvmdwg4o6wl5qpd83fedscd71gr_793 > 5'b00000))?1'b1:
	0)  ;
 assign z1av67mbspeysnioqi7o9l_678 = 
	rst | o551ym02iatpqhhw6izcnq33_452 ;
 assign ybemiasxec8jsi1hh9x_584 = 
	z1av67mbspeysnioqi7o9l_678 | uoitlu3yzhryltpa_421 ;
 assign cnvo9m1qgbffmbzfzi32h8xfl6v_539 = (
	((o551ym02iatpqhhw6izcnq33_452 == 1'b1) && (fgb7mrbttmm6zpogdj9xoqssh7y_643 == 1'b1) && (bvmdwg4o6wl5qpd83fedscd71gr_793 == 5'b00000))?1'b1:
	((bvmdwg4o6wl5qpd83fedscd71gr_793 != 5'b00000) && (o551ym02iatpqhhw6izcnq33_452 != 1'b1))?1'b1:
	0)  ;
 assign cm483fasdn57cxn79g39on0u_599 = (
	((kg0tvhkeb3cyny9hss7csth7iz8_343 == 1'b1))?1'b1:
	0)  ;
 assign d1igzqy2p832b8zt_711 = (
	((bvmdwg4o6wl5qpd83fedscd71gr_793 == 5'b01111) && (o551ym02iatpqhhw6izcnq33_452 != 1'b1) && (fgb7mrbttmm6zpogdj9xoqssh7y_643 == 1'b1))?1'b1:
	((yfuhwe5kyuo9gecv6spgrftg33jnk_359 != 5'b00000) && (yfuhwe5kyuo9gecv6spgrftg33jnk_359 != 5'b01111) && (o551ym02iatpqhhw6izcnq33_452 != 1'b1) && (fgb7mrbttmm6zpogdj9xoqssh7y_643 == 1'b1))?1'b1:
	0)  ;
 assign corh2zkvhbxti4ospf7dswpdjjypj_594 = (
	((yfuhwe5kyuo9gecv6spgrftg33jnk_359 == 5'b01111))?1'b1:
	0)  ;
 assign a3wrqe1xzkhitv5qm6gsq9pnvjoq90_137 = 
	1'b1 ;
 assign b7ookkvjjfq1mj6h82y9aibold_81 = 
	1'b0 ;
 assign bbkxyvnjyfeshj4c2q0g24jrh_221 = 
	 ~(n92qknvuejpg60ut_262) ;
 assign aswtukh786msbi1nv9pqbhcm8jn9_317 = (
	((yfuhwe5kyuo9gecv6spgrftg33jnk_359 == 5'b01111))?1'b1:
	0)  ;
 assign fgb7mrbttmm6zpogdj9xoqssh7y_643 = 
	1'b1 ;
 assign reset_out_active_high 	= webj5dpi016y65mxkxnqz2eppnwio_362 ;
 assign reset_out_active_low 	= secdmet728azww9y5p6hz4_282 ;


assign n92qknvuejpg60ut_262 = (
	((ybemiasxec8jsi1hh9x_584 == 1'b1) && (bvmdwg4o6wl5qpd83fedscd71gr_793 < 5'b10000))?a3wrqe1xzkhitv5qm6gsq9pnvjoq90_137 :
1'b0) ;



always @(posedge clk)
begin
		kg0tvhkeb3cyny9hss7csth7iz8_343 <= rst ;
		o551ym02iatpqhhw6izcnq33_452 <= kg0tvhkeb3cyny9hss7csth7iz8_343 ;
	if (cm483fasdn57cxn79g39on0u_599) 
	begin 
	  bvmdwg4o6wl5qpd83fedscd71gr_793 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (cnvo9m1qgbffmbzfzi32h8xfl6v_539) 
		begin 
			bvmdwg4o6wl5qpd83fedscd71gr_793 <= eesejsy5s5jnyx8o2b2_593 ;
		end 
	end 
	if (cm483fasdn57cxn79g39on0u_599) 
	begin 
	  yfuhwe5kyuo9gecv6spgrftg33jnk_359 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (d1igzqy2p832b8zt_711) 
		begin 
			yfuhwe5kyuo9gecv6spgrftg33jnk_359 <= hadw5nab1qugjqjj3mk5n448lr_110 ;
		end 
	end 
	if (rst) 
	begin 
	  ardojzgrjkt252r3r_13 <= 1'b1 ;
	 end 
	else 
	begin 
			ardojzgrjkt252r3r_13 <= n92qknvuejpg60ut_262 ;
	end 
	if (rst) 
	begin 
	  qqmrpatunbtlht4o0kdcg2p3933r_519 <= 1'b0 ;
	 end 
	else 
	begin 
			qqmrpatunbtlht4o0kdcg2p3933r_519 <= bbkxyvnjyfeshj4c2q0g24jrh_221 ;
	end 
	if (rst) 
	begin 
	  webj5dpi016y65mxkxnqz2eppnwio_362 <= 1'b1 ;
	 end 
	else 
	begin 
			webj5dpi016y65mxkxnqz2eppnwio_362 <= ardojzgrjkt252r3r_13 ;
	end 
	if (rst) 
	begin 
	  secdmet728azww9y5p6hz4_282 <= 1'b0 ;
	 end 
	else 
	begin 
			secdmet728azww9y5p6hz4_282 <= qqmrpatunbtlht4o0kdcg2p3933r_519 ;
	end 
		init_done <= aswtukh786msbi1nv9pqbhcm8jn9_317 ;
end

endmodule 
