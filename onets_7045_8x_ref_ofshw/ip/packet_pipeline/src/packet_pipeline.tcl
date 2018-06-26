set ip_proj_root [pwd]
set ip_proj_name "packet_pipeline"
set ip_proj_part "xc7z045ffg676-2"

create_project $ip_proj_name $ip_proj_root -part $ip_proj_part -force

add_files ./src/common/axis_control_if.v
add_files ./src/common/axis_converter_rx.v
add_files ./src/common/axis_converter_tx.v
add_files ./src/common/fallthrough_small_fifo_v2.v
add_files ./src/common/pkt_len_fifo_12x32/pkt_len_fifo_12x32.xci
add_files ./src/common/small_fifo_v3.v
add_files ./src/input_pipeline/input_arbiter.v
add_files ./src/input_pipeline/onet_core_logic.v
add_files ./src/input_pipeline/packet_input_pipeline.v
add_files ./src/input_pipeline/packet_input_quad.v
add_files ./src/input_pipeline/user_data_path.v
add_files ./src/output_pipeline/onet_core_output.v
add_files ./src/output_pipeline/output_scheduler.v
add_files ./src/output_pipeline/packet_output_pipeline.v
add_files ./src/packet_pipeline.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/ACL.HDL/ACL.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/ACL.HDL/ACL.vp
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/OF_parser.HDL/OF_parser.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/OF_parser.HDL/OF_parser.vp
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/OpenFlowDemo.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_BRIDGERs.HDL/S_BRIDGER_for_lookup_tuple_in_request.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_BRIDGERs.HDL/S_BRIDGER_for_lookup_tuple_in_request.vp
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_CONTROLLERs.HDL/S_CONTROLLER_OpenFlowDemo.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_CONTROLLERs.HDL/S_CONTROLLER_OpenFlowDemo.vp
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_PROTOCOL_ADAPTERs.HDL/S_PROTOCOL_ADAPTER_EGRESS.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_PROTOCOL_ADAPTERs.HDL/S_PROTOCOL_ADAPTER_EGRESS.vp
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_PROTOCOL_ADAPTERs.HDL/S_PROTOCOL_ADAPTER_INGRESS.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_PROTOCOL_ADAPTERs.HDL/S_PROTOCOL_ADAPTER_INGRESS.vp
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_RESETTER.HDL/S_RESETTER_control.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_RESETTER.HDL/S_RESETTER_line.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_RESETTER.HDL/S_RESETTER_lookup.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_SYNCERs.HDL/S_SYNCER_for_S_PROTOCOL_ADAPTER_EGRESS.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_SYNCERs.HDL/S_SYNCER_for_S_SYNCER_for_S_PROTOCOL_ADAPTER_EGRESS.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_SYNCERs.HDL/S_SYNCER_for__OUT_.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_SYNCERs.HDL/xpm_cdc.sv
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_SYNCERs.HDL/xpm_fifo.sv
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/S_SYNCERs.HDL/xpm_memory.sv
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/update_phy_dst_port.HDL/update_phy_dst_port.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/update_phy_dst_port.HDL/update_phy_dst_port.vp
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/update_phy_src_port.HDL/update_phy_src_port.v
add_files ./src/sdnet/OpenFlowDemo/work_OpenFlowDemo/OpenFlowDemo/update_phy_src_port.HDL/update_phy_src_port.vp

set_property top packet_pipeline [current_fileset]

cd $ip_proj_root

ipx::package_project -root_dir $ip_proj_root -vendor user.org -library user -taxonomy /UserIP

ipx::associate_bus_interface -busif m_axis_s2mm_0 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_1 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_2 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_3 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_4 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_5 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_6 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_7 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_sts_0 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_sts_1 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_sts_2 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_sts_3 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_sts_4 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_sts_5 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_sts_6 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_s2mm_sts_7 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txc_0 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txc_1 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txc_2 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txc_3 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txc_4 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txc_5 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txc_6 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txc_7 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txd_0 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txd_1 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txd_2 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txd_3 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txd_4 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txd_5 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txd_6 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif m_axis_txd_7 -clock s_axis_txd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxs_0 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxs_1 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxs_2 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxs_3 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxs_4 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxs_5 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxs_6 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxs_7 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxd_0 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxd_1 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxd_2 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxd_3 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxd_4 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxd_5 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxd_6 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_rxd_7 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_mm2s_0 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_mm2s_1 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_mm2s_2 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_mm2s_3 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_mm2s_4 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_mm2s_5 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_mm2s_6 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_mm2s_7 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_ctrl_0 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_ctrl_1 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_ctrl_2 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_ctrl_3 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_ctrl_4 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_ctrl_5 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_ctrl_6 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axis_ctrl_7 -clock s_axis_rxd_aclk [ipx::current_core]
ipx::associate_bus_interface -busif s_axi_lite -clock s_axi_lite_aclk [ipx::current_core]
ipx::associate_bus_interface -busif control_S_AXI -clock s_axi_lite_aclk [ipx::current_core]
ipx::open_ipxact_file component.xml
set_property core_revision 1 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::save_core [ipx::current_core]
ipx::archive_core $ip_proj_name.zip [ipx::current_core]
set_property ip_repo_paths $ip_proj_root [current_project]
update_ip_catalog

