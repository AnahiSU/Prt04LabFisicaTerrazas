#Author: Leonel Zeballos Aldunate - Anahí Sanabria Ugarte
#Cod Siss: 202300536
#Carrea: Ingeniería en Informática
#Grupo: B6
#Fecha: 27/04/23
#
#Objetivo: Práctica 4

# #### IPORTANDO LOS DAOTOS #####

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
