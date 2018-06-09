// PROBLEMA 12
// Escribir un programa usando funciones de cadena para convertir un texto alternando una letra mayuscula con otra minuscula.

SubProceso Conversion(x)
	contador <- 1
	Para i <- 1 Hasta Longitud(x) Hacer
		// Este "si" se utiliza para obviar los blancos.
		// En primer lugar se aumenta en uno el contador por la posicion, y luego se hace una concatenacion.
		Si SubCadena(x,contador,contador) = ' ' Entonces
			contador <- contador + 1
			Mayus <- ' ' + Mayusculas(SubCadena(x,contador,contador))
			contador <- contador + 1
		SiNo
			Mayus <- Mayusculas(SubCadena(x,contador,contador))
			contador <- contador + 1
		FinSi
		
		Si SubCadena(x,contador,contador) = ' ' Entonces
			contador <- contador + 1
			Minus <- ' ' + Minusculas(SubCadena(x,contador,contador))
			contador <- contador + 1
		SiNo
			Minus <- Minusculas(SubCadena(x,contador,contador))
			contador <- contador + 1
		FinSi
		
		// Suma de las letras que van saliendo en cada bucle
		total <- total + Concatenar(Mayus, Minus)
	FinPara
	
	Escribir total
FinSubProceso

// Invocacion
Algoritmo Mayusculas_y_minusculas
	
	Escribir 'Escriba una frase'
	Leer frase
	
	Conversion(frase)
	
FinAlgoritmo
