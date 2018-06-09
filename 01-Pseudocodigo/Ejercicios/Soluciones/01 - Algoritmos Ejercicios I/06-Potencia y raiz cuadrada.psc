Algoritmo Potencia_y_raiz
	
	// Realizar un algoritmo que lea un numero por teclado. En caso de que ese numero sea 0 o menor que 0, se saldra
	// del programa imprimiento antes un mensaje de error. Si es mayor que 0, se debera calcular su cuadrado y la raiz
	// cuadrada del mismo, visualizando el numero que ha teclado el usuario y su resultado. Para calcular la raiz cuadrada
	// se puede utilizar el funcion RAIZ(x) o una potencia de 0,5.
	
	Escribir 'Determine su numero:'
	Leer numero
	
	Si ( numero <= 0 ) Entonces
		Si ( numero = 0 ) Entonces
			Escribir 'Error. El numero no puede ser igual a 0.'
		SiNo
			Escribir 'Error. El numero no puede ser negativo.'
		Fin Si
	SiNo
		pot <- numero ^ 2
		Escribir 'Del numero ' numero ' su potencia es ' pot ' y su raiz ' RAIZ(numero) '.'
	FinSi
FinAlgoritmo
