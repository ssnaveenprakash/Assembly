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
	movq $13 , %rdi
	movq $.factorial_is, %rsi
	call print

	# calling factorial function
	movq $1 , %rdi
	movq $factorial_count, %rsi
	call print

	# calling factorial function
	movq $1 , %rdi
	movq $.new_line, %rsi
	call print

	call exit


