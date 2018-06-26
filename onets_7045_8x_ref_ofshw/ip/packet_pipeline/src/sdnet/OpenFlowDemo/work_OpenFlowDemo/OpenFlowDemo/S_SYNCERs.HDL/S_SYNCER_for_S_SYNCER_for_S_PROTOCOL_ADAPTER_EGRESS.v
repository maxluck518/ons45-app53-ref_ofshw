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
// File name: S_SYNCER_for_S_SYNCER_for_S_PROTOCOL_ADAPTER_EGRESS.v
// File created: 2018/06/25 10:09:55
// Created by: Xilinx SDNet Compiler version 2017.4, build 2093981

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_SYNCER_for_S_SYNCER_for_S_PROTOCOL_ADAPTER_EGRESS (
     packet_in_PACKET4_SOF, 
     packet_in_PACKET4_EOF, 
     packet_in_PACKET4_VAL, 
     packet_in_PACKET4_DAT, 
     packet_in_PACKET4_CNT, 
     packet_in_PACKET4_ERR, 
     packet_out_PACKET4_RDY, 
     tuple_in_TUPLE0_VALID, 
     tuple_in_TUPLE0_DATA, 
     tuple_in_TUPLE1_VALID, 
     tuple_in_TUPLE1_DATA, 
     tuple_in_TUPLE3_VALID, 
     tuple_in_TUPLE3_DATA, 
     backpressure_in, 


     packet_out_PACKET4_SOF, 
     packet_out_PACKET4_EOF, 
     packet_out_PACKET4_VAL, 
     packet_out_PACKET4_DAT, 
     packet_out_PACKET4_CNT, 
     packet_out_PACKET4_ERR, 
     packet_in_PACKET4_RDY, 
     tuple_out_TUPLE0_VALID, 
     tuple_out_TUPLE0_DATA, 
     tuple_out_TUPLE1_VALID, 
     tuple_out_TUPLE1_DATA, 
     tuple_out_TUPLE3_VALID, 
     tuple_out_TUPLE3_DATA, 
     backpressure_out, 

     clk_in_0, 
     clk_out_0, 
     clk_in_1, 
     clk_out_1, 
     clk_in_2, 
     clk_out_2, 
     clk_in_3, 
     clk_out_3, 
     rst_in_0, 
     rst_out_0, 
     rst_in_1, 
     rst_out_1, 
     rst_in_2, 
     rst_out_2, 
     rst_in_3, 
     rst_out_3 

);

//-------------------------------------------------------------
// I/O
//-------------------------------------------------------------
 input		packet_in_PACKET4_SOF ;
 input		packet_in_PACKET4_EOF ;
 input		packet_in_PACKET4_VAL ;
 input	 [255:0] packet_in_PACKET4_DAT ;
 input	 [5:0] packet_in_PACKET4_CNT ;
 input		packet_in_PACKET4_ERR ;
 input		packet_out_PACKET4_RDY ;
 input		tuple_in_TUPLE0_VALID ;
 input	 [127:0] tuple_in_TUPLE0_DATA ;
 input		tuple_in_TUPLE1_VALID ;
 input	 [244:0] tuple_in_TUPLE1_DATA ;
 input		tuple_in_TUPLE3_VALID ;
 input	 [21:0] tuple_in_TUPLE3_DATA ;
 input		backpressure_in ;
 output		packet_out_PACKET4_SOF ;
 output		packet_out_PACKET4_EOF ;
 output		packet_out_PACKET4_VAL ;
 output	 [255:0] packet_out_PACKET4_DAT ;
 output	 [5:0] packet_out_PACKET4_CNT ;
 output		packet_out_PACKET4_ERR ;
 output		packet_in_PACKET4_RDY ;
 output		tuple_out_TUPLE0_VALID ;
 output	 [127:0] tuple_out_TUPLE0_DATA ;
 output		tuple_out_TUPLE1_VALID ;
 output	 [244:0] tuple_out_TUPLE1_DATA ;
 output		tuple_out_TUPLE3_VALID ;
 output	 [21:0] tuple_out_TUPLE3_DATA ;
 output	reg	backpressure_out ;
 input		clk_in_0 ;
 input		clk_out_0 ;
 input		clk_in_1 ;
 input		clk_out_1 ;
 input		clk_in_2 ;
 input		clk_out_2 ;
 input		clk_in_3 ;
 input		clk_out_3 ;
 input		rst_in_0 ;
 input		rst_out_0 ;
 input		rst_in_1 ;
 input		rst_out_1 ;
 input		rst_in_2 ;
 input		rst_out_2 ;
 input		rst_in_3 ;
 input		rst_out_3 ;






 reg	ckc9zbz41a1yct6zj2nna8kmwgd_703;	 initial ckc9zbz41a1yct6zj2nna8kmwgd_703 = 1'b0 ;
 wire	s1vfzlffts8y4a431a22zw8_320 ;
 wire [265:0] dkau4jihb5du2gaf_397 ;
 wire	cqssb3oords6dbrbd3jxwz4_782 ;
 wire	qpbhxabgy5nvpeifn_20 ;
 wire	i9d222ywa4lxxsxe0w_73 ;
 wire [8:0] mf8hzq28m7ybj1y15g0t56qe_157 ;
 wire [8:0] jl9x1b3wy7xrrm7k6_617 ;
 wire	qfv05fq6avmeg8xo0yl7ih72n_5 ;
 wire	oa0bx6sqnpz4ng9936htak_207 ;
 wire	wbx5r63nx0nhcefd_90 ;
 wire	wuctlv67pdk3s28bio_479 ;
 wire	pryhhpbnxom6fwft_307 ;
 wire	czccqk4b9nfjqwt2516u7s_906 ;
 wire	wd3fhy1bx5aat0p45d5hfaf5nvq1kon3_243 ;
 reg	h3gb5ve44rakbkovorigiysw5l5p2_378;	 initial h3gb5ve44rakbkovorigiysw5l5p2_378 = 1'b0 ;
 wire	tucodeeadmdi2ublo07oi2ss0_712 ;
 reg	o0tu76nz26vy1kg3v6c30syj42bf2xa_694;	 initial o0tu76nz26vy1kg3v6c30syj42bf2xa_694 = 1'b0 ;
 reg	inkcv9yuxezo5copz1rveyeil1zj3_377;	 initial inkcv9yuxezo5copz1rveyeil1zj3_377 = 1'b0 ;
 wire	bsh15cwc705nx98wmxpmzr3a53_890 ;
 wire [0:0] c9x7o4ib4xkw132nhltimtftie_722 ;
 wire	gix9gk18efp1wiajd_726 ;
 wire	a997150v9nrsg5i7_452 ;
 wire	yco1rsz6dzrn2ftmx2j35v2wjig_661 ;
 wire [8:0] qggbg7y0pots989d12n462_520 ;
 wire [8:0] y3qqg3fn0p3d49ahjp8s06qnzelbm9lf_783 ;
 wire	xbabwhjr61bzct88pr_753 ;
 wire	fqb5k035a8dcgkybn4ssta3qc_33 ;
 wire	wxj15hdin4wly0hqc_235 ;
 wire	gpwo6fumh8p64o0u8itg643n0qaq87h_725 ;
 wire	cnoq7qnfmt1d2nakl79c2u_56 ;
 wire	s692caqbhtkq0irwb5v_231 ;
 reg [8:0] ahlzsduyhxo0cq5pl273yjdvj9g9btz_58;	 initial ahlzsduyhxo0cq5pl273yjdvj9g9btz_58 = 9'b000000000 ;
 reg	y2fua2wrh7ugh255p220m_458;	 initial y2fua2wrh7ugh255p220m_458 = 1'b0 ;
 wire	pq2gdtjur094ap6cq3lb85jbu1152qt_767 ;
 wire [127:0] cg97qllkff9bzf9f4xnqt2wx6k_380 ;
 wire	k4e8j7blmf3gtlixviq728twzjy6ud_777 ;
 wire	dg3jw5kk0rjyafiwudu9odaxuj84te_581 ;
 wire	e0gzik2ofi7osa0qtmc1bz2lr_250 ;
 wire [7:0] c91wakktsnia8ridkv83vzk3vm93u_709 ;
 wire [7:0] ee5ua4mjmqbpap2z3ib1pmgxqfqgvo_839 ;
 wire	de93lnvffa7cbs5is2vesxag_675 ;
 wire	p0z5sbqz4tq5iffn0f3l2ez8ofnisr_213 ;
 wire	fxazznxr37kad3bbd2_761 ;
 wire	wr430orehvhtp9rif3l9x68v84dd_503 ;
 wire	x4y6cgltvkh003b6jzgeviwydpf_214 ;
 wire	lgijjcfjwmdbbofpalrpc_518 ;
 wire	em12eyg0eijwceqepjaazaz7cnwu4u_76 ;
 wire [244:0] yuxu0roem8xtvzh60yqi_261 ;
 wire	g65vcqw844wwrj9gbtua58d3huky_895 ;
 wire	e9dw8iowvk9jubodzdw5uqz67x0qqt_526 ;
 wire	f3008y5mk0spshkgg4g3umu5jvzp_336 ;
 wire [7:0] dawbr96s9cshaeqa8sb47osv2wal0o_377 ;
 wire [7:0] ul8nqo19h934elqd4m3f5q7_808 ;
 wire	zgc6d46fma1tk88toeb18_291 ;
 wire	a95ectt0lygfhrzuu8hax124w1n_338 ;
 wire	x4jiwysduq7bttfbjbmj5yvarw_774 ;
 wire	zqz8uyl3f9ml80pnuan1rjx_633 ;
 wire	s8ylkvej4mk8m10ner868x2dt_596 ;
 wire	impl81e7qoprlqt00gihfz_360 ;
 wire	xoyu8qq4lu63u7jz9xb8l3y7_46 ;
 wire [21:0] aqa44ne6xzzzopnj23d2696mc6za0f1_780 ;
 wire	guu50fgl9uhl1fjyjd1_793 ;
 wire	eeqpiz244fu05dmwndiyo_896 ;
 wire	s6z517ktwa9ojbocrsw8h48_783 ;
 wire [7:0] hw124z87n1zycmlo1m6xxwm5ct0_198 ;
 wire [7:0] q54t8362b5auax34bo09vd4zmbexv_736 ;
 wire	bowavl043fjp24fb8pw35weaw_147 ;
 wire	cchioqq8tms7l6nzc1fz8z5h_322 ;
 wire	wzlegxu907wb607dcqz95kej_363 ;
 wire	pkpu2yy312xoah7wmx26779za23e_185 ;
 wire	wko3coq4hcrcsgipcfl5hv6q_576 ;
 wire	pwrit1y1j74sdcbd_297 ;
 reg	sfv7nie5u0uv60papb1lsrlp3f2bbz7_888;	 initial sfv7nie5u0uv60papb1lsrlp3f2bbz7_888 = 1'b0 ;
 reg	ba864b5nh5y7m5ekkgn04p_779;	 initial ba864b5nh5y7m5ekkgn04p_779 = 1'b0 ;
 reg	fqpgf5h8dj7bi21hi7n5mhhkhrovbvpj_790;	 initial fqpgf5h8dj7bi21hi7n5mhhkhrovbvpj_790 = 1'b0 ;
 reg	ud6azb839symi7850q5ykh6v4_329;	 initial ud6azb839symi7850q5ykh6v4_329 = 1'b0 ;
 wire	oi0s03rxbofeohyoaq6_344 ;
 wire [265:0] k1infbmy69etqxnn7ttp7_71 ;
 wire	hg3m3vm7fbzyruljeda597fvhzf_449 ;
 wire [265:0] v78c2f808ayssrk6xd678u3_468 ;
 wire	wms6xjhb9jr0u6mq5otd_729 ;
 wire	hgar2ml0w3p7oc0llyoxf27dnrbfhj_20 ;
 wire	ycyui84m5ff6fgvvjebbasmzkkty_231 ;
 wire	wsbk2q978lyigy8sl0t_219 ;
 wire	btaphoxudj9c7mqvd01s4pi8pn344_786 ;
 wire	pgr74k9vzsd4417iwvq_726 ;
 wire	rdx72mmbwxa6t7sh7lq28l4sqw9e9_834 ;
 wire	wv9zoxr7xwyu93eerfa9w8_146 ;
 wire	ysvc84xpk45ntuekplwsbzsvuv282h3r_104 ;
 wire	pywxsblncy4wkt8be52d4_466 ;
 wire [5:0] of5fs0ucnrx1x4c7233l2_182 ;
 wire [255:0] hkzgg60bwo6p4tluxvd5u_77 ;
 wire	rtfxu1fd66c36c0j3ib2m08_177 ;
 wire	geiw13xaz2ba4cqrvbpq2ezc26ngdz8e_475 ;
 wire	h45wkzdf6pik4fvaeylf65liy4ynbu2_185 ;
 wire	axebxyj06dk05vabr43c4iqb5ofi_69 ;
 wire	bg4n5cwhwduolr8vd8y7km_556 ;
 wire [0:0] khrakde1tb21f3n0xpeg6br_185 ;
 wire	mb3ussra6qsoe446bzhojf_552 ;
 wire	vqlwdad1hdpnceln_96 ;
 wire [8:0] irusew3n65orqoul6edmyda7dt8d_385 ;
 wire	fhej9jbj6wj8vstumjnsg548eettpe_433 ;
 wire	nsnlss7n2k8m4xockn5cetydru8codqr_313 ;
 wire	s0b3gv3puz2cq6e5_881 ;
 wire	szndgpp2wzxdhbnv4m7euq8n0xn0mc2p_530 ;
 wire	vr89zl1eo0ezmitzfyd3f63yf_471 ;
 wire	ycyxi38sfkmqpg704jvm511nhssxzvh_345 ;
 wire	ef2bbiqk4hr3xwayze3q3u_867 ;
 wire [127:0] ftyt567a0hm2vq7k02aclvswn780u_149 ;
 wire	gl4sstzb6n5lv7u0_681 ;
 wire [127:0] pnrkfav5bff9a730g6ubek6gz2xojse6_168 ;
 wire	vz6vxp2fu6w0rld1_387 ;
 wire	leof2rbnpie2ybsi6scjnn4zjh_61 ;
 wire	e9jecz7re9wo7mbbvvpm03wdi_858 ;
 wire [244:0] jh4rt8ms58jyhcwouzp3qrets7h0_2 ;
 wire	bytc8fkmnjiz9fxr5f_660 ;
 wire [244:0] a755ugwcbvjn2da8_839 ;
 wire	ejxhv5azf64onzdfhbaps579n3heokm_541 ;
 wire	moustqemta6tvn2dg27rgmgzwet_770 ;
 wire	x6oure65pxn31658unaqbixe3hxu_83 ;
 wire [21:0] p81xs8mpn5oc7yswereh_565 ;
 wire	ncl5p7zys40zljxde9wl_876 ;
 wire [21:0] d91980tg0wt0vlbcjp4b3c6kba_706 ;
 wire	mv22d1rek5ow2fjvbn762_268 ;
 wire	qbsbcuxiyportywiutv4x2uen_227 ;
 wire	mobc1xil7o6u57p6i08yp0wbfmy7okx_650 ;
 wire	jtr583ihz8tetdk0o_249 ;
 wire	zk7kfgq6gzq9qt92_394 ;


 assign oi0s03rxbofeohyoaq6_344 = 
	 ~(backpressure_in) ;
 assign k1infbmy69etqxnn7ttp7_71 = 
	{packet_in_PACKET4_SOF, packet_in_PACKET4_EOF, packet_in_PACKET4_VAL, packet_in_PACKET4_DAT, packet_in_PACKET4_CNT, packet_in_PACKET4_ERR} ;
 assign hg3m3vm7fbzyruljeda597fvhzf_449 	= packet_in_PACKET4_VAL ;
 assign v78c2f808ayssrk6xd678u3_468 	= k1infbmy69etqxnn7ttp7_71[265:0] ;
 assign wms6xjhb9jr0u6mq5otd_729 = 
	szndgpp2wzxdhbnv4m7euq8n0xn0mc2p_530 | jtr583ihz8tetdk0o_249 ;
 assign hgar2ml0w3p7oc0llyoxf27dnrbfhj_20 = 
	1'b0 ;
 assign ycyui84m5ff6fgvvjebbasmzkkty_231 = 
	1'b1 ;
 assign wsbk2q978lyigy8sl0t_219 = 
	 ~(tucodeeadmdi2ublo07oi2ss0_712) ;
 assign btaphoxudj9c7mqvd01s4pi8pn344_786 = 
	oi0s03rxbofeohyoaq6_344 & ycyxi38sfkmqpg704jvm511nhssxzvh_345 & wms6xjhb9jr0u6mq5otd_729 ;
 assign pgr74k9vzsd4417iwvq_726 	= btaphoxudj9c7mqvd01s4pi8pn344_786 ;
 assign rdx72mmbwxa6t7sh7lq28l4sqw9e9_834 	= pgr74k9vzsd4417iwvq_726 ;
 assign wv9zoxr7xwyu93eerfa9w8_146 = 
	1'b0 ;
 assign ysvc84xpk45ntuekplwsbzsvuv282h3r_104 = 
	 ~(cqssb3oords6dbrbd3jxwz4_782) ;
 assign pywxsblncy4wkt8be52d4_466 	= dkau4jihb5du2gaf_397[0] ;
 assign of5fs0ucnrx1x4c7233l2_182 	= dkau4jihb5du2gaf_397[6:1] ;
 assign hkzgg60bwo6p4tluxvd5u_77 	= dkau4jihb5du2gaf_397[262:7] ;
 assign rtfxu1fd66c36c0j3ib2m08_177 	= dkau4jihb5du2gaf_397[263] ;
 assign geiw13xaz2ba4cqrvbpq2ezc26ngdz8e_475 	= dkau4jihb5du2gaf_397[264] ;
 assign h45wkzdf6pik4fvaeylf65liy4ynbu2_185 	= dkau4jihb5du2gaf_397[265] ;
 assign axebxyj06dk05vabr43c4iqb5ofi_69 = 
	inkcv9yuxezo5copz1rveyeil1zj3_377 & rtfxu1fd66c36c0j3ib2m08_177 ;
 assign bg4n5cwhwduolr8vd8y7km_556 	= packet_in_PACKET4_VAL ;
 assign khrakde1tb21f3n0xpeg6br_185 = packet_in_PACKET4_SOF ;
 assign mb3ussra6qsoe446bzhojf_552 	= pgr74k9vzsd4417iwvq_726 ;
 assign vqlwdad1hdpnceln_96 = 
	1'b0 ;
 assign irusew3n65orqoul6edmyda7dt8d_385 	= qggbg7y0pots989d12n462_520[8:0] ;
 assign fhej9jbj6wj8vstumjnsg548eettpe_433 = (
	((irusew3n65orqoul6edmyda7dt8d_385 != ahlzsduyhxo0cq5pl273yjdvj9g9btz_58))?1'b1:
	0)  ;
 assign nsnlss7n2k8m4xockn5cetydru8codqr_313 = c9x7o4ib4xkw132nhltimtftie_722 ;
 assign s0b3gv3puz2cq6e5_881 = c9x7o4ib4xkw132nhltimtftie_722 ;
 assign szndgpp2wzxdhbnv4m7euq8n0xn0mc2p_530 = 
	 ~(s0b3gv3puz2cq6e5_881) ;
 assign vr89zl1eo0ezmitzfyd3f63yf_471 	= gix9gk18efp1wiajd_726 ;
 assign ycyxi38sfkmqpg704jvm511nhssxzvh_345 = 
	 ~(gix9gk18efp1wiajd_726) ;
 assign ef2bbiqk4hr3xwayze3q3u_867 = 
	oi0s03rxbofeohyoaq6_344 & jtr583ihz8tetdk0o_249 & ycyxi38sfkmqpg704jvm511nhssxzvh_345 & nsnlss7n2k8m4xockn5cetydru8codqr_313 ;
 assign ftyt567a0hm2vq7k02aclvswn780u_149 = 
	tuple_in_TUPLE0_DATA ;
 assign gl4sstzb6n5lv7u0_681 	= tuple_in_TUPLE0_VALID ;
 assign pnrkfav5bff9a730g6ubek6gz2xojse6_168 	= ftyt567a0hm2vq7k02aclvswn780u_149[127:0] ;
 assign vz6vxp2fu6w0rld1_387 = 
	 ~(k4e8j7blmf3gtlixviq728twzjy6ud_777) ;
 assign leof2rbnpie2ybsi6scjnn4zjh_61 	= ef2bbiqk4hr3xwayze3q3u_867 ;
 assign e9jecz7re9wo7mbbvvpm03wdi_858 = 
	1'b0 ;
 assign jh4rt8ms58jyhcwouzp3qrets7h0_2 = 
	tuple_in_TUPLE1_DATA ;
 assign bytc8fkmnjiz9fxr5f_660 	= tuple_in_TUPLE1_VALID ;
 assign a755ugwcbvjn2da8_839 	= jh4rt8ms58jyhcwouzp3qrets7h0_2[244:0] ;
 assign ejxhv5azf64onzdfhbaps579n3heokm_541 = 
	 ~(g65vcqw844wwrj9gbtua58d3huky_895) ;
 assign moustqemta6tvn2dg27rgmgzwet_770 	= ef2bbiqk4hr3xwayze3q3u_867 ;
 assign x6oure65pxn31658unaqbixe3hxu_83 = 
	1'b0 ;
 assign p81xs8mpn5oc7yswereh_565 = 
	tuple_in_TUPLE3_DATA ;
 assign ncl5p7zys40zljxde9wl_876 	= tuple_in_TUPLE3_VALID ;
 assign d91980tg0wt0vlbcjp4b3c6kba_706 	= p81xs8mpn5oc7yswereh_565[21:0] ;
 assign mv22d1rek5ow2fjvbn762_268 = 
	 ~(guu50fgl9uhl1fjyjd1_793) ;
 assign qbsbcuxiyportywiutv4x2uen_227 	= ef2bbiqk4hr3xwayze3q3u_867 ;
 assign mobc1xil7o6u57p6i08yp0wbfmy7okx_650 = 
	1'b0 ;
 assign jtr583ihz8tetdk0o_249 = 
	ysvc84xpk45ntuekplwsbzsvuv282h3r_104 & vz6vxp2fu6w0rld1_387 & ejxhv5azf64onzdfhbaps579n3heokm_541 & mv22d1rek5ow2fjvbn762_268 ;
 assign zk7kfgq6gzq9qt92_394 = 
	sfv7nie5u0uv60papb1lsrlp3f2bbz7_888 | ba864b5nh5y7m5ekkgn04p_779 | fqpgf5h8dj7bi21hi7n5mhhkhrovbvpj_790 | ud6azb839symi7850q5ykh6v4_329 ;
 assign packet_out_PACKET4_SOF 	= h45wkzdf6pik4fvaeylf65liy4ynbu2_185 ;
 assign packet_out_PACKET4_EOF 	= geiw13xaz2ba4cqrvbpq2ezc26ngdz8e_475 ;
 assign packet_out_PACKET4_VAL 	= axebxyj06dk05vabr43c4iqb5ofi_69 ;
 assign packet_out_PACKET4_DAT 	= hkzgg60bwo6p4tluxvd5u_77[255:0] ;
 assign packet_out_PACKET4_CNT 	= of5fs0ucnrx1x4c7233l2_182[5:0] ;
 assign packet_out_PACKET4_ERR 	= pywxsblncy4wkt8be52d4_466 ;
 assign packet_in_PACKET4_RDY 	= packet_out_PACKET4_RDY ;
 assign tuple_out_TUPLE0_VALID 	= y2fua2wrh7ugh255p220m_458 ;
 assign tuple_out_TUPLE0_DATA 	= cg97qllkff9bzf9f4xnqt2wx6k_380[127:0] ;
 assign tuple_out_TUPLE1_VALID 	= y2fua2wrh7ugh255p220m_458 ;
 assign tuple_out_TUPLE1_DATA 	= yuxu0roem8xtvzh60yqi_261[244:0] ;
 assign tuple_out_TUPLE3_VALID 	= y2fua2wrh7ugh255p220m_458 ;
 assign tuple_out_TUPLE3_DATA 	= aqa44ne6xzzzopnj23d2696mc6za0f1_780[21:0] ;


assign wd3fhy1bx5aat0p45d5hfaf5nvq1kon3_243 = (
	((pgr74k9vzsd4417iwvq_726 == 1'b1))?ycyui84m5ff6fgvvjebbasmzkkty_231 :
	((oi0s03rxbofeohyoaq6_344 == 1'b1))?hgar2ml0w3p7oc0llyoxf27dnrbfhj_20 :
	h3gb5ve44rakbkovorigiysw5l5p2_378 ) ;

assign tucodeeadmdi2ublo07oi2ss0_712 = (
	((h3gb5ve44rakbkovorigiysw5l5p2_378 == 1'b1) && (oi0s03rxbofeohyoaq6_344 == 1'b1))?hgar2ml0w3p7oc0llyoxf27dnrbfhj_20 :
	h3gb5ve44rakbkovorigiysw5l5p2_378 ) ;



always @(posedge clk_out_0)
begin
  if (rst_in_0) 
  begin
	ckc9zbz41a1yct6zj2nna8kmwgd_703 <= 1'b0 ;
	h3gb5ve44rakbkovorigiysw5l5p2_378 <= 1'b0 ;
	o0tu76nz26vy1kg3v6c30syj42bf2xa_694 <= 1'b0 ;
	inkcv9yuxezo5copz1rveyeil1zj3_377 <= 1'b0 ;
	ahlzsduyhxo0cq5pl273yjdvj9g9btz_58 <= 9'b000000000 ;
	sfv7nie5u0uv60papb1lsrlp3f2bbz7_888 <= 1'b0 ;
	backpressure_out <= 1'b0 ;
   end
  else
  begin
		ckc9zbz41a1yct6zj2nna8kmwgd_703 <= backpressure_in ;
		h3gb5ve44rakbkovorigiysw5l5p2_378 <= wd3fhy1bx5aat0p45d5hfaf5nvq1kon3_243 ;
		o0tu76nz26vy1kg3v6c30syj42bf2xa_694 <= ysvc84xpk45ntuekplwsbzsvuv282h3r_104 ;
		inkcv9yuxezo5copz1rveyeil1zj3_377 <= pgr74k9vzsd4417iwvq_726 ;
		ahlzsduyhxo0cq5pl273yjdvj9g9btz_58 <= irusew3n65orqoul6edmyda7dt8d_385 ;
		sfv7nie5u0uv60papb1lsrlp3f2bbz7_888 <= qpbhxabgy5nvpeifn_20 ;
		backpressure_out <= zk7kfgq6gzq9qt92_394 ;
  end
end

always @(posedge clk_out_1)
begin
  if (rst_in_0) 
  begin
	y2fua2wrh7ugh255p220m_458 <= 1'b0 ;
	ba864b5nh5y7m5ekkgn04p_779 <= 1'b0 ;
   end
  else
  begin
		y2fua2wrh7ugh255p220m_458 <= ef2bbiqk4hr3xwayze3q3u_867 ;
		ba864b5nh5y7m5ekkgn04p_779 <= dg3jw5kk0rjyafiwudu9odaxuj84te_581 ;
  end
end

always @(posedge clk_out_2)
begin
  if (rst_in_0) 
  begin
	fqpgf5h8dj7bi21hi7n5mhhkhrovbvpj_790 <= 1'b0 ;
   end
  else
  begin
		fqpgf5h8dj7bi21hi7n5mhhkhrovbvpj_790 <= e9dw8iowvk9jubodzdw5uqz67x0qqt_526 ;
  end
end

always @(posedge clk_out_3)
begin
  if (rst_in_0) 
  begin
	ud6azb839symi7850q5ykh6v4_329 <= 1'b0 ;
   end
  else
  begin
		ud6azb839symi7850q5ykh6v4_329 <= eeqpiz244fu05dmwndiyo_896 ;
  end
end

defparam fgio7ql7nyoz14o56vvxwdannwv4_2138.WRITE_DATA_WIDTH = 266; 
defparam fgio7ql7nyoz14o56vvxwdannwv4_2138.FIFO_WRITE_DEPTH = 512; 
defparam fgio7ql7nyoz14o56vvxwdannwv4_2138.PROG_FULL_THRESH = 179; 
defparam fgio7ql7nyoz14o56vvxwdannwv4_2138.PROG_EMPTY_THRESH = 179; 
defparam fgio7ql7nyoz14o56vvxwdannwv4_2138.READ_MODE = "STD"; 
defparam fgio7ql7nyoz14o56vvxwdannwv4_2138.WR_DATA_COUNT_WIDTH = 9; 
defparam fgio7ql7nyoz14o56vvxwdannwv4_2138.RD_DATA_COUNT_WIDTH = 9; 
defparam fgio7ql7nyoz14o56vvxwdannwv4_2138.DOUT_RESET_VALUE = "0"; 
defparam fgio7ql7nyoz14o56vvxwdannwv4_2138.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_sync fgio7ql7nyoz14o56vvxwdannwv4_2138 (
	.wr_en(hg3m3vm7fbzyruljeda597fvhzf_449),
	.din(v78c2f808ayssrk6xd678u3_468),
	.rd_en(rdx72mmbwxa6t7sh7lq28l4sqw9e9_834),
	.sleep(wv9zoxr7xwyu93eerfa9w8_146),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(s1vfzlffts8y4a431a22zw8_320), 
	.dout(dkau4jihb5du2gaf_397), 
	.empty(cqssb3oords6dbrbd3jxwz4_782), 
	.prog_full(qpbhxabgy5nvpeifn_20), 
	.full(i9d222ywa4lxxsxe0w_73), 
	.rd_data_count(mf8hzq28m7ybj1y15g0t56qe_157), 
	.wr_data_count(jl9x1b3wy7xrrm7k6_617), 
	.wr_rst_busy(qfv05fq6avmeg8xo0yl7ih72n_5), 
	.rd_rst_busy(oa0bx6sqnpz4ng9936htak_207), 
	.overflow(wbx5r63nx0nhcefd_90), 
	.underflow(wuctlv67pdk3s28bio_479), 
	.sbiterr(pryhhpbnxom6fwft_307), 
	.dbiterr(czccqk4b9nfjqwt2516u7s_906), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam mx5gg2khhzxiwaz61osy9n7qgfko60i_1634.WRITE_DATA_WIDTH = 1; 
defparam mx5gg2khhzxiwaz61osy9n7qgfko60i_1634.FIFO_WRITE_DEPTH = 512; 
defparam mx5gg2khhzxiwaz61osy9n7qgfko60i_1634.PROG_FULL_THRESH = 179; 
defparam mx5gg2khhzxiwaz61osy9n7qgfko60i_1634.PROG_EMPTY_THRESH = 179; 
defparam mx5gg2khhzxiwaz61osy9n7qgfko60i_1634.READ_MODE = "FWFT"; 
defparam mx5gg2khhzxiwaz61osy9n7qgfko60i_1634.WR_DATA_COUNT_WIDTH = 9; 
defparam mx5gg2khhzxiwaz61osy9n7qgfko60i_1634.RD_DATA_COUNT_WIDTH = 9; 
defparam mx5gg2khhzxiwaz61osy9n7qgfko60i_1634.DOUT_RESET_VALUE = "0"; 
defparam mx5gg2khhzxiwaz61osy9n7qgfko60i_1634.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_sync mx5gg2khhzxiwaz61osy9n7qgfko60i_1634 (
	.wr_en(bg4n5cwhwduolr8vd8y7km_556),
	.din(khrakde1tb21f3n0xpeg6br_185),
	.rd_en(mb3ussra6qsoe446bzhojf_552),
	.sleep(vqlwdad1hdpnceln_96),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(bsh15cwc705nx98wmxpmzr3a53_890), 
	.dout(c9x7o4ib4xkw132nhltimtftie_722), 
	.empty(gix9gk18efp1wiajd_726), 
	.prog_full(a997150v9nrsg5i7_452), 
	.full(yco1rsz6dzrn2ftmx2j35v2wjig_661), 
	.rd_data_count(qggbg7y0pots989d12n462_520), 
	.wr_data_count(y3qqg3fn0p3d49ahjp8s06qnzelbm9lf_783), 
	.wr_rst_busy(xbabwhjr61bzct88pr_753), 
	.rd_rst_busy(fqb5k035a8dcgkybn4ssta3qc_33), 
	.overflow(wxj15hdin4wly0hqc_235), 
	.underflow(gpwo6fumh8p64o0u8itg643n0qaq87h_725), 
	.sbiterr(cnoq7qnfmt1d2nakl79c2u_56), 
	.dbiterr(s692caqbhtkq0irwb5v_231), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam uwurww4xn6cgu2e680z7wk_2436.WRITE_DATA_WIDTH = 128; 
defparam uwurww4xn6cgu2e680z7wk_2436.FIFO_WRITE_DEPTH = 256; 
defparam uwurww4xn6cgu2e680z7wk_2436.PROG_FULL_THRESH = 129; 
defparam uwurww4xn6cgu2e680z7wk_2436.PROG_EMPTY_THRESH = 129; 
defparam uwurww4xn6cgu2e680z7wk_2436.READ_MODE = "STD"; 
defparam uwurww4xn6cgu2e680z7wk_2436.WR_DATA_COUNT_WIDTH = 8; 
defparam uwurww4xn6cgu2e680z7wk_2436.RD_DATA_COUNT_WIDTH = 8; 
defparam uwurww4xn6cgu2e680z7wk_2436.DOUT_RESET_VALUE = "0"; 
defparam uwurww4xn6cgu2e680z7wk_2436.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async uwurww4xn6cgu2e680z7wk_2436 (
	.wr_en(gl4sstzb6n5lv7u0_681),
	.din(pnrkfav5bff9a730g6ubek6gz2xojse6_168),
	.rd_en(leof2rbnpie2ybsi6scjnn4zjh_61),
	.sleep(e9jecz7re9wo7mbbvvpm03wdi_858),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(pq2gdtjur094ap6cq3lb85jbu1152qt_767), 
	.dout(cg97qllkff9bzf9f4xnqt2wx6k_380), 
	.empty(k4e8j7blmf3gtlixviq728twzjy6ud_777), 
	.prog_full(dg3jw5kk0rjyafiwudu9odaxuj84te_581), 
	.full(e0gzik2ofi7osa0qtmc1bz2lr_250), 
	.rd_data_count(c91wakktsnia8ridkv83vzk3vm93u_709), 
	.wr_data_count(ee5ua4mjmqbpap2z3ib1pmgxqfqgvo_839), 
	.wr_rst_busy(de93lnvffa7cbs5is2vesxag_675), 
	.rd_rst_busy(p0z5sbqz4tq5iffn0f3l2ez8ofnisr_213), 
	.overflow(fxazznxr37kad3bbd2_761), 
	.underflow(wr430orehvhtp9rif3l9x68v84dd_503), 
	.sbiterr(x4y6cgltvkh003b6jzgeviwydpf_214), 
	.dbiterr(lgijjcfjwmdbbofpalrpc_518), 

	.wr_clk(clk_in_1), 

	.rd_clk(clk_out_1), 
	.rst(rst_in_1) 
); 

defparam ecwbh0l6999wj4y2kygpgj4dfixl_501.WRITE_DATA_WIDTH = 245; 
defparam ecwbh0l6999wj4y2kygpgj4dfixl_501.FIFO_WRITE_DEPTH = 256; 
defparam ecwbh0l6999wj4y2kygpgj4dfixl_501.PROG_FULL_THRESH = 79; 
defparam ecwbh0l6999wj4y2kygpgj4dfixl_501.PROG_EMPTY_THRESH = 79; 
defparam ecwbh0l6999wj4y2kygpgj4dfixl_501.READ_MODE = "STD"; 
defparam ecwbh0l6999wj4y2kygpgj4dfixl_501.WR_DATA_COUNT_WIDTH = 8; 
defparam ecwbh0l6999wj4y2kygpgj4dfixl_501.RD_DATA_COUNT_WIDTH = 8; 
defparam ecwbh0l6999wj4y2kygpgj4dfixl_501.DOUT_RESET_VALUE = "0"; 
defparam ecwbh0l6999wj4y2kygpgj4dfixl_501.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async ecwbh0l6999wj4y2kygpgj4dfixl_501 (
	.wr_en(bytc8fkmnjiz9fxr5f_660),
	.din(a755ugwcbvjn2da8_839),
	.rd_en(moustqemta6tvn2dg27rgmgzwet_770),
	.sleep(x6oure65pxn31658unaqbixe3hxu_83),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(em12eyg0eijwceqepjaazaz7cnwu4u_76), 
	.dout(yuxu0roem8xtvzh60yqi_261), 
	.empty(g65vcqw844wwrj9gbtua58d3huky_895), 
	.prog_full(e9dw8iowvk9jubodzdw5uqz67x0qqt_526), 
	.full(f3008y5mk0spshkgg4g3umu5jvzp_336), 
	.rd_data_count(dawbr96s9cshaeqa8sb47osv2wal0o_377), 
	.wr_data_count(ul8nqo19h934elqd4m3f5q7_808), 
	.wr_rst_busy(zgc6d46fma1tk88toeb18_291), 
	.rd_rst_busy(a95ectt0lygfhrzuu8hax124w1n_338), 
	.overflow(x4jiwysduq7bttfbjbmj5yvarw_774), 
	.underflow(zqz8uyl3f9ml80pnuan1rjx_633), 
	.sbiterr(s8ylkvej4mk8m10ner868x2dt_596), 
	.dbiterr(impl81e7qoprlqt00gihfz_360), 

	.wr_clk(clk_in_2), 

	.rd_clk(clk_out_2), 
	.rst(rst_in_2) 
); 

defparam vkhse5mogd6595hf5m1_2674.WRITE_DATA_WIDTH = 22; 
defparam vkhse5mogd6595hf5m1_2674.FIFO_WRITE_DEPTH = 256; 
defparam vkhse5mogd6595hf5m1_2674.PROG_FULL_THRESH = 79; 
defparam vkhse5mogd6595hf5m1_2674.PROG_EMPTY_THRESH = 79; 
defparam vkhse5mogd6595hf5m1_2674.READ_MODE = "STD"; 
defparam vkhse5mogd6595hf5m1_2674.WR_DATA_COUNT_WIDTH = 8; 
defparam vkhse5mogd6595hf5m1_2674.RD_DATA_COUNT_WIDTH = 8; 
defparam vkhse5mogd6595hf5m1_2674.DOUT_RESET_VALUE = "0"; 
defparam vkhse5mogd6595hf5m1_2674.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_async vkhse5mogd6595hf5m1_2674 (
	.wr_en(ncl5p7zys40zljxde9wl_876),
	.din(d91980tg0wt0vlbcjp4b3c6kba_706),
	.rd_en(qbsbcuxiyportywiutv4x2uen_227),
	.sleep(mobc1xil7o6u57p6i08yp0wbfmy7okx_650),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(xoyu8qq4lu63u7jz9xb8l3y7_46), 
	.dout(aqa44ne6xzzzopnj23d2696mc6za0f1_780), 
	.empty(guu50fgl9uhl1fjyjd1_793), 
	.prog_full(eeqpiz244fu05dmwndiyo_896), 
	.full(s6z517ktwa9ojbocrsw8h48_783), 
	.rd_data_count(hw124z87n1zycmlo1m6xxwm5ct0_198), 
	.wr_data_count(q54t8362b5auax34bo09vd4zmbexv_736), 
	.wr_rst_busy(bowavl043fjp24fb8pw35weaw_147), 
	.rd_rst_busy(cchioqq8tms7l6nzc1fz8z5h_322), 
	.overflow(wzlegxu907wb607dcqz95kej_363), 
	.underflow(pkpu2yy312xoah7wmx26779za23e_185), 
	.sbiterr(wko3coq4hcrcsgipcfl5hv6q_576), 
	.dbiterr(pwrit1y1j74sdcbd_297), 

	.wr_clk(clk_in_3), 

	.rd_clk(clk_out_3), 
	.rst(rst_in_3) 
); 

endmodule 
