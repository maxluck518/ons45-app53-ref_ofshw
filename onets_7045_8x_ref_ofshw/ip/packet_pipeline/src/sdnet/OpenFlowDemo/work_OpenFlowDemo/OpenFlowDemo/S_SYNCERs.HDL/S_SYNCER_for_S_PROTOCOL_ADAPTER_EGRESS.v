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
// File name: S_SYNCER_for_S_PROTOCOL_ADAPTER_EGRESS.v
// File created: 2018/06/25 10:09:55
// Created by: Xilinx SDNet Compiler version 2017.4, build 2093981

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_SYNCER_for_S_PROTOCOL_ADAPTER_EGRESS (
     packet_in_PACKET3_SOF, 
     packet_in_PACKET3_EOF, 
     packet_in_PACKET3_VAL, 
     packet_in_PACKET3_DAT, 
     packet_in_PACKET3_CNT, 
     packet_in_PACKET3_ERR, 
     packet_out_PACKET3_RDY, 
     tuple_in_TUPLE0_VALID, 
     tuple_in_TUPLE0_DATA, 
     tuple_in_TUPLE1_VALID, 
     tuple_in_TUPLE1_DATA, 
     tuple_in_TUPLE2_VALID, 
     tuple_in_TUPLE2_DATA, 
     backpressure_in, 


     packet_out_PACKET3_SOF, 
     packet_out_PACKET3_EOF, 
     packet_out_PACKET3_VAL, 
     packet_out_PACKET3_DAT, 
     packet_out_PACKET3_CNT, 
     packet_out_PACKET3_ERR, 
     packet_in_PACKET3_RDY, 
     tuple_out_TUPLE0_VALID, 
     tuple_out_TUPLE0_DATA, 
     tuple_out_TUPLE1_VALID, 
     tuple_out_TUPLE1_DATA, 
     tuple_out_TUPLE2_VALID, 
     tuple_out_TUPLE2_DATA, 
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
 input		packet_in_PACKET3_SOF ;
 input		packet_in_PACKET3_EOF ;
 input		packet_in_PACKET3_VAL ;
 input	 [255:0] packet_in_PACKET3_DAT ;
 input	 [5:0] packet_in_PACKET3_CNT ;
 input		packet_in_PACKET3_ERR ;
 input		packet_out_PACKET3_RDY ;
 input		tuple_in_TUPLE0_VALID ;
 input	 [7:0] tuple_in_TUPLE0_DATA ;
 input		tuple_in_TUPLE1_VALID ;
 input	 [127:0] tuple_in_TUPLE1_DATA ;
 input		tuple_in_TUPLE2_VALID ;
 input	 [21:0] tuple_in_TUPLE2_DATA ;
 input		backpressure_in ;
 output		packet_out_PACKET3_SOF ;
 output		packet_out_PACKET3_EOF ;
 output		packet_out_PACKET3_VAL ;
 output	 [255:0] packet_out_PACKET3_DAT ;
 output	 [5:0] packet_out_PACKET3_CNT ;
 output		packet_out_PACKET3_ERR ;
 output		packet_in_PACKET3_RDY ;
 output		tuple_out_TUPLE0_VALID ;
 output	 [7:0] tuple_out_TUPLE0_DATA ;
 output		tuple_out_TUPLE1_VALID ;
 output	 [127:0] tuple_out_TUPLE1_DATA ;
 output		tuple_out_TUPLE2_VALID ;
 output	 [21:0] tuple_out_TUPLE2_DATA ;
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






 reg	tr6idwstyaslbe243qoz5leozyc_203;	 initial tr6idwstyaslbe243qoz5leozyc_203 = 1'b0 ;
 wire	hgoxhg8pk5duttiod5zy59zljh5e9g_558 ;
 wire [265:0] n444evkd9qkceps14u_829 ;
 wire	d8d7kept3suwc83j85nt5ovspklnb5a0_445 ;
 wire	v10vg44zyfkmz7xuje0ao3b_27 ;
 wire	a1bmv6u3730wwh2yx6y749ns8ww6i_133 ;
 wire [8:0] bxdm7bwqkoy7skky9ymr_161 ;
 wire [8:0] md83er3dl6tdux9js8dt6e3_601 ;
 wire	ksdjmpxct0bn0havc2ofu_668 ;
 wire	grwh98tqsi63qeqzvpspsoc300g_709 ;
 wire	xhnwtz4960iassfy80i2cby3njhqv_639 ;
 wire	u39wmdb2329iontxizme_748 ;
 wire	odk4pd8flbsl23lt8e8m2gxknpq97f_221 ;
 wire	oe2e5cqzdt8y17vkw2620r6c2mclu3r_319 ;
 wire	chpk4svrh718mwezhzs3qlho_280 ;
 reg	upppwkd9j1qqcn4dhac_517;	 initial upppwkd9j1qqcn4dhac_517 = 1'b0 ;
 wire	e58kdyrn5ms63yih2f2h_153 ;
 reg	tseq4k989dvjtl9wcl_57;	 initial tseq4k989dvjtl9wcl_57 = 1'b0 ;
 reg	h1z19fjyac6tyhjleobn8ianpqs_129;	 initial h1z19fjyac6tyhjleobn8ianpqs_129 = 1'b0 ;
 wire	ailyxm2cl8f4cug7tbh_6 ;
 wire [0:0] hss00iu3sb8w66j6_696 ;
 wire	dn8j7244vtst03suwp_64 ;
 wire	e2zjdz53h03dxig5iy2pmhggsws52_65 ;
 wire	fcqb0pi1pss3xeyt3meeqdqoj_470 ;
 wire [8:0] m824nup6qctussjxj0zpvovr_253 ;
 wire [8:0] w3mgnjvfr017jngox3i00018nn2_284 ;
 wire	fmx6cxp0nj0yn70mc2hv9y99fxestq_895 ;
 wire	uq5fwj2zbx5ypr5otfat2iebew3e9jjn_699 ;
 wire	nincp2w8kevkhj5i2pnmlreve7il_392 ;
 wire	b2y1wr8pffxxeqwq6mdf4z1m6ro09j8i_98 ;
 wire	xc9635al3069dbbsppx_246 ;
 wire	whaed7e3y42jutozwf8g8qb_881 ;
 reg [8:0] b9v844amvbh66vt1is_392;	 initial b9v844amvbh66vt1is_392 = 9'b000000000 ;
 reg	wtpkxwln6x239p1w_270;	 initial wtpkxwln6x239p1w_270 = 1'b0 ;
 wire	gazvzzvypvpxz3dcr7u_524 ;
 wire [7:0] kfzi22ontm5hvn6k1p0ar9r_863 ;
 wire	migkobrgpy6zev20v01be_560 ;
 wire	qlea5fdhg9gnzt30vw74q_634 ;
 wire	r1u6yukh7l2zmcqzy3j5kj8uma9075j3_897 ;
 wire [6:0] l1frbo7dpu0cu12uhg9jsk8z_863 ;
 wire [6:0] b2w6mnewl56hqq6412w1hxbcbggt7iun_665 ;
 wire	ugls2il5j33lydu4butg2_350 ;
 wire	d9osju25l5p5i1qy8_659 ;
 wire	dch3aqsmb5ez9apwo30sdvjv0hep9r_294 ;
 wire	pb4qgx973a4xwodx4htanhxmizyetqa_67 ;
 wire	bm6pz336ktbs4lu097ftyeki_431 ;
 wire	hqzt5kzg809e2quxxmciz_113 ;
 wire	xxoksx4kq30s8fcnnfh54_580 ;
 wire [127:0] w9b12q6k86rxtjbbp_66 ;
 wire	i4mf211rr7sw73hpa8tr6r_349 ;
 wire	omzn12ks64qhimefuf6ydl47v8zdcd_194 ;
 wire	axxe03tl8i6wnkx6j52t5mmap8zw9cj7_669 ;
 wire [7:0] s3klwb8tq1iuvunlziiladn_452 ;
 wire [7:0] jb5euvl2mft05mygnog6p72k6gvdfh_640 ;
 wire	kq17l0i15cq6n4id4zv0dcyai6o8j9js_623 ;
 wire	jr8tg0y7blm5n8h5_555 ;
 wire	l141aut4zsdcq99ct9_117 ;
 wire	b5uj4clx1nvoin6esy1e59sf6946cd1_502 ;
 wire	uqwxx67c27fnp5zm_394 ;
 wire	j6ya375lbb9ulnniaqkyvpxzmiviln_193 ;
 wire	u5wy6avdyha0qi4jvxa58cgu_776 ;
 wire [21:0] qx2o8ub2krf7itr8_722 ;
 wire	p4l2zt2x92a56epnu0x62_48 ;
 wire	avnmasuin6if9mol_905 ;
 wire	mjbr4mccytonj1g7r59bxb05v3enbda_159 ;
 wire [7:0] ur4lyfvhaba27qyp_549 ;
 wire [7:0] rs4vno89wic8xtgumhpbk_656 ;
 wire	ztgut2ijpu4x3k7n9phq719iwqpq4r_446 ;
 wire	cpurbqt1yzpybuek_95 ;
 wire	w652qvq4mon0y45qkm19vv81vm_159 ;
 wire	gktrbg5bd1n1wnp4mqo8yds7mqefwek_664 ;
 wire	ohrcq8danl2dszhw_188 ;
 wire	oryx777n1d7s4m58jfagwr8j5x4x_16 ;
 reg	g58ffo3toarxrrhskcflom4w37nef0e_409;	 initial g58ffo3toarxrrhskcflom4w37nef0e_409 = 1'b0 ;
 reg	qh05yjv7lbilmvhz3ml97esry_374;	 initial qh05yjv7lbilmvhz3ml97esry_374 = 1'b0 ;
 reg	jexl0u6sgreijk29np4cw5k6bnfgm9n_648;	 initial jexl0u6sgreijk29np4cw5k6bnfgm9n_648 = 1'b0 ;
 reg	kkf2gne839k41zztiak7xoq_634;	 initial kkf2gne839k41zztiak7xoq_634 = 1'b0 ;
 wire	kfo39mmkeoqb01j7a5hhyn1_294 ;
 wire [265:0] f7ooox6vbmuowuwe6ye8albmabkj3o_498 ;
 wire	ziuerem7na4j1i9i2_777 ;
 wire [265:0] rym6bxtocr43zm17i4tbok4tckiop_29 ;
 wire	t99qbzicx9bdrq0cq2pqo6o8jh90_411 ;
 wire	cnr6lj6jfqebb4lhjw9v_477 ;
 wire	ujppv7n3zo10sjyu19z_401 ;
 wire	dv8whkhax7wqqbg3cbksi1_331 ;
 wire	zbh35984hui3whsdlm5h69n8hh60mc4i_648 ;
 wire	awo8ry4gdrohw27syaacsx0btz92to22_619 ;
 wire	s1fh2bh8pkr902p7w22jb6x4k8l8w01_792 ;
 wire	pox0gwr29tzvx8c7zni0kkmi113t1_156 ;
 wire	hqax3smeoxeu88hbx_279 ;
 wire	kcteehbxgk02evbcjkqg8201em_108 ;
 wire [5:0] vet537bk1fibl93ii0vhtffg064emt_351 ;
 wire [255:0] kz4h41qadjrd8fxzzbsrn_817 ;
 wire	tu27kstszlfqmuveda65d_246 ;
 wire	mifznm3ohlbz0ryjemy76_422 ;
 wire	nn45qh9fq0hsqli4seqywua8fbcgdp_193 ;
 wire	bozlmawkp70fkv624icrc4vbc_239 ;
 wire	rxbx1fgr0ujgvdeshzx3zr8q4f_862 ;
 wire [0:0] w2cd7tqiatg57gw9x5xpj6dy9z1_419 ;
 wire	dleh879ilcz3xebm_372 ;
 wire	u8zjnjwx44zo16kbwdjclaapsq9n84oe_693 ;
 wire [8:0] f8xgpth1lxnicg12b9lmlmzhc6_883 ;
 wire	udu5uwtybckacmpbqwtt9skphjf0_127 ;
 wire	t3aoejgbel9xtt43nhx85lc_814 ;
 wire	t9fs5xwq6tw1hs40szpbga_394 ;
 wire	pgwfmoxld9upfhtg5yq0xiklu18gh3i_780 ;
 wire	flp42kh99d82m61f1bl5ib6nl3l3u5_275 ;
 wire	dgg88qd5ze1iinfg3k_401 ;
 wire	gorcw4sk8yt5rqbjysu3_286 ;
 wire [7:0] ur984jkijbta7q9t62q12n0n3sa7_862 ;
 wire	kohir9inf8nt2ema5qonf16uv564er_852 ;
 wire [7:0] avu1gzpwajpxekhy_803 ;
 wire	lwbqqjihamvavj7l7o_32 ;
 wire	s5bby5g729ic2nrfn_430 ;
 wire	twugtc5p695eurheh4w1y8dsll_811 ;
 wire [127:0] afuw6eqvgmzxahg1fwbzg94lxe6_500 ;
 wire	wqw23h2zp45iaa025hslsbrhgb9u_814 ;
 wire [127:0] g232usvk8nixep4jp_440 ;
 wire	fuygoljrji8wyk6pv9q0ujbm7fk5_549 ;
 wire	q5zwcyey240oxwc68ct2mm_607 ;
 wire	d3q7195kagb13uc4m_737 ;
 wire [21:0] g8nei38vi7xw7irol_197 ;
 wire	atkk3kv5hwvjt2xpj0gnimztqt1jp_665 ;
 wire [21:0] n29w4rf0wwdt717xo3ozl7w_607 ;
 wire	hq3b70wenckoplxclwfuyvphf7_562 ;
 wire	qnggm2g4je8bldgmqns36l9sswhsm_89 ;
 wire	wqqlnp5qfl7jxizo264z_512 ;
 wire	dvjn4xdd49qa4copz3ua0og9dyqe_738 ;
 wire	jeg0y2cwxh9rxi2gwhf2sp0ex0kvl064_648 ;


 assign kfo39mmkeoqb01j7a5hhyn1_294 = 
	 ~(backpressure_in) ;
 assign f7ooox6vbmuowuwe6ye8albmabkj3o_498 = 
	{packet_in_PACKET3_SOF, packet_in_PACKET3_EOF, packet_in_PACKET3_VAL, packet_in_PACKET3_DAT, packet_in_PACKET3_CNT, packet_in_PACKET3_ERR} ;
 assign ziuerem7na4j1i9i2_777 	= packet_in_PACKET3_VAL ;
 assign rym6bxtocr43zm17i4tbok4tckiop_29 	= f7ooox6vbmuowuwe6ye8albmabkj3o_498[265:0] ;
 assign t99qbzicx9bdrq0cq2pqo6o8jh90_411 = 
	pgwfmoxld9upfhtg5yq0xiklu18gh3i_780 | dvjn4xdd49qa4copz3ua0og9dyqe_738 ;
 assign cnr6lj6jfqebb4lhjw9v_477 = 
	1'b0 ;
 assign ujppv7n3zo10sjyu19z_401 = 
	1'b1 ;
 assign dv8whkhax7wqqbg3cbksi1_331 = 
	 ~(e58kdyrn5ms63yih2f2h_153) ;
 assign zbh35984hui3whsdlm5h69n8hh60mc4i_648 = 
	kfo39mmkeoqb01j7a5hhyn1_294 & dgg88qd5ze1iinfg3k_401 & t99qbzicx9bdrq0cq2pqo6o8jh90_411 ;
 assign awo8ry4gdrohw27syaacsx0btz92to22_619 	= zbh35984hui3whsdlm5h69n8hh60mc4i_648 ;
 assign s1fh2bh8pkr902p7w22jb6x4k8l8w01_792 	= awo8ry4gdrohw27syaacsx0btz92to22_619 ;
 assign pox0gwr29tzvx8c7zni0kkmi113t1_156 = 
	1'b0 ;
 assign hqax3smeoxeu88hbx_279 = 
	 ~(d8d7kept3suwc83j85nt5ovspklnb5a0_445) ;
 assign kcteehbxgk02evbcjkqg8201em_108 	= n444evkd9qkceps14u_829[0] ;
 assign vet537bk1fibl93ii0vhtffg064emt_351 	= n444evkd9qkceps14u_829[6:1] ;
 assign kz4h41qadjrd8fxzzbsrn_817 	= n444evkd9qkceps14u_829[262:7] ;
 assign tu27kstszlfqmuveda65d_246 	= n444evkd9qkceps14u_829[263] ;
 assign mifznm3ohlbz0ryjemy76_422 	= n444evkd9qkceps14u_829[264] ;
 assign nn45qh9fq0hsqli4seqywua8fbcgdp_193 	= n444evkd9qkceps14u_829[265] ;
 assign bozlmawkp70fkv624icrc4vbc_239 = 
	h1z19fjyac6tyhjleobn8ianpqs_129 & tu27kstszlfqmuveda65d_246 ;
 assign rxbx1fgr0ujgvdeshzx3zr8q4f_862 	= packet_in_PACKET3_VAL ;
 assign w2cd7tqiatg57gw9x5xpj6dy9z1_419 = packet_in_PACKET3_SOF ;
 assign dleh879ilcz3xebm_372 	= awo8ry4gdrohw27syaacsx0btz92to22_619 ;
 assign u8zjnjwx44zo16kbwdjclaapsq9n84oe_693 = 
	1'b0 ;
 assign f8xgpth1lxnicg12b9lmlmzhc6_883 	= m824nup6qctussjxj0zpvovr_253[8:0] ;
 assign udu5uwtybckacmpbqwtt9skphjf0_127 = (
	((f8xgpth1lxnicg12b9lmlmzhc6_883 != b9v844amvbh66vt1is_392))?1'b1:
	0)  ;
 assign t3aoejgbel9xtt43nhx85lc_814 = hss00iu3sb8w66j6_696 ;
 assign t9fs5xwq6tw1hs40szpbga_394 = hss00iu3sb8w66j6_696 ;
 assign pgwfmoxld9upfhtg5yq0xiklu18gh3i_780 = 
	 ~(t9fs5xwq6tw1hs40szpbga_394) ;
 assign flp42kh99d82m61f1bl5ib6nl3l3u5_275 	= dn8j7244vtst03suwp_64 ;
 assign dgg88qd5ze1iinfg3k_401 = 
	 ~(dn8j7244vtst03suwp_64) ;
 assign gorcw4sk8yt5rqbjysu3_286 = 
	kfo39mmkeoqb01j7a5hhyn1_294 & dvjn4xdd49qa4copz3ua0og9dyqe_738 & dgg88qd5ze1iinfg3k_401 & t3aoejgbel9xtt43nhx85lc_814 ;
 assign ur984jkijbta7q9t62q12n0n3sa7_862 = 
	tuple_in_TUPLE0_DATA ;
 assign kohir9inf8nt2ema5qonf16uv564er_852 	= tuple_in_TUPLE0_VALID ;
 assign avu1gzpwajpxekhy_803 	= ur984jkijbta7q9t62q12n0n3sa7_862[7:0] ;
 assign lwbqqjihamvavj7l7o_32 = 
	 ~(migkobrgpy6zev20v01be_560) ;
 assign s5bby5g729ic2nrfn_430 	= gorcw4sk8yt5rqbjysu3_286 ;
 assign twugtc5p695eurheh4w1y8dsll_811 = 
	1'b0 ;
 assign afuw6eqvgmzxahg1fwbzg94lxe6_500 = 
	tuple_in_TUPLE1_DATA ;
 assign wqw23h2zp45iaa025hslsbrhgb9u_814 	= tuple_in_TUPLE1_VALID ;
 assign g232usvk8nixep4jp_440 	= afuw6eqvgmzxahg1fwbzg94lxe6_500[127:0] ;
 assign fuygoljrji8wyk6pv9q0ujbm7fk5_549 = 
	 ~(i4mf211rr7sw73hpa8tr6r_349) ;
 assign q5zwcyey240oxwc68ct2mm_607 	= gorcw4sk8yt5rqbjysu3_286 ;
 assign d3q7195kagb13uc4m_737 = 
	1'b0 ;
 assign g8nei38vi7xw7irol_197 = 
	tuple_in_TUPLE2_DATA ;
 assign atkk3kv5hwvjt2xpj0gnimztqt1jp_665 	= tuple_in_TUPLE2_VALID ;
 assign n29w4rf0wwdt717xo3ozl7w_607 	= g8nei38vi7xw7irol_197[21:0] ;
 assign hq3b70wenckoplxclwfuyvphf7_562 = 
	 ~(p4l2zt2x92a56epnu0x62_48) ;
 assign qnggm2g4je8bldgmqns36l9sswhsm_89 	= gorcw4sk8yt5rqbjysu3_286 ;
 assign wqqlnp5qfl7jxizo264z_512 = 
	1'b0 ;
 assign dvjn4xdd49qa4copz3ua0og9dyqe_738 = 
	hqax3smeoxeu88hbx_279 & lwbqqjihamvavj7l7o_32 & fuygoljrji8wyk6pv9q0ujbm7fk5_549 & hq3b70wenckoplxclwfuyvphf7_562 ;
 assign jeg0y2cwxh9rxi2gwhf2sp0ex0kvl064_648 = 
	g58ffo3toarxrrhskcflom4w37nef0e_409 | qh05yjv7lbilmvhz3ml97esry_374 | jexl0u6sgreijk29np4cw5k6bnfgm9n_648 | kkf2gne839k41zztiak7xoq_634 ;
 assign packet_out_PACKET3_SOF 	= nn45qh9fq0hsqli4seqywua8fbcgdp_193 ;
 assign packet_out_PACKET3_EOF 	= mifznm3ohlbz0ryjemy76_422 ;
 assign packet_out_PACKET3_VAL 	= bozlmawkp70fkv624icrc4vbc_239 ;
 assign packet_out_PACKET3_DAT 	= kz4h41qadjrd8fxzzbsrn_817[255:0] ;
 assign packet_out_PACKET3_CNT 	= vet537bk1fibl93ii0vhtffg064emt_351[5:0] ;
 assign packet_out_PACKET3_ERR 	= kcteehbxgk02evbcjkqg8201em_108 ;
 assign packet_in_PACKET3_RDY 	= packet_out_PACKET3_RDY ;
 assign tuple_out_TUPLE0_VALID 	= wtpkxwln6x239p1w_270 ;
 assign tuple_out_TUPLE0_DATA 	= kfzi22ontm5hvn6k1p0ar9r_863[7:0] ;
 assign tuple_out_TUPLE1_VALID 	= wtpkxwln6x239p1w_270 ;
 assign tuple_out_TUPLE1_DATA 	= w9b12q6k86rxtjbbp_66[127:0] ;
 assign tuple_out_TUPLE2_VALID 	= wtpkxwln6x239p1w_270 ;
 assign tuple_out_TUPLE2_DATA 	= qx2o8ub2krf7itr8_722[21:0] ;


assign chpk4svrh718mwezhzs3qlho_280 = (
	((awo8ry4gdrohw27syaacsx0btz92to22_619 == 1'b1))?ujppv7n3zo10sjyu19z_401 :
	((kfo39mmkeoqb01j7a5hhyn1_294 == 1'b1))?cnr6lj6jfqebb4lhjw9v_477 :
	upppwkd9j1qqcn4dhac_517 ) ;

assign e58kdyrn5ms63yih2f2h_153 = (
	((upppwkd9j1qqcn4dhac_517 == 1'b1) && (kfo39mmkeoqb01j7a5hhyn1_294 == 1'b1))?cnr6lj6jfqebb4lhjw9v_477 :
	upppwkd9j1qqcn4dhac_517 ) ;



always @(posedge clk_out_0)
begin
  if (rst_in_0) 
  begin
	tr6idwstyaslbe243qoz5leozyc_203 <= 1'b0 ;
	upppwkd9j1qqcn4dhac_517 <= 1'b0 ;
	tseq4k989dvjtl9wcl_57 <= 1'b0 ;
	h1z19fjyac6tyhjleobn8ianpqs_129 <= 1'b0 ;
	b9v844amvbh66vt1is_392 <= 9'b000000000 ;
	g58ffo3toarxrrhskcflom4w37nef0e_409 <= 1'b0 ;
	backpressure_out <= 1'b0 ;
   end
  else
  begin
		tr6idwstyaslbe243qoz5leozyc_203 <= backpressure_in ;
		upppwkd9j1qqcn4dhac_517 <= chpk4svrh718mwezhzs3qlho_280 ;
		tseq4k989dvjtl9wcl_57 <= hqax3smeoxeu88hbx_279 ;
		h1z19fjyac6tyhjleobn8ianpqs_129 <= awo8ry4gdrohw27syaacsx0btz92to22_619 ;
		b9v844amvbh66vt1is_392 <= f8xgpth1lxnicg12b9lmlmzhc6_883 ;
		g58ffo3toarxrrhskcflom4w37nef0e_409 <= v10vg44zyfkmz7xuje0ao3b_27 ;
		backpressure_out <= jeg0y2cwxh9rxi2gwhf2sp0ex0kvl064_648 ;
  end
end

always @(posedge clk_out_1)
begin
  if (rst_in_0) 
  begin
	wtpkxwln6x239p1w_270 <= 1'b0 ;
	qh05yjv7lbilmvhz3ml97esry_374 <= 1'b0 ;
   end
  else
  begin
		wtpkxwln6x239p1w_270 <= gorcw4sk8yt5rqbjysu3_286 ;
		qh05yjv7lbilmvhz3ml97esry_374 <= qlea5fdhg9gnzt30vw74q_634 ;
  end
end

always @(posedge clk_out_2)
begin
  if (rst_in_0) 
  begin
	jexl0u6sgreijk29np4cw5k6bnfgm9n_648 <= 1'b0 ;
   end
  else
  begin
		jexl0u6sgreijk29np4cw5k6bnfgm9n_648 <= omzn12ks64qhimefuf6ydl47v8zdcd_194 ;
  end
end

always @(posedge clk_out_3)
begin
  if (rst_in_0) 
  begin
	kkf2gne839k41zztiak7xoq_634 <= 1'b0 ;
   end
  else
  begin
		kkf2gne839k41zztiak7xoq_634 <= avnmasuin6if9mol_905 ;
  end
end

defparam gey652h9e47l54q2ldj5lnf8lnrn1d2l_1011.WRITE_DATA_WIDTH = 266; 
defparam gey652h9e47l54q2ldj5lnf8lnrn1d2l_1011.FIFO_WRITE_DEPTH = 512; 
defparam gey652h9e47l54q2ldj5lnf8lnrn1d2l_1011.PROG_FULL_THRESH = 171; 
defparam gey652h9e47l54q2ldj5lnf8lnrn1d2l_1011.PROG_EMPTY_THRESH = 171; 
defparam gey652h9e47l54q2ldj5lnf8lnrn1d2l_1011.READ_MODE = "STD"; 
defparam gey652h9e47l54q2ldj5lnf8lnrn1d2l_1011.WR_DATA_COUNT_WIDTH = 9; 
defparam gey652h9e47l54q2ldj5lnf8lnrn1d2l_1011.RD_DATA_COUNT_WIDTH = 9; 
defparam gey652h9e47l54q2ldj5lnf8lnrn1d2l_1011.DOUT_RESET_VALUE = "0"; 
defparam gey652h9e47l54q2ldj5lnf8lnrn1d2l_1011.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_sync gey652h9e47l54q2ldj5lnf8lnrn1d2l_1011 (
	.wr_en(ziuerem7na4j1i9i2_777),
	.din(rym6bxtocr43zm17i4tbok4tckiop_29),
	.rd_en(s1fh2bh8pkr902p7w22jb6x4k8l8w01_792),
	.sleep(pox0gwr29tzvx8c7zni0kkmi113t1_156),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(hgoxhg8pk5duttiod5zy59zljh5e9g_558), 
	.dout(n444evkd9qkceps14u_829), 
	.empty(d8d7kept3suwc83j85nt5ovspklnb5a0_445), 
	.prog_full(v10vg44zyfkmz7xuje0ao3b_27), 
	.full(a1bmv6u3730wwh2yx6y749ns8ww6i_133), 
	.rd_data_count(bxdm7bwqkoy7skky9ymr_161), 
	.wr_data_count(md83er3dl6tdux9js8dt6e3_601), 
	.wr_rst_busy(ksdjmpxct0bn0havc2ofu_668), 
	.rd_rst_busy(grwh98tqsi63qeqzvpspsoc300g_709), 
	.overflow(xhnwtz4960iassfy80i2cby3njhqv_639), 
	.underflow(u39wmdb2329iontxizme_748), 
	.sbiterr(odk4pd8flbsl23lt8e8m2gxknpq97f_221), 
	.dbiterr(oe2e5cqzdt8y17vkw2620r6c2mclu3r_319), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam pdevjy8itteb65rk2_977.WRITE_DATA_WIDTH = 1; 
defparam pdevjy8itteb65rk2_977.FIFO_WRITE_DEPTH = 512; 
defparam pdevjy8itteb65rk2_977.PROG_FULL_THRESH = 171; 
defparam pdevjy8itteb65rk2_977.PROG_EMPTY_THRESH = 171; 
defparam pdevjy8itteb65rk2_977.READ_MODE = "FWFT"; 
defparam pdevjy8itteb65rk2_977.WR_DATA_COUNT_WIDTH = 9; 
defparam pdevjy8itteb65rk2_977.RD_DATA_COUNT_WIDTH = 9; 
defparam pdevjy8itteb65rk2_977.DOUT_RESET_VALUE = "0"; 
defparam pdevjy8itteb65rk2_977.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_sync pdevjy8itteb65rk2_977 (
	.wr_en(rxbx1fgr0ujgvdeshzx3zr8q4f_862),
	.din(w2cd7tqiatg57gw9x5xpj6dy9z1_419),
	.rd_en(dleh879ilcz3xebm_372),
	.sleep(u8zjnjwx44zo16kbwdjclaapsq9n84oe_693),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(ailyxm2cl8f4cug7tbh_6), 
	.dout(hss00iu3sb8w66j6_696), 
	.empty(dn8j7244vtst03suwp_64), 
	.prog_full(e2zjdz53h03dxig5iy2pmhggsws52_65), 
	.full(fcqb0pi1pss3xeyt3meeqdqoj_470), 
	.rd_data_count(m824nup6qctussjxj0zpvovr_253), 
	.wr_data_count(w3mgnjvfr017jngox3i00018nn2_284), 
	.wr_rst_busy(fmx6cxp0nj0yn70mc2hv9y99fxestq_895), 
	.rd_rst_busy(uq5fwj2zbx5ypr5otfat2iebew3e9jjn_699), 
	.overflow(nincp2w8kevkhj5i2pnmlreve7il_392), 
	.underflow(b2y1wr8pffxxeqwq6mdf4z1m6ro09j8i_98), 
	.sbiterr(xc9635al3069dbbsppx_246), 
	.dbiterr(whaed7e3y42jutozwf8g8qb_881), 

	.wr_clk(clk_in_0), 
	.rst(rst_in_0) 
); 

defparam sevrjm2n4i5k5x02oktm6dyrecp_2306.WRITE_DATA_WIDTH = 8; 
defparam sevrjm2n4i5k5x02oktm6dyrecp_2306.FIFO_WRITE_DEPTH = 128; 
defparam sevrjm2n4i5k5x02oktm6dyrecp_2306.PROG_FULL_THRESH = 49; 
defparam sevrjm2n4i5k5x02oktm6dyrecp_2306.PROG_EMPTY_THRESH = 49; 
defparam sevrjm2n4i5k5x02oktm6dyrecp_2306.READ_MODE = "STD"; 
defparam sevrjm2n4i5k5x02oktm6dyrecp_2306.WR_DATA_COUNT_WIDTH = 7; 
defparam sevrjm2n4i5k5x02oktm6dyrecp_2306.RD_DATA_COUNT_WIDTH = 7; 
defparam sevrjm2n4i5k5x02oktm6dyrecp_2306.DOUT_RESET_VALUE = "0"; 
defparam sevrjm2n4i5k5x02oktm6dyrecp_2306.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_async sevrjm2n4i5k5x02oktm6dyrecp_2306 (
	.wr_en(kohir9inf8nt2ema5qonf16uv564er_852),
	.din(avu1gzpwajpxekhy_803),
	.rd_en(s5bby5g729ic2nrfn_430),
	.sleep(twugtc5p695eurheh4w1y8dsll_811),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(gazvzzvypvpxz3dcr7u_524), 
	.dout(kfzi22ontm5hvn6k1p0ar9r_863), 
	.empty(migkobrgpy6zev20v01be_560), 
	.prog_full(qlea5fdhg9gnzt30vw74q_634), 
	.full(r1u6yukh7l2zmcqzy3j5kj8uma9075j3_897), 
	.rd_data_count(l1frbo7dpu0cu12uhg9jsk8z_863), 
	.wr_data_count(b2w6mnewl56hqq6412w1hxbcbggt7iun_665), 
	.wr_rst_busy(ugls2il5j33lydu4butg2_350), 
	.rd_rst_busy(d9osju25l5p5i1qy8_659), 
	.overflow(dch3aqsmb5ez9apwo30sdvjv0hep9r_294), 
	.underflow(pb4qgx973a4xwodx4htanhxmizyetqa_67), 
	.sbiterr(bm6pz336ktbs4lu097ftyeki_431), 
	.dbiterr(hqzt5kzg809e2quxxmciz_113), 

	.wr_clk(clk_in_1), 

	.rd_clk(clk_out_1), 
	.rst(rst_in_1) 
); 

defparam f8izhvccyz3qzxmck5_148.WRITE_DATA_WIDTH = 128; 
defparam f8izhvccyz3qzxmck5_148.FIFO_WRITE_DEPTH = 256; 
defparam f8izhvccyz3qzxmck5_148.PROG_FULL_THRESH = 106; 
defparam f8izhvccyz3qzxmck5_148.PROG_EMPTY_THRESH = 106; 
defparam f8izhvccyz3qzxmck5_148.READ_MODE = "STD"; 
defparam f8izhvccyz3qzxmck5_148.WR_DATA_COUNT_WIDTH = 8; 
defparam f8izhvccyz3qzxmck5_148.RD_DATA_COUNT_WIDTH = 8; 
defparam f8izhvccyz3qzxmck5_148.DOUT_RESET_VALUE = "0"; 
defparam f8izhvccyz3qzxmck5_148.FIFO_MEMORY_TYPE = "bram"; 

xpm_fifo_async f8izhvccyz3qzxmck5_148 (
	.wr_en(wqw23h2zp45iaa025hslsbrhgb9u_814),
	.din(g232usvk8nixep4jp_440),
	.rd_en(q5zwcyey240oxwc68ct2mm_607),
	.sleep(d3q7195kagb13uc4m_737),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(xxoksx4kq30s8fcnnfh54_580), 
	.dout(w9b12q6k86rxtjbbp_66), 
	.empty(i4mf211rr7sw73hpa8tr6r_349), 
	.prog_full(omzn12ks64qhimefuf6ydl47v8zdcd_194), 
	.full(axxe03tl8i6wnkx6j52t5mmap8zw9cj7_669), 
	.rd_data_count(s3klwb8tq1iuvunlziiladn_452), 
	.wr_data_count(jb5euvl2mft05mygnog6p72k6gvdfh_640), 
	.wr_rst_busy(kq17l0i15cq6n4id4zv0dcyai6o8j9js_623), 
	.rd_rst_busy(jr8tg0y7blm5n8h5_555), 
	.overflow(l141aut4zsdcq99ct9_117), 
	.underflow(b5uj4clx1nvoin6esy1e59sf6946cd1_502), 
	.sbiterr(uqwxx67c27fnp5zm_394), 
	.dbiterr(j6ya375lbb9ulnniaqkyvpxzmiviln_193), 

	.wr_clk(clk_in_2), 

	.rd_clk(clk_out_2), 
	.rst(rst_in_2) 
); 

defparam uwq6uz4cey3if40den9koufi28vhdp1e_851.WRITE_DATA_WIDTH = 22; 
defparam uwq6uz4cey3if40den9koufi28vhdp1e_851.FIFO_WRITE_DEPTH = 256; 
defparam uwq6uz4cey3if40den9koufi28vhdp1e_851.PROG_FULL_THRESH = 106; 
defparam uwq6uz4cey3if40den9koufi28vhdp1e_851.PROG_EMPTY_THRESH = 106; 
defparam uwq6uz4cey3if40den9koufi28vhdp1e_851.READ_MODE = "STD"; 
defparam uwq6uz4cey3if40den9koufi28vhdp1e_851.WR_DATA_COUNT_WIDTH = 8; 
defparam uwq6uz4cey3if40den9koufi28vhdp1e_851.RD_DATA_COUNT_WIDTH = 8; 
defparam uwq6uz4cey3if40den9koufi28vhdp1e_851.DOUT_RESET_VALUE = "0"; 
defparam uwq6uz4cey3if40den9koufi28vhdp1e_851.FIFO_MEMORY_TYPE = "lutram"; 

xpm_fifo_async uwq6uz4cey3if40den9koufi28vhdp1e_851 (
	.wr_en(atkk3kv5hwvjt2xpj0gnimztqt1jp_665),
	.din(n29w4rf0wwdt717xo3ozl7w_607),
	.rd_en(qnggm2g4je8bldgmqns36l9sswhsm_89),
	.sleep(wqqlnp5qfl7jxizo264z_512),
	.injectsbiterr(),
	.injectdbiterr(),


	.prog_empty(u5wy6avdyha0qi4jvxa58cgu_776), 
	.dout(qx2o8ub2krf7itr8_722), 
	.empty(p4l2zt2x92a56epnu0x62_48), 
	.prog_full(avnmasuin6if9mol_905), 
	.full(mjbr4mccytonj1g7r59bxb05v3enbda_159), 
	.rd_data_count(ur4lyfvhaba27qyp_549), 
	.wr_data_count(rs4vno89wic8xtgumhpbk_656), 
	.wr_rst_busy(ztgut2ijpu4x3k7n9phq719iwqpq4r_446), 
	.rd_rst_busy(cpurbqt1yzpybuek_95), 
	.overflow(w652qvq4mon0y45qkm19vv81vm_159), 
	.underflow(gktrbg5bd1n1wnp4mqo8yds7mqefwek_664), 
	.sbiterr(ohrcq8danl2dszhw_188), 
	.dbiterr(oryx777n1d7s4m58jfagwr8j5x4x_16), 

	.wr_clk(clk_in_3), 

	.rd_clk(clk_out_3), 
	.rst(rst_in_3) 
); 

endmodule 
