#Leer archivos de anchura fija fwf
#con widths prefijamos la anchura fija respectiva para cada columna

students_data <- read.fwf("/Users/Jonathan/Documents/data/tema1/student-fwf.txt",
                          widths = c(4, 15, 20, 15, 4),
                          col.names = c("id", "nombre", "email", 
                                        "carrera", "año")
                          )

#cuando el archivo tiene cabecera, pero no bastaria con poner "header=true"
#porque mayormente en este tipo de archivos las cabeceras no respetan la anchura fija y se agrega un "sep"
#y si deseo saltarme las primeras linea del fichero agrego "skip"

students_data_header <- read.fwf("/Users/Jonathan/Documents/data/tema1/student-fwf-header.txt", 
                                 widths = c(4, 15, 20, 15, 4), 
                                 header = TRUE, sep = "\t", 
                                 skip = 2)

#si quisiera no coger el email o cualquier otra variable, le pongo el signo - a la col que quiero eliminar

students_data_no_email <- read.fwf("/Users/Jonathan/Documents/data/tema1/student-fwf.txt",
                          widths = c(4, 15, -20, 15, 4),
                          col.names = c("id", "nombre", 
                                        "carrera", "año")
                          )


