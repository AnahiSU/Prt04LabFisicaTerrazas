#Author: Leonel Zeballos Aldunate - Anahí Sanabria Ugarte - Mateo Merino Vidal
#Cod Siss: 202300536
#Carrea: Ingeniería en Informática
#Grupo: B6
#Fecha: 27/04/23
#
#Objetivo: Test al PosTime2 (Linealizacion logarítmica)

# Plot de las funciones
plot(x = PosTime2$t, y = PosTime2$x1, ylim = c(1,973),pch=1, panel.first = grid(col=12), main = "Posicion VS Tiempo", xlab = "t [s]", ylab = "x [m]")
points(x= PosTime2$t,y=PosTime2$x2, pch=2, col=14)
points(x= PosTime2$t,y=PosTime2$x3, pch=3, col=15)
points(x= PosTime2$t,y=PosTime2$x4, pch=4, col=16)
points(x= PosTime2$t,y=PosTime2$x5, pch=5, col=17)

legend(0, 800, legend=c("x1", "x2", "x3","x4","x5"),
       col=c(12,14,15,16,17), pch=c(1,2,3,4,5), cex=1)

# Linealizamos cada funcion
lin.PosTime2X1 = linLog(PosTime2$t, PosTime2$x1)
lin.PosTime2X2 = linLog(PosTime2$t, PosTime2$x2)
lin.PosTime2X3 = linLog(PosTime2$t, PosTime2$x3)
lin.PosTime2X4 = linLog(PosTime2$t, PosTime2$x4)
lin.PosTime2X5 = linLog(PosTime2$t, PosTime2$x5)

# Plot de la funcion linealizada
plot(x = lin.PosTime2X1$log.X, y = lin.PosTime2X1$log.Y, main="Posicion1 vs Tiempo",xlab="log(t) [s]",ylab="log(x) [m]")

# Hallamos A y B
fitPosTime2.X1 <- lm( lin.PosTime2X1$log.Y ~ lin.PosTime2X1$log.X )
abline(a = fitPosTime2.X1$coefficients[1], b = fitPosTime2.X1$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PosTime2X2$log.X, y = lin.PosTime2X2$log.Y, main="Posicion2 vs Tiempo",xlab="log(t) [s]",ylab="log(x) [m]")

# Hallamos A y B
fitPosTime2.X2 <- lm( lin.PosTime2X2$log.Y ~ lin.PosTime2X2$log.X )
abline(a = fitPosTime2.X2$coefficients[1], b = fitPosTime2.X2$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PosTime2X3$log.X, y = lin.PosTime2X3$log.Y, main="Posicion3 vs Tiempo",xlab="log(t) [s]",ylab="log(x) [m]")

# Hallamos A y B
fitPosTime2.X3 <- lm( lin.PosTime2X3$log.Y ~ lin.PosTime2X3$log.X )
abline(a = fitPosTime2.X3$coefficients[1], b = fitPosTime2.X3$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PosTime2X4$log.X, y = lin.PosTime2X4$log.Y, main="Posicion4 vs Tiempo",xlab="log(t) [s]",ylab="log(x) [m]")

# Hallamos A y B
fitPosTime2.X4 <- lm( lin.PosTime2X4$log.Y ~ lin.PosTime2X4$log.X )
abline(a = fitPosTime2.X4$coefficients[1], b = fitPosTime2.X4$coefficients[2], lwd = 2, col = "red")


# Plot de la funcion linealizada
plot(x = lin.PosTime2X5$log.X, y = lin.PosTime2X5$log.Y, main="Posicion5 vs Tiempo",xlab="log(t) [s]",ylab="log(x) [m]")

# Hallamos A y B
fitPosTime2.X5 <- lm( lin.PosTime2X5$log.Y ~ lin.PosTime2X5$log.X )
abline(a = fitPosTime2.X5$coefficients[1], b = fitPosTime2.X5$coefficients[2], lwd = 2, col = "red")
