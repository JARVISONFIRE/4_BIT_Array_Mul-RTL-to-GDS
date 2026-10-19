
# Read the RTL
read_verilog rtl/full_adder.v rtl/mult_array.v

# Generic synthesis and flattening
synth -top mult_array -flatten

# Save generic cell statistics
tee -o synth/mult_array_stat.rpt stat

# Export synthesized Verilog netlist
write_verilog -noattr synth/mult_array_netlist.v
