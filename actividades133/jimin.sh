#!/bin/bash

# Verifica si se proporcionó un argumento con la ruta del archivo
if [ $# -ne 1 ]; then
    echo "Uso: $0 </home/isela/actividades133>"
    exit 1
fi

# Obtén la ruta del archivo del primer argumento
/home/isela/actividades133="$1"

# Crea el archivo de texto vacío en la ruta especificada
touch "$/home/isela/actividades133"

# Verifica si el archivo se creó correctamente
if [ -f "$/home/isela/actividades133" ]; then
    echo "Archivo creado exitosamente en: $/home/isela/actividades133"
else
    echo "Error al crear el archivo en: $/home/isela/actividades133"
fi

