.global print
print:
	# saving callee saving registers
	pushq %rbp
	pushq %rbx
	pushq %r12
	movq %rsp,%rbp

	movq %rbx , %rdx
	movq %r12 , %rsi
        movq $1 , %rdi
        movq $1 , %rax
	syscall

	# restoring callee saving registers
	movq %rbp,%rsp
	popq %r12
	popq %rbx
	popq %rbp
	ret

