# === Configuration ===
TOP  := tb                    # Top-level testbench module name
SRC  := $(wildcard *.v)       # All Verilog files in the directory
OUT  := build
BIN  := $(OUT)/sim_out
VCD  := wave.vcd

# === Tools ===
IVERILOG := iverilog
VVP      := vvp
GTKWAVE  := gtkwave

# === Default Target ===
all: $(BIN)

# === Compile Simulation Binary ===
$(BIN): $(SRC)
	mkdir -p $(OUT)
	$(IVERILOG) -o $@ $(SRC)

# === Run Simulation ===
run: $(BIN)
	$(VVP) $<

# === View Waveform ===
view: run
	$(GTKWAVE) $(VCD)

# === Clean Build Artifacts ===
clean:
	rm -rf $(OUT) $(VCD)

.PHONY: all run view clean
