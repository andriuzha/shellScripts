#!/bin/bash

set -e # Presiona contol-c para salir o cancelar la operación
USO="Modo de uso: Invoque el script a continuación indique el directorio de origen y el destino, de la siguiente manera:
\nconvertirAudio.sh directorio/Origen directorio/Destino"
# --- Opciones de procesamiento -------------------------------------------
if [ $# == 0 ] ; then
    echo -e $USO
    exit 1;
fi
PROCESOS=${3:-2}
# Conviertiendo la ruta relativa en absoluta. Eliminando la última barra diagonal
export DIR_ORIGEN="$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"
DIR_ORIGEN=$(dirname "$DIR_ORIGEN/temp") # this fixes . and ./
export DIR_DESTINO="$(cd "$(dirname "$2")"; pwd)/$(basename "$2")"
DIR_DESTINO=$(dirname "$DIR_DESTINO/temp") # esto arregla . y ./
convertirArchivo() {
  ARCHIVO=$1
  ORIG_DIR=$(dirname "$ARCHIVO")
  # Obteniendo el nombre base y eliminando la extensión
  BASE=$(basename "$ARCHIVO") # Obteniendo el nombre del archivo
  BASE=${BASE%.*} # Removiendo la extensión
  DIR_NUEVO=${ORIG_DIR/$DIR_ORIGEN/$DIR_DESTINO}
  mkdir -p "$DIR_NUEVO"
  ARCHIVO_NUEVO="$DIR_NUEVO/$BASE.m4a"
  if [ ! -f "$ARCHIVO_NUEVO" ]; then
    echo "convertido desde: $ARCHIVO a: $ARCHIVO_NUEVO"
    afconvert "$ARCHIVO" -o "$ARCHIVO_NUEVO" -q 127 -b 256000 -f m4af -d aac
  fi
}
export -f convertirArchivo
find "$DIR_ORIGEN" \( -iname '*.mp3' -or -iname '*.flac' \) -type f -print0|xargs -0 -P $PROCESOS -I % bash -c 'convertirArchivo "%"'
