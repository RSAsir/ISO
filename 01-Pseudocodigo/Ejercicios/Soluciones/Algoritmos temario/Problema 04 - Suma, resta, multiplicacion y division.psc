Algoritmo Calculadora_simple
	
	// PROBLEMA 4
	// Escribir un algoritmo que lea los datos a y b. Luego ha de calcular y mostrar la suma, resta, multiplicacion y division.
	
	// El usuario introduce input de variables
	Escribir "Introduzca dos valores:"
	Leer a, b
	
	Limpiar Pantalla
	
	// Output de datos
	Escribir 'Los valores introducidos son:'
	Escribir 'a= ' a
	Escribir 'b= ' b
	Escribir ''
	Escribir 'Suma ' a + b
	Escribir 'Resta ' a - b
	Escribir 'Multiplicacion ' a * b
	
	// Validacion de la division por 0
	Si (b != 0)
		Escribir 'Division ' a / b
	FinSi
	
FinAlgoritmo
