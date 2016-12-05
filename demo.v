module demo ( 
	CLOCK_50, SW, KEY, LEDG, LEDR , 
	DRAM_CLK, DRAM_CKE, DRAM_ADDR, DRAM_BA, DRAM_CS_N , 
	DRAM_CAS_N, DRAM_RAS_N, DRAM_WE_N, DRAM_DQ, DRAM_DQM, 
	SRAM_ADDR, SRAM_DQ, SRAM_WE_N, 
	SRAM_OE_N, SRAM_UB_N, SRAM_LB_N, SRAM_CE_N,
	FL_ADDR, FL_DQ, FL_CE_N, FL_OE_N, FL_RST_N, FL_WE_N, FL_WP_N, FL_RY, 
	VGA_R, VGA_G, VGA_B, VGA_BLANK, VGA_HS, VGA_VS, VGA_SYNC, VGA_CLK 
	);		
	
	// Base clock
	input CLOCK_50;

	// Peripherals
	input [17:0] SW ; 
	input [3:0] KEY ;
	output [8:0] LEDG ; 
	output [17:0] LEDR ;

	// Off-chip SDRAM
	output 	[12:0] DRAM_ADDR;
	output	[1:0] DRAM_BA;
	output	DRAM_CAS_N;
	output	DRAM_CKE;
	output	DRAM_CLK;
	output	DRAM_CS_N;
	inout	[31:0] DRAM_DQ;
	output	[3:0] DRAM_DQM;
	output	DRAM_RAS_N;
	output	DRAM_WE_N;

	// Off-chip SRAM
	output [17:0] SRAM_ADDR;  
	inout  [15:0] SRAM_DQ ; 
	output SRAM_WE_N;
	output SRAM_OE_N;
	output SRAM_UB_N;
	output SRAM_LB_N;
	output SRAM_CE_N;
	
	// Off-chip Flash storage
	output [22:0] FL_ADDR;
	inout  [7:0] FL_DQ;
	output FL_CE_N; // chip select
	output FL_OE_N; // read enable
	output FL_WE_N; // write enable
	output FL_WP_N; // write protect
	output FL_RST_N; // chip reset
	input  FL_RY; // ready/busy
        assign FL_RST_N = 1'b1;
        assign FL_WP_N = 1'b1;
	// VGA controller
	output [9:0] VGA_R, VGA_G, VGA_B;
	output VGA_BLANK, VGA_HS, VGA_VS, VGA_SYNC;
	output VGA_CLK; 

	// 50 MHz clock for the Nios system
	wire SOC_CLK;

	// PLL for clock generation
	pll pll_inst
		(
		.inclk0(CLOCK_50),
		.c1(VGA_CLK),
		.c0(DRAM_CLK),	
		.c2(SOC_CLK)
		);

	// Nios system
	nios_system nios_sytem_inst
		( 
		.clk_clk(SOC_CLK) ,                                         //                                       clk.clk
		.reset_reset_n(KEY[0]),                                   //                                     reset.reset_n
		.new_sdram_controller_0_wire_addr(DRAM_ADDR),                //               new_sdram_controller_0_wire.addr
		.new_sdram_controller_0_wire_ba(DRAM_BA)   ,               //                                          .ba
		.new_sdram_controller_0_wire_cas_n(DRAM_CAS_N) ,               //                                          .cas_n
		.new_sdram_controller_0_wire_cke(DRAM_CKE) ,                 //                                          .cke
		.new_sdram_controller_0_wire_cs_n(DRAM_CS_N) ,                //                                          .cs_n\
		.new_sdram_controller_0_wire_dq(DRAM_DQ),                  //                                          .dq
		.new_sdram_controller_0_wire_dqm(DRAM_DQM),                 //                                          .dqm
		.new_sdram_controller_0_wire_ras_n(DRAM_RAS_N),               //                                          .ras_n
		.new_sdram_controller_0_wire_we_n(DRAM_WE_N),                //                                          .we_n
		.rleds_external_connection_export(LEDR),                //                 rleds_external_connection.export
		.gleds_external_connection_export(LEDG),                //                 gleds_external_connection.export
		.switches_external_connection_export(SW),             //              switches_external_connection.export
		.video_vga_controller_0_external_interface_CLK(),   // video_vga_controller_0_external_interface.CLK
		.video_vga_controller_0_external_interface_HS(VGA_HS),    //                                          .HS
		.video_vga_controller_0_external_interface_VS(VGA_VS),    //                                          .VS
		.video_vga_controller_0_external_interface_BLANK(VGA_BLANK), //                                          .BLANK
		.video_vga_controller_0_external_interface_SYNC(VGA_SYNC),  //                                          .SYNC
		.video_vga_controller_0_external_interface_R(VGA_R),     //                                          .R
		.video_vga_controller_0_external_interface_G(VGA_G),     //                                          .G
		.video_vga_controller_0_external_interface_B(VGA_B) ,    //                                          .B
		.clk_0_clk(VGA_CLK), 
		.reset_0_reset_n(KEY[0]),
                .tristate_conduit_bridge_0_out_tcm_address_out(FL_ADDR),
                .tristate_conduit_bridge_0_out_tcm_read_n_out(FL_OE_N),
                .tristate_conduit_bridge_0_out_tcm_write_n_out(FL_WE_N),
                .tristate_conduit_bridge_0_out_tcm_data_out(FL_DQ),
                .tristate_conduit_bridge_0_out_tcm_chipselect_n_out(FL_CE_N)
		);


endmodule 












