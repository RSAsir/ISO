Algoritmo Del_reves
	
	// Realiza un ejercicio en pseudocódigo que almacene una frase de un número determinado de caracteres y
	// muestre esa misma frase al revés.
	
	Dimension Caract[100]
	Dimension Reverse[100]
	contador <- 1
	
	// Input
	Escribir 'Escriba una frase para invertirla.'
	Leer frase
	
	// Registro de la frase en el vector
	Para i <- 1 Hasta Longitud(frase) Con Paso 1 Hacer
		// (siempre hay que aumentar primero la posicion del vector para que no de error)
		a <- a + 1
		Caract[a] <- Subcadena(frase, contador, contador)
		contador <- contador + 1
	Fin Para
	
	Para i <- 1 Hasta Longitud(frase) Con Paso 1 Hacer
		b <- b + 1
		Reverse[b] <- Caract[a]
		a <- a - 1
	Fin Para
	
	Para i <- 1 Hasta Longitud(frase)
		c <- c + 1
		fraserev <- fraserev + Reverse[c]
	FinPara
	
	Escribir fraserev
FinAlgoritmo
