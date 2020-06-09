
.global main
.func main

main:
	@stmfd sp!, {lr}
	
	ldr r1, valor1
	vldr s14,[r1]
	vcvt.f64.f32 d6,s14
	
	ldr r2, valor2
	vldr s15,[r2]
	
	vcvt.f64.f32 d7,s15
	/*ldr r0,=mensaje
	vmov r2,r3,d7
	bl printf*/
	
	/*vadd.f32 s0,s14,s15
	
	vcvt.f64.f32 d6,s0
		
	
	ldr r0,=mensaje
	vmov r2,r3,d6
	bl printf*/
		
	
	
	vcmp.f64 d6,d7
	vmrs apsr_nzcv, fpscr
	beq sonIguales
	
	bne noIguales
	
sonIguales:
	ldr r0,=iguales
	bl puts
	
	b salir
	
noIguales:
	ldr r0,=diferentes
	bl puts
	b salir
	
salir:
	mov r7,#1
	swi 0
	
valor1:
	.word value1
valor2:
	.word value2
	
.data
.align 2

iguales:	.asciz	"son iguales"
diferentes:	.asciz	"son diferentes"
mensaje:	.asciz	"El numero es: %f \n"
value1:	.float	2.0
value2:	.float 3.0
