#Author: Leonel Zeballos Aldunate - Anahí Sanabria Ugarte
#Cod Siss: 202300536
#Carrea: Ingeniería en Informática
#Grupo: B6
#Fecha: 27/04/23
#
#Objetivo: Práctica 4

# #### IPORTANDO LOS DATOS #####

par(mfrow = c(3,5))

plot(PosTime$t, PosTime$x1, type = "o")
plot(PosTime$t, PosTime$x2, type = "o")
plot(PosTime$t, PosTime$x3, type = "o")
plot(PosTime$t, PosTime$x4, type = "o")
plot(PosTime$t, PosTime$x5, type = "o")

plot(PosTime2$t, PosTime2$x1, type = "o")
plot(PosTime2$t, PosTime2$x2, type = "o")
plot(PosTime2$t, PosTime2$x3, type = "o")
plot(PosTime2$t, PosTime2$x4, type = "o")
plot(PosTime2$t, PosTime2$x5, type = "o")

plot(PresVol$V1, PresVol$P1, type = "o")
plot(PresVol$V1, PresVol$P2, type = "o")
plot(PresVol$V1, PresVol$P3, type = "o")
plot(PresVol$V1, PresVol$P4, type = "o")
plot(PresVol$V1, PresVol$P5, type = "o")


plot(x = PosTime$t, y = PosTime$x1, ylim = c(1,973), panel.first = grid(col=12))
points(x= PosTime$t,y=PosTime$x2, pch=3, col=14)
points(x= PosTime$t,y=PosTime$x3, pch=3, col=15)
points(x= PosTime$t,y=PosTime$x4, pch=3, col=16)
points(x= PosTime$t,y=PosTime$x5, pch=3, col=17)


points(x=x,y=y2, pch=3, col=14)
points(x=x,y=y3, pch=5, col=16)

