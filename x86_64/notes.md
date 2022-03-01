# x86_64 assembly - AT & T Syntax - GAS Assembler 

## Structure of an assembly program
* data section - initialized variables and constants
* bss section -  uninitialized variables
* text section - contains assembly instructions

## Operand Size Suffixes
* b = byte (8 bit).
* s = single (32-bit floating-point).
* w = word (16 bit).
* l = long (32-bit integer or 64-bit floating-point).
* q = quad (64 bit).
* t = ten bytes (80-bit floating point).

## Instruction Syntax

| Mnemonic  | Source | Destination |   
| ------------- | ------------- | ----------- |

**Opcode/Mnemonic** - Operation code like ```mov,add,sub```  
**Source** - Immediate / Register   
**Destination** - Register   


## Processor Operating Modes


## Addressing Modes
* **Immediate Addressing** - we hard code a value in the instruction itself either as an immediate value or as a displacement in SIB mode
* **Register Addressing** - accessing contents of a register, it's very straightforward 
* **Register Indirect Addressing** - effective address of the data is stored in a register and then the data is accessed by dereferencing the effective address  
* **Scale, Index, Base, Displacement Addressing** - we can use a combination of scale , index, base, and displacement to compute an address and then fetch data from that address
* **Implied Addressing** - some instructions will assume the operand without explicitly mentioning them in the instruction, _inc and dec_ will assume to add one or decrease by one 






