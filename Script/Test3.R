#Author: Leonel Zeballos Aldunate - Anahí Sanabria Ugarte - Mateo Merino Vidal
#Cod Siss: 202300536
#Carrea: Ingeniería en Informática
#Grupo: B6
#Fecha: 27/04/23
#
#Objetivo: Test al PresVol

# Plot de las funciones
plot(x = PresVol$V1, y = PresVol$P1, ylim = c(0.2,2.766) ,pch=1, panel.first = grid(col=12))
points(x= PresVol$V1,y=PresVol$P2, pch=2, col=14)
points(x= PresVol$V1,y=PresVol$P3, pch=3, col=15)
points(x= PresVol$V1,y=PresVol$P4, pch=4, col=16)
points(x= PresVol$V1,y=PresVol$P5, pch=5, col=17)

legend(1, 1.5, legend=c("P1", "P2", "P3","P4","P5"),
       col=c(12,14,15,16,17), pch=c(1,2,3,4,5), cex=1)

# Linealizamos cada funcion
lin.PresVolP1 = linealizar(PresVol$V1, PresVol$P1, -1)
lin.PresVolP2 = linealizar(PresVol$V1, PresVol$P2, -1)
lin.PresVolP3 = linealizar(PresVol$V1, PresVol$P3, -1)
lin.PresVolP4 = linealizar(PresVol$V1, PresVol$P4, -1)
lin.PresVolP5 = linealizar(PresVol$V1, PresVol$P5, -1)

# Plot de la funcion linealizada
plot(x = lin.PresVolP1$Z.2, y = lin.PresVolP1$Y, main="Presion1 vs Volumen",xlab="Volumen [L] ",ylab="Presion [atm]")

# Hallamos A y B
fitPresVol.P1 <- lm( lin.PresVolP1$Y ~ lin.PresVolP1$Z.2 )
abline(a = fitPresVol.P1$coefficients[1], b = fitPresVol.P1$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PresVolP2$Z.2, y = lin.PresVolP2$Y, main="Presion2 vs Volumen",xlab="Volumen [L] ",ylab="Presion [atm]")

# Hallamos A y B
fitPresVol.P2 <- lm( lin.PresVolP2$Y ~ lin.PresVolP2$Z.2 )
abline(a = fitPresVol.P2$coefficients[1], b = fitPresVol.P2$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PresVolP3$Z.2, y = lin.PresVolP3$Y, main="Presion3 vs Volumen",xlab="Volumen [L] ",ylab="Presion [atm]")

# Hallamos A y B
fitPresVol.P3 <- lm( lin.PresVolP3$Y ~ lin.PresVolP3$Z.2 )
abline(a = fitPresVol.P3$coefficients[1], b = fitPresVol.P3$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PresVolP4$Z.2, y = lin.PresVolP4$Y, main="Presion4 vs Volumen",xlab="Volumen [L] ",ylab="Presion [atm]")

# Hallamos A y B
fitPresVol.P4 <- lm( lin.PresVolP4$Y ~ lin.PresVolP4$Z.2 )
abline(a = fitPresVol.P4$coefficients[1], b = fitPresVol.P4$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PresVolP5$Z.2, y = lin.PresVolP5$Y, main="Presion5 vs Volumen",xlab="Volumen [L] ",ylab="Presion [atm]")

# Hallamos A y B
fitPresVol.P5 <- lm( lin.PresVolP5$Y ~ lin.PresVolP5$Z.2 )
abline(a = fitPresVol.P5$coefficients[1], b = fitPresVol.P5$coefficients[2], lwd = 2, col = "red")
