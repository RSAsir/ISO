#! /bin/bash
# Script que comprueba si dos variables son iguales.

# EJECUCION DEL CODIGO

echo -n "Determine la primera variable: "
read var1
echo -n "Determine la segunda variable: "
read var2

if [ $var1 = $var2 ]; then
	echo "Las variables son iguales."
else
	echo "Las variables no son iguales."
fi

# Para asegurarnos de que se introduzcan el numero de variables que queremos
# usamos el comando read en este caso, en lugar de hacerlo mediante 
# parametros.


