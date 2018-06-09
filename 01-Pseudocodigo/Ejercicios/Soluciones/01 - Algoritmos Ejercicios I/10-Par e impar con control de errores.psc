Algoritmo Par_e_impar_v2
	
	// Modificar el algoritmo anterior, de forma que si se teclea un cero, se vuelva a pedir el número por teclado.
	
	// Input
	Escribir 'Determine un numero'
	Leer numero
	Limpiar Pantalla
	
	Mientras ( numero = 0 ) Hacer
		Escribir 'Valor no valido. Introduzca un numero diferente.'
		Leer numero
		Limpiar Pantalla
	FinMientras
	
	// Output
	Si ( numero mod 2 = 0)
		Escribir 'El numero ' numero ' es par.'
	SiNo
		Escribir 'El numero ' numero ' es impar.'
	FinSi
FinAlgoritmo
