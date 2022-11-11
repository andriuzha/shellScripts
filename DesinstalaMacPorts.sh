#!/bin/bash

clear

echo "Desinstalando las aplicaciones"
sudo port -fp uninstall installed

echo "Removiendo las directivas de usuario"
sudo dscl . -delete /Users/macports

echo "Removiendo las directivas de grupo"
sudo dscl . -delete /Groups/macports

echo "Removiendo los restos de la instalación"

sudo rm -rf \
    /opt/local \
    /Applications/DarwinPorts \
    /Applications/MacPorts \
    /Library/LaunchDaemons/org.macports.* \
    /Library/Receipts/DarwinPorts*.pkg \
    /Library/Receipts/MacPorts*.pkg \
    /Library/StartupItems/DarwinPortsStartup \
    /Library/Tcl/darwinports1.0 \
    /Library/Tcl/macports1.0 \
    ~/.macports


echo "Macports se ha desinstaldo..."
