Algoritmo Descuento_tienda
	
	// Una tienda ofrece un descuento del 15% sobre el total de la compra durante el mes de octubre. Dado un
	// mes y un importe, calcular cuál es la cantidad que se debe cobrar al cliente.
	
	// Input del mes
	Escribir 'Determine un mes (1-12)'
	Leer mes
	
	// Control del mes
	Mientras ( mes < 1 ) o ( mes > 12)
		Escribir 'Error, valor no valido. Determine un nuevo mes.'
		Leer mes
	FinMientras
	
	// Input de importe
	Escribir 'Determine el importe.'
	Leer importe
	
	// Control de importe
	Mientras ( importe <= 0 )
		Escribir 'Error, valor no valido. Determine un nuevo importe.'
		Leer importe
	FinMientras
	
	// Operaciones
	Si (mes = 10) Entonces
		Escribir 'El mes actual es octubre, se aplicara un descuento del 15%.'
		Escribir 'El importe original es: ' importe
		descuento_a_realizar <- ( 15 * importe ) / 100
		importe_con_descuento <- ( importe - descuento_a_realizar )
		Escribir 'El importe final con descuento es: ' importe_con_descuento
	SiNo
		Escribir 'El importe a pagar es: ' importe
	Fin Si
FinAlgoritmo
