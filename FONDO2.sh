#!/bin/bash
#Funciones
SeleccionarFoto ()
{
    read -p "Escriba la ruta de la imagen: " RUTA
    gsettings set org.gnome.desktop.background picture-uri "file://$RUTA"
    echo "La imagen se ha establecido"
}
#Bloq.Principal
cat ENCABEZADO.txt
SeleccionarFoto
