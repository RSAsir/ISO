Algoritmo Factorial
	
	// PROBLEMA 8
	// Escribir un algoritmo que lea un numero entero positivo "n" y luego imprima su factorial.
	
	// Declaracion variables
	total <- 1
	contador <-1
	
	// Lectura de input
	Escribir 'Escriba un numero positivo para ver su factorial'
	Leer n
	
	// Validacion positivo
	Mientras (n < 0) Hacer
		Escribir 'Error. El numero ha de ser positivo.'
		Escribir 'Introduzca un nuevo valor.'
		Leer n
		Limpiar Pantalla
	Fin Mientras
	
	// Calculo (el factorial es el resultado de la multiplicacion de todos los numeros desde 1 hasta n)
	Mientras (contador <= n)
		total <- contador * total
		contador <- contador + 1
	FinMientras
	
	Escribir 'El factorial de ' n ' es ' total '.'
FinAlgoritmo
