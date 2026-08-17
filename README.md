# Day 27 — 4-Bit Carry Look-Ahead Adder Using Verilog HDL

This project focuses on the design and verification of a **4-Bit Carry Look-Ahead Adder (CLA)** using Verilog HDL.

A Carry Look-Ahead Adder is a fast arithmetic circuit that reduces carry propagation delay by calculating carry signals in advance using Generate and Propagate logic.

## 🔹 Design Features

- 4-Bit Carry Look-Ahead Adder
- Generate Logic
- Propagate Logic
- Carry Look-Ahead Logic
- Parallel Carry Generation
- Sum Generation
- Verilog HDL RTL Design
- Testbench Verification
- Simulation Waveform Analysis
- RTL Schematic
- Gate-Level Schematic

## 🔹 Generate and Propagate

Generate:

G[i] = A[i] & B[i]

Propagate:

P[i] = A[i] ^ B[i]

Sum:

SUM[i] = P[i] ^ C[i]

## 🔹 Carry Equations

C1 = G0 + P0C0

C2 = G1 + P1G0 + P1P0C0

C3 = G2 + P2G1 + P2P1G0 + P2P1P0C0

C4 = G3 + P3G2 + P3P2G1 + P3P2P1G0 + P3P2P1P0C0

## 🔹 Carry Look-Ahead Operation

A[3:0], B[3:0]
        ↓
Generate & Propagate
        ↓
Carry Look-Ahead Logic
        ↓
C1, C2, C3, C4
        ↓
Sum Generation
        ↓
SUM[3:0], C_OUT

## 🔹 Verification

The CLA was verified using a Verilog testbench in Xilinx Vivado.

The simulation waveform was analyzed to verify:

- Input A
- Input B
- Carry Input
- Generate signals
- Propagate signals
- Carry signals
- Sum
- Carry Output

## 🔹 Project Files

- `full_adder.v`
- `cla_4bit.v`
- `cla_tb.v`

## 🔹 Tools Used

- Verilog HDL
- Xilinx Vivado
- VS Code

## 🔹 Learning Outcomes

Through this project, I learned:

- Carry Look-Ahead Adder architecture
- Generate and Propagate concepts
- Parallel carry generation
- Carry propagation delay
- Sum generation
- Verilog RTL design
- Testbench development
- Simulation and waveform analysis
- RTL and gate-level schematic analysis

## 🚀 100 Days of RTL Design

**Day 27 completed — 4-Bit Carry Look-Ahead Adder using Verilog HDL.**
