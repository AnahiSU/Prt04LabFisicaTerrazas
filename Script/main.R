#Author: Leonel Zeballos Aldunate - Anahí Sanabria Ugarte - Mateo Merino Vidal
#Cod Siss: 
#Carrea: Ingeniería en Informática
#Grupo: B6
#Fecha: 27/04/23
#
#Objetivo: Práctica 4

####Leer data frames####

PosTime <- read.csv2("C:/Users/MSI i7/Desktop/practicas labo/prt04/202300536Prt04270423/Data/PosTime.csv")
PosTime2 <- read.csv2("C:/Users/MSI i7/Desktop/practicas labo/prt04/202300536Prt04270423/Data/PosTime2.csv")
PresVol <- read.csv2("C:/Users/MSI i7/Desktop/practicas labo/prt04/202300536Prt04270423/Data/PresVol.csv")

#### FUNCIONES ####

# Funcion que recibe los valores de la var dependiente, independiente y el exponente al que se eleva para el cambio de variable
linealizar = function(indep, dep, exponente){
    return(data.frame(Z.2 = indep ^ exponente, Y = dep))
}

linLog = function(t,dist){
    A = log10(dist[which.min(t)])
    B = 2
    Xprima = log10(t)
    Yprima = log10(dist)
    res = data.frame("B" = B,
                     "A" = A,
                     "Xprima" = Xprima,
                     "Yprima" = Yprima)
}
ecCurv = function(datos){
    a = 10^datos[1,2]
    pend = (datos[99,4]-datos[2,4])/(datos[99,3]-datos[2,3])
    res = c("a" = a, 
            "B" = pend)
}
