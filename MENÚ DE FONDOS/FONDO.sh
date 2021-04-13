#!/bin/bash
#Autor: Mario López
#Descripción: Script para cambiar el fondo de escritorio
clear
echo "____________________"
echo "CAMBIADOR DE FONDO DE PANTALLA"
echo "____________________"
echo
echo "1. Star Wars"
echo "2. Barbie"
echo "3. Coche"
echo "4. Dragon Ball"
echo "5. Marvel"
echo "6. Salir"
#Pregunta la opción
read -p "Elija una opción:" opcion
case $opcion in
1)
    gsettings set org.gnome.desktop.background picture-uri "file://$PWD/fondo.jpg"
    ;;
2)
    gsettings set org.gnome.desktop.background picture-uri "file://$PWD/barbie.jpg"
    ;;
3)
    gsettings set org.gnome.desktop.background picture-uri "file://$PWD/gtr.jpg"
    ;;
4)
    gsettings set org.gnome.desktop.background picture-uri "file://$PWD/goku.jpg"
    ;;
5)
    gsettings set org.gnome.desktop.background picture-uri "file://$PWD/marvel.jpg"
    ;;
6)
    exit 0
    ;;
*)
  echo "Error solo hay 6 opciones"
  ;;
esac
