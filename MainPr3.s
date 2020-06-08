@Universidad del Valle de Guatemala
@Organizacion de Computadoras y Assembler
@Proyecto No 3, Trivia ARM
@Andres Say 19705, Ayleen Rubio 19003

.text
.align 2
.global main
.type main,%function
main:
	ldr r0,=entrada
	bl puts
	ldr r0,=Instrucciones
	bl puts
	ldr r0,= instrucciones2
	bl puts
	ldr r0,=instrucciones3
	bl puts

etArte:

etLiteratura:

etGeografia:

etCiecia:

etHistoria:

etEntretenimiento:

etDeportes:



.data
.align 2

entrada:	.asciz "Bienvenido al juego"
Instrucciones:	.asciz "El juego consiste en una trivia en la cual usted y su oponente debera contestar correctamente las preguntas para obtener la ventaja"
instrucciones2:	.asciz "Debera responder correctamente 3 preguntas de la misma categoria para obtener un punto, el primero el obtener 3 sera el ganador"
instrucciones3:	.asciz "No pueden obtener mas puntos de la misma categoria"
@Primeras 6 preguntas de arte

pregunta1:	.asciz	"¿A que edad murio Mozart?"
pregunta1r1:	.asciz	"68"
pregunta1r2:	.asciz	"35"	@correcta
pregunta2:	.asciz	"¿Que instrumento tocaba Vivaldi?"
pregunta2r1:	.asciz	"Piano"
pregunta2r2:	.asciz	"Violin"	@correcta
pregunta3:	.asciz	"¿Que instrumento tocaba franz Liszt?"
pregunta3r1:	.asciz	"Violin"
pregunta3r2:	.asciz	"Piano"	@correcta
pregunta4:	.asciz	"¿Que pasa con el cuadro de La Balsa de Medusa?"
pregunta4r1:	.asciz	"Ningun artista la reclamo"
pregunta4r2:	.asciz	"Cada anio se oscurece"	@correcta
pregunta5:	.asciz	"¿Quien pinto La Santa Cena?"
pregunta5r1:	.asciz	"Leonardo Da Vinci"	@correcta
pregunta5r2:	.asciz	"Vincent Van Gogh"
pregunta6:	.asciz	"¿Quien pinto la Mona Lisa?"
pregunta6r1:	.asciz	"Pablo Picasso"	
pregunta6r2:	.asciz	"Leonardo Da Vinci"	@correcta

@Primeras 6 preguntas de literatura
pregunta7:	.asciz	"¿Quien escribio el poema de Lo Fatal?"
pregunta7r1:	.asciz	"Ruben Dario"	@correcta
pregunta7r2:	.asciz	"Antonio Machado"
pregunta8:	.asciz	"¿Quien escribio la metamorfosis?"
pregunta8r1:	.asciz	"Franz Kafka"	@correcta
pregunta8r2:	.asciz	"Magda Szabo"
pregunta9:	.asciz	"¿Cual obra dio comienzo al modernismo?"
pregunta9r1:	.asciz	"Azul"	@correcta
pregunta9r2:	.asciz	"Cantos de vida y de esperanza"

@Segundas 6 preguntas de literatura
pregunta10:	.asciz	"¿Cual era el primer nombre de Neruda?"
pregunta10r1:	.asciz	"Carlo"
pregunta10r2:	.asciz	"Pablo"	@correcta
pregunta11:	.asciz	"¿Quien fue el autor de la obra Hamlet?"
pregunta11r1:	.asciz	"William Shakespeare"	@correcta
pregunta11r2:	.asciz	"Michael Jackson"
pregunta12:	.asciz	"¿Quién escribió la Iliada?"
pregunta12r1:	.asciz	"Homero"	@correcta
pregunta12r2:	.asciz	"Herodoto"

@ primeras 6 preguntas de geografia
pregunta13:	.asciz "¿Donde se ecuentra Helsinki?"
pregunta13r1:	.asciz "Finlandia" @correcta
pregunta13r2:	.asciz "Grecia"
pregunta14:	.asciz "¿Que pais producia katanas"
pregunta14r1:	.asciz "Japon" @correcta
pregunta14r2:	.asciz "Corea"
pregunta15:	.asciz "¿Que isla africana es de mayor tamaño"
pregunta15r1:	.asciz "Seychelles"
pregunta15r2:	.asciz "Madagascar" @correcta

@segundas preguntas de geografia
pregunta16:	.asciz "¿cuantas subdivisiones tiene Asia"
pregunta16r1:	.asciz "7"
pregunta16r2:	.asciz "6" @correcta  
pregunta17:	.asciz "¿Donde se encuentra la ciudad de Turin?"
pregunta17r1:	.asciz "Italia" @correcta
pregunta17r2:	.asciz "Francia"  
pregunta18:	.asciz "¿Que estado de EEUU es una isla?"
pregunta18r1:	.asciz "Hawaii" @correcta
pregunta18r2:	.asciz "Florida"  

@primeras 6 pregunts de Ciencia
pregunta19:	.asciz "¿La mitocondria tiene su propio ADN?"
pregunta19r1:	.asciz "Verdadero" @correcto
pregunta19r2:	.asciz "Falso"
pregunta20:	.asciz "El ADN eucariotico es: "
pregunta20r1:	.asciz "Circular"
pregunta20r2:	.asciz "Lineal" @Correcto
pregunta21:	.asciz "¿Que secuencia de ADN inicia la lectura?"
pregunta21r1:	.asciz "AUG" @correcto
pregunta21r2:	.asciz "UAA"
pregunta22:	.asciz "¿Con que otro nombre se conoce a las orcas?"
pregunta22r1:	.asciz "Ballenas asesinas" @correcto
pregunta22r2:	.asciz "Gran blanca"

@segundas preguntas de ciencia
pregunta23:	.asciz "¿Quienes padecen andropausia?"
pregunta23r1:	.asciz "Hombres" @correcto
pregunta23r2:	.asciz "Mujeres"
pregunta24:	.asciz "¿De que estan compuestos los electrolitos?"
pregunta24r1:	.asciz "Sodio,potasio y cloruro" @correcto
pregunta24r2:	.asciz "Vitaminas"

@primeras 6 de historia
pregunta25:	.asciz "¿Quien fue el 16 presidente de EEUU?"
pregunta25r1:	.asciz "George Washington"
pregunta25r2:	.asciz "Abraham Lincoln" @correcto
pregunta26:	.asciz "¿Cuantos años goberno el presidente rafel cabrera?"
pregunta26r1:	.asciz "24"
pregunta26r2:	.asciz "22" @correcto
pregunta27:	.asciz "¿Como se llam la diosa griega primigeni de l noche?"
pregunta27r1:	.asciz "Nyx" @correcto
pregunta27r2:	.asciz "Eris"

@segundas de historia
pregunta28:	.asciz "¿Que imperio es identificado con las siglas SPQR?"
pregunta28r1:	.asciz "Impeio romano" @correcto
pregunta28r2:	.asciz "Imperio Mogol"
pregunta29:	.asciz "¿como llamaron a canada los exploradores franceses?"
pregunta29r1:	.asciz "Canada"
pregunta29r2:	.asciz "La nueva francia" @correcto
pregunta30:	.asciz "¿Quien fue el presidente de Guatemala en 2014?"
pregunta30r1:	.asciz "Jimmy Morales"
pregunta30r2:	.asciz "Otto Perez Molina" @correcto

@Primeras 6 de entretenimiento
pregunta31:	.asciz "¿En que pelicula muerte Luke Skywalker?"
pregunta31r1:	.asciz "Los ultimos jedi" @correcto
pregunta31r2:	.asciz "Rogue One"
pregunta32:	.asciz "¿De que pais proviene la musica denomidada Kpop?"
pregunta32r1:	.asciz "Corea del sur" @correcto
pregunta32r2:	.asciz "Corea del norte"
pregunta33:	.asciz "¿Quien es el maestro Roshi?"
pregunta33r1:	.asciz "Maestro de Veguetta"
pregunta33r2:	.asciz "Maestro de Goku en artes marciales" @correcto

@segundas de entretenimiento:
pregunta34:	.asciz "¿En cual de estos cuentos aparece un conejo blanco?"
pregunta34r1:	.asciz "Pinoccio"
pregunta34r2:	.asciz "Alicia y el pais de las maravillas" @correcto
pregunta35:	.asciz "¿Que grupo canta la cancion de No Money?"
pregunta35r1:	.asciz "Galantys" @correcto
pregunta35r2:	.asciz "Galanties"
pregunta36:	.asciz "¿Que es el anime?"
pregunta36r1:	.asciz "Animacion china"
pregunta36r2:	.asciz "Animacion Japonesa" @correcto

@primeras 6 de deportes
pregunta37:	.asciz "¿Cual de estos jugadores es de Guatemala?"
pregunta37r1:	.asciz "Donovan"
pregunta37r2:	.asciz "Carlos Ruiz" @correcto
pregunta38:	.asciz "¿Quien fue el mejor futbolista antes del 2000?"
pregunta38r1:	.asciz "Maradona" @correcto
pregunta38r2:	.asciz "Herrador"
pregunta39:	.asciz "¿Que pais es considerado como la naranja mecanica?"
pregunta39r1:	.asciz "Holanda" @correcto
pregunta39r2:	.asciz "Brasil"
pregunta40:	.asciz "¿Que deporte practica Rafae Nadal?"
pregunta40r1:	.asciz "Tennis" @correcto
pregunta40r2:	.asciz "Natacion"

@Segundas de deportes
pregunta41:	.asciz "¿Cual es la seleccion campeona de alemania 2006?"
pregunta41r1:	.asciz "Alemania"
pregunta41r2:	.asciz "Italia" @correcto
pregunta42:	.asciz "¿En cual de estos deportes No se usa raqueta?"
pregunta42r1:	.asciz "Esgrima"
pregunta42r2:	.asciz "Squash" @correcto









