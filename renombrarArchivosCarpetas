#!/bin/bash

# Este Script renombra un archivo por el nombre del directorio que lo contiene
# Debe de sustituirse la extensión del archivo en la función

# Author: @andriuzha
# versión 2.2.3
# 09 abr 2024
# https://github.com/andriuzha/shellScripts



# Recorre cada directorio en el directorio actual
for directorio in */; do
    # Obtiene el nombre del directorio (sin la barra final)
    nombre_directorio=$(basename "$directorio")

    # Reemplaza la extensión del archivo por la que necesites
    # Busca todos los archivos CSV dentro del directorio
    archivos_csv=$(find "$directorio" -type f -name "*.csv")

    # Renombra cada archivo CSV al nombre del directorio
    for archivo_csv in $archivos_csv; do
        nuevo_nombre=$(basename "$archivo_csv")
        nuevo_nombre="$nombre_directorio-$nuevo_nombre"

        mv "$archivo_csv" "$nuevo_nombre"
    done
done
