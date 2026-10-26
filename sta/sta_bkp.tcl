set lib $::env(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

set period 10.0
if {[info exists ::env(STA_PERIOD)]} {
    set period $::env(STA_PERIOD)
}

read_liberty $lib
read_verilog synth/mult_array_netlist.v
link_design mult_array

create_clock -name clk -period $period [get_ports clk]
report_checks -path_delay max \
    -from [all_registers -output_pins] \
    -to [all_registers -data_pins] \
    -format full_clock_expanded \
    -fields {slew cap input_pin nets fanout} \
    -digits 3
set_input_delay 1.0 -clock clk [delete_from_list [all_inputs] [get_ports clk]]
set_output_delay 1.0 -clock clk [all_outputs]

report_worst_slack -max
report_checks -path_delay max -digits 3 > sta/mult_array_timing.rpt
