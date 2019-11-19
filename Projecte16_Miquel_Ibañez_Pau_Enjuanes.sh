#!/bin/bash
# https://github.com/a18pauenjsum/projecte-02.git
#Programa per creació d'usuaris
#Filtre de root
if [[ "${UID}" -eq 0 ]]; then
echo "Ets Root."
	if [ $# -lt 1 ]; then
		echo "Indique su nombre: "
		echo "Ejemplo: " $0 "Javier"
		exit
	fi

# Crear contraseña aleatoria y guardarla en variable

	usuario=$1
	random=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)

# Crear el usuario y mostrar toda su información

	useradd $usuario
	echo $usuario:$random | chpasswd
	echo "ID del Usuario:" $usuario "Se ha creado con la contraseña: " $random
	echo  "El HostName es: " $HOSTNAME 
else 
	echo "No ets Root."
fi
