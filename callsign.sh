#!/bin/bash
cd /home/pi/MMDVMHost
#var=(tail -1 MMDVM-2022-11-21.log > /home/pi/MMDVMHost/INDICATIVO.txt)
var=$(tail -1 MMDVM-2022-11-21.log)

#variable="Esto es una cadena de texto con espacios en blanco"
#sinespacios=$(echo "$variable" | tr -d '[[:space:]]')
#echo $sinespacios
var=$(echo "$var" | tr -d '[[:space:]]')
echo "variable var = $var"
read a
#var=$(awk "NR==1" /home/pi/MMDVMHost/INDICATIVO.txt)



var=`expr substr $var 75 6`


sudo sed -i "1c $var" /home/pi/MMDVMHost/HOLA.txt

xterm -geometry 6x1+652+134 -bg black -fg white -fa ‘verdana’ -fs 19x -T ACTUALIZANDO_IMAGEN -e tail -f /home/pi/MMDVMHost/HOLA.txt

