.global _start
.global exit
.data
.hello_world:
        .ascii "Hello\0"

.text
_start:
        movq $6,%rdx 
        movq $.hello_world,%rsi
        movq $1 , %rdi
        movq $1 , %rax
	syscall
	call exit


