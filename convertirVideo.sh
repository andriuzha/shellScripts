#!/bin/bash
#Este script transcodifica los archivos h265 a h264
#Requiere de la herramienta ffmpeg
#Para más documentción sobre la configuración consulta: https://ffmpeg.org/ffmpeg.html
#andriuzha

clear

convertirVideo ()
{
	ffmpeg -i $rutaArchivo -map 0 -c:v libx264 -crf 18 -vf format=yuv420p -c:a copy ~/Desktop/"$nombreVideo"
}

echo "Ingresa la ruta del archivo:"
echo " "
echo "ejemplo: ~/carpetasVideos/video.mp4" 
echo " "

read rutaArchivo
nombreVideo=$(basename "$rutaArchivo")

echo ""
echo "El archivo se guardará en el escritorio."
echo "Presione ENTER para iniciar:"
echo " "
read OK

convertirVideo

clear

echo "Finalizó la transcodificación" 
echo "El archivo se guardo en el Escritorio"
echo "con el nombre de "$nombreVideo" "
echo ""
echo "Presiona ENTER para finalizar"
read ok

exit 0
