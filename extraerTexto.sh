#!/bin/bash

clear

extraerTexto()
{
	grep "$texto" $rutaArchivo > ~/Desktop/textoExtraido.txt
}

echo "andriuzha"
echo " "
echo "Este script busca y extrae cadenas de texto" 
echo "el resultado se guarda en un archivo."
echo ""
echo "Ingrese el texto a extraer:"
echo " "
read texto

echo ""
echo "Ingrese la ruta del archivo:"
echo "ejemplo: ~/Desktop/BaseDatos.csv" 
echo " "
read rutaArchivo

extraerTexto

echo "El archivo se guardo en el escritorio como textoExtraido.txt"
echo "Presiona ENTER para finalizar"

read
clear
exit 0
