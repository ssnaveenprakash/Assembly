.global _start

.data
.factorial_is: .ascii "Factorial is "
.new_line: .ascii "\n"

.bss
.lcomm factorial_count, 8

.text
_start:
	pushq %rbp
	movq %rsp,%rbp
	xorq %rdi, %rdi
	movq $3 , %rdi
	call factorial

	# converting number to string
	addq $48, %rax 
	movq %rax , factorial_count

	# calling factorial function
	movq $13 , %rbx
	movq $.factorial_is, %r12
	call print

	# calling factorial function
	movq $1 , %rbx
	movq $factorial_count, %r12
	call print

	# calling factorial function
	movq $1 , %rbx
	movq $.new_line, %r12
	call print

	call exit


