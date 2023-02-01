#!/bin/bash

printf '\e[39m'
clear
printf "Este script actualizará MacPorts.\n"
echo ""
echo "Por ingrese la contraseña de Administrador..."
echo ""
sudo port selfupdate  
echo "Repositorios actualizados"
sudo port upgrade outdated 
echo "Instancias actualizadas"
echo "@andriuzha"
printf '\e[39m'
exit 0
