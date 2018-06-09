Algoritmo Estudios
	
	// Algoritmo que nos diga si una persona puede acceder a cursar un ciclo formativo de grado superior o no. 
	// Para acceder a un grado superior, si se tiene un titulo de bachiller, en caso de no tenerlo, se puede
	// acceder si hemos superado una prueba de acceso.
	
	// Input
	Escribir '¿Cuenta actualmente con titulo de bachillerato? (s/n)'
	Leer respuesta
	Limpiar Pantalla
	
	// Validacion
	Mientras (  ) y ( Minusculas(respuesta) != 'n' )
		Escribir 'Respuesta no valida. Las respuestas disponibles son s o n.'
		Leer respuesta
		Limpiar Pantalla
	FinMientras
	
	// Output
	Si ( Minusculas(respuesta) != 's' ) Entonces
		Escribir 'Puede acceder.'
	SiNo
		// Input
		Escribir '¿Ha superado la prueba de acceso?'
		Leer respuesta_dos
		
		// Validacion
		Mientras ( Minusculas(respuesta_dos) != 's' ) y ( Minusculas(respuesta_dos) != 'n' )
			Escribir 'Respuesta no valida. Las respuestas disponibles son s o n.'
			Leer respuesta
			Limpiar Pantalla
		FinMientras
		
		// Output
		Si ( respuesta = 's' ) Entonces
			Escribir 'Puede acceder.'
		SiNo
			Escribir 'No puede acceder.'
		Fin Si
	Fin Si
FinAlgoritmo
