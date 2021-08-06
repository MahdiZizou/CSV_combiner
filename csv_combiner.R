setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

file.name = list.files(pattern="*.csv")
temp=c()
for (i in 1:length(file.name)) {
 temp=rbind(temp,
            read.csv(file.name [i], sep = ',',stringsAsFactors = FALSE))
}
write.csv(x = temp,file = 'merged_file.csv',row.names = FALSE)
