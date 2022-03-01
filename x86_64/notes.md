# x86_64 assembly 


## CPU Architecture

### Operating Modes:

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

There are also modes called [`Virtual 8086`](https://en.wikipedia.org/wiki/Virtual_8086_mode) and [`Long Compatbility`](https://en.wikipedia.org/wiki/IAMD64#Operating_modes) which are middle steps that emulate the previous mode. They are meant for backward compatibility and are provide fast context-switching for multi-tasking. (ie. So you can run 32-bit applications in a 64-bit operating system.)

### Registers
Register|Name|Commonly
-|-|-
`A`|**Accumulator**|Return value, especially the sum of arithmetic operations.
`B`|**Base index**|Starting point of an array or list structure.
`C`|**Counter**|Used by loops ie. the `i` in `for(int i=0; i<9; i++)`
`D`|**Data**|Extended space for accumulator.<br>(ie. `32`-bit mode will combine `EAX+EDX` to work on `64`-bit values)
`BP`|**Base Pointer**|Pointer to address of current stack frame.<br>(where function parameters end, and local variables begin)
`SP`|**Stack Pointer**|Pointer to address of last bytes `PUSH`ed to memory.
`SI`|**Source Index**|Starting point of unbounded stream data, especially a string.
`DI`|**Destination Index**|Ending point of unbounded data, especially in slicing operations.

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

### Calling Conventions
* calling convention specifies registers which should be preserved by caller and callee.
* It also specifies which registers should be used for passing parameters and return values.

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







