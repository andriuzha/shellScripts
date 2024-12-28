#!/bin/bash

# Este Script generar enlaces de WhatsApp con mensajes personalizados 

# Author: @andriuzha
# Versión 1.0
# 28 dic 2024
# https://github.com/andriuzha/shellScripts


# Función para generar el enlace de WhatsApp
generar_enlace() {
    local codigo_pais=$1
    local numero=$2
    local mensaje=$3
    
    # Reemplazar espacios por %20 en el mensaje
    mensaje_formateado=$(echo "$mensaje" | sed 's/ /%20/g')
    
    # Generar el enlace
    echo "https://wa.me/$codigo_pais$numero?text=$mensaje_formateado"
}

# Función para guardar el enlace en un archivo
guardar_enlace() {
    local numero_completo=$1
    local enlace=$2
    local ruta_archivo="$HOME/Desktop/${numero_completo}.txt"
    
    echo "$enlace" > "$ruta_archivo"
    echo "Enlace guardado en: $ruta_archivo"
}

# Solicitar datos al usuario
echo "Por favor, ingrese los siguientes datos:"

echo -n "1) Indique el código del país (sin el +): "
read codigo_pais

echo -n "2) Indique el número de WhatsApp: "
read numero

echo -n "3) Ingrese el texto del mensaje: "
read mensaje

# Generar el número completo (código + número)
numero_completo="${codigo_pais}${numero}"

# Generar el enlace usando la función
enlace=$(generar_enlace "$codigo_pais" "$numero" "$mensaje")

# Mostrar el enlace por pantalla
echo -e "\nEnlace generado:"
echo "$enlace"
echo ""

# Guardar el enlace en un archivo
guardar_enlace "$numero_completo" "$enlace"
