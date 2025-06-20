# === Configuration ===
TOP     := and_gate_tb
SRC     := and_gate.v and_gate_tb.v
OUT     := build
BIN     := $(OUT)/and_gate_sim
VCD     := wave.vcd

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
