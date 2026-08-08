# 8-Bit ALU using Verilog

## 📌 Project Description

An 8-bit Arithmetic Logic Unit (ALU) is a digital circuit that performs arithmetic and logical operations on two 8-bit binary inputs. This project implements an 8-bit ALU using Verilog HDL and verifies its functionality using a testbench and simulation.

## 🎯 Features

- 8-bit input operands
- Performs arithmetic and logical operations
- Verilog HDL implementation
- Includes a testbench for verification
- Simulation waveforms can be viewed using tools such as EDA Playground, Icarus Verilog, or ModelSim

## ⚙️ Operations

| Select | Operation | Description |
|--------|-----------|-------------|
| `000` | Addition | A + B |
| `001` | Subtraction | A - B |
| `010` | AND | A & B |
| `011` | OR | A \| B |
| `100` | XOR | A ^ B |
| `101` | NOT | ~A |
| `110` | Left Shift | A << 1 |
| `111` | Right Shift | A >> 1 |

## 🧩 Inputs

- `A` – 8-bit input operand
- `B` – 8-bit input operand
- `sel` – 3-bit operation select signal

## 📤 Outputs

- `result` – 8-bit ALU output
- `carry` – Carry output for arithmetic operations

## 📁 Project Structure

```text
8-bit-ALU/
│
├── README.md
├── alu_8bit.v
├── alu_8bit_tb.v
└── simulation/
    └── waveform.png