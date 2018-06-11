Algoritmo Ordenacion_dos_vectores
	
	// Disponemos de dos vectores de 12 posiciones que expresan la pluviosidad en los últimos meses en Cáceres
	// medidas en l/m2
		// Noviembre Diciembre Enero Febrero Marzo Abril Mayo Junio Julio Agosto Septiembre Octubre
		// 	1600 		1700 	1650 	1500 1720 	1680 1000  400   500   450 		800 	  1200
	// Queremos construir un vector ordenado obteniendo los meses ordenados de mayor a menor pluviosidad.
	
	Dimension mes[12]
	Dimension pluviosidad[12]
	Dimension conjunto[12]
	
	// Introduccion de datos en vectores
	
	Para i <- 1 hasta 12
		Segun i hacer
			1:
				mes[i] <- 'Noviembre'
				pluviosidad[i] <-  1600
			2:
				mes[i] <- 'Diciembre'
				pluviosidad[i] <- 1700
			3:
				mes[i] <- 'Enero'
				pluviosidad[i] <- 1650
			4:
				mes[i] <- 'Febrero'
				pluviosidad[i] <- 1500
			5:
				mes[i] <- 'Marzo'
				pluviosidad[i] <- 1720
			6:
				mes[i] <- 'Abril'
				pluviosidad[i] <- 1680
			7:
				mes[i] <- 'Mayo'
				pluviosidad[i] <- 1000
			8:
				mes[i] <- 'Junio'
				pluviosidad[i] <- 400
			9:
				mes[i] <- 'Julio'
				pluviosidad[i] <- 500
			10:
				mes[i] <- 'Agosto'
				pluviosidad[i] <- 450
			11:
				mes[i] <- 'Septiembre'
				pluviosidad[i] <- 800
			12:
				mes[i] <- 'Octubre'
				pluviosidad[i] <- 1200 
		FinSegun
	FinPara
	
	// Ordenacion meses
	Para i <- 1 Hasta 12 Con Paso 1 Hacer
		Para j <- i Hasta 12 Con Paso 1 Hacer
			Si pluviosidad[i] < pluviosidad[j] Entonces
				temporal <- mes[i]
				mes[i] <- mes[j]
				mes[j] <- temporal
			Fin Si
		Fin Para
	Fin Para
	
	// Ordenacion pluviosidad
	Para i <- 1 Hasta 12 Con Paso 1 Hacer
		Para j <- i Hasta 12 Con Paso 1 Hacer
			Si pluviosidad[i] < pluviosidad[j] Entonces
				temporal2 <- pluviosidad[i]
				pluviosidad[i] <- pluviosidad[j]
				pluviosidad[j] <- temporal2
			Fin Si
		Fin Para
	Fin Para
	
	
	// Output
	Escribir 'Los meses ordenados de mayor a menor son:'
	Para i <- 1 hasta 12 Hacer
		Escribir mes[i] + ' ' Sin Saltar pluviosidad[i] 
		Escribir ''
	FinPara
	
FinAlgoritmo
