Algoritmo sin_titulo
	// Diseñar un algoritmo que puda por teclado tres numeros; si el primero es negativo, debe imprimir el producto
	// de los tres y si no lo es, imprimira la suma.
	
	Definir a, b, c como Entero
	
	// Input
	Escribir 'Determine tres valores numericos.'
	Escribir 'En funcion del primer numero, se realizaran las siguientes operaciones:'
	Escribir '	- Si es negativo, se realizara el producto.'
	Escribir '	- Si es positivo, se realizara la suma.'
	Leer a, b, c
	
	Limpiar Pantalla
	
	// Operaciones
	
	Si ( a < 0) Entonces
		total <- a * b * c
		operacion <- 'producto'
	SiNo
		total <- a + b + c
		operacion <- 'suma'
	FinSi
	
	
	// Output
	
	Escribir 'El primer numero introducido es ' a '.'
	Escribir 'La operacion realizada es ' operacion '.'
	Escribir 'El resultado es ' total '.'
FinAlgoritmo
