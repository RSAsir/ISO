Algoritmo Ordenacion_capitales
	
	// Realiza un ejercicio en pseudocódigo que ordene alfabéticamente los nombres de 5 capitales de provincia
	// pedidas al usuario.
	
	Dimension capitales[5]
	
	// Input
	Escribir 'Escriba el nombre de 5 capitales'
	Para i <- 1 hasta 5 Hacer
		Leer capitales[i]
	FinPara
	
	// Ordenacion capitales
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Para j <- i Hasta 5 Con Paso 1 Hacer
			Si capitales[i] > capitales[j] Entonces
				temporal <- capitales[i]
				capitales[i] <- capitales[j]
				capitales[j] <- temporal
			Fin Si
		Fin Para
	Fin Para
	
	Limpiar Pantalla
	
	// Output
	Escribir 'Las capitales ordenadas son:'
	Para i <- 1 hasta 5 Hacer
		Escribir capitales[i]
	FinPara
FinAlgoritmo
