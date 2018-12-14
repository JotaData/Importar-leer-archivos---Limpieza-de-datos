install.packages("XML")

#Para cargar e inicializar la libreria podemos ir a packages y darle click a XML o mediante library()

library(XML)

#Guardar en una variable lamada url de tipo string para ya no estar escribiendola a cada momento

url <- "/Users/Jonathan/Documents/data/tema1/cd_catalog.xml"

#Podemos crear un fichero xml, esto crea un apuntador que localiza el fichero(documento)

xmldoc <- xmlParse(url)

#Ese documento debe correrse, pasarse por cada uno de los nodos, para ello lo 1ero se recupera el nodo raiz

rootnode <- xmlRoot(xmldoc)

#Para consultar el 1er cd

rootnode[1]

#Para consultar el 2do cd

rootnode[2]

#fabricar un dataframe
#se indica la funcion que le quiero aplicar al xml, donde x es un parametro que simboliza cada uno de los 
#elementos del rootnode, le aplico la funcion a cada valor de x, xmlValues para extraer unicamente los valores

cds_data <- xmlSApply(rootnode, function(x) xmlSApply(x, xmlValue))

#Pero la forma en que nos muestra no es la manera mas tratable para analizar, asi que haremos una transpuesta
#Dentro de t va la variable que quiero transponer y se puede incorporar si cada fila tiene o no nombre
#Como no tiene indico la palabra reservada NULL

cds.catalog <- data.frame(t(cds_data), row.names = NULL)

#Para verificar hago un head

head(cds.catalog, 2)

#acceder a las primeras 5 filas con todas las columnas

cds.catalog[1:5, ]

#para trabajar con base de datos con formato xml, las funciones que se necesita son

#spathSApply()
#getNodeSet()

#Repetimos el proceso anterior

population_url <- "/Users/Jonathan/Documents/data/tema1/WorldPopulation-wiki.htm"

#Extraemos todas las tablas de html con read...

tables <- readHTMLTable(population_url)

#Viendo la tabla de html queremos acceder a una tabla(tabla6), pero vamos a acceder a una lista de lista([[]])
#Pero antes lo guardamos en otra variable

most_populated <- tables[[6]]

head(most_populated, 3)

#podemos extraer una de las tablas si la conocemos a priori, hariamos el mismo proceso
#Pero en vez de cargarlas todas, introduzco which

custom_table <- readHTMLTable(population_url, which = 6)
custom_table




