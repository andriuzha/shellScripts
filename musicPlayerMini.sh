#!/bin/bash

# Este pequeño script reprodroduce de manera aleatoria las canciones en un directorio dado.
# Reemplace /ruta/directorio por la ruta donde se encuentra sus archivos
# Reemplace la extensioón .mp4 de ser necesario
# Para finalizar la reproducción precione control+c 

find /ruta/directorio -name '*.m4a' -print0 | sort -R | xargs -0 -I '{}' afplay '{}'
