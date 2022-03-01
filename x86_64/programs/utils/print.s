.global print
print:
	pushq %rbp
	pushq %rbx
	pushq %r12
	movq %rsp,%rbp
	
	movq %rbx , %rdx
	movq %r12 , %rsi
        movq $1 , %rdi
        movq $1 , %rax
	syscall

	movq %rbp,%rsp
	popq %r12
	popq %rbx
	popq %rbp
	ret

