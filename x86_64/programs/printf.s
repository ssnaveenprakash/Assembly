.extern printf
.global assembly_print

.data
hello_world: .string "hello world\nI am assembly\nit is working\n"

.text
assembly_print:
	pushq %rbp
	movq %rsp,%rbp
	movq $hello_world , %rdi
	call printf
	movq %rbp,%rsp
	pop %rbp
	ret
