#!/bin/bash

# Este script cambia los nombres de los archivos contenidos
# en una carpeta por sus valores del hash MD5

# Obtener la ruta del directorio
read -p "Ingresa la ruta del directorio " carpetaOrigen

# Iterando sobre todos los archivos del directorio
for archivoOrigen in $carpetaOrigen/*; do

    # Calculando el hash MD5 del archivo
    hash=$(md5sum "$archivoOrigen" | cut -c -32)
	
	# Obteniendo la extención del archivo
    extension="${archivoOrigen##*.}"

    # Renombrando el archivo 
     mv "$archivoOrigen" "$carpetaOrigen/$hash.$extension"

done

echo "Todos los archivos han sido renombrados."
