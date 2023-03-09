#!/bin/bash

clear

copiarArchivos()
{
find "$carpetaOrigen"  -type f -name "*.$tipoArchivo" -exec cp "{}" "$carpetaDestino" \;
}


echo "Este script busca archivos por tipo de una carpeta y las copia a otra."
echo "@andriuzha"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

echo "Ingrese el tipo de archivos a buscar:"
read tipoArchivo
echo ""

echo "Ingrese la ruta donde buscar:"
read carpetaOrigen
echo ""

echo "Ingrese la ruta de destino:"
read carpetaDestino
echo ""

echo "Copiando archivos, espere por favor..."
echo ""
copiarArchivos

echo ""
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo ""

echo "Los archivos se han copiado..."

echo ""
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo ""
