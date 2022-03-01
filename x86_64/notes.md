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
**Opcode/Mnemonic Source Destination**  
**Opcode/Mnemonic** - Operation code like ```mov,add,sub```  
**Source** - Immediate / Register   
**Destination** - Register   

## Addressing Modes
* Register Addressing - accessing contents of a register, it's very straightforward 
* Indirect Addressing - storing the pointer in a register and then accessing the data in that memory location  
  - Scale, Index, Base, Displacement -    
* Immediate Addressing - we hard code a value in the instruction





