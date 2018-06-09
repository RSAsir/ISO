Algoritmo Promedio
	Escribir 'Introduzca tres valores'
	Leer a, b, c
	
	Limpiar Pantalla
	
	// Validaciones
	Mientras (a < 0) o (b < 0) o (c < 0) o (a > 10) o (b > 10) o (c > 10)
		// Validacion negativos
		Si (a < 0) Entonces
			Escribir 'El valor a es negativo. Introduzca un valor positivo.'
			Leer a
		Fin Si
		
		Si (b < 0) Entonces
			Escribir 'El valor b es negativo. Introduzca un valor positivo.'
			Leer b
		Fin Si
		
		Si (c < 0) Entonces
			Escribir 'El valor c es negativo. Introduzca un valor positivo.'
			Leer c
		Fin Si
		
		// Validacion inferior a 10
		Si (a > 10) Entonces
			Escribir 'El valor a es superior a 10. Introduzca un valor valido.'
			Leer a
		Fin Si
		
		Si (b > 10) Entonces
			Escribir 'El valor b es superior a 10. Introduzca un valor valido.'
			Leer b
		Fin Si
		
		Si (c > 10) Entonces
			Escribir 'El valor c es superior a 10. Introduzca un valor valido.'
			Leer c
		Fin Si
		Limpiar Pantalla
	FinMientras
	
	// Calculo
	Si (a <= b)
		peq <- a
		gran <- b
	SiNo
		peq <- b
		gran <- a
	FinSi
	
	Si (peq <= c)
		prom <- (gran + c)/2
		med <- c
	SiNo
		prom <- (gran + b)/2
		med <- b
	FinSi
	
	Escribir 'El promedio de ' gran ' y ' med ' es ' prom '.'
FinAlgoritmo
