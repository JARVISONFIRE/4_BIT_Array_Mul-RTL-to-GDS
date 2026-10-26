# 4-Bit Array Multiplier: RTL to GDSII

## Team Members
- Harry Jain - 2024112005
- Aheb Khan - 2026802001

## Commands Run (in order)

### Part A - RTL Design and Verification
```bash
iverilog -g2012 -o sim tb/tb_mult.v rtl/full_adder.v rtl/mult_array.v
vvp sim
gtkwave mult.vcd

```

### Part B - Logic Synthesis with Yosys

```bash
yosys -c synth/synth.tcl
CELLS=$PDK_ROOT/sky130A/libs.ref/sky130_fd_sc_hd/verilog
iverilog -g2012 -DFUNCTIONAL -DUNIT_DELAY=#1 -o gls \
  tb/tb_mult.v $CELLS/primitives.v $CELLS/sky130_fd_sc_hd.v synth/mult_array_netlist.v
vvp gls

```

### Part C - Static Timing Analysis with OpenSTA

```bash
sta -exit sta/sta.tcl
STA_PERIOD=3.20 sta -exit sta/sta.tcl

```

### Part D - Physical Design with LibreLane

```bash
cd pnr
librelane --run-tag attempt1 config.json
librelane -p sky130A --run-tag attempt1 config.json
librelane -p sky130A --scl sky130_fd_sc_hd --run-tag attempt1 config.json
cp runs/attempt1/final/metrics.json metrics.json
cp runs/attempt1/final/gds/mult_array.gds mult_array.gds
cd ..

```


