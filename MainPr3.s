@Universidad del Valle de Guatemala
@Organizacion de Computadoras y Assembler
@Proyecto No 3, Trivia ARM
@Andres Say 19705, Ayleen Rubio 19003

@.text
@.align 2
.global main
.func main
@.type main,%function
main:
	@stmfd sp!,{lr}
	
	cont .req r5
	
	ldr r0,=entrada
	bl puts
	ldr r0,=Instrucciones
	bl puts
	ldr r0,= instrucciones2
	bl puts
	ldr r0,=instrucciones3 
	bl puts
	mov r4, #0 @contador de puntos del jugador 1, personajes
	mov r5, #0 @contador de puntos del jugador 2,  personajes
	mov r6, #0 @contador correctas jugador 1
	mov r7, #0 @contador correctas jugador 2
main2:
	ldr r0,=instrucciones4		/* mostrar instrucciones */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf
	
	ldr r8,=entrada1			/* r8 definido para leer lo que ingresa el usuario */
	ldrb r11,[r8]
	cmp r11,#1					/* Si desea jugar, se va a obtener un numero aleatorio */
	beq cicloMain
	cmp r11,#2					/* Si no desea jugar, sale del juego */
	beq salir
	b numIncorrecto

cicloMain:						
	@meter rutina random
	mov r1,#1
	mov r2, r1					/* Solo se desea obtener 1 numero aleatorio */
	b repetir					/* esa cantidad de numeros aleatorios se ingresa a la subrutina */
repetir:
	mov r0,sp
	bl mysrand					/* subrutina para cantidad de veces que se desea repetir */
	mov cont, r2
	b ciclo
ciclo:	
	bl myrand					/* subrutina para numero aleatorio */
	push {r0}
	mov r1,r0
	and r1,r1,#7
	mov r9,r1					/* mover al registro 9 el numero aleatorio obtenido */
	mov r1,#0
	pop {r0}
	subs cont, cont,#1			/* contador para la cantidad de veces que se desea hacer el ciclo */
	bne ciclo					/* si no se ha realizado la cantidad indicada, realiza el ciclo de nuevo */
	@.unreq cont
	b continuacionCicloMain		/* luego de obtener en numero aleatorio, continuar */

continuacionCicloMain:
	cmp r9,#0					/* Si el numero aleatorio es 0, es turno del jugador 1 */
	beq pregunta1Arte
	cmp r9,#1					/* Si el numero aleatorio es 1, es turno del jugador 2 */
	beq pregunta1Literatura
	cmp r9,#2					/* Si el numero aleatorio es 2, es turno del jugador 1 */
	beq pregunta1Arte
	cmp r9,#3					/* Si el numero aleatorio es 3, es turno del jugador 2 */
	beq pregunta1Literatura
	cmp r9,#4					/* Si el numero aleatorio es 4, es turno del jugador 1 */
	beq pregunta1Arte
	cmp r9,#5					/* Si el numero aleatorio es 5, es turno del jugador 2 */
	beq pregunta1Literatura
	cmp r9,#6					/* Si el numero aleatorio es 6, es turno del jugador 1 */
	beq pregunta1Arte
	cmp r9,#7					/* Si el numero aleatorio es 7, es turno del jugador 2 */
	beq pregunta1Literatura

numIncorrecto:					/* Programacion defensiva para cuando se ingresa un numero incorrecto */
	ldr r0,=incorrecto			/* mostrar mensaje */
	bl puts
	bl getchar					/* borrar informacion del buffer del teclado */
	b main2						/* regresar al main 2 */
	
salir: 							/* etiqueta de salida*/
	ldr r0,=mensajeSalida		/* cargar mensaje de salida */
	bl puts 
	mov r7,#1
	swi 0
@---------------------------------------Seccion de validacion de preguntas y respuestas------ARTE
pregunta1Arte:
	ldr r0,=turno1					/* Turno del jugador 1 */
	bl puts 
	ldr r0,=arte					/* Muestra el mensaje de arte */
	bl puts
	ldr r0,=pregunta1				/* Muestra la pregunta 1 de arte */
	bl puts
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 						/* Lee la respuesta ingresada */
	ldr r8,=entrada1
	ldr r11,[r8]					/* Carga el valor de la respuesta ingresada */
	cmp r11,#1
	beq resIncArte1					/* Incorrecta si es 1 */
	cmp r11,#2
	beq resCorArte1					/* Correcta si es 2 */
	b numIncorrecto					/* Error si no ha ingresado ninguno de los valores indicados */
resCorArte1:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	b pregunta2Arte					/* ir a la pregunta 2 arte */
resIncArte1:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts
	b pregunta2Arte					/* ir a pregunta 2 arte */
pregunta2Arte:
	ldr r0,=pregunta2				/* Muestra la pregunta 2 de arte */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 						/* Lee la respuesta ingresada */
	ldr r8,=entrada1
	ldr r11,[r8]					/* Carga el valor de la respuesta ingresada */
	
	cmp r11,#1						/* Incorrecta si es 1 */
	beq resIncArte2
	cmp r11,#2						/* Correcta si es 2 */
	beq resCorArte2
	
	b numIncorrecto					/* Error si no ha ingresado ninguno de los valores indicados */
	
resCorArte2:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	b pregunta3Arte					/* ir a pregunta 3 arte */
	
resIncArte2:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta3Arte					/* ir a pregunta 3 arte */

pregunta3Arte:
	ldr r0,=pregunta3				/* Muestra la pregunta 3 de arte */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 						/* Lee la respuesta ingresada */
	
	ldr r8,=entrada1
	
	ldr r11,[r8]					/* Carga el valor de la respuesta ingresada */
	
	cmp r11,#1						/* Incorrecta si es 1 */
	beq resIncArte3
	cmp r11,#2						/* Correcta si es 2 */
	beq resCorArte3
	
	b numIncorrecto					/* Error si no ha ingresado ninguno de los valores indicados */
	
resCorArte3:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaArteJ1
	
	bne pregunta4Arte				/* pregunta 4 arte */
	
resIncArte3:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta4Arte					/* pregunta 4 arte */
	
pregunta4Arte:
	ldr r0,=pregunta4				/* Muestra la pregunta 4 de arte */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 						/* Lee la respuesta ingresada */
	
	ldr r8,=entrada1
	
	ldr r11,[r8]					/* Carga el valor de la respuesta ingresada */
	
	cmp r11,#1						/* Incorrecta si es 1 */
	beq resIncArte4
	cmp r11,#2						/* Correcta si es 2 */
	beq resCorArte4
	
	b numIncorrecto					/* Error si no ha ingresado ninguno de los valores indicados */
	
resCorArte4:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaArteJ1
	
	bne pregunta5Arte				/* pregunta 5 arte */
	
resIncArte4:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta5Arte					/* pregunta 5 arte */

pregunta5Arte:
	ldr r0,=pregunta5				/* Muestra la pregunta 5 de arte */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 						/* Lee la respuesta ingresada */
	
	ldr r8,=entrada1
	
	ldr r11,[r8]					/* Carga el valor de la respuesta ingresada */
	
	cmp r11,#1						/* correcta si es 1 */
	beq resCorArte5
	cmp r11,#2						/* inorrecta si es 2 */
	beq resIncArte5
	
	b numIncorrecto					/* Error si no ha ingresado ninguno de los valores indicados */
	
resCorArte5:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaArteJ1
	
	bne pregunta1Literatura			/* pregunta 1 literatura */
	
resIncArte5:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta1Literatura			/* pregunta 1 literatura */

ganaArteJ1:
	ldr r0,=ganarCatArte			/* Mostrar mensaje de personaje ganado */
	bl puts 
	
	add r4,r4,#1					/* Sumar 1 a la cantidad de personajes ganados del j1 */
	
	ldr r0,=ganarPersonaje			/* pregunta para mostrar al personaje ganado */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 						/* leer entrada */
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1						/* Si se ingresa 1, ir a imprimir personaje */
	beq imprimirLapiz
	b numIncorrecto					/* Si no, muestra numero ingresado equivocado */
	
imprimirLapiz:
	bl mostrarLapiz					/* subrutina para mostrar el personaje */
	
	ldr r0,=preguntaSeguir			/* observar correctamente el personaje y luego continuar */
	bl puts 
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 						/* leer valor ingresado */
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1						/* continuar */
	beq pregunta1Literatura
	b numIncorrecto					/* numero ingresado incorrecto */
	
@---------------------------------------Seccion de validacion de preguntas y respuestas------LITERATURA	

pregunta1Literatura:
	ldr r0,=turno2					/* Turno del jugador 2 */
	bl puts
	
	ldr r0,=literatura				/* mostrar mensaje de literatura */
	bl puts
	
	ldr r0,=pregunta7				/* mostrar pregunta */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 						/* leer respuesta */
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1						/* respuesta correcta = 1 */
	beq resCorLit1
	cmp r11,#2
	beq resIncLit1					/* respuesta incorrecta =2 */
	
	b numIncorrecto					/* ingreso incorrecto */
	
resCorLit1:
	
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaLiteraturaJ2
	
	bne pregunta2Literatura					/* pregunta siguiente */
	
resIncLit1:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta2Literatura			/* pregunta siguiente */

pregunta2Literatura:
	ldr r0,=pregunta8				/* pregunta */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 						/* leer respuesta */
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1						/* respuesta correcta = 1 */
	beq resCorLit2
	cmp r11,#2						/* respuesta incorrecta = 2 */
	beq resIncLit2
	
	b numIncorrecto					/* ingreso incorrecto */
	
resCorLit2:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaLiteraturaJ2
	
	bne pregunta3Literatura			/* pregunta siguiente */
	
resIncLit2:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta3Literatura			/* pregunta siguiente */

pregunta3Literatura:
	ldr r0,=pregunta9				/* mostrar pregunta */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 						/* leer respuesta */
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1						/* respuesta correcta = 1 */
	beq resCorLit3
	cmp r11,#2						/*  respuesta incorrecta = 2*/
	beq resIncLit3
	
	b numIncorrecto					/* ingreso incorrecto */
	
resCorLit3:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaLiteraturaJ2
	
	bne pregunta4Literatura			/* pregunta siguiente */
	
resIncLit3:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta4Literatura			/* pregunta siguiente */

pregunta4Literatura:
	ldr r0,=pregunta10				/* mostrar pregunta */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1	
	bl scanf 						/* leer respuesta */
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1						/* respuesta incorrecta = 1 */
	beq resIncLit4
	
	cmp r11,#2						/* respuesta correcta = 2 */
	beq resCorLit4
	
	b numIncorrecto					/* ingreso incorrecto */
	
resCorLit4:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaLiteraturaJ2
	
	bne pregunta5Literatura			/* pregunta siguiente */
	
resIncLit4:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta5Literatura			/* pregunta siguiente */

pregunta5Literatura:
	ldr r0,=pregunta11				/* mostrar pregunta */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 						/* leer respuesta */
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1						/* respuesta correcta = 1 */
	beq resCorLit5
	cmp r11,#2						/* respuesta incorrecta = 2 */
	beq resIncLit5
	
	b numIncorrecto					/* ingreso incorrecto */
	
resCorLit5:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaLiteraturaJ2
	
	bne pregunta1Geografia			/* pregunta siguiente */
	
resIncLit5:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta1Geografia			/* pregunta siguiente */

ganaLiteraturaJ2:
	ldr r0,=ganarCatLiteratura		/* mostrar mensaje de  categoria ganada */
	bl puts 
	
	add r5,r5,#1					/* sumar 1 al contador de categorias ganadas */
	ldr r0,=ganarPersonaje			/* pregunta para mostrar el personaje ganado */
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1						/* si se ingreso 1, imprimir personaje */
	beq imprimirLibro
	b numIncorrecto					/* si no mostrar ingreso incorrecto */
	
imprimirLibro:
	bl mostrarLibro					/* subrutina para mostrar personaje */
	
	ldr r0,=preguntaSeguir			/* observar bien el personaje y luego continuar */
	bl puts 
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1						/* si se ingresa 1, ir a la categoria siguiente */
	beq pregunta1Geografia
	b numIncorrecto					/* Si no, mostrar ingreso incorrecto */

@---------------------------------------Seccion de validacion de preguntas y respuestas------GEOGRAFIA	
pregunta1Geografia:
	mov r6,#0
	ldr r0,=turno1					/* Turno del jugador 1 */
	bl puts
	
	ldr r0,=geografia
	bl puts

	ldr r0,=pregunta13
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorGeo1
	cmp r11,#2
	beq resIncGeo1
	
	b numIncorrecto
	
resCorGeo1:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaGeografiaJ1
	
	bne pregunta2Geografia				/* pregunta 2 arte */
	
resIncGeo1:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta2Geografia

pregunta2Geografia:
	ldr r0,=pregunta14
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorGeo2
	cmp r11,#2
	beq resIncGeo2
	
	b numIncorrecto
	
resCorGeo2:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaGeografiaJ1
	
	bne pregunta3Geografia				/* pregunta 2 arte */
	
resIncGeo2:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta3Geografia

pregunta3Geografia:
	ldr r0,=pregunta15
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resIncGeo3
	
	cmp r11,#2
	beq resCorGeo3
	
	b numIncorrecto
	
resCorGeo3:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaGeografiaJ1
	
	bne pregunta4Geografia				/* pregunta 2 arte */
	
resIncGeo3:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta4Geografia

pregunta4Geografia:
	ldr r0,=pregunta16
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resIncGeo4
	
	cmp r11,#2
	beq resCorGeo4
	
	b numIncorrecto
	
resCorGeo4:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaGeografiaJ1
	
	bne pregunta5Geografia				/* pregunta 2 arte */
	
resIncGeo4:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta5Geografia

pregunta5Geografia:
	ldr r0,=pregunta17
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorGeo5
	cmp r11,#2
	beq resIncGeo5
	
	b numIncorrecto
	
resCorGeo5:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaGeografiaJ1
	
	bne pregunta1Ciencia			/* pregunta 2 arte */
	
resIncGeo5:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta1Ciencia

ganaGeografiaJ1:
	ldr r0,=ganarCatGeografia
	bl puts 
	
	add r4,r4,#1
	ldr r0,=ganarPersonaje
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq imprimirPlaneta
	b numIncorrecto
	
imprimirPlaneta:
	bl mostrarPlaneta
	
	ldr r0,=preguntaSeguir
	bl puts 
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq pregunta1Ciencia
	b numIncorrecto

@---------------------------------------Seccion de validacion de preguntas y respuestas------Ciencia	
pregunta1Ciencia:
	mov r7,#0
	ldr r0,=turno2					/* Turno del jugador 2*/
	bl puts
	
	ldr r0,=ciencia
	bl puts
	
	ldr r0,=pregunta19
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorCie1
	cmp r11,#2
	beq resIncCie1
	
	b numIncorrecto
	
resCorCie1:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaCienciaJ2
	
	bne pregunta2Ciencia			/* pregunta 2 arte */
	
resIncCie1:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta2Ciencia

pregunta2Ciencia:
	ldr r0,=pregunta20
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resIncCie2
	
	cmp r11,#2
	beq resCorCie2
	
	b numIncorrecto
	
resCorCie2:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaCienciaJ2
	
	bne pregunta3Ciencia			/* pregunta 2 arte */
	
resIncCie2:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta3Ciencia

pregunta3Ciencia:
	ldr r0,=pregunta21
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorCie3
	cmp r11,#2
	beq resIncCie3
	
	b numIncorrecto
	
resCorCie3:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaCienciaJ2
	
	bne pregunta4Ciencia			/* pregunta 2 arte */
	
resIncCie3:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta4Ciencia

pregunta4Ciencia:
	ldr r0,=pregunta22
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorCie4
	cmp r11,#2
	beq resIncCie4
	
	b numIncorrecto
	
resCorCie4:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaCienciaJ2
	
	bne pregunta5Ciencia			/* pregunta 2 arte */
	
resIncCie4:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta5Ciencia

pregunta5Ciencia:
	ldr r0,=pregunta23
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorCie5
	cmp r11,#2
	beq resIncCie5
	
	b numIncorrecto

resCorCie5:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaCienciaJ2
	
	bne pregunta1Historia			/* pregunta 2 arte */
	
resIncCie5:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta1Historia

ganaCienciaJ2:
	ldr r0,=ganarCatCiencia
	bl puts 
	
	add r5,r5,#1
	ldr r0,=ganarPersonaje
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq imprimirTubo
	b numIncorrecto
	
imprimirTubo:
	bl mostrarTubo
	
	ldr r0,=preguntaSeguir
	bl puts 
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq pregunta1Historia
	b numIncorrecto
	

@---------------------------------------Seccion de validacion de preguntas y respuestas------HISTORIA
pregunta1Historia:
	mov r6,#0
	ldr r0,=turno1					/* Turno del jugador 1 */
	bl puts
	
	ldr r0,=historia
	bl puts
	
	ldr r0,=pregunta25
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resIncHis1
	
	cmp r11,#2
	beq resCorHis1
	
	b numIncorrecto
	
resCorHis1:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaHistoriaJ1
	
	bne pregunta2Historia		/* pregunta 2 arte */
	
resIncHis1:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta2Historia

pregunta2Historia:
	ldr r0,=pregunta26
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resIncHis2
	
	cmp r11,#2
	beq resCorHis2
	
	b numIncorrecto
	
resCorHis2:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaHistoriaJ1
	
	bne pregunta3Historia		/* pregunta 2 arte */
	
resIncHis2:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta3Historia

pregunta3Historia:
	ldr r0,=pregunta27
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorHis3
	cmp r11,#2
	beq resIncHis3
	
	b numIncorrecto
	
resCorHis3:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaHistoriaJ1
	
	bne pregunta4Historia		/* pregunta 2 arte */
	
resIncHis3:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta4Historia

pregunta4Historia:
	ldr r0,=pregunta28
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorHis4
	cmp r11,#2
	beq resIncHis4
	
	b numIncorrecto
	
resCorHis4:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaHistoriaJ1
	
	bne pregunta5Historia		/* pregunta 2 arte */
	
resIncHis4:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta5Historia

pregunta5Historia:
	ldr r0,=pregunta29
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resIncHis5
	
	cmp r11,#2
	beq resCorHis5
	
	b numIncorrecto
	
resCorHis5:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaHistoriaJ1
	
	bne pregunta1Entretenimiento		/* pregunta 2 arte */
	
resIncHis5:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta1Entretenimiento

ganaHistoriaJ1:
	ldr r0,=ganarCatHistoria
	bl puts 
	
	add r4,r4,#1
	ldr r0,=ganarPersonaje
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq imprimirCasco
	b numIncorrecto
	
imprimirCasco:
	bl mostrarCasco
	
	cmp r4,#3
	beq salidaJ1
	
	ldr r0,=preguntaSeguir
	bl puts 
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq pregunta1Entretenimiento
	b numIncorrecto

@---------------------------------------Seccion de validacion de preguntas y respuestas------ENTRETENIMIENTO	
pregunta1Entretenimiento:
	mov r7,#0
	ldr r0,=turno2					/* Turno del jugador 2 */
	bl puts
	
	ldr r0,=entretenimiento
	bl puts
	
	ldr r0,=pregunta31
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorEnt1
	cmp r11,#2
	beq resIncEnt1
	
	b numIncorrecto
	
resCorEnt1:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaEntretenimientoJ2
	
	bne pregunta2Entretenimiento		/* pregunta 2 arte */
	
resIncEnt1:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta2Entretenimiento

pregunta2Entretenimiento:
	ldr r0,=pregunta32
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorEnt2
	cmp r11,#2
	beq resIncEnt2
	
	b numIncorrecto
	
resCorEnt2:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaEntretenimientoJ2
	
	bne pregunta3Entretenimiento		/* pregunta 2 arte */
	
resIncEnt2:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta3Entretenimiento

pregunta3Entretenimiento:
	ldr r0,=pregunta33
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resIncEnt3
	
	cmp r11,#2
	beq resCorEnt3
	
	b numIncorrecto
	
resCorEnt3:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaEntretenimientoJ2
	
	bne pregunta4Entretenimiento		/* pregunta 2 arte */
	
resIncEnt3:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta4Entretenimiento

pregunta4Entretenimiento:
	ldr r0,=pregunta34
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resIncEnt4
	
	cmp r11,#2
	beq resCorEnt4
	
	b numIncorrecto
	
resCorEnt4:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaEntretenimientoJ2
	
	bne pregunta5Entretenimiento		/* pregunta 2 arte */
	
resIncEnt4:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta5Entretenimiento

pregunta5Entretenimiento:
	ldr r0,=pregunta35
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorEnt5
	cmp r11,#2
	beq resIncEnt5
	
	b numIncorrecto
	
resCorEnt5:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r7,r7,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r7,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaEntretenimientoJ2
	
	bne pregunta1Deportes		/* pregunta 2 arte */
	
resIncEnt5:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta1Deportes

ganaEntretenimientoJ2:
	ldr r0,=ganarCatEntretenimiento
	bl puts 
	
	add r5,r5,#1
	ldr r0,=ganarPersonaje
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq imprimirTelevision
	b numIncorrecto
	
imprimirTelevision:
	bl mostrarTelevision
	
	cmp r5,#3
	beq salidaJ2
	
	ldr r0,=preguntaSeguir
	bl puts 
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq pregunta1Deportes
	b numIncorrecto

@---------------------------------------Seccion de validacion de preguntas y respuestas------DEPORTES	
pregunta1Deportes:
	mov r6,#0
	ldr r0,=turno1					/* Turno del jugador 1 */
	bl puts
	
	ldr r0,=deportes
	bl puts
	
	ldr r0,=pregunta37
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resIncDep1
	
	cmp r11,#2
	beq resCorDep1
	
	b numIncorrecto
	
resCorDep1:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaDeportesJ1
	
	bne pregunta2Deportes		/* pregunta 2 arte */
	
resIncDep1:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta2Deportes

pregunta2Deportes:
	ldr r0,=pregunta38
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorDep2
	cmp r11,#2
	beq resIncDep2
	
	b numIncorrecto
	
resCorDep2:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaDeportesJ1
	
	bne pregunta3Deportes		/* pregunta 2 arte */
	
resIncDep2:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta3Deportes

pregunta3Deportes:
	ldr r0,=pregunta39
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorDep3
	cmp r11,#2
	beq resIncDep3
	
	b numIncorrecto
	
resCorDep3:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaDeportesJ1
	
	bne pregunta4Deportes		/* pregunta 2 arte */
	
resIncDep3:	
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta4Deportes

pregunta4Deportes:
	ldr r0,=pregunta40
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resCorDep4
	cmp r11,#2
	beq resIncDep4
	
	b numIncorrecto
	
resCorDep4:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaDeportesJ1
	
	bne pregunta5Deportes		/* pregunta 2 arte */
	
resIncDep4:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b pregunta5Deportes

pregunta5Deportes:
	ldr r0,=pregunta41
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq resIncDep5
	
	cmp r11,#2
	beq resCorDep5
	
	b numIncorrecto

resCorDep5:
	ldr r0,=rCorrecta				/* Mostrar mensaje de respuesta correcta */
	bl puts 
	
	add r6,r6,#1					/* Respuesta correcta, sumar al contador de respuestas correctas */
	cmp r6,#3						/* verificar si ya lleva 3 respuestas correctas */
	beq ganaDeportesJ1
	
	bne ningunoGana		/* pregunta 2 arte */
	
resIncDep5:		
	ldr r0,=rIncorrecta				/* Mostrar mensaje de respuesta incorrecta */
	bl puts

	b ningunoGana

ganaDeportesJ1:
	ldr r0,=ganarCatDeportes
	bl puts 
	
	ldr r0,=ganarPersonaje
	bl puts
	
	add r4,r4,#1
	ldr r0,=ganarPersonaje
	bl puts
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11,#1
	beq imprimirPelota
	b numIncorrecto
	
imprimirPelota:
	bl mostrarPelota
	
	cmp r4,#3
	beq salidaJ1
	
	ldr r0,=preguntaSeguir
	bl puts 
	
	ldr r0,=formato
	ldr r1,=entrada1
	bl scanf 
	
	ldr r8,=entrada1
	
	ldr r11,[r8]
	
	cmp r11, #1
	beq ningunoGana
	b numIncorrecto
		
	b ningunoGana
ningunoGana:
	ldr r0,=sinGanador
	bl puts 
	
	b salir

salidaJ1:
	ldr r0,=medalla
	bl puts
	
	ldr r0,=salidaprimero		/* Mensaje de felicitaciones al primer personaje */
	bl puts
	
	b salir						/* Salida */
salidaJ2:
	ldr r0,=medalla
	bl puts	
	ldr r0,=salidasegundo		/* Mensaje de felicitaciones al segundo personaje */
	bl puts	
	b salir						/* Salida */

.data
.align 2
entrada:	.asciz " -------------------------------------\n| !Bienvenido al juego de Trivia ARM! |\n -------------------------------------"
Instrucciones:	.asciz "El juego consiste en una trivia en la cual usted y su oponente debera contestar correctamente las preguntas para obtener la ventaja"
instrucciones2:	.asciz "Debera responder correctamente 3 preguntas de la misma categoria para obtener un personaje, ¡el primero el obtener 3 sera el ganador!"
instrucciones3:	.asciz "\n*************************************************************\n ADVERTENCIA \nPor favor no ingrese letras ni numeros que no se encuentren entre los valores indicados\n*************************************************************\n"
instrucciones4:	.asciz "¿Desea comenzar a jugar? Eligiremos quien empezara a jugar primero! Selecciones la opcion correcta! \n1. Si!\n2. No, quiero salir del juego"
incorrecto:	.asciz	"\n*************************************************************\n¡Ha ingresado un valor incorrecto! :O \nLo lamento, debera regresesar al inicio :( \nCumpla con la advertencia por favor :D\n*************************************************************\n"
turno1:	.asciz	"\n--------------------------------------------------------------------------\nEs el turno del primer jugador! Aprovecha a tener la mayor cantidad de respuestas correctas! No te detengas hasta terminar la categoria que te ha tocado!\n--------------------------------------------------------------------------\n"
turno2:	.asciz	"\n--------------------------------------------------------------------------\nEs el turno del segundo jugador! Aprovecha a tener la mayor cantidad de respuestas correctas! No te detengas hasta terminar la categoria que te ha tocado!\n--------------------------------------------------------------------------\n"
rCorrecta:	.asciz	"Respuesta correcta!"
rIncorrecta:	.asciz	"Respuesta incorrecta :("
ganarCatArte:	.asciz	"Ha ganado el personaje de la categoria ARTE!"
ganarCatLiteratura:	.asciz "*************\nHa ganado el personaje de la categoria LITERATURA!"
ganarCatGeografia:	.asciz	"*************\nHa ganado el personaje de la categoria GEOGRAFIA!"
ganarCatCiencia:	.asciz	"*************\nHa ganado el personaje de la categoria CIENCIA!"
ganarCatHistoria:	.asciz	"*************\nHa ganado el personaje de la categoria HISTORIA!"
ganarCatEntretenimiento:	.asciz	"*************\nHa ganado el personaje de la categoria entretenimiento!"
ganarCatDeportes:	.asciz	"*************\nHa ganado el personaje de la categoria deportes!"
personajesGanados:	.asciz	"*************\nLa cantidad de personajes que ha ganado es: %d\n"
ganarPersonaje:	.asciz	"¡Presione 1 para recibir su personaje!"
preguntaSeguir:	.asciz	"Presione 1 para continuar"
salidaprimero:	.asciz	"\n--------------------------------------------------------------------------\nFelicidades jugador 1! Ha ganado! Esperamos que juegue de nuevo\n--------------------------------------------------------------------------\n"
salidasegundo:	.asciz	"\n--------------------------------------------------------------------------\nFelicidades jugador 2! Ha ganado! Esperamos que juegue de nuevo\n--------------------------------------------------------------------------\n"
sinGanador:	.asciz	"Ninguno ha ganado :( ¿Que desea hacer?\n1. Intentarlo de nuevo!\n2. Salir del juego"
ganarMedalla:	.asciz	"¡Presione 1 para recibir su medalla!"
entrada1:	.word	0
formato:	.asciz	"%d"
formatos:	.asciz	"%s\n"
entrea:	.asciz	"Entraa"

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
pregunta2:	.asciz	"¿Que instrumento tocaba Vivaldi?\n1. Piano\n2. Violin"
pregunta3:	.asciz	"¿Que instrumento tocaba franz Liszt?\n1.Violin\n2. Piano"
pregunta4:	.asciz	"¿Que pasa con el cuadro de La Balsa de Medusa?\n1. Ningun artista la reclamo\n2. Cada anio se oscurece"
pregunta5:	.asciz	"¿Quien pinto La Santa Cena?\n1. Leonardo Da Vinci\n2. Vincent Van Gogh"
pregunta6:	.asciz	"¿Quien pinto la Mona Lisa?\n1. Pablo Picasso\n2. Leonardo Da Vinci"
preguntaE1:	.asciz	"¿Cual es el ultimo capitulo de la biblia catolica?\n1. Exodo\n2. Apocalipsis"
@Primeras 6 preguntas de literatura
pregunta7:	.asciz	"¿Quien escribio el poema de Lo Fatal?\n1. Ruben Dario\n2. Antonio Machado"
pregunta8:	.asciz	"¿Quien escribio la metamorfosis?\n1. Franz Kafka\n2. Magda Szabo"
pregunta9:	.asciz	"¿Cual obra dio comienzo al modernismo?\n1. Azul\n2. Cantos de vida y de esperanza"
pregunta10:	.asciz	"¿Cual era el primer nombre de Neruda?\n1. Carlo\n2. Pablo"
pregunta11:	.asciz	"¿Quien fue el autor de la obra Hamlet?\n1. William Shakespeare\n2. Michael Jackson"
pregunta12:	.asciz	"¿Quién escribió la Iliada?\n1. Homero\n2. Herodoto"
preguntaE2:	.asciz	"¿Como se llama el autor El cuervo?\n1. Roberto Mazariegos\n2. Edgar Allan Poe"
@ primeras 6 preguntas de geografia
pregunta13:	.asciz "¿Donde se ecuentra Helsinki?\n1. Finlandia\n2. Grecia"
pregunta14:	.asciz "¿Que pais producia katanas?\n1. Japon\n2. Corea"
pregunta15:	.asciz "¿Que isla africana es de mayor tamaño?\n1. Seychelles\n2. Madagascar"
pregunta16:	.asciz "¿Cuantas subdivisiones tiene Asia?\n1. 7\n2. 6"
pregunta17:	.asciz "¿Donde se encuentra la ciudad de Turin?\n1. Italia\n2. Francia"
pregunta18:	.asciz "¿Que estado de EEUU es una isla?\n1. Hawaii\n2. Florida"
preguntaE3:	.asciz	"¿Cuantos colores se encuentran en la bandera de Brasil?\n1. 5\n2. 4"
@primeras 6 pregunts de Ciencia
pregunta19:	.asciz "¿La mitocondria tiene su propio ADN?\n1. Verdadero\n2. Falso"
pregunta20:	.asciz "El ADN eucariotico es: \n1. Circular\n2. Lineal"
pregunta21:	.asciz "¿Que secuencia de ADN inicia la lectura?\n1. UAG\n2. UAA"
pregunta22:	.asciz "¿Con que otro nombre se conoce a las orcas?\n1. Ballenas asesinas\n2. Gran blanca"
pregunta23:	.asciz "¿Quienes padecen andropausia?\n1. Hombres\n2. Mujeres"
pregunta24:	.asciz "¿De que estan compuestos los electrolitos?\n1. Sodio, potasio y cloruro\n2. Vitaminas"
preguntaE4:	.asciz	"¿Cuales son las siglas del oro en la tabla periodica?\n1. Au\n2. O"
@primeras 6 de historia
pregunta25:	.asciz "¿Quien fue el 16 presidente de EEUU?\n1. George Washington\n2. Abraham Lincoln"
pregunta26:	.asciz "¿Cuantos años goberno el presidente Rafel Carrera?\n1. 24\n2. 22"
pregunta27:	.asciz "¿Como se llama la diosa griega primigenia de la noche?\n1. Nyx\n2. Eris"
pregunta28:	.asciz "¿Que imperio es identificado con las siglas SPQR?\n1. Imperio romano\n2. Imperio Mogol"
pregunta29:	.asciz "¿Como llamaron a Canada los exploradores franceses?\n1. Canada\n2. La nueva Francia"
pregunta30:	.asciz "¿Quien fue el presidente de Guatemala en 2014?\n1. Jimmy Morales\n2. Otto Perez Molina"
preguntaE5:	.asciz	"¿Quien es el padre de letemaco?\n1. Quiron\n2. Ulises"
@Primeras 6 de entretenimiento
pregunta31:	.asciz "¿En que pelicula muerte Luke Skywalker?\n1. Los ultimos jedi\n2. Rogue One"
pregunta32:	.asciz "¿De que pais proviene la musica denomidada Kpop?\n1. Corea del Sur\n2. Corea del Norte"
pregunta33:	.asciz "¿Quien es el maestro Roshi?\n1. Maestro de Veguetta\n2. Maestro de Goku en artes marciales"
pregunta34:	.asciz "¿En cual de estos cuentos aparece un conejo blanco?\n1. Pinoccio\n2. Alicia y el pais de las maravillas"
pregunta35:	.asciz "¿Que grupo canta la cancion de No Money?\n1. Galantys\n2. Galanties"
pregunta36:	.asciz "¿Que es el anime?\n1. Animacion china\n2. Animacion Japonesa"
preguntaE6:	.asciz	"¿Como se llama el entrenador de hercules?\n1. Phil\n2. Phelp"
@primeras 6 de deportes
pregunta37:	.asciz "¿Cual de estos jugadores es de Guatemala?\n1. Donovan\n2. Carlos Ruiz"
pregunta38:	.asciz "¿Quien fue el mejor futbolista antes del 2000?\n1. Maradona\n2. Herrador"
pregunta39:	.asciz "¿Que pais es considerado como la naranja mecanica?\n1. Holanda\n2. Brasil"
pregunta40:	.asciz "¿Que deporte practica Rafae Nadal?\n1. Tennis\n2. Natacion"
pregunta41:	.asciz "¿Cual es la seleccion campeona de alemania 2006?\n1. Alemania\n2. Italia"
pregunta42:	.asciz "¿En cual de estos deportes No se usa raqueta?\n1. Esgrima\n2. Squash"
preguntaE7:	.asciz	"¿Cuantas personas integran un grupo de voleyball?\n1. 4\n2. 6"
medalla:	.asciz " .................M...M..N=.......NI..M..8O..........\n ..................:M..8+.,M......,M..$8..M..........\n ...................M=..M..D7.....M:. M..D=..........\n....................M..$I. M ...+N..N+.,M...........\n ....................88..M..7D...M..,M..D~...........\n .....................M..$O..M:.+Z..M,. M............\n .....................M..M..,M.M..$D..M:............\n ......................M,.~M..DM$..M..~M.............\n ...................... M..7NMMMMMD=..M .............\n .......................MMI........:ZMM..........\n ....................,MO.,8MN$+=?ZMM$..ON........\n ...................DD.:M?.....M..,..ZM:.M=......\n ..................M7.NM...?M..M..M,...MZ.M7.....\n .................N?.M=.ON.....O.....MD.78.M+....\n ................~N.M+.........M.... ....D= M,...\n ................M..M.7MM.....DZZ.....MM7 M.OZ...\n ................M.D7....DMMMMM.MMMMM7....M.,M...\n ................M.N= MM,..ZM...7M=...MM.N=.M...\n  ................M D$.......,M.I M........M.:M...\n ................M:.M.?MN...MNM:MM$...MM?,M.8I...\n ................N.M+, ...:M....=M .....D M....\n .................M?.M+.=M. ........,M=.7O M+....\n ..................M7 NM...~M..M..M....M$.MI.....\n ...................$M. M8. ...M..,..MM ,M.......\n .....................MM..7MMNZ$OMMM=..MD........\n  .......................OMO:.......~NM7,.........\n ..........................,+8MMMZ=,........... \n"
