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

@ primeras 6 preguntas de geografia
pregunta25:	.asciz "¿Donde se ecuentra Helsinki?"
pregunta25r1:	.asciz "Finlandia" @correcta
pregunta25r2:	.asciz "Grecia"
pregunta26:	.asciz "¿Que pais producia katanas"
pregunta26r1:	.asciz "Japon" @correcta
pregunta26r2:	.asciz "Corea"
pregunta27:	.asciz "¿Cuantos colores se encuentran en la bandera de Brasil?"
pregunta27r1:	.asciz "5"
pregunta27r2:	.asciz "4" @correcta
pregunta28:	.asciz "¿Segun las teorias que continente es el mas grande del mundo?"
pregunta28r1:	.asciz "America" @correcta
pregunta28r2:	.asciz "Europa"
pregunta29:	.asciz "¿Que isla africana es de mayor tamaño"
pregunta29r1:	.asciz "Seychelles"
pregunta29r2:	.asciz "Madagascar" @correcta
pregunta30:	.asciz "¿En donde se encuenta el lugar turistico de Guatemala llamado Hun Nal Ye?"
pregunta30r1:	.asciz "Peten"
pregunta30r2:	.asciz "Alta Verapaz"  @correcta

@segundas preguntas de geografia
pregunta31:	.asciz "¿cuantas subdivisiones tiene Asia"
pregunta3r1:	.asciz "7"
pregunta31r2:	.asciz "6" @correcta  
pregunta32:	.asciz "¿Que religion considera Jerusalen como tierra santa"
pregunta32r1:	.asciz "Budismo"
pregunta32r2:	.asciz "Islamismo"   @Correcta
pregunta33:	.asciz "¿Donde se encuentra la ciudad de Turin?"
pregunta33r1:	.asciz "Italia" @correcta
pregunta33r2:	.asciz "Francia"  
pregunta34:	.asciz "¿Que estado de EEUU es una isla?"
pregunta34r1:	.asciz "Hawaii" @correcta
pregunta34r2:	.asciz "Florida"  
pregunta35:	.asciz "¿Cual de estas ciudades esta mas al oeste de Europa?"
pregunta35r1:	.asciz "Lisboa"
pregunta35r2:	.asciz "Berlin"  
pregunta36:	.asciz "¿Cual de las siguientes religiones cuenta con mas templos en Francia?"
pregunta36r1:	.asciz "Catolica"
pregunta36r2:	.asciz "Islam"  

@primeras 6 pregunts de Ciencia
pregunta37:	.asciz "¿La mitocondria tiene su propio ADN?"
pregunta37r1:	.asciz "Verdadero" @correcto
pregunta37r2:	.asciz "Falso"
pregunta38:	.asciz "El ADN eucariotico es: "
pregunta38r1:	.asciz "Circular"
pregunta38r2:	.asciz "Lineal" @Correcto
pregunta39:	.asciz "¿Que enfermedad es provocada por falta de acido ascorbico?"
pregunta39r1:	.asciz "Escorbuto" @ correcto
pregunta39r2:	.asciz "Cretinismo"
pregunta40:	.asciz "¿Que secuencia de ADN inicia la lectura?"
pregunta40r1:	.asciz "AUG" @correcto
pregunta40r2:	.asciz "UAA"
pregunta41:	.asciz "¿Con que otro nombre se conoce a las orcas?"
pregunta41r1:	.asciz "Ballenas asesinas" @correcto
pregunta41r2:	.asciz "Gran blanca"
pregunta42:	.asciz "¿Como se llama la capa que nos cubre de los rayos UV?"
pregunta42r1:	.asciz "Capa de gas"
pregunta42r2:	.asciz "Capa de ozono" @correcto

@segundas preguntas de ciencia
pregunta43:	.asciz "¿Quienes padecen andropausia?"
pregunta43r1:	.asciz "Hombres" @correcto
pregunta43r2:	.asciz "Mujeres"
pregunta44:	.asciz "¿Cuales son las siglas del oro en la tabla periodica?"
pregunta44r1:	.asciz "Au" @correcto
pregunta44r2:	.asciz "O"
pregunta45:	.asciz "¿Como se llama el proceso de regeneracion de neuronas?"
pregunta45r1:	.asciz "Neurotransmision"
pregunta45r2:	.asciz "Neurogenesis" @correcto
pregunta46:	.asciz "¿Cual es el organelo de la planta responsable de la fotosintesis?"
pregunta46r1:	.asciz "Cloroplasto" @correcto
pregunta46r2:	.asciz "Estoma"
pregunta47:	.asciz "¿De que estan compuestos los electrolitos?"
pregunta47r1:	.asciz "Sodio,potasio y cloruro" @correcto
pregunta47r2:	.asciz "Vitaminas"
pregunta48:	.asciz "¿Como se llaman las estructuras para sentir el sabor?"
pregunta48r1:	.asciz "Pupilas"
pregunta48r2:	.asciz "Papilas" @correcto

@primeras 6 de historia
pregunta49:	.asciz "¿Quien fue el 16 presidente de EEUU?"
pregunta49r1:	.asciz "George Washington"
pregunta49r2:	.asciz "Abraham Lincoln" @correcto
pregunta50:	.asciz "¿En que año fue declarada la flor nacional de Guatemala la monja blanca?"
pregunta50r1:	.asciz "1934" @correcto
pregunta50r2:	.asciz "1944"
pregunta51:	.asciz "¿Quien es el padre de telemaco segun la mitologia griega?"
pregunta51r1:	.asciz "Quiron"
preguntar1r2:	.asciz "Ulises" @correcto
pregunta52:	.asciz "¿Cuantos años goberno el presidente rafel cabrera?"
pregunta52r1:	.asciz "24"
pregunta52r2:	.asciz "22" @correcto
pregunta53:	.asciz "¿Como se llam la diosa griega primigeni de l noche?"
pregunta53r1:	.asciz "Nyx" @correcto
pregunta53r2:	.asciz "Eris"
pregunta54:	.asciz "¿Cual de los siguientes no tuvo conflicto armado interno?"
pregunta54r1:	.asciz "Colombia"
pregunta54r2:	.asciz "Costa rica" @correcto

@segundas de historia
pregunta55:	.asciz "¿Cual de estos governntes fue conocido por su sabiduria?"
pregunta55r1:	.asciz "Luis XVI"
pregunta55r2:	.asciz "Salomon" @correcto
pregunta56:	.asciz "¿Que imperio es identificado con las siglas SPQR?"
pregunta56r1:	.asciz "Impeio romano" @correcto
pregunta56r2:	.asciz "Imperio Mogol"
pregunta57:	.asciz "¿Por que los indigenas en mexico aceptaron a hernan cortez?"
pregunta57r1:	.asciz "Porque era de Europa"
pregunta57r2:	.asciz "Porque pensaron que era el dios del sol" @correcto
pregunta58:	.asciz "¿Como se llama el poema que escribio jose Marti, inspirado en una joven Guatemalteca?"
pregunta58r1:	.asciz "La niña de Guatemala" @correcto
pregunta58r2:	.asciz "Mi niña de Guatemala"
pregunta59:	.asciz "¿como llamaron a canada los exploradores franceses?"
pregunta59r1:	.asciz "Canada"
pregunta59r2:	.asciz "La nueva francia" @correcto
pregunta60:	.asciz "¿Quien fue el presidente de Guatemala en 2014?"
pregunta60r1:	.asciz "Jimmy Morales"
pregunta60r2:	.asciz "Otto Perez Molina" @correcto

@Primeras 6 de entretenimiento
pregunta61:	.asciz "¿Que canal de Youtube hispano tiene mas suscripciones?"
pregunta61r1:	.asciz "EnchufeTV"
pregunta61r2:	.asciz "Badabum" @correcto
pregunta62:	.asciz "¿En que pelicula muerte Luke Skywalker?"
pregunta62r1:	.asciz "Los ultimos jedi" @correcto
pregunta62r2:	.asciz "Rogue One"
pregunta63:	.asciz "¿Como se llama el juego que reune a las mayor cantidad de personajes de nintento?"
pregunta63r1:	.asciz "Mario Kart"
pregunta63r2:	.asciz "Smash" @correcto
pregunta64:	.asciz "¿Que jugar de futbol subio mucho de peso por un problema de tiroides?"
pregunta64r1:	.asciz "Ronaldo" @correcto
pregunta64r2:	.asciz "Ronaldinho"
pregunta65:	.asciz "¿De que pais proviene la musica denomidada Kpop?"
pregunta65r1:	.asciz "Corea del sur" @correcto
pregunta65r2:	.asciz "Corea del norte"
pregunta66:	.asciz "¿Quien es el maestro Roshi?"
pregunta66r1:	.asciz "Maestro de Veguetta"
pregunta66r2:	.asciz "Maestro de Goku en artes marciales" @correcto

@segundas de entretenimiento:
pregunta67:	.asciz "¿En cual de estos cuentos aparece un conejo blanco?"
pregunta67r1:	.asciz "Pinoccio"
pregunta67r2:	.asciz "Alicia y el pais de las maravillas" @correcto
pregunta68:	.asciz "¿Como se llama el entrenador de Hercules de Disney?"
pregunta68r1:	.asciz "Phil" @correcto
pregunta68r2:	.asciz "Phelp"
pregunta69:	.asciz "En en chavo del 8, ¿A quien es que siempre el chavo recibe de mala manera?"
pregunta69r1:	.asciz "Don ramon"
pregunta69r2:	.asciz "Señor Barriga" @correcto
pregunta70:	.asciz "¿Cual de los siguientes no es un superheroe de marvel universe?"
pregunta70r1:	.asciz "Iron Man"
pregunta70r2:	.asciz "Aquaman"
pregunta71:	.asciz "¿Que grupo canta la cancion de No Money?"
pregunta71r1:	.asciz "Galantys" @correcto
pregunta71r2:	.asciz "Galanties"
pregunta72:	.asciz "¿Que es el anime?"
pregunta72r1:	.asciz "Animacion china"
pregunta72r2:	.asciz "Animacion Japonesa"

@primeras 6 de deportes
pregunta73:	.asciz "¿Cual de estos jugadores es de Guatemala?"
pregunta73r1:	.asciz "Donovan"
pregunta73r2:	.asciz "Carlos Ruiz" @correcto
pregunta74:	.asciz "¿En ajedrez, que pieza se puede mover en forma de L?"
pregunta74r1:	.asciz "Caballo"
pregunta74r2:	.asciz "La dama"
pregunta75:	.asciz "¿Quien fue el mejor futbolista antes del 2000?"
pregunta75r1:	.asciz "Maradona" @correcto
pregunta75r2:	.asciz "Herrador"
pregunta76:	.asciz "¿Que pais es considerado como la naranja mecanica?"
pregunta76r1:	.asciz "Holanda" @correcto
pregunta76r2:	.asciz "Brasil"
pregunta77:	.asciz "¿Que jugador disputo tres mundiales para selecciones diferentes?"
pregunta77r1:	.asciz "David Trezeguet"
pregunta77r2:	.asciz "Dejan Stankovic" @correcto
pregunta78:	.asciz "¿Que deporte practica Rafae Nadal?"
pregunta78r1:	.asciz "Tennis" @correcto
pregunta78r2:	.asciz "Natacion"

@Segundas de deportes
pregunta79:	.asciz "¿Cuantas personas integran un equipo de voleibol?"
pregunta79r1:	.asciz "4"
pregunta79r2:	.asciz "6" @correcto
pregunta80:	.asciz "¿Cual es el patrocinador oficial de Cristiano Ronaldo?"
pregunta80r1:	.asciz "Adidas"
pregunta80r2:	.asciz "Nike" @correcto
pregunta81:	.asciz "¿Que selecciones ganadoras de la copa del mundo no fueron campeonas en su propio territorio?"
pregunta81r1:	.asciz "Brasil y España" @correcto
pregunta81r2:	.asciz "Italia y Francia"
pregunta82:	.asciz "¿Quien obtuvo 3 scudettos seguidos desde la temporada 2011/2012 al 2013/2014?"
pregunta82r1:	.asciz "Roma"
pregunta82r2:	.asciz "Juventus" @correcto
pregunta83:	.asciz "¿Cual es la seleccion campeona de alemania 2006?"
pregunta83r1:	.asciz "Alemania"
pregunta83r2:	.asciz "Italia" @correcto
pregunta84:	.asciz "¿En cual de estos deportes No se usa raqueta?"
pregunta84r1:	.asciz "Esgrima"
pregunta84r2:	.asciz "Squash" @correcto









