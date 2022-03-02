.global factorial

factorial:
	pushq %rbp
	push %rsi
	movq %rsp,%rbp
	cmpq $1 , %rdi
	je one
	movq %rdi, %rsi
	subq $1, %rdi
	call factorial
	movq %rsi, %rdi
	imulq %rdi , %rax
	jmp exit
one:
	movq $1 , %rax
exit:
	movq %rbp,%rsp
	pop %rsi
	popq %rbp
	ret
