.global add

# accept n numbers and return their sum
add:
	pushq %rbp
	movq %rsp,%rbp
	movq %edi,%rsc
	movq 0,%rax

	cmpq 0, %rsc
	jz exit
	addq (%rsp)

	exit:
	movq %rbp,%rsp
	pop %rbp
	ret