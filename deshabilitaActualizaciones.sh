#!/bin/bash
printf '\e[39m'
clear
printf "Este script deshabilita las actualizaciones de macOS.\n"
echo ""
echo "Presione ENTER para continuar, de lo contrario cierra esta ventana."
read ok
echo "Por ingrese la contraseña de Administrador..."
echo ""
sudo mv /Library/Bundles/OSXNotification.bundle ~/Documents/ && softwareupdate --ignore macOSInstallerNotification_GM  
echo "Las actualizaciones se ha deshabilitado con exito."
echo "Reinicie el equipo."
echo "@andriuzha"
printf '\e[39m'
exit 0
