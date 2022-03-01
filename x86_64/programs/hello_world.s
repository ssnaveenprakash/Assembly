.global _start
.global exit
.global print 
.data
.hello_world:
        .ascii "Hello\0"

.text
_start:
	pushq %rbp
	movq %rsp,%rbp
        movq $rbx,%rbx 
        movq $.hello_world,%r12
	call print
 #        movq $1 , %rdi
 #        movq $1 , %rax
	# syscall
	call exit


