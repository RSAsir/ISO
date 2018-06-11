Algoritmo codificacion
	
	// Realiza un ejercicio en pseudocódigo que "codifique" un mensaje almacenado en un vector sustituyendo las
	// vocales por un número de 0 a 9, pudiendo no ser siempre el mismo número para cada vocal. (Consultar función
	// azar).
	
	Dimension codigoNumero[900]
	Dimension codigoLetra[900]
	
	Escribir 'Escriba una frase.'
	Leer frase
	
	Para i <- 1 hasta Longitud(frase) Hacer
		Si SubCadena(frase,i,i) = 'a' o SubCadena(frase,i,i) = 'e' o SubCadena(frase,i,i) = 'i' o SubCadena(frase,i,i) = 'o' o SubCadena(frase,i,i) = 'u' Entonces
			codigoNumero[i] <- ConvertirATexto(Azar(9))
			Mensaje <- Mensaje + codigoNumero[i]
		SiNo
			b <- i
			codigoLetra[b] <- SubCadena(frase,i,i)
			Mensaje <- Mensaje + codigoLetra[b]
		FinSi
	FinPara
	
	Escribir Mensaje
FinAlgoritmo
