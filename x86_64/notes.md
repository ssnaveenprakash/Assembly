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

## Operating Modes:

These determine the assumed/default size of instruction operands
and restrict which opcodes are available, and how they are used.

Modern operating systems, booted inside `Real` mode,
must escalate first to `Protected` mode, and then `Long` mode,
as support and capability is detected. This is done to remain backward-compatible.

This means modern applications run exclusively in `Long` 64-bit mode.

Mode|Default Operand Size|Default Address Size|Description
-|-|-|-
[`Long`](https://en.wikipedia.org/wiki/Long_mode) | `32`-bit | `64`-bit | Latest.
[`Protected`](https://en.wikipedia.org/wiki/Protected_mode) | `32`-bit | `32`-bit | Legacy. Introduced segment registers (protected virtual addresses).
[`Real`](https://en.wikipedia.org/wiki/Real_mode) | `16`-bit | `16`-bit | Legacy. Unlimited direct access to addressable memory. Compatible with oldest x86 CPUs.

There are also modes called [`Virtual 8086`](https://en.wikipedia.org/wiki/Virtual_8086_mode) and [`Long Compatbility`](https://en.wikipedia.org/wiki/IAMD64#Operating_modes) which are middle steps that emulate the previous mode. They are meant for backward-compatibility and are provide fast context-switching for multi-tasking. (ie. So you can run 32-bit applications in a 64-bit operating system.)


## Processor Operating Modes
Mode	Default Operand Size	Default Address Size	Description
Long	32-bit	64-bit	Latest.
Protected	32-bit	32-bit	Legacy. Introduced segment registers (protected virtual addresses).
Real	16-bit	16-bit	Legacy. Unlimited direct access to addressable memory. Compatible with oldest x86 CPUs.

## Addressing Modes
* **Immediate Addressing** - we hard code a value in the instruction itself either as an immediate value or as a displacement in SIB mode
* **Register Addressing** - accessing contents of a register, it's very straightforward 
* **Register Indirect Addressing** - effective address of the data is stored in a register and then the data is accessed by dereferencing the effective address  
* **Scale, Index, Base, Displacement Addressing** - we can use a combination of scale , index, base, and displacement to compute an address and then fetch data from that address
* **Implied Addressing** - some instructions will assume the operand without explicitly mentioning them in the instruction, _inc and dec_ will assume to add one or decrease by one 






