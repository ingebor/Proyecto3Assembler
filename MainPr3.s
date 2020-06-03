@Universidad del Valle de Guatemala
@Organizacion de Computadoras y Assembler
@Proyecto No 3, Trivia ARM
@Andres Say 19705, Ayleen Rubio 19003

.text
.align 2
.global main
.type main,%function
main: 


.data
.align 2
@Primeras 6 preguntas de arte
pregunta1:	.asciz	"¿Cual es el nombre de la tecnica que consiste en dar tonos grises a una imagen?"
pregunta1r1: .asciz	"Cronomatica"
pregunta1r2:	.asciz	"Claro Oscuro"	@correcta
pregunta2:	.asciz	"¿A que edad murio Mozart?"
pregunta2r1:	.asciz	"68"
pregunta2r2:	.asciz	"35"	@correcta
pregunta3:	.asciz	"¿Que instrumento tocaba Vivaldi?"
pregunta3r1:	.asciz	"Piano"
pregunta3r2:	.asciz	"Violin"	@correcta
pregunta4:	.asciz	"¿Que significa la palabra pupil en español?"
pregunta4r1: .asciz	"Estudiante"	@correcta
pregunta4r2:	.asciz	"Profesor"
pregunta5:	.asciz	"¿Que instrumento tocaba franz Liszt?"
pregunta5r1:	.asciz	"Violin"
pregunta5r2:	.asciz	"Piano"	@correcta
pregunta6:	.asciz	"¿Que color es conocido como el borrador de los artistas?"
pregunta6r1:	.asciz	"Blanco"	@correcta
pregunta6r2:	.asciz	"Negro"
@Segundas 6 preguntas de arte
pregunta7:	.asciz	"¿Que pasa con el cuadro de La Balsa de Medusa?"
pregunta7r1:	.asciz	"Ningun artista la reclamo"
pregunta7r2:	.asciz	"Cada anio se oscurece"	@correcta
pregunta8:	.asciz	"¿Cual es el ultimo capitulo de la biblia catolica?"
pregunta8r1:	.asciz	"Exodo"
pregunta8r2:	.asciz	"Apocalipsis"	@correcta
pregunta9:	.asciz	"¿Quien pinto La Santa Cena?"
pregunta9r1:	.asciz	"Leonardo Da Vinci"	@correcta
pregunta9r2:	.asciz	"Vincent Van Gogh"
pregunta10:	.asciz	"¿Que compositor fue conocido en su epoca como el cura pelirrojo?"
pregunta10r1:	.asciz	"Antonio Vivaldi"	@correcta
pregunta10r2:	.asciz	"Anton Bruckner"
pregunta11:	.asciz	"¿En que mes del año se celebra el Dia del Barrilete en Guatemala?"
pregunta11r1:	.asciz	"Diciembre"
pregunta11r2:	.asciz	"Noviembre"	@correcta
pregunta12:	.asciz	"¿Quien pinto la Mona Lisa?"
pregunta12r1:	.asciz	"Pablo Picasso"	
pregunta12r2:	.asciz	"Leonardo Da Vinci"	@correcta

@Primeras 6 preguntas de literatura
pregunta13:	.asciz	"¿Quien escribio el poema de Lo Fatal?"
pregunta13r1:	.asciz	"Ruben Dario"	@correcta
pregunta13r2:	.asciz	"Antonio Machado"
pregunta14:	.asciz	"¿Cual de los siguientes no pertenece a Julio Cortazar?"
pregunta14r1:	.asciz	"Casa tomada"
pregunta14r2:	.asciz	"El amohadon de pluma"	@correcta
pregunta15:	.asciz	"¿Como se llama el autor de la obra Un Dia en la Vida de Ivan Denisovich”?"
pregunta15r1:	.asciz	"Aleksandr Solzhenitsyn"	@correcta
pregunta15r2:	.asciz	"Serguei Rachmaninoff"
pregunta16:	.asciz	"¿Quien escribio la metamorfosis?"
pregunta16r1:	.asciz	"Franz Kafka"	@correcta
pregunta16r2:	.asciz	"Magda Szabo"
pregunta17:	.asciz	"¿Cual obra dio comienzo al modernismo?"
pregunta17r1:	.asciz	"Azul"	@correcta
pregunta17r2:	.asciz	"Cantos de vida y de esperanza"
pregunta18:	.asciz	"¿Como se llama el autor del poema El Cuervo?"
pregunta18r1:	.asciz	"Roberto Mazariegos"
pregunta18r2:	.asciz	"Edgar Allan Poe"	@correcta
@Segundas 6 preguntas de literatura
pregunta19:	.asciz	"¿Quien es el autor del libro El origen de la familia, la propiedad privada y el estado?"
pregunta19r1:	.asciz	"Karl Max"
pregunta19r2:	.asciz	"Friedrich Engels"	@correcta
pregunta20:	.asciz	"¿Cual era el primer nombre de Neruda?"
pregunta20r1:	.asciz	"Carlo"
pregunta20r2:	.asciz	"Pablo"	@correcta
pregunta21:	.asciz	"¿Quien fue el autor de la obra Hamlet?"
pregunta21r1:	.asciz	"William Shakespeare"	@correcta
pregunta21r2:	.asciz	"Michael Jackson"
pregunta22:	.asciz	"¿Quién escribió la Iliada?"
pregunta22r1:	.asciz	"Homero"	@correcta
pregunta22r2:	.asciz	"Herodoto"
pregunta23:	.asciz	"¿Quien es el autor de El Arte de la Guerra?"
pregunta23r1:	.asciz	"Dhi Jing"
pregunta23r2:	.asciz	"Sun Tzu"	@correcta
pregunta24:	.asciz	"Filosofo griego, autor de La Republica"
pregunta24r1:	.asciz	"Aristoteles"
pregunta24r2:	.asciz	"Platon"	@correcta
