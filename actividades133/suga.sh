#!/bin/bash

# Verificar si se proporcionó la ruta del archivo como argumento
if [ $# -ne 1 ]; then
  echo "Uso: $0 </home/isela/actividades133>"
  exit 1
fi

# Obtener la ruta del archivo del primer argumento
archivo="$/home/isela/actividades133"

# Comprobar si el archivo ya existe
if [ -e "$/home/isela/actividades133" ]; then
  echo "El archivo $archivo ya existe."
  exit 1
fi

# Crear el archivo vacío en la ruta especificada
touch "$/home/isela/actividades133"

echo "Archivo creado exitosamente en la ruta: $/home/isela/actividades133"

touch $ruta/BTS.txt
