#!/bin/bash

clear
printf "Este script deshabilita las actualizaciones de macOS.\n"
echo ""
echo "Presione ENTER para continuar, de lo contrario cierra esta ventana."
read ok
echo "Por ingrese la contraseña de Administrador..."
echo ""

# 1: Evitando nuevas actualizaciones
sudo softwareupdate --ignore macOSInstallerNotification_GM

echo "Nuevas actualizaciones  ignoradas"

echo ""

# 2: Borrando el paquete de notificaciones
if [[ -d /Library/Bundles/OSXNotification.bundle ]]; then
    echo "Borrando avisos de actualización."
   sudo  rm -rf /Library/Bundles/OSXNotification.bundle ||:
else
    echo ""
fi

echo "Las actualizaciones se ha deshabilitado con exito."
echo "@andriuzha"
exit 0
