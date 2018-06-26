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
// File name: S_RESETTER_lookup.v
// File created: 2018/06/25 10:09:55
// Created by: Xilinx SDNet Compiler version 2017.4, build 2093981

//----------------------------------------------------------------------------

`timescale 1 ns / 100 ps

module S_RESETTER_lookup (


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






 reg	q35ssz2brclfrbgh_452;	 initial q35ssz2brclfrbgh_452 = 1'b0 ;
 reg	zjf8f3drvkp6niigql3_389;	 initial zjf8f3drvkp6niigql3_389 = 1'b0 ;
 reg [4:0] px3vqsdxpjyzfshyisjmp7y176c5zk_252;	 initial px3vqsdxpjyzfshyisjmp7y176c5zk_252 = 5'b00000 ;
 reg [4:0] bgjjmw44528er7ox0sjqbij5qrfy7yne_353;	 initial bgjjmw44528er7ox0sjqbij5qrfy7yne_353 = 5'b00000 ;
 wire	exvaeuhwwntaxiulsmvxu2v9bni6e8jd_284 ;
 reg	uqyqktwvzbay4b006hcjtna624o_376;	 initial uqyqktwvzbay4b006hcjtna624o_376 = 1'b1 ;
 reg	dovufyjzelvwc28i0jx1v_870;	 initial dovufyjzelvwc28i0jx1v_870 = 1'b0 ;
 reg	d4etfgopvxo89ynt9a0d1t8klq07x_167;	 initial d4etfgopvxo89ynt9a0d1t8klq07x_167 = 1'b1 ;
 reg	ze7ccrb2ef2ff3mwnrwd530f7qa36_899;	 initial ze7ccrb2ef2ff3mwnrwd530f7qa36_899 = 1'b0 ;
 wire [4:0] atzg4t7ted9hypdyfz_281 ;
 wire [4:0] xntyz6tsyuuxlpdterwzzs5v6hqqdrza_261 ;
 wire	s2f158v9soqmjjyd2ietfss3_542 ;
 wire	clojcb2he3puw1rbqdm4qox05xy_69 ;
 wire	jepru8p05gx3lmzn51uc9ve81ms37_358 ;
 wire	muaoam7kkbcd13444rsuath_437 ;
 wire	y5ul77l7ckl6cr1qbipn4icgo_128 ;
 wire	xyttrxgq1fkcaczllch1t061ma2a8y_258 ;
 wire	tkr2xgpfyantwb6i3001jcjadgmc86_779 ;
 wire	aosynbviqx3zvlurqud4vbk8_80 ;
 wire	gf3cpbzgt8a92qkri4pq_702 ;
 wire	up03ighm3h3zxkhdaf_508 ;
 wire	gf9vvmi4u0howmijn5gviwo23eik_259 ;
 wire	s9erfbg6l6asw80ub_340 ;


 assign atzg4t7ted9hypdyfz_281 = 
	px3vqsdxpjyzfshyisjmp7y176c5zk_252 + 1 ;
 assign xntyz6tsyuuxlpdterwzzs5v6hqqdrza_261 = 
	bgjjmw44528er7ox0sjqbij5qrfy7yne_353 + 1 ;
 assign s2f158v9soqmjjyd2ietfss3_542 = (
	((px3vqsdxpjyzfshyisjmp7y176c5zk_252 > 5'b00000))?1'b1:
	0)  ;
 assign clojcb2he3puw1rbqdm4qox05xy_69 = 
	rst | zjf8f3drvkp6niigql3_389 ;
 assign jepru8p05gx3lmzn51uc9ve81ms37_358 = 
	clojcb2he3puw1rbqdm4qox05xy_69 | s2f158v9soqmjjyd2ietfss3_542 ;
 assign muaoam7kkbcd13444rsuath_437 = (
	((zjf8f3drvkp6niigql3_389 == 1'b1) && (s9erfbg6l6asw80ub_340 == 1'b1) && (px3vqsdxpjyzfshyisjmp7y176c5zk_252 == 5'b00000))?1'b1:
	((px3vqsdxpjyzfshyisjmp7y176c5zk_252 != 5'b00000) && (zjf8f3drvkp6niigql3_389 != 1'b1))?1'b1:
	0)  ;
 assign y5ul77l7ckl6cr1qbipn4icgo_128 = (
	((q35ssz2brclfrbgh_452 == 1'b1))?1'b1:
	0)  ;
 assign xyttrxgq1fkcaczllch1t061ma2a8y_258 = (
	((px3vqsdxpjyzfshyisjmp7y176c5zk_252 == 5'b01111) && (zjf8f3drvkp6niigql3_389 != 1'b1) && (s9erfbg6l6asw80ub_340 == 1'b1))?1'b1:
	((bgjjmw44528er7ox0sjqbij5qrfy7yne_353 != 5'b00000) && (bgjjmw44528er7ox0sjqbij5qrfy7yne_353 != 5'b01111) && (zjf8f3drvkp6niigql3_389 != 1'b1) && (s9erfbg6l6asw80ub_340 == 1'b1))?1'b1:
	0)  ;
 assign tkr2xgpfyantwb6i3001jcjadgmc86_779 = (
	((bgjjmw44528er7ox0sjqbij5qrfy7yne_353 == 5'b01111))?1'b1:
	0)  ;
 assign aosynbviqx3zvlurqud4vbk8_80 = 
	1'b1 ;
 assign gf3cpbzgt8a92qkri4pq_702 = 
	1'b0 ;
 assign up03ighm3h3zxkhdaf_508 = 
	 ~(exvaeuhwwntaxiulsmvxu2v9bni6e8jd_284) ;
 assign gf9vvmi4u0howmijn5gviwo23eik_259 = (
	((bgjjmw44528er7ox0sjqbij5qrfy7yne_353 == 5'b01111))?1'b1:
	0)  ;
 assign s9erfbg6l6asw80ub_340 = 
	1'b1 ;
 assign reset_out_active_high 	= d4etfgopvxo89ynt9a0d1t8klq07x_167 ;
 assign reset_out_active_low 	= ze7ccrb2ef2ff3mwnrwd530f7qa36_899 ;


assign exvaeuhwwntaxiulsmvxu2v9bni6e8jd_284 = (
	((jepru8p05gx3lmzn51uc9ve81ms37_358 == 1'b1) && (px3vqsdxpjyzfshyisjmp7y176c5zk_252 < 5'b10000))?aosynbviqx3zvlurqud4vbk8_80 :
1'b0) ;



always @(posedge clk)
begin
		q35ssz2brclfrbgh_452 <= rst ;
		zjf8f3drvkp6niigql3_389 <= q35ssz2brclfrbgh_452 ;
	if (y5ul77l7ckl6cr1qbipn4icgo_128) 
	begin 
	  px3vqsdxpjyzfshyisjmp7y176c5zk_252 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (muaoam7kkbcd13444rsuath_437) 
		begin 
			px3vqsdxpjyzfshyisjmp7y176c5zk_252 <= atzg4t7ted9hypdyfz_281 ;
		end 
	end 
	if (y5ul77l7ckl6cr1qbipn4icgo_128) 
	begin 
	  bgjjmw44528er7ox0sjqbij5qrfy7yne_353 <= 5'b00000 ;
	 end 
	else 
	begin 
		if (xyttrxgq1fkcaczllch1t061ma2a8y_258) 
		begin 
			bgjjmw44528er7ox0sjqbij5qrfy7yne_353 <= xntyz6tsyuuxlpdterwzzs5v6hqqdrza_261 ;
		end 
	end 
	if (rst) 
	begin 
	  uqyqktwvzbay4b006hcjtna624o_376 <= 1'b1 ;
	 end 
	else 
	begin 
			uqyqktwvzbay4b006hcjtna624o_376 <= exvaeuhwwntaxiulsmvxu2v9bni6e8jd_284 ;
	end 
	if (rst) 
	begin 
	  dovufyjzelvwc28i0jx1v_870 <= 1'b0 ;
	 end 
	else 
	begin 
			dovufyjzelvwc28i0jx1v_870 <= up03ighm3h3zxkhdaf_508 ;
	end 
	if (rst) 
	begin 
	  d4etfgopvxo89ynt9a0d1t8klq07x_167 <= 1'b1 ;
	 end 
	else 
	begin 
			d4etfgopvxo89ynt9a0d1t8klq07x_167 <= uqyqktwvzbay4b006hcjtna624o_376 ;
	end 
	if (rst) 
	begin 
	  ze7ccrb2ef2ff3mwnrwd530f7qa36_899 <= 1'b0 ;
	 end 
	else 
	begin 
			ze7ccrb2ef2ff3mwnrwd530f7qa36_899 <= dovufyjzelvwc28i0jx1v_870 ;
	end 
		init_done <= gf9vvmi4u0howmijn5gviwo23eik_259 ;
end

endmodule 
