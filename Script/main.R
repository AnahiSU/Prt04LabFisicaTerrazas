#Author: Leonel Zeballos Aldunate - Anahí Sanabria Ugarte - Mateo Merino Vidal
#Cod Siss: 202300536
#Carrea: Ingeniería en Informática
#Grupo: B6
#Fecha: 27/04/23
#
#Objetivo: Práctica 4

####Leer data frames####

PosTime <- read.csv2("C:/Users/MSI i7/Desktop/practicas labo/prt04/202300536Prt04270423/Data/PosTime.csv")
PosTime2 <- read.csv2("C:/Users/MSI i7/Desktop/practicas labo/prt04/202300536Prt04270423/Data/PosTime2.csv")
PresVol <- read.csv2("C:/Users/MSI i7/Desktop/practicas labo/prt04/202300536Prt04270423/Data/PresVol.csv")

####Funciones####

linealizar = function(t, dist){
    tiempos = data.frame(t^2)
    pos = data.frame(dist)
    res = data.frame("t"=tiempos, "dist" = pos)
    return(res)
}
pendiente = function(x2,x1,z2,z1){
    B = (x2-x1)/(z2-z1)
    return (B)
}
calcA = function(datos){
    A = min(abs(datos$dist))
}
linLog = function(t, dist){
    A = log(min(t))
    B = 2
    Xprima = log(t)
    Yprima = log(dist)
    res = data.frame("B" = B,
                     "A" = A,
                     "Xprima" = Xprima,
                     "Yprima" = Yprima)
}
ecCurv = function(datos){
    a = 10^datos[2,1]
    pend = (datos[99,2]-datos[2,2])/(datos[99,1]-datos[2,1])
    
    res = c("a" = a, "B" = pend)
}

##### IMPORTANDO LOS DATOS #####

plot(x = PosTime$t, y = PosTime$x1, ylim = c(1,973),pch=1, panel.first = grid(col=12))
points(x= PosTime$t,y=PosTime$x2, pch=2, col=14)
points(x= PosTime$t,y=PosTime$x3, pch=3, col=15)
points(x= PosTime$t,y=PosTime$x4, pch=4, col=16)
points(x= PosTime$t,y=PosTime$x5, pch=5, col=17)

legend(0, 800, legend=c("x1", "x2", "x3","x4","x5"),
       col=c(12,14,15,16,17), pch=c(1,2,3,4,5), cex=1)


