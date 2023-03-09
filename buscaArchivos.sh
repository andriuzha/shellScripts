#!/bin/bash

clear

buscarArchivos()
{
sudo find "$rutaFolder" -iname *"$nombreArchivo"*
}

guadarBusqueda ()
{
	buscarArchivos > ~/Desktop/busqueda.txt
}

echo "Este script busca los archivos que coincidan con un nombre."
echo "@andriuzha"

echo "Ingrese la ruta de la carpeta:"
read rutaFolder

echo "Ingrese el nombre a buscar:"
read nombreArchivo

echo "Ingrese la contraseña de Administrador"

buscarArchivos

menu()
{
  echo "
  Selecciona una opción:
  1 Si
  2 No
  "
  echo -n "¿Deseas guardar la búsqueda?  "
  read CHOICE
} 
  
while true
do
  menu
  case $CHOICE in

  1) 
  guadarBusqueda
  echo ""
  echo "El archivo se guardo en el escritorio como busqueda.txt"
  echo "Presiona ENTER para finalizar"
  read
  exit 0
    ;;

  2) 
  exit 0
    ;;
	
  esac
  done
