.text
.align 2
.global main
.type main, %function

main: 
	stmfd sp!, {lr}
	
	mov r4,#1
	
	cmp r4,#0
	addeq r4, r4, #1
	subne r4, r4, #1
	
	ldr r0,=form
	mov r1, r4
	bl printf
	
	mov r3,#0
	mov r0,r3
	
	ldmfd sp!, {lr}
	bx lr
	
.data
.align 2
form:	.asciz	"%d"
