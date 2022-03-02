.global _start
.global exit
.global print 
.global factorial

.data
.hello_world: .ascii "Hello\0\n"

.bss
.lcomm factorial_count, 8

.text
_start:
	pushq %rbp
	movq %rsp,%rbp
	xorq %rdi, %rdi
	movq $3 , %rdi
	call factorial
	addq $48, %rax 
        movq $1, %rbx
	movq %rax , factorial_count

	movq $1 , %rdx
	movq $factorial_count , %rsi
        movq $1 , %rdi
        movq $1 , %rax
	syscall
	call exit


