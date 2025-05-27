#!/bin/bash
# Version 1.1
# Actualización 2025-05-27
# Se corrigio el formato de salida


clear

descargarVideo()
{
yt-dlp -f '251+232' -o '%(upload_date)s - %(title)s.%(ext)s' $URLVIDEO
}

descargarPlaylist()
{
yt-dlp -f '251+232' -o '%(playlist)s/%(playlist_index)s - %(upload_date)s - %(title)s.%(ext)s' $URLPLAYLIST
}

descargarCanal()
{
yt-dlp -f '251+232' -o '~/%(channel)s/%(upload_date)s - %(title)s.%(ext)s' $URLCANAL
}

echo "Este script descarga videos desde YouTube."
echo "Requiere la herramienta yt-dlp"
echo "@andriuzha"

menu()
{
  echo "
  Selecciona una opción:
  1 Video único
  2 Lista de reproducción
  3 Canal entero
  4 Ayuda/Info
  "
  read CHOICE
} 
  
while true
do
  menu
  case $CHOICE in

  1) 
  echo ""
  echo "Ingresa la URL del video"
  read URLVIDEO
  descargarVideo 
  exit 0
    ;;

  2) 
  echo ""
  echo "Ingresa la URL de la lista de reproducción"
  read URLPLAYLIST
  descargarPlaylist
  exit 0
    ;;
	
  3) 
  echo ""
  echo "Ingresa la URL de la lista del canal"
  read URLCANAL
  descargarCanal 
  exit 0
  ;;
  
  4) 
  echo "Este Script permite descargar videos directamente de YouTube"
  echo "Por defecto la resolución de descarga es 1280x720 en mp4"
  echo "La documentción correspondiente de yt-dlp esta en:"
  echo "https://github.com/yt-dlp/yt-dlp#filtering-formats"
  echo "Presiona ENTER para salir"
  read
  exit 0
  ;;
  
  esac
  done
  
