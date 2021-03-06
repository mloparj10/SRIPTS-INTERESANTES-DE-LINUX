# SELECTOR DE FONDO DE PANTALLA
Este script al ejecutarlo podrá seleccionar de un menú una imagen de las 5 que aparecen:
![imagen](https://user-images.githubusercontent.com/72433638/114672658-abf09480-9d05-11eb-886b-ebf05cc465eb.png)

Introduces en numero cualquiera de los que aparecen en pantalla, del 1 al 6. Si introduces un número fuera de ese rango le aparecerá un mensaje de error.

EL comando que sirve para poder cambiar el fondo es el siguiente:

``` gsettings set org.gnome.desktop.background picture-uri "file://(RUTA DE LA IMAGEN)" ```

![imagen](https://user-images.githubusercontent.com/72433638/114674570-a85e0d00-9d07-11eb-90fc-5c1e05ca276f.png)
![imagen](https://user-images.githubusercontent.com/72433638/114674700-ce83ad00-9d07-11eb-9860-595d2464f1ae.png)
![imagen](https://user-images.githubusercontent.com/72433638/114674957-0a1e7700-9d08-11eb-9265-084a514b0c52.png)


## **ATENCIÓN:**

Recuerda utilizar el script desde el directorio donde se encuentra, si lo ejecutas y estás desde otro directorio éste no funcionará.

No mover ningunos de los archivos fuera de la carpeta, ya sean las imágenes o el propio script, si nó se romperá y no funcionará.

## **REFERENCIAS:**
Encontré el comando en el siguiente [foro](https://www.enmimaquinafunciona.com/pregunta/62738/-cambiar-el-fondo-de-escritorio-desde-el-terminal-)

## CÓDIGO

```
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


```
