#! /bin/bash
# Script que verifica si existe un directorio y si no existe lo crea e imprime
#mensajes a pantalla comunicando la acción ejecutada. Usa la variable $? para 
#comprobar si se ejecuta la orden mkdir correctamente.

# EJECUCION DEL CODIGO

if [ $# = 0 ]; then
	echo "Es necesario introducir un parametro."
else
	if [ -d $1 ]; then
		echo "El directorio ya existe."
	else
		mkdir $1
		if [ $? = 0 ]; then
			echo "El directorio ha sido creado."
		else
			echo "Se ha producido un error. Contacte con el admin."
		fi
	fi
fi
