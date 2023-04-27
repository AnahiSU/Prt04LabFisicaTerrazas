#Author: Leonel Zeballos Aldunate - Anahí Sanabria Ugarte - Mateo Merino Vidal
#Cod Siss: 202300536
#Carrea: Ingeniería en Informática
#Grupo: B6
#Fecha: 27/04/23
#
#Objetivo: Práctica 4

####Aplicando funciones####

#Aplicando linealizar por logaritmos
logart = linLog(PosTime2$t, PosTime2$x1)

#Plotear la linealizacion
plot(logart$Xprima, logart$Yprima)

#sacar a y b para la ecuación
datos = ecCurv(logart)


