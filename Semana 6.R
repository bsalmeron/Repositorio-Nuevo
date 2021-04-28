

#Paquete
install.packages("DBI")
library("DBI")
#Driver
install.packages("odbc")
library("odbc")



con <- DBI::dbConnect(odbc::odbc(),
                      Driver   = "SQL Server",
                      Server   = "dbtedamssql.uh.ac.cr",
                      Database = "AdventureWorksLT2017",
                      UID      = rstudioapi::askForPassword("Pentaho_User"),
                      PWD      = rstudioapi::askForPassword("Pentaho_User2021"),
                      Port     = 1433)
#Práctica 

1- Realice un analisis donde utilice lo aprendido hasta ahorita en especial
las funciones de dplyr

2. Genere un análsis exploratorio 

3. Investigue como aplicaría un modelo de regresión lineal a su análisis 

4. Use conexiones a base de datos 

5. Use repostorios de datos para almacenar el proyecto realizado 

#Intengración débil con fuentes externas de datos 

consulta1= data.frame(tbl(con,"Usuario"))


#Integración mas fuerte con SQL SERVER 

#odbc, DBI, RSQLite y sqldf
install.packages("")
consulta2<-dbGetQuery(con ,"SELECT getdate()")
View(consulta2)







