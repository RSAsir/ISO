Algoritmo Mayor_y_menor
	
	// Algoritmo que lea dos numeros y nos diga cual de ellos es mayor o si bien son iguales.
	
	// Lectura del input
	Escribir 'Introduzca dos valores numericos:'
	Leer a, b
	
	Limpiar Pantalla
	
	// Validacion positivo
	Mientras (a < 0) o (b < 0)
		Si (a < 0) Entonces
			Escribir 'El valor a es negativo. Introduzca un valor positivo.'
			Leer a
		Fin Si
		
		Si (b < 0) Entonces
			Escribir 'El valor b es negativo. Introduzca un valor positivo.'
			Leer b
		Fin Si
		Limpiar Pantalla
	FinMientras
	
	// Calculo
	Si (a = b)
		Escribir 'Ambos numeros son iguales'
	SiNo
		Si (a > b) Entonces
			Escribir 'El numero mayor de los dos es ' a '.'
		SiNo
			Escribir 'El numero mayor de los dos es ' b '.'
		Fin Si
	FinSi
	
	
FinAlgoritmo
