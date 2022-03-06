.global add

# accept n numbers and return their sum
add:
	pushq %rbp
	movq %rsp,%rbp
	xor $0,%rax

	cmpq $1,%rdi
	jl exit
	addq %rsi,%rax
	
	cmpq $2,%rdi
	jl exit
	addq %rdx,%rax 

	cmpq $3,%rdi
	jl exit
	addq %rcx,%rax 

	cmpq $4,%rdi
	jl exit
	addq %r8,%rax 

	cmpq $5,%rdi
	jl exit
	addq %r9,%rax

	exit:
	movq %rbp,%rsp
	pop %rbp
	ret
