# GDB
Gdb is a debugger used to debug programs at run time.

## Debugging Information 
* We have to include debugging information inside our compiled binary output so that gdb can interpret them and set break points on them. 
* To include debugging information we have to have give **-g** flag to the gcc compiler.

### Most used commands
* To run **gdb program_name**
* To set breakpoint **gdb b(reak)** _<function_name or filename:line# or *memory address>_
* To examine the contents **x/Length Format-modifier Size-modifier** , ex x/8uw   

#### Size Modifier 
* b - byte
* h - halfword (16-bit value)
* w - word (32-bit value)
* g - giant word (64-bit value)

#### Format Modifier 
* o - octal
* x - hexadecimal
* d - decimal
* u - unsigned decimal
* t - binary
* f - floating point
* a - address
* c - char
* s - string
* i - instruction
