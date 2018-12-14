#Como el dataset tiene cabecera, entonces header=TRUE

auto <- read.csv("/Users/Jonathan/Documents/data/tema1/auto-mpg.csv", 
                 header = TRUE, sep = ",")

#names muestra los nombres de las variables

names(auto)

#read.csv2 == read.csv("filename", sep=";", dec",")
# O tambien para separar se utiliza sep="\t"

#Si el dataset no tiene cabecera, entonces header=FALSE

auto_no_header <- read.csv("/Users/Jonathan/Documents/data/tema1/auto-mpg-noheader.csv", 
                           header = FALSE)

#Para mostrar las primeras lineas del dataset utilizamos la funcion head()

head(auto_no_header, 4)

#personalizar el nombre de las variables con la funcion colnames()

auto_custom_header <- read.csv("/Users/Jonathan/Documents/data/tema1/auto-mpg-noheader.csv", 
                      header = F, col.names = c("numero", "millas_por_galon", "cilindrada", "desplazamiento",
                                               "caballos_de_potencia", "peso", "aceleracion", "modelo_año", 
                                               "nombre_carro"
                                               )
                              )
head(auto_custom_header, 2)

#NA : Not Available
#na.string = "", cuando hay valores NA son tratados como vacio ("")

#En el caso no querer utilizar un fichero directamente(csv), puedo cargar los datos desde internet

who_from_internet <- read.csv("https://frogames.es/course-contents/r/intro/tema1/WHO.csv")
