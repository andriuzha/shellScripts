#!/bin/bash

# Este script genera una lista de los archivos de una carpeta y genera los respectivos valores del hash MD5
# el archivo resultante se guarda en un txt alojado en la carpeta de origen


#  Obteniendo la ruta del directorio
read -p "Ingresa la ruta del directorio : " directorioOrigen

# Creando el archivo de salida
archivoSalida=hashesMD5.txt

# Iterando sobre todos los archivos del directorio
for archivoOrigen in $directorioOrigen/*; do

    # Calculando el hash MD5 de cada archivo
    hash=$(md5sum "$archivoOrigen" | cut -c -32)

    # Escribiendo el hash MD5 en el archivo de salida
    echo "$archivoOrigen $hash" >> $archivoSalida

done
echo "Todos los hash MD5 se han calculado y guardado en el archivo hashesMD5.txt"
