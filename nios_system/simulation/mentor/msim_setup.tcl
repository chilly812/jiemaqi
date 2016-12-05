
# (C) 2001-2016 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 linux 2016.12.04.18:51:20

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "nios_system"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} 

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/package/eda/altera/altera13.0sp1/quartus/"
} 


# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_dc_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_dc_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_dc_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_b.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_bht_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ic_tag_ram.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
  ensure_lib                  ./libraries/altera_ver/      
  vmap       altera_ver       ./libraries/altera_ver/      
  ensure_lib                  ./libraries/lpm_ver/         
  vmap       lpm_ver          ./libraries/lpm_ver/         
  ensure_lib                  ./libraries/sgate_ver/       
  vmap       sgate_ver        ./libraries/sgate_ver/       
  ensure_lib                  ./libraries/altera_mf_ver/   
  vmap       altera_mf_ver    ./libraries/altera_mf_ver/   
  ensure_lib                  ./libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver/
  ensure_lib                  ./libraries/cycloneive_ver/  
  vmap       cycloneive_ver   ./libraries/cycloneive_ver/  
}
ensure_lib                                                                                   ./libraries/tda/                                                                              
vmap       tda                                                                               ./libraries/tda/                                                                              
ensure_lib                                                                                   ./libraries/tdt/                                                                              
vmap       tdt                                                                               ./libraries/tdt/                                                                              
ensure_lib                                                                                   ./libraries/irq_mapper/                                                                       
vmap       irq_mapper                                                                        ./libraries/irq_mapper/                                                                       
ensure_lib                                                                                   ./libraries/crosser/                                                                          
vmap       crosser                                                                           ./libraries/crosser/                                                                          
ensure_lib                                                                                   ./libraries/width_adapter/                                                                    
vmap       width_adapter                                                                     ./libraries/width_adapter/                                                                    
ensure_lib                                                                                   ./libraries/rsp_xbar_mux_001/                                                                 
vmap       rsp_xbar_mux_001                                                                  ./libraries/rsp_xbar_mux_001/                                                                 
ensure_lib                                                                                   ./libraries/rsp_xbar_mux/                                                                     
vmap       rsp_xbar_mux                                                                      ./libraries/rsp_xbar_mux/                                                                     
ensure_lib                                                                                   ./libraries/rsp_xbar_demux_004/                                                               
vmap       rsp_xbar_demux_004                                                                ./libraries/rsp_xbar_demux_004/                                                               
ensure_lib                                                                                   ./libraries/rsp_xbar_demux_003/                                                               
vmap       rsp_xbar_demux_003                                                                ./libraries/rsp_xbar_demux_003/                                                               
ensure_lib                                                                                   ./libraries/rsp_xbar_demux_001/                                                               
vmap       rsp_xbar_demux_001                                                                ./libraries/rsp_xbar_demux_001/                                                               
ensure_lib                                                                                   ./libraries/rsp_xbar_demux/                                                                   
vmap       rsp_xbar_demux                                                                    ./libraries/rsp_xbar_demux/                                                                   
ensure_lib                                                                                   ./libraries/cmd_xbar_mux_001/                                                                 
vmap       cmd_xbar_mux_001                                                                  ./libraries/cmd_xbar_mux_001/                                                                 
ensure_lib                                                                                   ./libraries/cmd_xbar_mux/                                                                     
vmap       cmd_xbar_mux                                                                      ./libraries/cmd_xbar_mux/                                                                     
ensure_lib                                                                                   ./libraries/cmd_xbar_demux_002/                                                               
vmap       cmd_xbar_demux_002                                                                ./libraries/cmd_xbar_demux_002/                                                               
ensure_lib                                                                                   ./libraries/cmd_xbar_demux_001/                                                               
vmap       cmd_xbar_demux_001                                                                ./libraries/cmd_xbar_demux_001/                                                               
ensure_lib                                                                                   ./libraries/cmd_xbar_demux/                                                                   
vmap       cmd_xbar_demux                                                                    ./libraries/cmd_xbar_demux/                                                                   
ensure_lib                                                                                   ./libraries/rst_controller/                                                                   
vmap       rst_controller                                                                    ./libraries/rst_controller/                                                                   
ensure_lib                                                                                   ./libraries/burst_adapter/                                                                    
vmap       burst_adapter                                                                     ./libraries/burst_adapter/                                                                    
ensure_lib                                                                                   ./libraries/limiter/                                                                          
vmap       limiter                                                                           ./libraries/limiter/                                                                          
ensure_lib                                                                                   ./libraries/id_router_004/                                                                    
vmap       id_router_004                                                                     ./libraries/id_router_004/                                                                    
ensure_lib                                                                                   ./libraries/id_router_003/                                                                    
vmap       id_router_003                                                                     ./libraries/id_router_003/                                                                    
ensure_lib                                                                                   ./libraries/id_router_001/                                                                    
vmap       id_router_001                                                                     ./libraries/id_router_001/                                                                    
ensure_lib                                                                                   ./libraries/id_router/                                                                        
vmap       id_router                                                                         ./libraries/id_router/                                                                        
ensure_lib                                                                                   ./libraries/addr_router_002/                                                                  
vmap       addr_router_002                                                                   ./libraries/addr_router_002/                                                                  
ensure_lib                                                                                   ./libraries/addr_router_001/                                                                  
vmap       addr_router_001                                                                   ./libraries/addr_router_001/                                                                  
ensure_lib                                                                                   ./libraries/addr_router/                                                                      
vmap       addr_router                                                                       ./libraries/addr_router/                                                                      
ensure_lib                                                                                   ./libraries/nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
vmap       nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo ./libraries/nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
ensure_lib                                                                                   ./libraries/nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent/         
vmap       nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent          ./libraries/nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent/         
ensure_lib                                                                                   ./libraries/nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent/       
vmap       nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent        ./libraries/nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent/       
ensure_lib                                                                                   ./libraries/nios2_qsys_0_jtag_debug_module_translator/                                        
vmap       nios2_qsys_0_jtag_debug_module_translator                                         ./libraries/nios2_qsys_0_jtag_debug_module_translator/                                        
ensure_lib                                                                                   ./libraries/nios2_qsys_0_instruction_master_translator/                                       
vmap       nios2_qsys_0_instruction_master_translator                                        ./libraries/nios2_qsys_0_instruction_master_translator/                                       
ensure_lib                                                                                   ./libraries/nios2_qsys_0_custom_instruction_master_comb_slave_translator0/                    
vmap       nios2_qsys_0_custom_instruction_master_comb_slave_translator0                     ./libraries/nios2_qsys_0_custom_instruction_master_comb_slave_translator0/                    
ensure_lib                                                                                   ./libraries/nios2_qsys_0_custom_instruction_master_comb_xconnect/                             
vmap       nios2_qsys_0_custom_instruction_master_comb_xconnect                              ./libraries/nios2_qsys_0_custom_instruction_master_comb_xconnect/                             
ensure_lib                                                                                   ./libraries/nios2_qsys_0_custom_instruction_master_translator/                                
vmap       nios2_qsys_0_custom_instruction_master_translator                                 ./libraries/nios2_qsys_0_custom_instruction_master_translator/                                
ensure_lib                                                                                   ./libraries/sysid_qsys_0/                                                                     
vmap       sysid_qsys_0                                                                      ./libraries/sysid_qsys_0/                                                                     
ensure_lib                                                                                   ./libraries/put_pixel_rows_hw_0/                                                              
vmap       put_pixel_rows_hw_0                                                               ./libraries/put_pixel_rows_hw_0/                                                              
ensure_lib                                                                                   ./libraries/put_pixel_rows_0/                                                                 
vmap       put_pixel_rows_0                                                                  ./libraries/put_pixel_rows_0/                                                                 
ensure_lib                                                                                   ./libraries/ycc_rgb_convert_0/                                                                
vmap       ycc_rgb_convert_0                                                                 ./libraries/ycc_rgb_convert_0/                                                                
ensure_lib                                                                                   ./libraries/timer_0/                                                                          
vmap       timer_0                                                                           ./libraries/timer_0/                                                                          
ensure_lib                                                                                   ./libraries/switches/                                                                         
vmap       switches                                                                          ./libraries/switches/                                                                         
ensure_lib                                                                                   ./libraries/gleds/                                                                            
vmap       gleds                                                                             ./libraries/gleds/                                                                            
ensure_lib                                                                                   ./libraries/rleds/                                                                            
vmap       rleds                                                                             ./libraries/rleds/                                                                            
ensure_lib                                                                                   ./libraries/performance_counter_0/                                                            
vmap       performance_counter_0                                                             ./libraries/performance_counter_0/                                                            
ensure_lib                                                                                   ./libraries/tristate_conduit_bridge_0/                                                        
vmap       tristate_conduit_bridge_0                                                         ./libraries/tristate_conduit_bridge_0/                                                        
ensure_lib                                                                                   ./libraries/generic_tristate_controller_0/                                                    
vmap       generic_tristate_controller_0                                                     ./libraries/generic_tristate_controller_0/                                                    
ensure_lib                                                                                   ./libraries/video_vga_controller_0/                                                           
vmap       video_vga_controller_0                                                            ./libraries/video_vga_controller_0/                                                           
ensure_lib                                                                                   ./libraries/video_dual_clock_buffer_0/                                                        
vmap       video_dual_clock_buffer_0                                                         ./libraries/video_dual_clock_buffer_0/                                                        
ensure_lib                                                                                   ./libraries/video_rgb_resampler_0/                                                            
vmap       video_rgb_resampler_0                                                             ./libraries/video_rgb_resampler_0/                                                            
ensure_lib                                                                                   ./libraries/video_pixel_buffer_dma_0/                                                         
vmap       video_pixel_buffer_dma_0                                                          ./libraries/video_pixel_buffer_dma_0/                                                         
ensure_lib                                                                                   ./libraries/new_sdram_controller_0/                                                           
vmap       new_sdram_controller_0                                                            ./libraries/new_sdram_controller_0/                                                           
ensure_lib                                                                                   ./libraries/jtag_uart_0/                                                                      
vmap       jtag_uart_0                                                                       ./libraries/jtag_uart_0/                                                                      
ensure_lib                                                                                   ./libraries/nios2_qsys_0/                                                                     
vmap       nios2_qsys_0                                                                      ./libraries/nios2_qsys_0/                                                                     

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v" -work altera_ver      
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"          -work lpm_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"             -work sgate_ver       
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v"  -work cycloneive_ver  
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog -sv "$QSYS_SIMDIR/submodules/altera_tristate_controller_aggregator.sv"                            -work tda                                                                              
  vlog -sv "$QSYS_SIMDIR/submodules/altera_tristate_controller_translator.sv"                            -work tdt                                                                              
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_irq_mapper.sv"                                           -work irq_mapper                                                                       
  vlog     "$QSYS_SIMDIR/submodules/altera_avalon_st_handshake_clock_crosser.v"                          -work crosser                                                                          
  vlog     "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                    -work crosser                                                                          
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                    -work crosser                                                                          
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                      -work width_adapter                                                                    
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                  -work width_adapter                                                                    
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                 -work width_adapter                                                                    
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                         -work rsp_xbar_mux_001                                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_mux_001.sv"                                     -work rsp_xbar_mux_001                                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                         -work rsp_xbar_mux                                                                     
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_mux.sv"                                         -work rsp_xbar_mux                                                                     
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux_004.sv"                                   -work rsp_xbar_demux_004                                                               
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux_003.sv"                                   -work rsp_xbar_demux_003                                                               
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux_001.sv"                                   -work rsp_xbar_demux_001                                                               
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_rsp_xbar_demux.sv"                                       -work rsp_xbar_demux                                                                   
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                         -work cmd_xbar_mux_001                                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_mux_001.sv"                                     -work cmd_xbar_mux_001                                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                         -work cmd_xbar_mux                                                                     
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_mux.sv"                                         -work cmd_xbar_mux                                                                     
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_demux_002.sv"                                   -work cmd_xbar_demux_002                                                               
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_demux_001.sv"                                   -work cmd_xbar_demux_001                                                               
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_cmd_xbar_demux.sv"                                       -work cmd_xbar_demux                                                                   
  vlog     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                           -work rst_controller                                                                   
  vlog     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                         -work rst_controller                                                                   
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                      -work burst_adapter                                                                    
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                  -work burst_adapter                                                                    
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                    -work limiter                                                                          
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                    -work limiter                                                                          
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_004.sv"                                        -work id_router_004                                                                    
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_003.sv"                                        -work id_router_003                                                                    
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router_001.sv"                                        -work id_router_001                                                                    
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_id_router.sv"                                            -work id_router                                                                        
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router_002.sv"                                      -work addr_router_002                                                                  
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router_001.sv"                                      -work addr_router_001                                                                  
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_addr_router.sv"                                          -work addr_router                                                                      
  vlog     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                             -work nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                        -work nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                 -work nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                       -work nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent       
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                   -work nios2_qsys_0_jtag_debug_module_translator                                        
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                  -work nios2_qsys_0_instruction_master_translator                                       
  vlog -sv "$QSYS_SIMDIR/submodules/altera_customins_slave_translator.sv"                                -work nios2_qsys_0_custom_instruction_master_comb_slave_translator0                    
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_custom_instruction_master_comb_xconnect.sv" -work nios2_qsys_0_custom_instruction_master_comb_xconnect                             
  vlog     "$QSYS_SIMDIR/submodules/altera_customins_master_translator.v"                                -work nios2_qsys_0_custom_instruction_master_translator                                
  vlog     "$QSYS_SIMDIR/submodules/nios_system_sysid_qsys_0.vo"                                         -work sysid_qsys_0                                                                     
  vlog     "$QSYS_SIMDIR/submodules/put_pixel_rows_hw.v"                                                 -work put_pixel_rows_hw_0                                                              
  vlog     "$QSYS_SIMDIR/submodules/put_pixel_rows.v"                                                    -work put_pixel_rows_0                                                                 
  vlog     "$QSYS_SIMDIR/submodules/ycc_rgb_convert.v"                                                   -work ycc_rgb_convert_0                                                                
  vlog     "$QSYS_SIMDIR/submodules/nios_system_timer_0.v"                                               -work timer_0                                                                          
  vlog     "$QSYS_SIMDIR/submodules/nios_system_switches.v"                                              -work switches                                                                         
  vlog     "$QSYS_SIMDIR/submodules/nios_system_gleds.v"                                                 -work gleds                                                                            
  vlog     "$QSYS_SIMDIR/submodules/nios_system_rleds.v"                                                 -work rleds                                                                            
  vlog     "$QSYS_SIMDIR/submodules/nios_system_performance_counter_0.v"                                 -work performance_counter_0                                                            
  vlog -sv "$QSYS_SIMDIR/submodules/nios_system_tristate_conduit_bridge_0.sv"                            -work tristate_conduit_bridge_0                                                        
  vlog     "$QSYS_SIMDIR/submodules/nios_system_generic_tristate_controller_0.v"                         -work generic_tristate_controller_0                                                    
  vlog     "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"                                 -work video_vga_controller_0                                                           
  vlog     "$QSYS_SIMDIR/submodules/nios_system_video_vga_controller_0.v"                                -work video_vga_controller_0                                                           
  vlog     "$QSYS_SIMDIR/submodules/nios_system_video_dual_clock_buffer_0.v"                             -work video_dual_clock_buffer_0                                                        
  vlog     "$QSYS_SIMDIR/submodules/nios_system_video_rgb_resampler_0.v"                                 -work video_rgb_resampler_0                                                            
  vlog     "$QSYS_SIMDIR/submodules/nios_system_video_pixel_buffer_dma_0.v"                              -work video_pixel_buffer_dma_0                                                         
  vlog     "$QSYS_SIMDIR/submodules/nios_system_new_sdram_controller_0_test_component.v"                 -work new_sdram_controller_0                                                           
  vlog     "$QSYS_SIMDIR/submodules/nios_system_new_sdram_controller_0.v"                                -work new_sdram_controller_0                                                           
  vlog     "$QSYS_SIMDIR/submodules/nios_system_jtag_uart_0.v"                                           -work jtag_uart_0                                                                      
  vlog     "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0.vo"                                         -work nios2_qsys_0                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_jtag_debug_module_wrapper.v"                -work nios2_qsys_0                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_jtag_debug_module_sysclk.v"                 -work nios2_qsys_0                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_jtag_debug_module_tck.v"                    -work nios2_qsys_0                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_oci_test_bench.v"                           -work nios2_qsys_0                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_mult_cell.v"                                -work nios2_qsys_0                                                                     
  vlog     "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_test_bench.v"                               -work nios2_qsys_0                                                                     
  vlog     "$QSYS_SIMDIR/nios_system.v"                                                                                                                                                         
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim -t ps -L work -L work_lib -L tda -L tdt -L irq_mapper -L crosser -L width_adapter -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_004 -L rsp_xbar_demux_003 -L rsp_xbar_demux_001 -L rsp_xbar_demux -L cmd_xbar_mux_001 -L cmd_xbar_mux -L cmd_xbar_demux_002 -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L burst_adapter -L limiter -L id_router_004 -L id_router_003 -L id_router_001 -L id_router -L addr_router_002 -L addr_router_001 -L addr_router -L nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent -L nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent -L nios2_qsys_0_jtag_debug_module_translator -L nios2_qsys_0_instruction_master_translator -L nios2_qsys_0_custom_instruction_master_comb_slave_translator0 -L nios2_qsys_0_custom_instruction_master_comb_xconnect -L nios2_qsys_0_custom_instruction_master_translator -L sysid_qsys_0 -L put_pixel_rows_hw_0 -L put_pixel_rows_0 -L ycc_rgb_convert_0 -L timer_0 -L switches -L gleds -L rleds -L performance_counter_0 -L tristate_conduit_bridge_0 -L generic_tristate_controller_0 -L video_vga_controller_0 -L video_dual_clock_buffer_0 -L video_rgb_resampler_0 -L video_pixel_buffer_dma_0 -L new_sdram_controller_0 -L jtag_uart_0 -L nios2_qsys_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -novopt -t ps -L work -L work_lib -L tda -L tdt -L irq_mapper -L crosser -L width_adapter -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_004 -L rsp_xbar_demux_003 -L rsp_xbar_demux_001 -L rsp_xbar_demux -L cmd_xbar_mux_001 -L cmd_xbar_mux -L cmd_xbar_demux_002 -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L burst_adapter -L limiter -L id_router_004 -L id_router_003 -L id_router_001 -L id_router -L addr_router_002 -L addr_router_001 -L addr_router -L nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent -L nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent -L nios2_qsys_0_jtag_debug_module_translator -L nios2_qsys_0_instruction_master_translator -L nios2_qsys_0_custom_instruction_master_comb_slave_translator0 -L nios2_qsys_0_custom_instruction_master_comb_xconnect -L nios2_qsys_0_custom_instruction_master_translator -L sysid_qsys_0 -L put_pixel_rows_hw_0 -L put_pixel_rows_0 -L ycc_rgb_convert_0 -L timer_0 -L switches -L gleds -L rleds -L performance_counter_0 -L tristate_conduit_bridge_0 -L generic_tristate_controller_0 -L video_vga_controller_0 -L video_dual_clock_buffer_0 -L video_rgb_resampler_0 -L video_pixel_buffer_dma_0 -L new_sdram_controller_0 -L jtag_uart_0 -L nios2_qsys_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
