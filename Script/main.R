#Author: Leonel Zeballos Aldunate - Anahí Sanabria Ugarte - Mateo Merino Vidal
#Cod Siss: 202300536
#Carrea: Ingeniería en Informática
#Grupo: B6
#Fecha: 27/04/23
#
#Objetivo: Práctica 4

##### IMPORTANDO LOS DATOS #####

PosTime <- read.csv2("C:/Users/usser/Escritorio/Leonel/Asignaturas/FISICA_GRAL_LAB/Informes/Informe4_colab/202300047Prt04260423/Data/PosTime.csv")
PosTime2 <- read.csv2("C:/Users/usser/Escritorio/Leonel/Asignaturas/FISICA_GRAL_LAB/Informes/Informe4_colab/202300047Prt04260423/Data/PosTime2.csv")
PresVol <- read.csv2("C:/Users/usser/Escritorio/Leonel/Asignaturas/FISICA_GRAL_LAB/Informes/Informe4_colab/202300047Prt04260423/Data/PresVol.csv")

#### FUNCIONES ####

# Funcion que recibe los valores de la var dependiente, independiente y el exponente al que se eleva para el cambio de variable
linealizar = function(indep, dep, exponente){
    return(data.frame(Z.2 = indep ^ exponente, Y = dep))
}

linLog = function(indep, dep){
    return(data.frame(log.X = log10(indep), log.Y = log10(dep)))
}

ecCurv = function(datos){
    a = 10^datos[2,1]
    pend = (datos[99,2]-datos[2,2])/(datos[99,1]-datos[2,1])
    
    res = c("a" = a, "B" = pend)
}
