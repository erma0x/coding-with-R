       #QUERY & DB
       
       #query<- paste ("select * from *;")
       #data <- dbGetQuery(db, query)
       

       db <- dbConnect(RMySQL::MySQL(), user=user_, password=password_,dbname=dbname_, host=host_)
       data1<-dbGetQuery(db, q2)
       write.csv(data1,str_replace_all(paste(directory, "data1",".csv"), fixed(" "), "")) # WRITE in CSV and SAVE
       data1<-read.csv(str_replace_all(paste(directory,"data1",".csv"), fixed(" "), "")) # READ
       disconnection()
       

       # FOR BIG DATA
       #con <- dbConnect(RMariaDB::MariaDB(), dbname = "mydb")
       rs = dbSendQuery(db, query_10001) # manda la query con la connessione 
       totRow = 0
       resultDF = data.frame()
       while (!dbHasCompleted(rs)) {
          chunk <- dbFetch(rs, 4000)
          resultDF<-rbind(resultDF, chunk)
          totRow = totRow + nrow(chunk)
          #Status Print
          if(totRow %% 100000 == 0){
             print(paste(OutFile, format(totRow, scientific=F)))
          }
       }
       dbClearResult(rs)
       
       
       data1<-dbGetQuery(db, q1)
       write.csv(data1, paste(directory,"data1.csv"),sep = "") # WRITE in CSV and SAVE
       disconnection()
       data1<-read.csv(str_replace_all(paste(directory,"data1.csv"), fixed(" "), "")) # READ
       
