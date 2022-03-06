.global add

# accept n numbers and return their sum
add:
	pushq %rbp
	movq %rsp,%rbp
	movq %edi,%rsc
	cmpq $1,%edi
	jl exit
	
	exit:
	movq %rbp,%rsp
	pop %rbp
	ret