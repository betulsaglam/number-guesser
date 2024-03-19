# Clock signal
set_property PACKAGE_PIN W5 [get_ports {clk}]							
	set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}]
 
# Switches
set_property PACKAGE_PIN V17 [get_ports {switch[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[0]}]
set_property PACKAGE_PIN V16 [get_ports {switch[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[1]}]
set_property PACKAGE_PIN W16 [get_ports {switch[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[2]}]
set_property PACKAGE_PIN W17 [get_ports {switch[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[3]}]
set_property PACKAGE_PIN W15 [get_ports {switch[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[4]}]
set_property PACKAGE_PIN V15 [get_ports {switch[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[5]}]
set_property PACKAGE_PIN W14 [get_ports {switch[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[6]}]
set_property PACKAGE_PIN W13 [get_ports {switch[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {switch[7]}]
#set_property PACKAGE_PIN V2 [get_ports {switches_i[8]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {switches_i[8]}]
#set_property PACKAGE_PIN T3 [get_ports {switches_i[9]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {switches_i[9]}]
#set_property PACKAGE_PIN T2 [get_ports {switches_i[10]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {switches_i[10]}]
#set_property PACKAGE_PIN R3 [get_ports {switches_i[11]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {switches_i[11]}]
#set_property PACKAGE_PIN W2 [get_ports {switches_i[12]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {switches_i[12]}]
#set_property PACKAGE_PIN U1 [get_ports {switches_i[13]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {switches_i[13]}]
#set_property PACKAGE_PIN T1 [get_ports {switches_i[14]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {switches_i[14]}]
#set_property PACKAGE_PIN R2 [get_ports {switches_i[15]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {switches_i[15]}]

# LEDs
set_property PACKAGE_PIN U16 [get_ports {leds_o[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[0]}]
set_property PACKAGE_PIN E19 [get_ports {leds_o[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[1]}]
set_property PACKAGE_PIN U19 [get_ports {leds_o[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[2]}]
set_property PACKAGE_PIN V19 [get_ports {leds_o[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[3]}]
set_property PACKAGE_PIN W18 [get_ports {leds_o[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[4]}]
set_property PACKAGE_PIN U15 [get_ports {leds_o[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[5]}]
set_property PACKAGE_PIN U14 [get_ports {leds_o[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[6]}]
set_property PACKAGE_PIN V14 [get_ports {leds_o[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[7]}]
set_property PACKAGE_PIN V13 [get_ports {leds_o[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[8]}]
set_property PACKAGE_PIN V3 [get_ports {leds_o[9]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[9]}]
set_property PACKAGE_PIN W3 [get_ports {leds_o[10]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[10]}]
set_property PACKAGE_PIN U3 [get_ports {leds_o[11]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[11]}]
set_property PACKAGE_PIN P3 [get_ports {leds_o[12]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[12]}]
set_property PACKAGE_PIN N3 [get_ports {leds_o[13]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[13]}]
set_property PACKAGE_PIN P1 [get_ports {leds_o[14]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[14]}]
set_property PACKAGE_PIN L1 [get_ports {leds_o[15]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {leds_o[15]}]
		
#7 segment display
set_property PACKAGE_PIN W7 [get_ports {seven_seg[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {seven_seg[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {seven_seg[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {seven_seg[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {seven_seg[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {seven_seg[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {seven_seg[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seven_seg[6]}]

set_property PACKAGE_PIN V7 [get_ports {dot}]							
	set_property IOSTANDARD LVCMOS33 [get_ports {dot}]

set_property PACKAGE_PIN U2 [get_ports {anode[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode[0]}]
set_property PACKAGE_PIN U4 [get_ports {anode[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode[1]}]
set_property PACKAGE_PIN V4 [get_ports {anode[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode[2]}]
set_property PACKAGE_PIN W4 [get_ports {anode[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode[3]}]

set_property PACKAGE_PIN U18 [get_ports {btnC_i}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {btnC_i}]
set_property PACKAGE_PIN T18 [get_ports {btnU_i}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {btnU_i}]
#set_property PACKAGE_PIN W19 [get_ports {btnL_i}]						
#	set_property IOSTANDARD LVCMOS33 [get_ports {btnL_i}]
#set_property PACKAGE_PIN T17 [get_ports {btnR_i}]						
#	set_property IOSTANDARD LVCMOS33 [get_ports {btnR_i}]
#set_property PACKAGE_PIN U17 [get_ports {btnD_i}]						
#	set_property IOSTANDARD LVCMOS33 [get_ports {btnD_i}]