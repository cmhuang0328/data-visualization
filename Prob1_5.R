
#load the file/table parkinsons.assoc from corn to R in datafreame data
data <- read.table("parkinsons.assoc", sep = "" , header = T ,  na.strings ="", stringsAsFactors= F)

#List only Chromosome 11
data2=data[ data$CHR=="11", ]

#sort the dataframe by p-value
data2=data2[ order(data2[,9]), ]

## Top 10 rows based lowest P value
data2[1:10,]