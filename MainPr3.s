@Universidad del Valle de Guatemala
@Organizacion de Computadoras y Assembler
@Proyecto No 3, Trivia ARM
@Andres Say 19705, Ayleen Rubio 19003

.text
.align 2
.global main
.type main,%function
main:
	stmfd sp!,{lr}
	
	cont .req r5
	
	ldr r0,=entrada
	bl puts
	ldr r0,=Instrucciones
	bl puts
	ldr r0,= instrucciones2
	bl puts
	ldr r0,=instrucciones3
	bl puts

main2:
	ldr r0,=instrucciones4
	bl puts
	
	ldr r0,=formatod
	ldr r1,=entrada1
	bl scanf
	
	
	ldr r8,=entrada1			/* r8 definido para leer lo que ingresa el usuario */
	
	ldrb r11,[r8]
	
	
	cmp r11,#'1'
	beq etArte
	
	cmp r11,#'2'
	beq etLiteratura
	
	cmp r11,#'3'
	beq etGeografia
	
	cmp r11,#'4'
	beq etCiencia
	
	cmp r11,#'5'
	beq etHistoria
	
	cmp r11,#'6'
	beq etEntretenimiento
	
	cmp r11,#'7'
	beq etDeportes
	
	cmp r11,#'8'
	beq salir
	
	b numIncorrecto
	
cicloMain:
	ldr r0,=turno1
	bl puts 
	@meter rutina random
	
	mov r1,#1
	mov r2, r1
	
	b repetir
	
repetir:
	mov r0,sp
	bl mysrand
	mov cont, r2
	
	b ciclo
ciclo:	
	bl myrand
	push {r0}
	mov r1,r0
	and r1,r1,#7
	@ldr r0,=formato
	@bl printf
	mov r7,r1
	mov r1,#0
	pop {r0}
	subs cont, cont,#1
	bne ciclo
	
	@.unreq cont
	b continuacionCicloMain
	
continuacionCicloMain:
	cmp r7,#0
	beq etArte
	
	cmp r7,#1
	beq etArte
	
	cmp r7,#2
	beq etLiteratura
	
	cmp r7,#3
	beq etGeografia
	
	cmp r7,#4
	beq etCiencia
	
	cmp r7,#5
	beq etHistoria
	
	cmp r7,#6
	beq etEntretenimiento
	
	cmp r7,#7
	beq etDeportes
	
	
	b salir
	
	
	
	
numIncorrecto:
	ldr r0,=incorrecto
	bl puts
	bl getchar
	
	b main2
	
salir: 						/* etiqueta de salida*/
	ldr r0,=mensajeSalida	/* cargar mensaje de salida */
	bl puts 

	mov r7,#1
	swi 0
	
	
@------------------------------------Seccion de seleccion de pregunta
etArte:
	ldr r0,=arte
	bl puts
	
	
	ldr r0,=ingreseNumero
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq pregunta1Arte
	
	cmp r11, #2
	beq pregunta2Arte
	
	cmp r11, #3
	beq pregunta3Arte
	
	cmp r11, #4
	beq pregunta4Arte
	
	cmp r11, #5
	beq pregunta5Arte
	
	cmp r11, #6
	beq pregunta6Arte
	
	cmp r11, #7
	beq pregunta7Arte
	
	b numIncorrecto
	
etLiteratura:
	ldr r0,=literatura
	bl puts
	ldr r0,=ingreseNumero
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq pregunta1Literatura
	
	cmp r11, #2
	beq pregunta2Literatura
	
	cmp r11, #3
	beq pregunta3Literatura
	
	cmp r11, #4
	beq pregunta4Literatura
	
	cmp r11, #5
	beq pregunta5Literatura
	
	cmp r11, #6
	beq pregunta6Literatura
	
	cmp r11, #7
	beq pregunta7Literatura
	
	b numIncorrecto

etGeografia:
	ldr r0,=geografia
	bl puts
	ldr r0,=ingreseNumero
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq pregunta1Geografia
	
	cmp r11, #2
	beq pregunta2Geografia
	
	cmp r11, #3
	beq pregunta3Geografia
	
	cmp r11, #4
	beq pregunta4Geografia
	
	cmp r11, #5
	beq pregunta5Geografia
	
	cmp r11, #6
	beq pregunta6Geografia
	
	cmp r11, #7
	beq pregunta7Geografia
	
	b numIncorrecto

etCiencia:
	ldr r0,=ciencia
	bl puts
	ldr r0,=ingreseNumero
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq pregunta1Ciencia
	
	cmp r11, #2
	beq pregunta2Ciencia
	
	cmp r11, #3
	beq pregunta3Ciencia
	
	cmp r11, #4
	beq pregunta4Ciencia
	
	cmp r11, #5
	beq pregunta5Ciencia
	
	cmp r11, #6
	beq pregunta6Ciencia
	
	cmp r11, #7
	beq pregunta7Ciencia
	
	b numIncorrecto

etHistoria:
	ldr r0,=historia
	bl puts
	ldr r0,=ingreseNumero
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq pregunta1Historia
	
	cmp r11, #2
	beq pregunta2Historia
	
	cmp r11, #3
	beq pregunta3Historia
	
	cmp r11, #4
	beq pregunta4Historia
	
	cmp r11, #5
	beq pregunta5Historia
	
	cmp r11, #6
	beq pregunta6Historia
	
	cmp r11, #7
	beq pregunta7Historia
	
	b numIncorrecto

etEntretenimiento:
	ldr r0,=entretenimiento
	bl puts
	ldr r0,=ingreseNumero
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq pregunta1Entretenimiento
	
	cmp r11, #2
	beq pregunta2Entretenimiento
	
	cmp r11, #3
	beq pregunta3Entretenimiento
	
	cmp r11, #4
	beq pregunta4Entretenimiento
	
	cmp r11, #5
	beq pregunta5Entretenimiento
	
	cmp r11, #6
	beq pregunta6Entretenimiento
	
	cmp r11, #7
	beq pregunta7Entretenimiento
	
	b numIncorrecto

etDeportes:
	ldr r0,=deportes
	bl puts
	ldr r0,=ingreseNumero
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq pregunta1Deportes
	
	cmp r11, #2
	beq pregunta2Deportes
	
	cmp r11, #3
	beq pregunta3Deportes
	
	cmp r11, #4
	beq pregunta4Deportes
	
	cmp r11, #5
	beq pregunta5Deportes
	
	cmp r11, #6
	beq pregunta6Deportes
	
	cmp r11, #7
	beq pregunta7Deportes
	
	b numIncorrecto
	
	
	
	
@---------------------------------------Seccion de validacion de preguntas y respuestas
pregunta1Arte:
	ldr r0,=pregunta1
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto
	
pregunta2Arte:
	ldr r0,=pregunta2
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	ldr r8,=entrada1
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto
pregunta3Arte:
	ldr r0,=pregunta3
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto
	
pregunta4Arte:
	ldr r0,=pregunta4
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta5Arte:
	ldr r0,=pregunta5
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto
	
pregunta6Arte:
	ldr r0,=pregunta6
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto
	
pregunta7Arte:
	ldr r0,=preguntaE1
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto
	
pregunta1Literatura:
	ldr r0,=pregunta7
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta2Literatura:
	ldr r0,=pregunta8
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta3Literatura:
	ldr r0,=pregunta9
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta4Literatura:
	ldr r0,=pregunta10
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta5Literatura:
	ldr r0,=pregunta11
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta6Literatura:
	ldr r0,=pregunta12
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta7Literatura:
	ldr r0,=preguntaE2
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta1Geografia:
	ldr r0,=pregunta13
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta2Geografia:
	ldr r0,=pregunta14
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta3Geografia:
	ldr r0,=pregunta15
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta4Geografia:
	ldr r0,=pregunta16
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta5Geografia:
	ldr r0,=pregunta17
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta6Geografia:
	ldr r0,=pregunta18
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta7Geografia:
	ldr r0,=preguntaE3
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta1Ciencia:
	ldr r0,=pregunta19
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta2Ciencia:
	ldr r0,=pregunta20
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta3Ciencia:
	ldr r0,=pregunta21
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta4Ciencia:
	ldr r0,=pregunta22
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta5Ciencia:
	ldr r0,=pregunta23
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta6Ciencia:
	ldr r0,=pregunta24
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta7Ciencia:
	ldr r0,=preguntaE4
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta1Historia:
	ldr r0,=pregunta25
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta2Historia:
	ldr r0,=pregunta26
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta3Historia:
	ldr r0,=pregunta27
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta4Historia:
	ldr r0,=pregunta28
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta5Historia:
	ldr r0,=pregunta29
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta6Historia:
	ldr r0,=pregunta30
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta7Historia:
	ldr r0,=preguntaE5
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta1Entretenimiento:
	ldr r0,=pregunta31
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta2Entretenimiento:
	ldr r0,=pregunta32
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta3Entretenimiento:
	ldr r0,=pregunta33
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta4Entretenimiento:
	ldr r0,=pregunta34
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta5Entretenimiento:
	ldr r0,=pregunta35
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta6Entretenimiento:
	ldr r0,=pregunta36
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta7Entretenimiento:
	ldr r0,=preguntaE6
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta1Deportes:
	ldr r0,=pregunta37
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta2Deportes:
	ldr r0,=pregunta38
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta3Deportes:
	ldr r0,=pregunta39
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta4Deportes:
	ldr r0,=pregunta40
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta5Deportes:
	ldr r0,=pregunta41
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto

pregunta6Deportes:
	ldr r0,=pregunta42
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaCorrecta
	
	cmp r11,#2
	beq respuestaIncorrecta
	
	b numIncorrecto

pregunta7Deportes:
	ldr r0,=preguntaE7
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq respuestaIncorrecta
	
	cmp r11,#2
	beq respuestaCorrecta
	
	b numIncorrecto


	
respuestaCorrecta:
	ldr r0,=rCorrecta
	bl puts 
	
	b main2
respuestaIncorrecta:
	ldr r0,=rIncorrecta
	bl puts
	
	b main2


.data
.align 2

entrada:	.asciz "Bienvenido al juego"
Instrucciones:	.asciz "El juego consiste en una trivia en la cual usted y su oponente debera contestar correctamente las preguntas para obtener la ventaja"
instrucciones2:	.asciz "Debera responder correctamente 3 preguntas de la misma categoria para obtener un punto, el primero el obtener 3 sera el ganador"
instrucciones3:	.asciz "No pueden obtener mas puntos de la misma categoria"
instrucciones4:	.asciz "¿Desea comenzar a jugar? Selecciones la opcion correcta! \n1. Si!\n2. No, quiero salir del juego"
incorrecto:	.asciz	"Ha ingresado un valor incorrecto, ¡intentelo de nuevo!"
turno1:	.asciz	"Es el turno del primer jugador!"
turno2:	.asciz	"Es el turno del segundo jugador!"
ingreseNumero:	.asciz	"Ingrese el numero: "
rCorrecta:	.asciz	"Correcto"
rIncorrecta:	.asciz	"Incorrecto"
formatod: .asciz	"%s"
entrada1:	.word	0
entrada2:	.word	0
formato:	.asciz	"%d"

arte:	.asciz	"¡Arte!"
literatura:	.asciz	"¡Literatura!"
geografia:	.asciz	"¡Geografia!"
ciencia:	.asciz	"¡Ciencia!"
historia:	.asciz	"¡Historia!"
entretenimiento:	.asciz	"¡Entretenimiento!"
deportes:	.asciz	"¡Deportes!"

mensajeSalida: .asciz "\n--Gracias por utilizar el programa!"


@Primeras 6 preguntas de arte
pregunta1:	.asciz	"¿A que edad murio Mozart?\n1. 68\n2. 35"
pregunta1r1:	.asciz	"68"
pregunta1r2:	.asciz	"35"	@correcta
pregunta2:	.asciz	"¿Que instrumento tocaba Vivaldi?\n1. Piano\n2. Violin"
pregunta2r1:	.asciz	"Piano"
pregunta2r2:	.asciz	"Violin"	@correcta
pregunta3:	.asciz	"¿Que instrumento tocaba franz Liszt?\n1.Violin\n2. Piano"
pregunta3r1:	.asciz	"Violin"
pregunta3r2:	.asciz	"Piano"	@correcta
pregunta4:	.asciz	"¿Que pasa con el cuadro de La Balsa de Medusa?\n1. Ningun artista la reclamo\n2. Cada anio se oscurece"
pregunta4r1:	.asciz	"Ningun artista la reclamo"
pregunta4r2:	.asciz	"Cada anio se oscurece"	@correcta
pregunta5:	.asciz	"¿Quien pinto La Santa Cena?\n1. Leonardo Da Vinci\n2. Vincent Van Gogh"
pregunta5r1:	.asciz	"Leonardo Da Vinci"	@correcta
pregunta5r2:	.asciz	"Vincent Van Gogh"
pregunta6:	.asciz	"¿Quien pinto la Mona Lisa?\n1. Pablo Picasso\n2. Leonardo Da Vinci"
pregunta6r1:	.asciz	"Pablo Picasso"	
pregunta6r2:	.asciz	"Leonardo Da Vinci"	@correcta
preguntaE1:	.asciz	"¿Cual es el ultimo capitulo de la biblia catolica?\n1. Exodo\n2. Apocalipsis"
preguntaE1r1:	.asciz	"Exodo"	
preguntaE1r2:	.asciz	"Apocalipsis"	@correcta

@Primeras 6 preguntas de literatura
pregunta7:	.asciz	"¿Quien escribio el poema de Lo Fatal?\n1. Ruben Dario\n2. Antonio Machado"
pregunta7r1:	.asciz	"Ruben Dario"	@correcta
pregunta7r2:	.asciz	"Antonio Machado"
pregunta8:	.asciz	"¿Quien escribio la metamorfosis?\n1. Franz Kafka\n2. Magda Szabo"
pregunta8r1:	.asciz	"Franz Kafka"	@correcta
pregunta8r2:	.asciz	"Magda Szabo"
pregunta9:	.asciz	"¿Cual obra dio comienzo al modernismo?\n1. Azul\n2. Cantos de vida y de esperanza"
pregunta9r1:	.asciz	"Azul"	@correcta
pregunta9r2:	.asciz	"Cantos de vida y de esperanza"
pregunta10:	.asciz	"¿Cual era el primer nombre de Neruda?\n1. Carlo\n2. Pablo"
pregunta10r1:	.asciz	"Carlo"
pregunta10r2:	.asciz	"Pablo"	@correcta
pregunta11:	.asciz	"¿Quien fue el autor de la obra Hamlet?\n1. William Shakespeare\n2. Michael Jackson"
pregunta11r1:	.asciz	"William Shakespeare"	@correcta
pregunta11r2:	.asciz	"Michael Jackson"
pregunta12:	.asciz	"¿Quién escribió la Iliada?\n1. Homero\n2. Herodoto"
pregunta12r1:	.asciz	"Homero"	@correcta
pregunta12r2:	.asciz	"Herodoto"
preguntaE2:	.asciz	"¿Como se llama el autor El cuervo?\n1. Roberto Mazariegos\n2. Edgar Allan Poe"
preguntaE2r1:	.asciz	"Roberto Mazariegos"
preguntaE2r2:	.asciz	"Edgar Allan Poe"	@correcta

@ primeras 6 preguntas de geografia
pregunta13:	.asciz "¿Donde se ecuentra Helsinki?\n1. Finlandia\n2. Grecia"
pregunta13r1:	.asciz "Finlandia" @correcta
pregunta13r2:	.asciz "Grecia"
pregunta14:	.asciz "¿Que pais producia katanas?\n1. Japon\n2. Corea"
pregunta14r1:	.asciz "Japon" @correcta
pregunta14r2:	.asciz "Corea"
pregunta15:	.asciz "¿Que isla africana es de mayor tamaño?\n1. Seychelles\n2. Madagascar"
pregunta15r1:	.asciz "Seychelles"
pregunta15r2:	.asciz "Madagascar" @correcta
pregunta16:	.asciz "¿Cuantas subdivisiones tiene Asia?\n1. 7\n2. 6"
pregunta16r1:	.asciz "7"
pregunta16r2:	.asciz "6" @correcta  
pregunta17:	.asciz "¿Donde se encuentra la ciudad de Turin?\n1. Italia\n2. Francia"
pregunta17r1:	.asciz "Italia" @correcta
pregunta17r2:	.asciz "Francia"  
pregunta18:	.asciz "¿Que estado de EEUU es una isla?\n1. Hawaii\n2. Florida"
pregunta18r1:	.asciz "Hawaii" @correcta
pregunta18r2:	.asciz "Florida" 
preguntaE3:	.asciz	"¿Cuantos colores se encuentran en la bandera de Brasil?\n1. 5\n2. 4"
preguntaE3r1:	.asciz	"5"
preguntaE3r2:	.asciz	"4"	@correcta 

@primeras 6 pregunts de Ciencia
pregunta19:	.asciz "¿La mitocondria tiene su propio ADN?\n1. Verdadero\n2. Falso"
pregunta19r1:	.asciz "Verdadero" @correcto
pregunta19r2:	.asciz "Falso"
pregunta20:	.asciz "El ADN eucariotico es: \n1. Circular\n2. Lineal"
pregunta20r1:	.asciz "Circular"
pregunta20r2:	.asciz "Lineal" @Correcto
pregunta21:	.asciz "¿Que secuencia de ADN inicia la lectura?\n1. UAG\n2. UAA"
pregunta21r1:	.asciz "AUG" @correcto
pregunta21r2:	.asciz "UAA"
pregunta22:	.asciz "¿Con que otro nombre se conoce a las orcas?\n1. Ballenas asesinas\n2. Gran blanca"
pregunta22r1:	.asciz "Ballenas asesinas" @correcto
pregunta22r2:	.asciz "Gran blanca"
pregunta23:	.asciz "¿Quienes padecen andropausia?\n1. Hombres\n2. Mujeres"
pregunta23r1:	.asciz "Hombres" @correcto
pregunta23r2:	.asciz "Mujeres"
pregunta24:	.asciz "¿De que estan compuestos los electrolitos?\n1. Sodio, potasio y cloruro\n2. Vitaminas"
pregunta24r1:	.asciz "Sodio,potasio y cloruro" @correcto
pregunta24r2:	.asciz "Vitaminas"
preguntaE4:	.asciz	"¿Cuales son las siglas del oro en la tabla periodica?\n1. Au\n2. O"
preguntaE4r1:	.asciz	"Au" @correcta
preguntaE4r2:	.asciz	"O"	

@primeras 6 de historia
pregunta25:	.asciz "¿Quien fue el 16 presidente de EEUU?\n1. George Washington\n2. Abraham Lincoln"
pregunta25r1:	.asciz "George Washington"
pregunta25r2:	.asciz "Abraham Lincoln" @correcto
pregunta26:	.asciz "¿Cuantos años goberno el presidente Rafel Carrera?\n1. 24\n2. 22"
pregunta26r1:	.asciz "24"
pregunta26r2:	.asciz "22" @correcto
pregunta27:	.asciz "¿Como se llama la diosa griega primigenia de la noche?\n1. Nyx\n2. Eris"
pregunta27r1:	.asciz "Nyx" @correcto
pregunta27r2:	.asciz "Eris"
pregunta28:	.asciz "¿Que imperio es identificado con las siglas SPQR?\n1. Imperio romano\n2. Imperio Mogol"
pregunta28r1:	.asciz "Imperio romano" @correcto
pregunta28r2:	.asciz "Imperio Mogol"
pregunta29:	.asciz "¿Como llamaron a Canada los exploradores franceses?\n1. Canada\n2. La nueva Francia"
pregunta29r1:	.asciz "Canada"
pregunta29r2:	.asciz "La nueva francia" @correcto
pregunta30:	.asciz "¿Quien fue el presidente de Guatemala en 2014?\n1. Jimmy Morales\n2. Otto Perez Molina"
pregunta30r1:	.asciz "Jimmy Morales"
pregunta30r2:	.asciz "Otto Perez Molina" @correcto
preguntaE5:	.asciz	"¿Quien es el padre de letemaco?\n1. Quiron\n2. Ulises"
preguntaE5r1:	.asciz	"Quiron"
preguntaE5r2:	.asciz	"Ulises"	@correcta

@Primeras 6 de entretenimiento
pregunta31:	.asciz "¿En que pelicula muerte Luke Skywalker?\n1. Los ultimos jedi\n2. Rogue One"
pregunta31r1:	.asciz "Los ultimos jedi" @correcto
pregunta31r2:	.asciz "Rogue One"
pregunta32:	.asciz "¿De que pais proviene la musica denomidada Kpop?\n1. Corea del Sur\n2. Corea del Norte"
pregunta32r1:	.asciz "Corea del sur" @correcto
pregunta32r2:	.asciz "Corea del norte"
pregunta33:	.asciz "¿Quien es el maestro Roshi?\n1. Maestro de Veguetta\n2. Maestro de Goku en artes marciales"
pregunta33r1:	.asciz "Maestro de Veguetta"
pregunta33r2:	.asciz "Maestro de Goku en artes marciales" @correcto
pregunta34:	.asciz "¿En cual de estos cuentos aparece un conejo blanco?\n1. Pinoccio\n2. Alicia y el pais de las maravillas"
pregunta34r1:	.asciz "Pinoccio"
pregunta34r2:	.asciz "Alicia y el pais de las maravillas" @correcto
pregunta35:	.asciz "¿Que grupo canta la cancion de No Money?\n1. Galantys\n2. Galanties"
pregunta35r1:	.asciz "Galantys" @correcto
pregunta35r2:	.asciz "Galanties"
pregunta36:	.asciz "¿Que es el anime?\n1. Animacion china\n2. Animacion Japonesa"
pregunta36r1:	.asciz "Animacion china"
pregunta36r2:	.asciz "Animacion Japonesa" @correcto
preguntaE6:	.asciz	"¿Como se llama el entrenador de hercules?\n1. Phil\n2. Phelp"
preguntaE6r1:	.asciz	"Phil" @correcta
preguntaE6r2:	.asciz	"Phelp"	

@primeras 6 de deportes
pregunta37:	.asciz "¿Cual de estos jugadores es de Guatemala?\n1. Donovan\n2. Carlos Ruiz"
pregunta37r1:	.asciz "Donovan"
pregunta37r2:	.asciz "Carlos Ruiz" @correcto
pregunta38:	.asciz "¿Quien fue el mejor futbolista antes del 2000?\n1. Maradona\n2. Herrador"
pregunta38r1:	.asciz "Maradona" @correcto
pregunta38r2:	.asciz "Herrador"
pregunta39:	.asciz "¿Que pais es considerado como la naranja mecanica?\n1. Holanda\n2. Brasil"
pregunta39r1:	.asciz "Holanda" @correcto
pregunta39r2:	.asciz "Brasil"
pregunta40:	.asciz "¿Que deporte practica Rafae Nadal?\n1. Tennis\n2. Natacion"
pregunta40r1:	.asciz "Tennis" @correcto
pregunta40r2:	.asciz "Natacion"
pregunta41:	.asciz "¿Cual es la seleccion campeona de alemania 2006?\n1. Alemania\n2. Italia"
pregunta41r1:	.asciz "Alemania"
pregunta41r2:	.asciz "Italia" @correcto
pregunta42:	.asciz "¿En cual de estos deportes No se usa raqueta?\n1. Esgrima\n2. Squash"
pregunta42r1:	.asciz "Esgrima"
pregunta42r2:	.asciz "Squash" @correcto
preguntaE7:	.asciz	"¿Cuantas personas integran un grupo de voleyball?\n1. 4\n2. 6"
preguntaE7r1:	.asciz	"4"
preguntaE7r2:	.asciz	"6"	@correcta









