#!/bin/bash
#Funciones
Encabezado ()
{
    cat "ENCABEZADO.txt"
}
SeleccionarFoto ()
{
    read -p "Escriba la ruta de la imagen: " RUTA
    if [ -e $RUTA ]
    then
        gsettings set org.gnome.desktop.background picture-uri "file://$RUTA"
        echo "La imagen se ha establecido"
    else
        echo "La imagen no se encuentra"
        until [ -e $RUTA ]
        do 
            read -p "Escriba la ruta de la imagen: " RUTA
        done
        gsettings set org.gnome.desktop.background picture-uri "file://$RUTA"
        echo "Imagen establecida"
    fi
}
#Bloq.Principal
clear
Encabezado
SeleccionarFoto
