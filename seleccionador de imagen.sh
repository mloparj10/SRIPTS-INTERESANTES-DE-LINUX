#!/bin/bash
#Funciones
Encabezado ()
{
    echo "###########################"
    echo "____CAMBIADOR DE FONDO_____"
    echo "p o r  M a r i o  L ó p e z"
    echo "###########################"
}
SeleccionarFoto ()
{
    read -p "Escriba la ruta de la imagen: " RUTA
    gsettings set org.gnome.desktop.background picture-uri "file://$RUTA"
    echo "La imagen se ha establecido"
}
#Bloq.Principal
SeleccionarFoto
