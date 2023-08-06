#!/bin/bash

# Verifica si se proporcionó un argumento con la ruta del archivo
if [ $# -ne 1 ]; then
    echo "Uso: $0 <ruta_del_archivo>"
    exit 1
fi

# Obtén la ruta del archivo del primer argumento
ruta_archivo="$1"

# Crea el archivo de texto vacío en la ruta especificada
touch "$ruta_archivo"

# Verifica si el archivo se creó correctamente
if [ -f "$ruta_archivo" ]; then
    echo "Archivo creado exitosamente en: $ruta_archivo"
else
    echo "Error al crear el archivo en: $ruta_archivo"
fi
