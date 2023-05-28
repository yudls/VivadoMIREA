create_clock -add -name sys_clk_pin -period 10 -waveform {0 5} [get_ports
sys_clk]
set_property PACKAGE_PIN E3 [get_ports {sys_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {sys_clk}]
set_property PACKAGE_PIN J15 [get_ports {number[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {number[0]}]
set_property PACKAGE_PIN L16 [get_ports {number[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {number[1]}]
set_property PACKAGE_PIN M13 [get_ports {number[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {number[2]}]
set_property PACKAGE_PIN R15 [get_ports {number[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {number[3]}]
set_property PACKAGE_PIN M18 [get_ports {button_pushed}]
set_property IOSTANDARD LVCMOS33 [get_ports {button_pushed}]
set_property PACKAGE_PIN J17 [get_ports {anodes[0]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {anodes[0]}]
set_property PACKAGE_PIN J18 [get_ports {anodes[1]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {anodes[1]}]
set_property PACKAGE_PIN T9 [get_ports {anodes[2]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {anodes[2]}]
set_property PACKAGE_PIN J14 [get_ports {anodes[3]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {anodes[3]}]
set_property PACKAGE_PIN P14 [get_ports {anodes[4]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {anodes[4]}]
set_property PACKAGE_PIN T14 [get_ports {anodes[5]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {anodes[5]}]
set_property PACKAGE_PIN K2 [get_ports {anodes[6]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {anodes[6]}]
set_property PACKAGE_PIN U13 [get_ports {anodes[7]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {anodes[7]}]
set_property PACKAGE_PIN T10 [get_ports {segments[0]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {segments[0]}]
set_property PACKAGE_PIN R10 [get_ports {segments[1]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {segments[1]}]
set_property PACKAGE_PIN K16 [get_ports {segments[2]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {segments[2]}]
set_property PACKAGE_PIN K13 [get_ports {segments[3]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {segments[3]}]
set_property PACKAGE_PIN P15 [get_ports {segments[4]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {segments[4]}]
set_property PACKAGE_PIN T11 [get_ports {segments[5]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {segments[5]}]
set_property PACKAGE_PIN L18 [get_ports {segments[6]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {segments[6]}]
set_property PACKAGE_PIN H15 [get_ports {segments[7]}]
set_property IOSTanodesDARD LVCMOS33 [get_ports {segments[7]}]