#ambos son tomados como strings o caracteres

clientes <- c("Jonathan Alberto", "Carlos", "Jesus")
fechas <- c("2017-12-27", "2017-11-1", "2018-1-1")

##indicamos a R que lo que estamos creando no son strings sino objetos de tipo fecha

fechas.date <- as.Date(c("2017-12-27", "2017-11-1", "2018-1-1"))
pago <- c(315, 192.55, 40.15)

##Vamos a leer un dataframe

pedidos <- data.frame(clientes, fechas.date, pago)

##guardamos df con funcion "save"

save(pedidos, file = "/Users/Jonathan/Documents/cursos Udemy/rstudio/r-course/data/tema1/pedidos.Rdata")

##Guardamos nuestro df con archivo de tipo .rds
##saveRDS puede guardar solo una variable y no el nombre de la variable

saveRDS(pedidos, file = "/Users/Jonathan/Documents/cursos Udemy/rstudio/r-course/data/tema1/pedidos.rds")

##la funcion save permite guardar mas de un objeto

clientes_vip <- c("Jonathan Alberto", "Jesus")

save(pedidos, clientes_vip, file = "/Users/Jonathan/Documents/cursos Udemy/rstudio/r-course/data/tema1/pedidos.Rdata")

##una buena practica despues de haber trabajado con df grandes es poder limpiarlos, para que no consuman RAM

remove(pedidos)

#como cargar de nuevo un archivo eliminado anteriormente .Rdata y .rds con la sintaxis load

load(file = "/Users/Jonathan/Documents/cursos Udemy/rstudio/r-course/data/tema1/pedidos.Rdata")

orders <- readRDS(file = "/Users/Jonathan/Documents/cursos Udemy/rstudio/r-course/data/tema1/pedidos.rds")

#RStudio viene cargado por defecto con una gran cantidad de datasets y para cargarlos se usa solo la sintaxis data()

data(iris)
data(cars)

#si cerramos el entorno y queremos abrirlo en otro ordenador, habiendo guardado todos los objetos

save.image(file = "/Users/Jonathan/Documents/cursos Udemy/rstudio/r-course/data/tema1/alldata.Rdata")

#-----------

primes <- c(2, 3, 5, 7, 11, 13)
pow2 <- c(2, 4, 8, 16, 32, 64, 128)

#tengo 2 variables y las quiero guardar(save) en un objeto .Rdata y con una list lo agrupamos

save(list = c("primes", "pow2"), 
     file = "/Users/Jonathan/Documents/cursos Udemy/rstudio/r-course/data/tema1/primes_and_pow2.Rdata"
     )

#si queremos cargar algunas variables o archivos y ya la tenemos cargadas podemos ser notificados y/o advertidos
#para eso utilizamos la sentencia "attach"

attach("/Users/Jonathan/Documents/cursos Udemy/rstudio/r-course/data/tema1/primes_and_pow2.Rdata")

#si queremos obtener una lista de todos los paquetes y datasets que ya vienen cargados

data()



