#!/bin/bash

# Verifica si se proporcionó un argumento con el nombre del archivo
if [ $# -eq 0 ]; then
    # Si no se proporcionó ningún argumento, solicita el nombre al usuario
    echo -n "Por favor, ingresa el nombre del archivo: "
    read nombre_archivo

    # Verifica si se proporcionó un nombre válido
    if [ -z "$nombre_archivo" ]; then
        echo "No ingresaste ningún nombre. Saliendo del script."
        exit 1
    fi
else
    # Si se proporcionó un argumento, toma el primer argumento como el nombre del archivo
    nombre_archivo="$1"
fi

# Agrega la extensión ".txt" al nombre del archivo
nombre_archivo="$nombre_archivo.txt"

# Crea el archivo de texto vacío con el nombre proporcionado
touch "$nombre_archivo"

# Verifica si el archivo se creó correctamente
if [ -f "$nombre_archivo" ]; then
    echo "Archivo '$nombre_archivo' creado exitosamente."
else
    echo "Error al crear el archivo '$nombre_archivo'."
fi
