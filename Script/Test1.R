#Author: Leonel Zeballos Aldunate - Anahí Sanabria Ugarte - Mateo Merino Vidal
#Cod Siss: 202300536
#Carrea: Ingeniería en Informática
#Grupo: B6
#Fecha: 27/04/23
#
# Objetivo: Test al PostTime

# Plot de las funciones
plot(x = PosTime$t, y = PosTime$x1, ylim = c(1,973),pch=1, panel.first = grid(col=12), main = "Posicion VS Tiempo", xlab = "t [s]", ylab = "x [m]")
points(x= PosTime$t,y=PosTime$x2, pch=2, col=14)
points(x= PosTime$t,y=PosTime$x3, pch=3, col=15)
points(x= PosTime$t,y=PosTime$x4, pch=4, col=16)
points(x= PosTime$t,y=PosTime$x5, pch=5, col=17)

legend(0, 800, legend=c("x1", "x2", "x3","x4","x5"),
       col=c(12,14,15,16,17), pch=c(1,2,3,4,5), cex=1)

# Linealizamos cada funcion
lin.PosTimeX1 = linealizar(PosTime$t, PosTime$x1)
lin.PosTimeX2 = linealizar(PosTime$t, PosTime$x2)
lin.PosTimeX3 = linealizar(PosTime$t, PosTime$x3)
lin.PosTimeX4 = linealizar(PosTime$t, PosTime$x4)
lin.PosTimeX5 = linealizar(PosTime$t, PosTime$x5)

# Plot de la funcion linealizada
plot(x = lin.PosTimeX1$Z.2, y = lin.PosTimeX1$Y, main="Posicion1 vs Tiempo",xlab="t^2[s] ",ylab="Posicion1[m]")

# Hallamos A y B
fitPosTime.X1 <- lm( lin.PosTimeX1$Y ~ lin.PosTimeX1$Z.2 )
abline(a = fitPosTime.X1$coefficients[1], b = fitPosTime.X1$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PosTimeX2$Z.2, y = lin.PosTimeX2$Y, main="Posicion2 vs Tiempo",xlab="t^2[s] ",ylab="Posicion1[m]")

# Hallamos A y B
fitPosTime.X2 <- lm( lin.PosTimeX2$Y ~ lin.PosTimeX2$Z.2 )
abline(a = fitPosTime.X2$coefficients[1], b = fitPosTime.X2$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PosTimeX3$Z.2, y = lin.PosTimeX3$Y, main="Posicion3 vs Tiempo",xlab="t^2[s] ",ylab="Posicion1[m]")

# Hallamos A y B
fitPosTime.X3 <- lm( lin.PosTimeX3$Y ~ lin.PosTimeX3$Z.2 )
abline(a = fitPosTime.X3$coefficients[1], b = fitPosTime.X3$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PosTimeX4$Z.2, y = lin.PosTimeX4$Y, main="Posicion4 vs Tiempo",xlab="t^2[s] ",ylab="Posicion1[m]")

# Hallamos A y B
fitPosTime.X4 <- lm( lin.PosTimeX4$Y ~ lin.PosTimeX4$Z.2 )
abline(a = fitPosTime.X4$coefficients[1], b = fitPosTime.X4$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PosTimeX5$Z.2, y = lin.PosTimeX5$Y, main="Posicion5 vs Tiempo",xlab="t^2[s] ",ylab="Posicion1[m]")

# Hallamos A y B
fitPosTime.X5 <- lm( lin.PosTimeX5$Y ~ lin.PosTimeX5$Z.2 )
abline(a = fitPosTime.X5$coefficients[1], b = fitPosTime.X5$coefficients[2], lwd = 2, col = "red")