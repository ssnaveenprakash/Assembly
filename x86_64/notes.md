# x86_64 assembly 


## CPU Architecture

### Instruction Encoding and Decoding
 0-4 bytes   | 1-3 bytes   | 0-1 byte      | 0-1 byte                 | 0,1,2,4 bytes     | 0,1,2,4,8 bytes |
-------------|-------------|---------------|--------------------------|-------------------|-----------------|
 `Prefix`    | `Opcode`    | `Mod-Reg R/M` | `Scale-Index-Base (SIB)` | `Displacement`    | `Immediate`     |

### Addressing Modes
* **Immediate Addressing** - we hard code a value in the instruction itself either as an immediate value or as a displacement in SIB mode
* **Register Addressing** - accessing contents of a register, it's very straightforward 
* **Register Indirect Addressing** - effective address of the data is stored in a register and then the data is accessed by dereferencing the effective address  
* **Scale, Index, Base, Displacement Addressing** - we can use a combination of scale, index, base, and displacement to compute an address and then fetch data from that address
  - [base] + [index × scale] + disp32
* **Implied Addressing** - some instructions will assume the operand without explicitly mentioning them in the instruction, _inc and dec_ will assume to add one or decrease by one


## GAS Assembly

### Structure of an assembly program
* Data section - initialized variables and constants
* Bss section -  uninitialized variables
* Text section - contains assembly instructions

### Operand Size Suffixes of GAS Assembly
* b = byte (8 bit).
* s = single (32-bit floating-point).
* w = word (16 bit).
* l = long (32-bit integer or 64-bit floating-point).
* q = quad (64 bit).
* t = ten bytes (80-bit floating point).

### Instruction Syntax

| Mnemonic  | Source | Destination |   
| ------------- | ------------- | ----------- |

**Opcode/Mnemonic** - Operation code like ```mov,add,sub```  
**Source** - Immediate / Register   
**Destination** - Register   







