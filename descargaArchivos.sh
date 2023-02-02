#!/bin/bash

echo "Este script te ayudará a descargar los archivos de un tipo específico de un sitio web"
echo "Los archivos se guardarán en la carpeta descargas que se creará en el escritorio"
echo "Requiere de la herramienta wget"
echo "@andriuzha"

echo "Por favor, ingresa la URL"
read sitioweb

echo "Por favor, ingresa la extensión de los archivos a descargar"
read extension

mkdir ~/Desktop/descargas

cd ~/Desktop/descargas

echo "Los archivos $extension de $sitioweb se guardarán en la carpeta descargas en el escritorio"
echo ""
echo "Presiona ENTER para iniciar"
read ok

wget -e robots=off -r -k -A -c $extension "$sitioweb"

clear

echo "Finalizo la descarga"
echo "Presiona ENTER para finalizar"
exit 0
