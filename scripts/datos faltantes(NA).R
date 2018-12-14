##hay strings faltantes para variables categoricas y hare que me las indique con espacios vacios

data <- read.csv("/Users/Jonathan/Documents/data/tema1/missing-data.csv", 
                 na.strings = ""
                 )

##para tener un df que no tenga datos faltantes(NA) se hace uso de la funcion "na.omit"

data.cleaned <- na.omit(data)

##la funcion na.omit internamente utiliza otra funcion is.na
##is.na (permite averiguar si algunos de los argumentos que hemos pasado es NA) y devuelve un booleano T y/o F

is.na(data[4, 2])

is.na(data[4, 1])

is.na(data$Income)

##limpiar NA de la variable Income

data.income.cleaned <- data[!is.na(data$Income), ]

##es una funcion que dada un df o tabla como argumento nos devuelve un vector de booleanos

complete.cases(data)

##una forma de reemplazar na.omit es mediante la funcion complete.case

data.cleaned.2 <- data[complete.cases(data), ]

##convertir los ceros de Ingresos en NA
##del df data me interesa la variable Income que contiene valores 0

data$Income[data$Income == 0]

##esos valores cero convertirlo a NA

data$Income[data$Income == 0] <- NA

##medidas de centralizacion y dispersion
##quiero el promedio, pero hay datos que no se conocen(NA) y no es capaz de dar un promedio

mean(data$Income)   #----> como 1er resultado NA

##para sacar esos NA utilizo la funcion na.rm

mean(data$Income, na.rm = TRUE)   #----> ya puedo obtener la media

##de igual formar la sd

sd(data$Income)

sd(data$Income, na.rm = TRUE)
