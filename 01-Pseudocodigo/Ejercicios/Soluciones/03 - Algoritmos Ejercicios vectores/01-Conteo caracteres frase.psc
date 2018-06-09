Algoritmo Conteo_caracteres
	
	// Realiza un ejercicio en pseudocódigo que almacene una frase de un número determinado de caracteres en una
	// dimensión (un carácter por posición del array) y cuente el número de caracteres que tenga 
	// la frase sin tener en cuenta los espacios en blanco.
	
	Dimension Caract[100]
	contador <- 0
	conteo <- 0
	
	// Input
	Escribir 'Escriba una frase para conocer su numero de caracteres.'
	Leer frase
	
	// Registro de la frase en el vector
	Para i <- 1 Hasta Longitud(frase) Con Paso 1 Hacer
		Si ( Subcadena(frase, contador, contador) = ' ' ) Entonces
			contador <- contador + 1
		SiNo
			// (siempre hay que aumentar primero la posicion del vector para que no de error)
			a <- a + 1
			Caract[a] <- Subcadena(frase, contador, contador)
			contador <- contador + 1
			conteo <- conteo + 1
		Fin Si
	Fin Para
	
	Escribir  'El numero de caracteres de la frase es ' conteo '.'

FinAlgoritmo
