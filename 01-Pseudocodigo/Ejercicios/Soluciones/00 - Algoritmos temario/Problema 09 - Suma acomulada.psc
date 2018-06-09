Algoritmo Suma_acomulada
	
	// PROBLEMA 9
	// Diseñar un algoritmo que permita calcular la suma acomulada de la serie:
	// 1+2+3+4+...+n
	// Neplugia ingresa el numero de terminos a sumar.
	
	
	// Declaracion de variables
	sumativo <- 0
	contador <- 0
	
	// Input del valor n
	Escribir 'Introduzca el valor para conocer su suma acomulada: ' Sin Saltar
	Leer n
	
	// Validacion positivo
	Mientras (n <= 0) Hacer
		Escribir 'Error. El numero ha de ser positivo y diferente de 0.'
		Escribir 'Introduzca un nuevo valor.'
		Leer n
		Limpiar Pantalla
	Fin Mientras
	
	// Calculo
	Repetir
		sumativo <- sumativo + contador
		contador <- contador + 1
	Hasta Que contador = n + 1 // Es necesario poner n + 1 para que al hacer el primer loop, se anule la suma de 0 + 0
	
	Escribir 'El sumativo de ' n ' es ' sumativo
FinAlgoritmo
