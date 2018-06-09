Algoritmo Ni�os_y_ni�as
	
	// Un colegio desea saber qu� porcentaje de ni�os y qu� porcentaje de ni�as hay en el curso actual.
	// Dise�ar un algoritmo para este prop�sito.
	
	// Input
	Escribir 'Determine el numero de ni�os.'
	Leer ni�os
	
	Escribir 'Determine el numero de ni�as.'
	Leer ni�as
	
	Limpiar Pantalla
	// Control de negativos
	Mientras ( ni�os < 0) o ( ni�as < 0 )
		Si ( ni�os < 0) Entonces
			Escribir 'Error. El numero de ni�os no puede ser menor a 0.'
			Leer ni�os
			Limpiar Pantalla
		Fin Si
		Si ( ni�as < 0 ) Entonces
			Escribir 'Error. El numero de ni�as no puede ser menor a 0.'
			Leer ni�as
			Limpiar Pantalla
		Fin Si
	FinMientras
	
	// Operaciones
	total <- ni�os + ni�as
	porcentaje_ni�os <- ( ni�os * 100) / total
	porcentaje_ni�as <-  100 - porcentaje_ni�os 
	
	// Output
	Escribir 'El numero de ni�os es ' ni�os ' y el numero de ni�as es ' ni�as '.'
	Escribir ''
	Escribir 'El porcentaje de ni�os es ' porcentaje_ni�os ' y el porcentaje de ni�as es ' porcentaje_ni�as '.'
FinAlgoritmo
