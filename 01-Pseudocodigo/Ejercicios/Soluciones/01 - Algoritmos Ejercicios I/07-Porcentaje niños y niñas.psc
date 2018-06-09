Algoritmo Niños_y_niñas
	
	// Un colegio desea saber qué porcentaje de niños y qué porcentaje de niñas hay en el curso actual.
	// Diseñar un algoritmo para este propósito.
	
	// Input
	Escribir 'Determine el numero de niños.'
	Leer niños
	
	Escribir 'Determine el numero de niñas.'
	Leer niñas
	
	Limpiar Pantalla
	// Control de negativos
	Mientras ( niños < 0) o ( niñas < 0 )
		Si ( niños < 0) Entonces
			Escribir 'Error. El numero de niños no puede ser menor a 0.'
			Leer niños
			Limpiar Pantalla
		Fin Si
		Si ( niñas < 0 ) Entonces
			Escribir 'Error. El numero de niñas no puede ser menor a 0.'
			Leer niñas
			Limpiar Pantalla
		Fin Si
	FinMientras
	
	// Operaciones
	total <- niños + niñas
	porcentaje_niños <- ( niños * 100) / total
	porcentaje_niñas <-  100 - porcentaje_niños 
	
	// Output
	Escribir 'El numero de niños es ' niños ' y el numero de niñas es ' niñas '.'
	Escribir ''
	Escribir 'El porcentaje de niños es ' porcentaje_niños ' y el porcentaje de niñas es ' porcentaje_niñas '.'
FinAlgoritmo
