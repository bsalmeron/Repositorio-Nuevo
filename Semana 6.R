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
