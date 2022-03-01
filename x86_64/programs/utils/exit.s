.global exit
exit:
	movq $60 , %rax
	xorq %rdi , %rdi
	syscall
