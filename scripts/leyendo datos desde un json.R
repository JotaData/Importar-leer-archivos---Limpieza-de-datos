install.packages("jsonlite")

#Cargamos la libreria jsonlite

library(jsonlite)

#funcion que lee o carga directamente ficheros con extension .json desde un workdirectory

dato.1 <- fromJSON("/Users/Jonathan/Documents/data/tema1/students.json")

#cargar otra extension .json

dato.2 <- fromJSON("/Users/Jonathan/Documents/data/tema1/student-courses.json")

#Para lo que vendra instalamos el paquete "curl"

install.packages("curl")

#leer tipos de monedas desde internet

url <- "http://www.floatrates.com/daily/usd.json"
monedas <- fromJSON(url)

#convertir objeto monedas a dataframe

json_file1 <- lapply(monedas, function(x) unlist(x))
monedas_df <- as.data.frame(t(as.data.frame(json_file1)), row.names = NULL)


moneda.data <- as.data.frame(monedas$eur, row.names = NULL)

###ESTRUCTURA DE DATOS

#Un vistazo a la cabecera de dato.1

head(dato.1, 3)

#dato.1 tiene 5 var(id, Name, Email, Major, year), queremos acceder a la var email

dato.1$Email

#solo las filas de 1 a 5 y todas las columnas

moneda.data[1:5,]

#solo quiero unos estudiantes en especifico, el 2,5 y 8

dato.1[c(2, 5, 8),]

#solo quiero la col 2(name) y la col 5(year)
#muestra los 12 estudiantes con nombre y año de ingreso a la universidad

dato.1[, c(2, 5)]

#Un vistazo a la cabecera de dato.2

head(dato.2, 3)



