# SELECCIONADOR DE FONDO DE PANTALLA 
Este script es parecido al anterior, para cambiar el fondo de pantalla, pero esta vez no tendrás que elegir la imagen de una lista. Podrás elegir la imagen que sea esté donde esté
![imagen](https://user-images.githubusercontent.com/72433638/114676457-9a10f080-9d09-11eb-9dcf-c80015a1d047.png)

Introduces la ruta de la imagen, empezando con siempre con una barra ``` / ``` y acabando con el nombre de la imagen y su extensión, ya sea jpg, png, etc.

Si introduces una ruta inexistente o una imagen inexistente, no parará de preguntar hasta que introduzcas una imagen existente:

![imagen](https://user-images.githubusercontent.com/72433638/114680344-591adb00-9d0d-11eb-9f7b-fad58c64790e.png)

## Referencias

Utilicé la siguiente página para mirar a fondo el [If](https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php) 

Y el bucle [until](https://linuxize.com/post/bash-until-loop/)

## CÓDIGO

```
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
```
