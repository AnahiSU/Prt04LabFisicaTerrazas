#Author: Leonel Zeballos Aldunate - Anahí Sanabria Ugarte - Mateo Merino Vidal
#Cod Siss: 202300536
#Carrea: Ingeniería en Informática
#Grupo: B6
#Fecha: 27/04/23
#
#Objetivo: Práctica 4

tdist = linealizar(PosTime$t, PosTime$x1)
plot(tdist)
pend = pendiente(tdist[99,2], tdist[2,2], tdist[99,1], tdist[2,1])
calA = calcA(tdist)
abline(calA,pend, col = "red", lwd = 2)


plot(tdist, main="Posicion1 vs Tiempo",xlab="t^2[s] ",ylab="Posicion1[m]")
pend = pendiente(tdist[99,2], tdist[2,2], tdist[99,1], tdist[2,1])
calA = calcA(tdist)
abline(calA,pend, col = "red", lwd = 2)


plot(tdist2, main="Posicion2 vs Tiempo",xlab="t^2[s] ",ylab="Posicion2[m]")
pend = pendiente(tdist2[99,2], tdist2[2,2], tdist2[99,1], tdist2[2,1])
calA = calcA(tdist)
abline(calA,pend, col = "red", lwd = 2)


plot(tdist3, main="Posicion3 vs Tiempo",xlab="t^2[s] ",ylab="Posicion3[m]")
pend = pendiente(tdist3[99,2], tdist3[2,2], tdist3[99,1], tdist3[2,1])
calA = calcA(tdist)
abline(calA,pend, col = "red", lwd = 2)

plot(tdist4, main="Posicion4 vs Tiempo",xlab="t^2[s] ",ylab="Posicion4[m]")
pend = pendiente(tdist4[99,2], tdist4[2,2], tdist4[99,1], tdist4[2,1])
calA = calcA(tdist)
abline(calA,pend, col = "red", lwd = 2)


plot(tdist5, main="Posicion5 vs Tiempo",xlab="t^2[s] ",ylab="Posicion5[m]")
pend = pendiente(tdist5[99,2], tdist5[2,2], tdist5[99,1], tdist5[2,1])
calA = calcA(tdist)
abline(calA,pend, col = "red", lwd = 2)