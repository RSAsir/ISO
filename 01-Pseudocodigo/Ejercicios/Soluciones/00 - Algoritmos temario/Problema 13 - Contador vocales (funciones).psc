// PROBLEMA 13
// Escribir un programa que cuente el numero de vocales que se encuentran en un texto introducido por teclado

SubProceso Conteo(x)
	contador <- 0
	contadorvocales <- 0
	// Utilizamos esta variable para hacer un control de los datos que el usuario introduce (mayusculas y minusculas).
	xmayus <- Mayusculas(x)
	
	// Le ponemos un +1 a la longitud, por que al cumplir la condicion, no hace la ultima vuelta.
	Para i <- 1 Hasta Longitud(xmayus) + 1
		Si (SubCadena(xmayus,contador,contador) = 'A') o (SubCadena(xmayus,contador,contador) = 'E') o (SubCadena(xmayus,contador,contador) = 'I') o (SubCadena(xmayus,contador,contador) = 'O') o (SubCadena(xmayus,contador,contador) = 'U') 
			contador <- contador + 1
			contadorvocales <- contadorvocales + 1
		SiNo
			contador <- contador + 1
		FinSi
	FinPara
	
	Escribir contadorvocales
FinSubProceso

// Invocacion
Algoritmo Llamada_conteo
	
	Escribir 'Determine su frase:'
	Leer frase
	
	Limpiar Pantalla
	
	// (FALTARIA INTRODUCIR UN CONTROL PARA CADENAS VACIAS AQUI)
	
	Escribir 'Su frase es: ' frase
	Escribir 'El numero de vocales es igual a: ' sin saltar
	Conteo(frase)
FinAlgoritmo
