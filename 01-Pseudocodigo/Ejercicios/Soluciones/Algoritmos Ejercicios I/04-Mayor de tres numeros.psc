Algoritmo Mayor_y_menor
	
	// PROBLEMA 5 
	// Escribir un algoritmo que lea tres números enteros positivos a, b y c e imprima el mayor de ellos. 
	
	// Lectura del input
	Escribir 'Introduzca tres valores'
	Leer a, b, c
	
	Limpiar Pantalla
	
	// Validacion positivo
	Mientras (a < 0) o (b < 0) o (c < 0)
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
		
		Limpiar Pantalla
	FinMientras
	
	// Calculo
	Si (a >= b)
		grande <- a
	SiNo
		grande <- b
	FinSi
	
	Si (grande >= c)
		Escribir 'El numero mayor de los tres es ' grande '.'
	SiNo
		grande <- c
		Escribir 'El numero mayor de los tres es ' grande '.'
	FinSi
	
FinAlgoritmo
