#!/bin/bash

# Verifica si se proporcionó un nombre de archivo como argumento
if [ $# -eq 0 ]; then
  echo "Error: Se debe proporcionar un nombre de archivo como argumento."
  echo "Uso: $0 <nombre_del_archivo>"
  exit 1
fi

# Captura el nombre del archivo proporcionado como argumento
nombre_archivo="$1"

# Verifica si el archivo ya existe
if [ -e "$nombre_archivo" ]; then
  echo "Error: El archivo '$nombre_archivo' ya existe. No se puede crear."
  exit 1
fi

# Crea el archivo de texto
touch "$nombre_archivo"
echo "El archivo '$nombre_archivo' se ha creado correctamente."
