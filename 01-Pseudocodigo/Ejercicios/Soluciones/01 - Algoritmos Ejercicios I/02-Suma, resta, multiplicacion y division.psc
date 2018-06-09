Algoritmo Calculadora_simple
	
	// Algoritmo que lea dos numeros, calculando y escribiendo el valor de su suma, resta, producto y division.
	
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
