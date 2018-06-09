Algoritmo Case
	
	// PROBLEMA 7
	// Diseñar un algoritmo que lea un entero positivo (N) y realice los siguientes calculos:
	// - Si (N) termina en 0 se cambia por el doble.
	// - Si (N) termina en 3 se cambia por la decima parte.
	// - De otro modo mantiene su valor inicial.
	
	// Lectura de input
	Escribir 'Introduzca un valor numerico'
	Leer N
	
	Limpiar Pantalla
	
	// Validacion positivo
	Mientras (N < 0) Hacer
		Escribir 'Error. El numero ha de ser positivo.'
		Escribir 'Introduzca un nuevo valor.'
		Leer N
		Limpiar Pantalla
	Fin Mientras
	
	// Calculo
	Segun N Hacer
		0:
			Escribir 'El doble de 0 es 0.'
		3:
			Escribir 'La decima parte de 3 es ' N/10 '.'
		De Otro Modo:
			Escribir 'El valor N es igual a ' N '.'
	Fin Segun
FinAlgoritmo
