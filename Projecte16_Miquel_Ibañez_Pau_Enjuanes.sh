if [[ "${UID}" -eq 0 ]]; then
echo "Ets Root."
	if [ $# -lt 1 ]; then
		echo "Indique su nombre: "
		echo "Ejemplo: " $0 "Javier"
		exit
	fi

# Crear contraseña y guardarla en variable

	usuario=$1

