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
// File name: S_SYNCER_for__OUT_.v
// File created: 2018/06/25 10:09:55
// Created by: Xilinx SDNet Compiler version 2017.4, build 2093981

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_SYNCER_for__OUT_ (
     packet_in_PACKET0_TVALID, 
     packet_in_PACKET0_TDATA, 
     packet_in_PACKET0_TKEEP, 
     packet_in_PACKET0_TLAST, 
     packet_out_PACKET0_TREADY, 
     tuple_in_TUPLE1_VALID, 
     tuple_in_TUPLE1_DATA, 
     backpressure_in, 


     packet_out_PACKET0_TVALID, 
     packet_out_PACKET0_TDATA, 
     packet_out_PACKET0_TKEEP, 
     packet_out_PACKET0_TLAST, 
     packet_in_PACKET0_TREADY, 
     tuple_out_TUPLE1_VALID, 
     tuple_out_TUPLE1_DATA, 
     backpressure_out, 

     clk_in_0, 
     clk_out_0, 
     clk_in_1, 
     clk_out_1, 
     rst_in_0, 
     rst_out_0, 
     rst_in_1, 
     rst_out_1 

);

//-------------------------------------------------------------
// I/O
//-------------------------------------------------------------
 input		packet_in_PACKET0_TVALID ;
 input	 [255:0] packet_in_PACKET0_TDATA ;
 input	 [31:0] packet_in_PACKET0_TKEEP ;
 input		packet_in_PACKET0_TLAST ;
 input		packet_out_PACKET0_TREADY ;
 input		tuple_in_TUPLE1_VALID ;
 input	 [127:0] tuple_in_TUPLE1_DATA ;
 input		backpressure_in ;
 output		packet_out_PACKET0_TVALID ;
 output	 [255:0] packet_out_PACKET0_TDATA ;
 output	 [31:0] packet_out_PACKET0_TKEEP ;
 output		packet_out_PACKET0_TLAST ;
 output		packet_in_PACKET0_TREADY ;
 output		tuple_out_TUPLE1_VALID ;
 output	 [127:0] tuple_out_TUPLE1_DATA ;
 output	reg	backpressure_out ;
 input		clk_in_0 ;
 input		clk_out_0 ;
 input		clk_in_1 ;
 input		clk_out_1 ;
 input		rst_in_0 ;
 input		rst_out_0 ;
 input		rst_in_1 ;
 input		rst_out_1 ;






 reg	x836hlj6w88o6kp25ttse85939qh6kv_757;	 initial x836hlj6w88o6kp25ttse85939qh6kv_757 = 1'b0 ;
 wire	b24sme342sysqf17_405 ;
 wire [289:0] q9b4u13hsdko29oh0j3qpvubb07_859 ;
 wire	n089pgvlyng33iync764kte4x_674 ;
 wire	uizugz8913n3ac5licd1s_538 ;
 wire	cxn7v9044j07a3b5126muhj7jp_838 ;
 wire [8:0] t028h20ppy899k3y4uuu4dzu3v8c4_621 ;
 wire [8:0] n99qvapwz2vay208ym82ptyl_721 ;
 wire	nwdgkzmttiiksdiz031l3lf0wqvp1ths_323 ;
 wire	p352k4hnjzn1azyokh_181 ;
 wire	ojafnr5vc0sqybm678ict9tk_551 ;
 wire	hxwnhywpombb42c2_828 ;
 wire	p140v1ifg2q47nwpnu6c37s1j6a_837 ;
 wire	x12e5bn5lzdbgjcyn3s941_633 ;
 wire	hfi1kl8cjx67rdz39axmhspgpu_688 ;
 reg	qk1rff43d82lx2qwxhf88hg2n9c1_120;	 initial qk1rff43d82lx2qwxhf88hg2n9c1_120 = 1'b0 ;
 wire	a86tzocqsgbm7obvltvdpaiz_687 ;
 reg	p3dqk6dle3xpajx6oyepa4dpm454nvu_796;	 initial p3dqk6dle3xpajx6oyepa4dpm454nvu_796 = 1'b0 ;
 reg	n12d6djuyi2smsxpmk0ezuxtxgqmdv_591;	 initial n12d6djuyi2smsxpmk0ezuxtxgqmdv_591 = 1'b0 ;
 wire	u581lg8gmcj5xxg8lg4c_552 ;
 wire [0:0] xxgwqtfafdno285w3e1zheg2wgf2k_331 ;
 wire	cc0drlajvzrl7faw2otky1ahbkbk_596 ;
 wire	e4eh3opgiwn9dttevcwe6_883 ;
 wire	omn264o9vnag5h157rmukbbwcz_851 ;
 wire [8:0] dw0kjqqicc1zslu44199gn2ksnrz8lc_219 ;
 wire [8:0] qt5tm1n2ukycesum022x0w0m1bd6_168 ;
 wire	szuzo8dpkmjcv02x801k_651 ;
 wire	rkszw345sqafnlspel1_132 ;
 wire	oyuub4k5wk0yfovqy_478 ;
 wire	ozal7rk4ubc1x766addmynawdwru_761 ;
 wire	uis59ogpbmjg946t14koay1thtir_8 ;
 wire	i2prp8sos0dz3g94yoww1p3w6c3_382 ;
 reg	m7keec1vttvndidez49cxj8u8mjv8myb_409;	 initial m7keec1vttvndidez49cxj8u8mjv8myb_409 = 1'b0 ;
 reg	nr85vlnrn4bqfbmv46deaahr1udha_607;	 initial nr85vlnrn4bqfbmv46deaahr1udha_607 = 1'b1 ;
 reg [8:0] cl7pf0126bd3jqooc1on8w68_449;	 initial cl7pf0126bd3jqooc1on8w68_449 = 9'b000000000 ;
 reg	afekwnbxru2o00gpbrxjioa2zgt_229;	 initial afekwnbxru2o00gpbrxjioa2zgt_229 = 1'b0 ;
 wire	lho9keu2ehoig8pul_619 ;
 wire [127:0] lc1g09lsx08dolb1a_796 ;
 wire	n0qzv5vm2vk9vm2s26ymrfr2r_166 ;
 wire	sxqr47nlwykfqh9mhnw_221 ;
 wire	jmo8zfsb3hi7vfprd_297 ;
 wire [7:0] xvhwhs5q2ibb3wy26ebginzqhrp_614 ;
 wire [7:0] oq3az1og8cpaatd9rb_159 ;
 wire	zbc27pwyd449nmcp76ectdchmngqlu_589 ;
 wire	gnwxvojqoc86xhi1hiwfk_813 ;
 wire	z0vv9z6hf0vs1qt8bd3ugge_880 ;
 wire	kscpn1g516pgl9426dvl3bwi40cst9_231 ;
 wire	g5r59orgjepotm9nx8p72hliv5zli9_838 ;
 wire	gojxmcbe9f8frq61jyde3f25_94 ;
 reg	vaw2880xx8aazbm7_239;	 initial vaw2880xx8aazbm7_239 = 1'b0 ;
 reg	lvrdh3wosdktckacowyiscx9wfd6z1_146;	 initial lvrdh3wosdktckacowyiscx9wfd6z1_146 = 1'b0 ;
 wire	iwv7bg6b5ysa9cnn6oye8lezx_39 ;
 wire [289:0] fpv1wo7l9w1hzffzw4a_182 ;
 wire	bcmpmkf019z6ayzqya_459 ;
 wire [289:0] smkwih51djtf66cob6mbp7yb1liy_715 ;
 wire	ap8lrbs6po99zsxs_789 ;
 wire	ltrmxqv3ffv0y03v26_410 ;
 wire	hc73oyw7fr6nusl4uh14u5twz1hzwc_581 ;
 wire	hwbzybca5j5tbdbfz_861 ;
 wire	ip2r2rz2ze6h0wv898a345_318 ;
 wire	f04wn5asu77tahenpujd8zs0_229 ;
 wire	r1ig2howkxgskfbz8gpynhfa_312 ;
 wire	cyn7h3o9g2uf9gu3od5jtslfb24grm_669 ;
 wire	a3j7rakho4rwdcyld9o2zzk335k_632 ;
 wire	oqmug7hrg3nv4qkp_496 ;
 wire	rkflo646i5cbjv2zkadbto2fg6ea7_275 ;
 wire	p14ze3zdvlr9j8pdxrjs0r26m7ux3q_137 ;
 wire	c9t8gtflv84ck5ofl5mu6cv8_895 ;
 wire	rs612z80ocufb2qu8rw04irgnyuvk03_906 ;
 wire [31:0] bq3nlel11h73t5c3_190 ;
 wire [255:0] vyq3zvasgeyik5owcyb_375 ;
 wire	hk9kublfdvkc1p33t2jq_310 ;
 wire	xi82lphrwa62zjs6larqb9v_114 ;
 wire	l479d12phhj7luyi4g4d68gptygqv_430 ;
 wire	twt2rfgzr0qyp2iqkrz6v_891 ;
 wire	g7wzxewmeyjtq5cg5u_781 ;
 wire	xslxjbdqvhjydtsjuj_543 ;
 wire	uj8405u86ldjcmh37ihwzwdt88d28o9_180 ;
 wire	hpqcjmkk5kwnowiu29h1_117 ;
 wire	lb8h3l09qwbt9fcikrjyy1_380 ;
 wire	o6pd8h9173hwl6vkuz3uua0fh_302 ;
 wire	ukmkup4traj06ik6q0kh4jx_19 ;
 wire	uuyk584qapfwr884ddyg361k_392 ;
 wire	jpd2i9tiklghg5f65d19gwvao74b_500 ;
 wire	b9mvwct2s31lgh79wcy_353 ;
 wire	unwq7v9p9p05xa8f1i_72 ;
 wire	n4eqnplrhusfmr02wyr68pc281w_289 ;
 wire [0:0] bjhlhaopdtgxgtpxeha6belbziw5rbg_236 ;
 wire	f9sem2p8t26dbefcnztm7wt2cxg0rd_248 ;
 wire	n5mqg1yro51w58z2f53nx_855 ;
 wire [8:0] gqb4co53fgyin0r7q0lpjjl1trumsjv_745 ;
 wire	v1wlr6nzbk0roiqaef1frbx_615 ;
 wire	ggw1xy9tu0bk8yv0ja3jvk_780 ;
 wire	ez8dr3blcm53c8hu1k40sea7npr_798 ;
 wire	h35171w4do20wn1f23895e2_838 ;
 wire	uqqt4h8mjz4lm6nqqn6njk7t9647l_123 ;
 wire	h35ah5wihg9m5xr165y5_552 ;
 wire	s5xhv1chb0m9m03vcsc4r30ya0v2_407 ;
 wire [127:0] gx7f7bfadjcuwbd0oe05ntudnfg_415 ;
 wire	k3l2p73bvco18fg81e5ld_97 ;
 wire [127:0] udix30vzl5m19xilavh9zlj_55 ;
 wire	ult8p8rmj7w5cxjb3ghoj_151 ;
 wire	sdxaczrcv66hipkej2p5nlpvf8_411 ;
 wire	mjwwpwccegr9h9rhr06tb2pzlz632e_574 ;
 wire	i2itrweti7kcap3bsnz4fgz0b2tp6jjt_355 ;
 wire	hho2q5xgpjo5tzfwt_460 ;


 assign iwv7bg6b5ysa9cnn6oye8lezx_39 = 
	 ~(backpressure_in) ;
 assign fpv1wo7l9w1hzffzw4a_182 = 
	{packet_in_PACKET0_TVALID, packet_in_PACKET0_TDATA, packet_in_PACKET0_TKEEP, packet_in_PACKET0_TLAST} ;
 assign bcmpmkf019z6ayzqya_459 	= packet_in_PACKET0_TVALID ;
 assign smkwih51djtf66cob6mbp7yb1liy_715 	= fpv1wo7l9w1hzffzw4a_182[289:0] ;
 assign ap8lrbs6po99zsxs_789 = 
	h35171w4do20wn1f23895e2_838 | i2itrweti7kcap3bsnz4fgz0b2tp6jjt_355 ;
 assign ltrmxqv3ffv0y03v26_410 = 
	1'b0 ;
 assign hc73oyw7fr6nusl4uh14u5twz1hzwc_581 = 
	1'b1 ;
 assign hwbzybca5j5tbdbfz_861 = 
	 ~(a86tzocqsgbm7obvltvdpaiz_687) ;
 assign ip2r2rz2ze6h0wv898a345_318 = 
	h35ah5wihg9m5xr165y5_552 & ap8lrbs6po99zsxs_789 & c9t8gtflv84ck5ofl5mu6cv8_895 ;
 assign f04wn5asu77tahenpujd8zs0_229 = 
	hwbzybca5j5tbdbfz_861 & qk1rff43d82lx2qwxhf88hg2n9c1_120 & c9t8gtflv84ck5ofl5mu6cv8_895 & h35171w4do20wn1f23895e2_838 & h35ah5wihg9m5xr165y5_552 ;
 assign r1ig2howkxgskfbz8gpynhfa_312 = 
	ip2r2rz2ze6h0wv898a345_318 | f04wn5asu77tahenpujd8zs0_229 ;
 assign cyn7h3o9g2uf9gu3od5jtslfb24grm_669 = 
	iwv7bg6b5ysa9cnn6oye8lezx_39 & r1ig2howkxgskfbz8gpynhfa_312 ;
 assign a3j7rakho4rwdcyld9o2zzk335k_632 = 
	backpressure_in & x836hlj6w88o6kp25ttse85939qh6kv_757 & h35ah5wihg9m5xr165y5_552 & ez8dr3blcm53c8hu1k40sea7npr_798 & i2itrweti7kcap3bsnz4fgz0b2tp6jjt_355 & hwbzybca5j5tbdbfz_861 ;
 assign oqmug7hrg3nv4qkp_496 = 
	cyn7h3o9g2uf9gu3od5jtslfb24grm_669 | a3j7rakho4rwdcyld9o2zzk335k_632 ;
 assign rkflo646i5cbjv2zkadbto2fg6ea7_275 	= oqmug7hrg3nv4qkp_496 ;
 assign p14ze3zdvlr9j8pdxrjs0r26m7ux3q_137 = 
	1'b0 ;
 assign c9t8gtflv84ck5ofl5mu6cv8_895 = 
	 ~(n089pgvlyng33iync764kte4x_674) ;
 assign rs612z80ocufb2qu8rw04irgnyuvk03_906 	= q9b4u13hsdko29oh0j3qpvubb07_859[0] ;
 assign bq3nlel11h73t5c3_190 	= q9b4u13hsdko29oh0j3qpvubb07_859[32:1] ;
 assign vyq3zvasgeyik5owcyb_375 	= q9b4u13hsdko29oh0j3qpvubb07_859[288:33] ;
 assign hk9kublfdvkc1p33t2jq_310 	= q9b4u13hsdko29oh0j3qpvubb07_859[289] ;
 assign xi82lphrwa62zjs6larqb9v_114 = 
	x836hlj6w88o6kp25ttse85939qh6kv_757 | n12d6djuyi2smsxpmk0ezuxtxgqmdv_591 ;
 assign l479d12phhj7luyi4g4d68gptygqv_430 = 
	p3dqk6dle3xpajx6oyepa4dpm454nvu_796 | c9t8gtflv84ck5ofl5mu6cv8_895 ;
 assign twt2rfgzr0qyp2iqkrz6v_891 = 
	l479d12phhj7luyi4g4d68gptygqv_430 & h35ah5wihg9m5xr165y5_552 & ap8lrbs6po99zsxs_789 ;
 assign g7wzxewmeyjtq5cg5u_781 = 
	twt2rfgzr0qyp2iqkrz6v_891 | qk1rff43d82lx2qwxhf88hg2n9c1_120 ;
 assign xslxjbdqvhjydtsjuj_543 = 
	backpressure_in & hk9kublfdvkc1p33t2jq_310 & g7wzxewmeyjtq5cg5u_781 ;
 assign uj8405u86ldjcmh37ihwzwdt88d28o9_180 = 
	ez8dr3blcm53c8hu1k40sea7npr_798 & afekwnbxru2o00gpbrxjioa2zgt_229 ;
 assign hpqcjmkk5kwnowiu29h1_117 = 
	uj8405u86ldjcmh37ihwzwdt88d28o9_180 | h35171w4do20wn1f23895e2_838 | rs612z80ocufb2qu8rw04irgnyuvk03_906 ;
 assign lb8h3l09qwbt9fcikrjyy1_380 = 
	iwv7bg6b5ysa9cnn6oye8lezx_39 & qk1rff43d82lx2qwxhf88hg2n9c1_120 & hk9kublfdvkc1p33t2jq_310 & hpqcjmkk5kwnowiu29h1_117 ;
 assign o6pd8h9173hwl6vkuz3uua0fh_302 	= qk1rff43d82lx2qwxhf88hg2n9c1_120 ;
 assign ukmkup4traj06ik6q0kh4jx_19 	= packet_in_PACKET0_TVALID ;
 assign uuyk584qapfwr884ddyg361k_392 = 
	1'b0 ;
 assign jpd2i9tiklghg5f65d19gwvao74b_500 = 
	1'b1 ;
 assign b9mvwct2s31lgh79wcy_353 = (
	((m7keec1vttvndidez49cxj8u8mjv8myb_409 == 1'b1) && (packet_in_PACKET0_TVALID == 1'b1))?1'b1:
	((nr85vlnrn4bqfbmv46deaahr1udha_607 == 1'b1) && (packet_in_PACKET0_TVALID == 1'b1))?1'b1:
	0)  ;
 assign unwq7v9p9p05xa8f1i_72 = (
	((packet_in_PACKET0_TVALID == 1'b1) && (packet_in_PACKET0_TLAST == 1'b1))?1'b1:
	0)  ;
 assign n4eqnplrhusfmr02wyr68pc281w_289 = (
	((packet_in_PACKET0_TVALID == 1'b1) && (packet_in_PACKET0_TLAST == 1'b0))?1'b1:
	0)  ;
 assign bjhlhaopdtgxgtpxeha6belbziw5rbg_236 = b9mvwct2s31lgh79wcy_353 ;
 assign f9sem2p8t26dbefcnztm7wt2cxg0rd_248 	= oqmug7hrg3nv4qkp_496 ;
 assign n5mqg1yro51w58z2f53nx_855 = 
	1'b0 ;
 assign gqb4co53fgyin0r7q0lpjjl1trumsjv_745 	= dw0kjqqicc1zslu44199gn2ksnrz8lc_219[8:0] ;
 assign v1wlr6nzbk0roiqaef1frbx_615 = (
	((gqb4co53fgyin0r7q0lpjjl1trumsjv_745 != cl7pf0126bd3jqooc1on8w68_449))?1'b1:
	0)  ;
 assign ggw1xy9tu0bk8yv0ja3jvk_780 = xxgwqtfafdno285w3e1zheg2wgf2k_331 ;
 assign ez8dr3blcm53c8hu1k40sea7npr_798 = xxgwqtfafdno285w3e1zheg2wgf2k_331 ;
 assign h35171w4do20wn1f23895e2_838 = 
	 ~(ez8dr3blcm53c8hu1k40sea7npr_798) ;
 assign uqqt4h8mjz4lm6nqqn6njk7t9647l_123 	= cc0drlajvzrl7faw2otky1ahbkbk_596 ;
 assign h35ah5wihg9m5xr165y5_552 = 
	 ~(cc0drlajvzrl7faw2otky1ahbkbk_596) ;
 assign s5xhv1chb0m9m03vcsc4r30ya0v2_407 = 
	i2itrweti7kcap3bsnz4fgz0b2tp6jjt_355 & h35ah5wihg9m5xr165y5_552 & ggw1xy9tu0bk8yv0ja3jvk_780 & oqmug7hrg3nv4qkp_496 ;
 assign gx7f7bfadjcuwbd0oe05ntudnfg_415 = 
	tuple_in_TUPLE1_DATA ;
 assign k3l2p73bvco18fg81e5ld_97 	= tuple_in_TUPLE1_VALID ;
 assign udix30vzl5m19xilavh9zlj_55 	= gx7f7bfadjcuwbd0oe05ntudnfg_415[127:0] ;
 assign ult8p8rmj7w5cxjb3ghoj_151 = 
	 ~(n0qzv5vm2vk9vm2s26ymrfr2r_166) ;
 assign sdxaczrcv66hipkej2p5nlpvf8_411 	= s5xhv1chb0m9m03vcsc4r30ya0v2_407 ;
 assign mjwwpwccegr9h9rhr06tb2pzlz632e_574 = 
	1'b0 ;
 assign i2itrweti7kcap3bsnz4fgz0b2tp6jjt_355 = 
	c9t8gtflv84ck5ofl5mu6cv8_895 & ult8p8rmj7w5cxjb3ghoj_151 ;
 assign hho2q5xgpjo5tzfwt_460 = 
	vaw2880xx8aazbm7_239 | lvrdh3wosdktckacowyiscx9wfd6z1_146 ;
 assign packet_out_PACKET0_TVALID 	= o6pd8h9173hwl6vkuz3uua0fh_302 ;
 assign packet_out_PACKET0_TDATA 	= vyq3zvasgeyik5owcyb_375[255:0] ;
 assign packet_out_PACKET0_TKEEP 	= bq3nlel11h73t5c3_190[31:0] ;
 assign packet_out_PACKET0_TLAST 	= rs612z80ocufb2qu8rw04irgnyuvk03_906 ;
 assign packet_in_PACKET0_TREADY 	= packet_out_PACKET0_TREADY ;
 assign tuple_out_TUPLE1_VALID 	= afekwnbxru2o00gpbrxjioa2zgt_229 ;
 assign tuple_out_TUPLE1_DATA 	= lc1g09lsx08dolb1a_796[127:0] ;


assign hfi1kl8cjx67rdz39axmhspgpu_688 = (
	((oqmug7hrg3nv4qkp_496 == 1'b1))?hc73oyw7fr6nusl4uh14u5twz1hzwc_581 :
	((iwv7bg6b5ysa9cnn6oye8lezx_39 == 1'b1))?ltrmxqv3ffv0y03v26_410 :
	qk1rff43d82lx2qwxhf88hg2n9c1_120 ) ;

assign a86tzocqsgbm7obvltvdpaiz_687 = (
	((qk1rff43d82lx2qwxhf88hg2n9c1_120 == 1'b1) && (iwv7bg6b5ysa9cnn6oye8lezx_39 == 1'b1))?ltrmxqv3ffv0y03v26_410 :
	qk1rff43d82lx2qwxhf88hg2n9c1_120 ) ;



always @(posedge clk_out_0)
begin
  if (rst_in_0) 
  begin
	x836hlj6w88o6kp25ttse85939qh6kv_757 <= 1'b0 ;
	qk1rff43d82lx2qwxhf88hg2n9c1_120 <= 1'b0 ;
	p3dqk6dle3xpajx6oyepa4dpm454nvu_796 <= 1'b0 ;
	n12d6djuyi2smsxpmk0ezuxtxgqmdv_591 <= 1'b0 ;
	cl7pf0126bd3jqooc1on8w68_449 <= 9'b000000000 ;
	vaw2880xx8aazbm7_239 <= 1'b0 ;
	backpressure_out <= 1'b0 ;
   end
  else
  begin
		x836hlj6w88o6kp25ttse85939qh6kv_757 <= backpressure_in ;
		qk1rff43d82lx2qwxhf88hg2n9c1_120 <= hfi1kl8cjx67rdz39axmhspgpu_688 ;
		p3dqk6dle3xpajx6oyepa4dpm454nvu_796 <= c9t8gtflv84ck5ofl5mu6cv8_895 ;
		n12d6djuyi2smsxpmk0ezuxtxgqmdv_591 <= oqmug7hrg3nv4qkp_496 ;
		cl7pf0126bd3jqooc1on8w68_449 <= gqb4co53fgyin0r7q0lpjjl1trumsjv_745 ;
		vaw2880xx8aazbm7_239 <= uizugz8913n3ac5licd1s_538 ;
		backpressure_out <= hho2q5xgpjo5tzfwt_460 ;
  end
end

always @(posedge clk_in_0)
begin
  if (rst_in_0) 
  begin
	m7keec1vttvndidez49cxj8u8mjv8myb_409 <= 1'b0 ;
	nr85vlnrn4bqfbmv46deaahr1udha_607 <= 1'b1 ;
   end
  else
  begin
	if (n4eqnplrhusfmr02wyr68pc281w_289) 
	begin 
	  m7keec1vttvndidez49cxj8u8mjv8myb_409 <= 1'b0 ;
	 end 
	else 
	begin 
		if (unwq7v9p9p05xa8f1i_72) 
		begin 
			m7keec1vttvndidez49cxj8u8mjv8myb_409 <= jpd2i9tiklghg5f65d19gwvao74b_500 ;
		end 
	end 
	if (b9mvwct2s31lgh79wcy_353) 
	begin 
		nr85vlnrn4bqfbmv46deaahr1udha_607 <= uuyk584qapfwr884ddyg361k_392 ;
	end 
  end
end

always @(posedge clk_out_1)
begin
  if (rst_in_0) 
  begin
	afekwnbxru2o00gpbrxjioa2zgt_229 <= 1'b0 ;
	lvrdh3wosdktckacowyiscx9wfd6z1_146 <= 1'b0 ;
   end
  else
  begin
		afekwnbxru2o00gpbrxjioa2zgt_229 <= s5xhv1chb0m9m03vcsc4r30ya0v2_407 ;
		lvrdh3wosdktckacowyiscx9wfd6z1_146 <= sxqr47nlwykfqh9mhnw_221 ;
  end
end

defparam nvne5rwcb9ndlbuy_2683.WRITE_DATA_WIDTH = 290; 
defparam nvne5rwcb9ndlbuy_2683.FIFO_WRITE_DEPTH = 512; 
defparam nvne5rwcb9ndlbuy_2683.PROG_FULL_THRESH = 143; 
defparam nvne5rwcb9ndlbuy_2683.PROG_EMPTY_THRESH = 143; 
defparam nvne5rwcb9ndlbuy_2683.READ_MODE = "STD"; 
defparam nvne5rwcb9ndlbuy_2683.WR_DATA_COUNT_WIDTH = 9; 
defparam nvne5rwcb9ndlbuy_2683.RD_DATA_COUNT_WIDTH = 9; 
defparam nvne5rwcb9ndlbuy_2683.DOUT_RESET_VALUE = "0"; 
defparam nvne5rwcb9ndlbuy_2683.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_sync nvne5rwcb9ndlbuy_2683 (
	.wr_en(bcmpmkf019z6ayzqya_459),
	.din(smkwih51djtf66cob6mbp7yb1liy_715),
	.rd_en(rkflo646i5cbjv2zkadbto2fg6ea7_275),
	.sleep(p14ze3zdvlr9j8pdxrjs0r26m7ux3q_137),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(b24sme342sysqf17_405), 
	.dout(q9b4u13hsdko29oh0j3qpvubb07_859), 
	.empty(n089pgvlyng33iync764kte4x_674), 
	.prog_full(uizugz8913n3ac5licd1s_538), 
	.full(cxn7v9044j07a3b5126muhj7jp_838), 
	.rd_data_count(t028h20ppy899k3y4uuu4dzu3v8c4_621), 
	.wr_data_count(n99qvapwz2vay208ym82ptyl_721), 
	.wr_rst_busy(nwdgkzmttiiksdiz031l3lf0wqvp1ths_323), 
	.rd_rst_busy(p352k4hnjzn1azyokh_181), 
	.overflow(ojafnr5vc0sqybm678ict9tk_551), 
	.underflow(hxwnhywpombb42c2_828), 
	.sbiterr(p140v1ifg2q47nwpnu6c37s1j6a_837), 
	.dbiterr(x12e5bn5lzdbgjcyn3s941_633), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam lmkbzebszbnvawtc94ii3p2y2_2579.WRITE_DATA_WIDTH = 1; 
defparam lmkbzebszbnvawtc94ii3p2y2_2579.FIFO_WRITE_DEPTH = 512; 
defparam lmkbzebszbnvawtc94ii3p2y2_2579.PROG_FULL_THRESH = 143; 
defparam lmkbzebszbnvawtc94ii3p2y2_2579.PROG_EMPTY_THRESH = 143; 
defparam lmkbzebszbnvawtc94ii3p2y2_2579.READ_MODE = "FWFT"; 
defparam lmkbzebszbnvawtc94ii3p2y2_2579.WR_DATA_COUNT_WIDTH = 9; 
defparam lmkbzebszbnvawtc94ii3p2y2_2579.RD_DATA_COUNT_WIDTH = 9; 
defparam lmkbzebszbnvawtc94ii3p2y2_2579.DOUT_RESET_VALUE = "0"; 
defparam lmkbzebszbnvawtc94ii3p2y2_2579.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_sync lmkbzebszbnvawtc94ii3p2y2_2579 (
	.wr_en(ukmkup4traj06ik6q0kh4jx_19),
	.din(bjhlhaopdtgxgtpxeha6belbziw5rbg_236),
	.rd_en(f9sem2p8t26dbefcnztm7wt2cxg0rd_248),
	.sleep(n5mqg1yro51w58z2f53nx_855),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(u581lg8gmcj5xxg8lg4c_552), 
	.dout(xxgwqtfafdno285w3e1zheg2wgf2k_331), 
	.empty(cc0drlajvzrl7faw2otky1ahbkbk_596), 
	.prog_full(e4eh3opgiwn9dttevcwe6_883), 
	.full(omn264o9vnag5h157rmukbbwcz_851), 
	.rd_data_count(dw0kjqqicc1zslu44199gn2ksnrz8lc_219), 
	.wr_data_count(qt5tm1n2ukycesum022x0w0m1bd6_168), 
	.wr_rst_busy(szuzo8dpkmjcv02x801k_651), 
	.rd_rst_busy(rkszw345sqafnlspel1_132), 
	.overflow(oyuub4k5wk0yfovqy_478), 
	.underflow(ozal7rk4ubc1x766addmynawdwru_761), 
	.sbiterr(uis59ogpbmjg946t14koay1thtir_8), 
	.dbiterr(i2prp8sos0dz3g94yoww1p3w6c3_382), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam bqfqg6owqajc23w8a_2549.WRITE_DATA_WIDTH = 128; 
defparam bqfqg6owqajc23w8a_2549.FIFO_WRITE_DEPTH = 256; 
defparam bqfqg6owqajc23w8a_2549.PROG_FULL_THRESH = 79; 
defparam bqfqg6owqajc23w8a_2549.PROG_EMPTY_THRESH = 79; 
defparam bqfqg6owqajc23w8a_2549.READ_MODE = "STD"; 
defparam bqfqg6owqajc23w8a_2549.WR_DATA_COUNT_WIDTH = 8; 
defparam bqfqg6owqajc23w8a_2549.RD_DATA_COUNT_WIDTH = 8; 
defparam bqfqg6owqajc23w8a_2549.DOUT_RESET_VALUE = "0"; 
defparam bqfqg6owqajc23w8a_2549.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async bqfqg6owqajc23w8a_2549 (
	.wr_en(k3l2p73bvco18fg81e5ld_97),
	.din(udix30vzl5m19xilavh9zlj_55),
	.rd_en(sdxaczrcv66hipkej2p5nlpvf8_411),
	.sleep(mjwwpwccegr9h9rhr06tb2pzlz632e_574),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(lho9keu2ehoig8pul_619), 
	.dout(lc1g09lsx08dolb1a_796), 
	.empty(n0qzv5vm2vk9vm2s26ymrfr2r_166), 
	.prog_full(sxqr47nlwykfqh9mhnw_221), 
	.full(jmo8zfsb3hi7vfprd_297), 
	.rd_data_count(xvhwhs5q2ibb3wy26ebginzqhrp_614), 
	.wr_data_count(oq3az1og8cpaatd9rb_159), 
	.wr_rst_busy(zbc27pwyd449nmcp76ectdchmngqlu_589), 
	.rd_rst_busy(gnwxvojqoc86xhi1hiwfk_813), 
	.overflow(z0vv9z6hf0vs1qt8bd3ugge_880), 
	.underflow(kscpn1g516pgl9426dvl3bwi40cst9_231), 
	.sbiterr(g5r59orgjepotm9nx8p72hliv5zli9_838), 
	.dbiterr(gojxmcbe9f8frq61jyde3f25_94), 

	.wr_clk(clk_in_1), 

	.rd_clk(clk_out_1), 
	.rst(rst_in_1) 
); 

endmodule 
