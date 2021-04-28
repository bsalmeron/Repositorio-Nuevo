con <- DBI::dbConnect(odbc::odbc(),
                      Driver   = "SQL Server",
                      Server   = "dbtedamssql.uh.ac.cr",
                      Database = "Northwind",
                      UID      = rstudioapi::askForPassword("Database user"),
                      PWD      = rstudioapi::askForPassword("Database password"),
                      Port     = 1433)



#Paquete
install.packages("DBI")
library("DBI")
#Driver
install.packages("odbc")
library("odbc")

 

comercio =  data.frame(tbl(con, "Orders Qry"))

plot(as.factor(comercio$Country))

?tbl


#Práctica 

1- Realice un analisis donde utilice lo aprendido hasta ahorita en especial
las funciones de dplyr

2. Genere un análsis exploratorio 

3. Investigue como aplicaría un modelo de regresión lineal a su análisis 

4. Use conexiones a base de datos 

5. Use repostorios de datos para almacenar el proyecto realizado 

