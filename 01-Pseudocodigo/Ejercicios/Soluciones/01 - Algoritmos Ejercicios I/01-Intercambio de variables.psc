Algoritmo Intercambio_de_variables
	
	// Dadas dos variables numericas A y B, que el usuario debe teclear, se pide realizar un algoritmo que intercambie los valores
	// de ambas varibables y mueste cuanto valen al final las dos variables.
	
	// Input
	Escribir 'Determine la variable A.'
	Leer A
	Escribir 'Determine la variable B.'
	Leer B
	
	// Operacionces (se declara una tercera variable, para no perder el valor inicial de A)
	C <- A
	A <- B
	B <- C
	
	// Output
	Escribir 'La nueva variable A es igual a: ' A
	Escribir 'La nueva variable B es igual a: ' B
FinAlgoritmo
