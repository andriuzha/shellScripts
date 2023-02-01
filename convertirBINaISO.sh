#!/bin/bash

clear

## Declarando la función
convertirImagen()
{
bchunk "$archivoBIN" "$archivoCUE" "$nombreISO"
}


echo "Este script convertirá los archivos .bin y .cue a .iso"
echo "Requiere de la herramienta bchunk"
echo ""
echo "Ingrese la ruta donde se ecuentran los archivos:"
read rutaArchivos

## Asignando las variables
archivoBIN=$(find "$rutaArchivos" -iname "*.bin")
archivoCUE=$(find "$rutaArchivos" -iname "*.cue")
nombreISO=$(basename "$rutaArchivos")
rutaISO=$(basename "$HOME")

echo "Convirtiendo..."
convertirImagen
echo ""
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo ""
echo "Proceso finalizado"
echo "La imagen convertida se almaceno en tu carpeta HOME $rutaISO"
echo "Presione ENTER para salir."
echo "@andriuzha"
read ok
exit 0
