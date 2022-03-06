.global exit
# to tell the operating system that we are done executing our code
# else it will execute code in random memory locations post our code 
# and it will lead to segmentation fault and crash our program

exit:
	movq $60 , %rax
	xorq %rdi , %rdi
	syscall