Algoritmo Cajero
	
	//Inicializacion de contadores
	contadorCincuenta <- 0
	contadorVeinte <- 0
	contadorDiez <- 0
	contadorTotal <- 0
	
	//Presentacion para el usuario.
	Escribir 'BIENVENIDO A CAJA *****'
	Escribir 'Determine la cantidad de dinero a retirar.'
	Escribir 'Solo se admiten cifras que terminen en 0.'
	Leer cantidad
	
	//Bucle para determinar errores en el input de datos.
	Mientras (cantidad < 0) o (cantidad = 0) o no (cantidad mod 10 = 0) Hacer
		Limpiar Pantalla
		Escribir 'Cantidad erronea.'
		Escribir 'Introduzca una cantidad superior a 0 y multiplo de 10.'
		Leer cantidad
		Limpiar Pantalla
	FinMientras
	
	Limpiar Pantalla
	
	//Bucle que contiene las operaciones matematicas para evaluar los billetes a entregar.
	Mientras no (cantidad = 0) Hacer
		//Bucle que determina los billetes de 50.
		Mientras (cantidad mod 50 = 0) y no (cantidad = 0) Hacer
			cantidad <- cantidad - 50
			contadorCincuenta <- contadorCincuenta + 1
			contadorTotal <- contadorTotal + 1
		Fin Mientras
		
		//Bucle que determina los billetes de 20 y que evitara ejecutarse si la cantidad es divisible entre 50.
		Mientras (cantidad mod 20 = 0) y no (cantidad = 0) y no (cantidad mod 50 = 0) Hacer
			cantidad <- cantidad - 20
			contadorVeinte <- contadorVeinte + 1
			contadorTotal <- contadorTotal + 1
		Fin Mientras
		
		//Bucle que determina los billetes de 10 y que evitara ejecutarse si la cantidad es divisible entre 50 o 20.
		Mientras (cantidad mod 10 = 0) y no (cantidad = 0) y no (cantidad mod 50 = 0) y no (cantidad mod 20 = 0) Hacer
			cantidad <- cantidad - 10
			contadorDiez <- contadorDiez + 1
			contadorTotal <- contadorTotal + 1
		Fin Mientras
	Fin Mientras
	
	//Informacion final para el usuario.
	Escribir 'La cantidad de billetes extraida es ' contadorTotal '.'
	Escribir 'El numero de billetes de 10 extraidos es ' contadorDiez '.'
	Escribir 'El numero de billetes de 20 extraidos es ' contadorVeinte '.'
	Escribir 'El numero de billetes de 50 extraidos es ' contadorCincuenta '.'
FinAlgoritmo
