#Author: Leonel Zeballos Aldunate - Anahí Sanabria Ugarte
#Cod Siss: 202300536
#Carrea: Ingeniería en Informática
#Grupo: B6
#Fecha: 27/04/23
#
#Objetivo: Práctica 4

####Funciones####

linealizar = function(t, dist){
    tiempos = data.frame(t^2)
    pos = data.frame(dist)
    res = data.frame("t"=tiempos, "dist" = pos)
    return(res)
}

##### IMPORTANDO LOS DATOS #####


plot(x = PosTime$t, y = PosTime$x1, ylim = c(1,973), panel.first = grid(col=12))
points(x= PosTime$t,y=PosTime$x2, pch=3, col=14)
points(x= PosTime$t,y=PosTime$x3, pch=3, col=15)
points(x= PosTime$t,y=PosTime$x4, pch=3, col=16)
points(x= PosTime$t,y=PosTime$x5, pch=3, col=17)

plot(x = PosTime$t, y = PosTime$x1, ylim = c(1,973),pch=1, panel.first = grid(col=12))
points(x= PosTime$t,y=PosTime$x2, pch=2, col=14)
points(x= PosTime$t,y=PosTime$x3, pch=3, col=15)
points(x= PosTime$t,y=PosTime$x4, pch=4, col=16)
points(x= PosTime$t,y=PosTime$x5, pch=5, col=17)

legend(0, 800, legend=c("x1", "x2", "x3","x4","x5"),
       col=c(12,14,15,16,17), pch=c(1,2,3,4,5), cex=1)

tdist = linealizar(PosTime$t, PosTime$x1)

plot(tdist)


