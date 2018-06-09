Algoritmo Stock
	// El siguiente algoritmo se encarga de llevar a cabo el control del stock de libros
	// de una editorial de cuentos infantiles, cada uno de estos contara con un campo primario (ISBN),
	// titulo, autor, stock y precio.
	
	
	// Declaracion de los vectores a utilizar.
	Dimension Titulo[200]
	Dimension Autor[200]
	Dimension Unidades[200]
	Dimension Precio[200]
	Dimension Union[200] // Vector que agrupa los cuatro vectores anteriores.
	// Vector que agrupa titulo, autor y unidades. (Podria omitirse, pero se añade para dar mas sentido a la opcion de consultar precio).
	Dimension UnionLT[200] 
	cont <- 0
	
	// Texto de presentacion.
	Escribir 'BIENVENIDO AL CATALOGO DE ***** BOOKS'
	Escribir ' '
	Escribir 'Las operaciones disponibles son las siguientes'
	Escribir '1. Dar de alta un nuevo producto.'
	Escribir '2. Actualizacion del producto.'
	Escribir '3. Informe de Stock'
	Escribir '4. Consultar precio de un producto.'
	Escribir '5. Eliminar un producto del catalogo.'
	Escribir '6. Salir.'
	
	Leer opcion
	
	Limpiar Pantalla
	
	//Bucle para forzar opcion de las posibles.
	Mientras (opcion != 1) y (opcion != 2) y (opcion != 3) y (opcion != 4) y (opcion != 5) y (opcion != 6) Hacer //METER CORRECCION DE IGUALES
		Escribir 'Error. No se reconoce la operacion solicitada.'
		Escribir 'Determine el numero de la operacion a realizar.'
		Escribir ' '
		Escribir 'Las operaciones disponibles son las siguientes'
		Escribir '1. Dar de alta un nuevo producto.'
		Escribir '2. Actualizacion del producto.'
		Escribir '3. Informe de Stock'
		Escribir '4. Consultar precio de un producto.'
		Escribir '5. Eliminar un producto del catalogo.'
		Escribir '6. Salir.'
		
		Leer opcion
		Limpiar Pantalla
	Fin Mientras
	
	// Bucle que se ejecutara hasta que opcion tome el valor 6.
	Mientras no (opcion = 6) Hacer
		Segun opcion Hacer
			// Introduccion de libros al catalogo.
			1:
				// Contador de libros del catalogo (sera usado posteriormente).
				cont <- cont + 1
				Escribir 'Se va a proceder a registrar un nuevo producto en el catalogo.'
				Escribir 'Pulse cualquier tecla para continuar.'
				Leer tecla
				
				Limpiar Pantalla
				
				Escribir 'Escriba el Titulo del libro'
				Leer Titulo[cont]
						
				Mientras (Titulo[cont] = '') Hacer
					Escribir 'Error. Valor no valido.'
					Escribir 'El libro debe tener un titulo.'
					Leer Titulo[cont]
					Limpiar Pantalla
				FinMientras
				
				Limpiar Pantalla
				
				Escribir 'Escriba el Autor del libro'
				Leer Autor[cont]
				
				Mientras (Autor[cont] = '') Hacer
					Escribir 'Error. Valor no valido.'
					Escribir 'El libro debe tener un autor.'
					Leer Autor[cont]
					Limpiar Pantalla
				FinMientras
				
				Limpiar Pantalla
				
				Escribir 'Escriba el numero de productos en stock'
				Leer Unidades[cont]
				
				Mientras (Stock[cont] = '') Hacer
					Escribir 'Error. Valor no valido.'
					Escribir 'El libro debe tener un titulo.'
					Leer Unidades[cont]
					Limpiar Pantalla
				FinMientras
				
				Limpiar Pantalla
				
				Escribir 'Escriba el precio del libro'
				Leer Precio[cont]
				
				Mientras (Precio[cont] = '') Hacer
					Escribir 'Error. Valor no valido.'
					Escribir 'El libro debe tener un titulo.'
					Leer Precio[cont]
					Limpiar Pantalla
				FinMientras
				
				Limpiar Pantalla
				
				Escribir 'Producto registrado con exito.'
				Escribir 'Pulse cualquier tecla para continuar.'
				Leer tecla
				
				
				// Fusion de los diferentes input obtenidos en los dos vectores de union.
				Para Libro <- 1 Hasta cont 
					Union[Libro] <- Titulo[Libro] + Autor[Libro] + Unidades[Libro] + Precio[Libro]
				FinPara
				
				Para Libro <- 1 Hasta cont 
					UnionLT[Libro] <- Titulo[Libro] + ', ' + Autor[Libro] + '. ' + '		STOCK:		' + Unidades[Libro]
				FinPara
				
				//Ordenacion de los vectores de union
				Para i <- 1 Hasta cont Con Paso 1 Hacer
					Para j <- i Hasta cont Con Paso 1 Hacer
						Si Union[i] > Union[j] Entonces
							temporal <- Union[i]
							Union[i] <- Union[j]
							Union[j] <- temporal
						Fin Si
					Fin Para
				Fin Para
				
				Para i <- 1 Hasta cont Con Paso 1 Hacer
					Para j <- i Hasta cont Con Paso 1 Hacer
						Si UnionLT[i] > UnionLT[j] Entonces
							temporal <- UnionLT[i]
							UnionLT[i] <- UnionLT[j]
							UnionLT[j] <- temporal
						Fin Si
					Fin Para
				Fin Para
				
			// Modificacion datos libros.
			2:
				Escribir 'A continuacion se va a proceder a la modificacion de datos.'
				Escribir 'Pulse una tecla para continuar.'
				Leer tecla
				
				Limpiar Pantalla
				
				Escribir 'Determine el numero del libro a modificar.'
				Escribir 'Para conocer el numero consulte el catalogo.'
				Leer id 
				
				Limpiar Pantalla
				
				// Bucle para controlar el rango de numeros para los cuales se admite input.
				// (Seria necesario controlar la cadena vacia pero da problemas al ser de tipo caracter.
				Mientras (id < 0) o (id = 0) o (id > cont) Hacer 
					Escribir 'Error. Valor no valido.'
					Escribir 'No existe ningun libro con ese numero.'
					
					Leer id
					
					Limpiar Pantalla
				FinMientras
				
				Limpiar Pantalla
				
				Escribir 'Segun el campo a modificar, pulse:' 
				Escribir '1.Titulo'
				Escribir '2.Autor'
				Escribir '3.Stock'
				Escribir '4.Precio'
				Escribir '5.Salir'
				Leer opcionmod
					
				Limpiar Pantalla
				
				// Bucle de control
				Mientras (opcion != 1) y (opcion != 2) y (opcion != 3) y (opcion != 4) y (opcion != 5) Hacer
					Escribir 'Segun el campo a modificar, pulse:' 
					Escribir '1.Titulo'
					Escribir '2.Autor'
					Escribir '3.Stock'
					Escribir '4.Precio'
					Escribir '5.Salir'
					Leer opcionmod
					
					Limpiar Pantalla
				FinMientras
				
				// Modificacion de apartados desglosada.
				Segun opcionmod Hacer
					1:
						Escribir 'Determine el nuevo titulo'
						Leer Titulo[id]
						Union[id] <- Titulo[id] + Autor[id] + Unidades[id] + Precio[id]
					2:
						Escribir 'Determine el nuevo autor'
						Leer Autor[id]
						Union[id] <- Titulo[id] + Autor[id] + Unidades[id] + Precio[id]
						
					3:
						Escribir 'Determine el nuevo numero de unidades en stock'
						Leer Unidades[id]
						Union[id] <- Titulo[id] + Autor[id] + Unidades[id] + Precio[id]
						
					4:
						Escribir 'Determine el nuevo precio'
						Leer Precio[id]
						Union[id] <- Titulo[id] + Autor[id] + Unidades[id] + Precio[id]
						
					5:
						Escribir 'Operacion cancelada.'
				Fin Segun
				
				
				// Nuevas fusiones y ordenaciones de los vectores de union con la informacion actualizada del paso anterior.
				Para Libro <- 1 Hasta cont 
					Union[Libro] <- Titulo[Libro] + Autor[Libro] + Unidades[Libro] + Precio[Libro]
				FinPara
				
				Para Libro <- 1 Hasta cont 
					UnionLT[Libro] <- Titulo[Libro] + ', ' + Autor[Libro] + '. ' + '		STOCK:	' + Unidades[Libro]
				FinPara
				
				Para i <- 1 Hasta cont Con Paso 1 Hacer
					Para j <- i Hasta cont Con Paso 1 Hacer
						Si Union[i] > Union[j] Entonces
							temporal <- Union[i]
							Union[i] <- Union[j]
							Union[j] <- temporal
						Fin Si
					Fin Para
				Fin Para
				
				Para i <- 1 Hasta cont Con Paso 1 Hacer
					Para j <- i Hasta cont Con Paso 1 Hacer
						Si UnionLT[i] > UnionLT[j] Entonces
							temporal <- UnionLT[i]
							UnionLT[i] <- UnionLT[j]
							UnionLT[j] <- temporal
						Fin Si
					Fin Para
				Fin Para
				
			//Muestra del catalogo.
			3:
				Escribir 'A continuacion se van a mostrar los libros en stock.'
				Escribir 'Para consultar el precio refierase al apartado correspondiente.'
				Escribir ' '
				Escribir 'Pulse cualquier tecla para continuar.'
				Leer tecla
				
				Limpiar Pantalla
				
				// Output para el usuario
				Para id <- 1 Hasta cont
					Escribir id '. ' UnionLT[id]
				FinPara
				
				Escribir ' '
				Escribir 'Pulse cualquier tecla para continuar.'
				Leer tecla
				
			// Consulta del precio de un libro en concreto.
			4:
				Escribir 'Consulta de precio.'
				Escribir 'Indique el numero del libro del que desea consultar.'
				Leer id 
				
				Limpiar Pantalla
				
				// Bucle de control.
				Mientras (id < 0) y (id > cont) Hacer
					Escribir 'Error. Valor no valido.'
					Escribir 'No existe ningun libro con ese numero.'
					
					Leer id
					
					Limpiar Pantalla
				FinMientras
					
				Limpiar Pantalla
				
				// Output para el usuario.
				Escribir 'El libro consultado es: ' Titulo[id]
				Escribir 'Su valor es: ' Precio[id] '€'
				
				Escribir ' '
				Escribir 'Pulse cualquier tecla para continuar.'
				Leer tecla
				
			// Eliminacion de un libro del catalogo
			5:
				Escribir "Determine el numero del libro a borrar"
				Escribir "Para conocer el numero, consulte el listado de libros."
				// Se lee la id y se cambian los valores de los vectores de union a ELIMINADO.
				Leer id
				
				UnionLT[id] <- "[ELIMINADO]"
				Union[id] <- "[ELIMINADO]"
				
				//Reordenacion para descartar el libro eliminado.
				Para i <- 1 Hasta cont Con Paso 1 Hacer
					Para j <- i Hasta cont Con Paso 1 Hacer
						Si Union[i] < Union[j] Entonces
							temporal <- Union[i]
							Union[i] <- Union[j]
							Union[j] <- temporal
						Fin Si
					Fin Para
				Fin Para
				
				Para i <- 1 Hasta cont Con Paso 1 Hacer
					Para j <- i Hasta cont Con Paso 1 Hacer
						Si UnionLT[i] < UnionLT[j] Entonces
							temporal <- UnionLT[i]
							UnionLT[i] <- UnionLT[j]
							UnionLT[j] <- temporal
						Fin Si
					Fin Para
				Fin Para
				
				i <- i - 1
				id <- id - 1
				cont <- cont - 1
				
				// Se devuelven los libros al orden original.
				Para i <- 1 Hasta cont Con Paso 1 Hacer
					Para j <- i Hasta cont Con Paso 1 Hacer
						Si Union[i] > Union[j] Entonces
							temporal <- Union[i]
							Union[i] <- Union[j]
							Union[j] <- temporal
						Fin Si
					Fin Para
				Fin Para
				
				Para i <- 1 Hasta cont Con Paso 1 Hacer
					Para j <- i Hasta cont Con Paso 1 Hacer
						Si UnionLT[i] > UnionLT[j] Entonces
							temporal <- UnionLT[i]
							UnionLT[i] <- UnionLT[j]
							UnionLT[j] <- temporal
						Fin Si
					Fin Para
				Fin Para
		Fin Segun
		
		Limpiar Pantalla
		
		//S erie de instrucciones para seguir repitiendo operaciones en bucle hasta que se pulse N.
		Escribir '¿Desea realizar otra operacion? (S/N)'
		Leer respuesta
		respuesta <- Mayusculas(respuesta)
		
		Limpiar Pantalla
		
		// Bucle de control
		Mientras (respuesta != 'S') y (respuesta != 'N') Hacer 
			Escribir 'Error. Respuesta no valida.'
			Escribir 'Escriba S para realizar mas operaciones o N para salir del programa.'
			
			Leer respuesta
			respuesta <- Mayusculas(respuesta)
			Limpiar Pantalla
		Fin Mientras
		
		// Salida.
		Si (respuesta = 'N') Entonces
			opcion = 6
		FinSi
		
		Limpiar Pantalla
		
		// Inicio del bucle.
		Si (respuesta = 'S') Entonces
			Escribir 'BIENVENIDO AL INVENTARIO DE ***** BOOKS'
			Escribir ' '
			Escribir 'Las operaciones disponibles son las siguientes'
			Escribir '1. Dar de alta un nuevo producto.'
			Escribir '2. Actualizacion del producto.'
			Escribir '3. Informe de Stock'
			Escribir '4. Consultar precio de un producto.'
			Escribir '5. Eliminar un producto del catalogo.'
			Escribir '6. Salir.'
			
			Leer opcion
			
			Limpiar Pantalla
			
			Mientras (opcion != 1) y (opcion != 2) y (opcion != 3) y (opcion != 4) y (opcion != 5) y (opcion != 6) Hacer //METER CORRECCION DE IGUALES
				Escribir 'Error. No se reconoce la operacion solicitada.'
				Escribir 'Determine el numero de la operacion a realizar.'
				Escribir ' '
				Escribir 'Las operaciones disponibles son las siguientes'
				Escribir '1. Dar de alta un nuevo producto.'
				Escribir '2. Actualizacion del producto.'
				Escribir '3. Informe de Stock'
				Escribir '4. Consultar precio de un producto.'
				Escribir '5. Eliminar un producto del catalogo.'
				Escribir '6. Salir.'
				
				Leer opcion
				Limpiar Pantalla
			Fin Mientras
		FinSi
		
	Fin Mientras
	
FinAlgoritmo

