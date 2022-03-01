.global _start
.global exit
.global print 

.data
.hello_world: .ascii "Hello\0\n"

.text
_start:
	pushq %rbp
	movq %rsp,%rbp
        movq $7 ,%rbx 
        movq $.hello_world,%r12
	call print
	call exit


