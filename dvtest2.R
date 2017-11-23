#Data Visualization Test2
#Q1
simulated_bigdata <- as.matrix(read.table("http://www.stanford.edu/~kjung/my.data.txt", sep="\t"))
row_avg <- numeric(nrow(simulated_bigdata))
# correct
# means <- numeric(nrow(simulated_bigdata))
names(means) <- rownames(simulated_bigdata)

#Q2 want to have the output [1] 1 2 0 0 0 6
x <- c(1,2,3,4,5,6)
x[3:5] <- NA
#x[is.na(x)] <- 1
# correct
x[is.na(x)] <- 0
x

#Q3 want to know in m those datas which are greater than 3 their average
x <- 1:6
#m = sum(x > 3)/length(x>3)
# correct
m= sum(x[x>3])/length(x[x>3])
m

#Q4 Plot Cars with xlab in time, ylab in speed
# correct
head(cars)
dim(cars)
x <- cars  
t =cbind(x, Time=cars$dist/cars$speed)
plot(x=t$Time, y=t$speed, main="cars", xlab="time", ylab="speed")

#Q5
# want to have the output
#d e f a b c 
#3 6 5 4 1 2 
x <- 1:6
names(x) <- c('b', 'c', 'd', 'a', 'f', 'e')
#x[sort(names(rev(x)))]
# correct
x[order(names(rev(x)))]

#Q6 look for the dimension for transpose of m
m <- matrix(0, nrow=2000, ncol=1000)
# correct
dim(t(m))

#Q7 show [1] "R is a functional programming language ."
#vec1<- c('R', 'is', 'a', 'functional', 'programming', 'language', ‘.’)
# correct
vec1<- c("R", "is", "a", "functional", "programming", "language", ".")
des <- paste(vec1, collapse=" ")

#Q8 Class of Cars: data frame
class(cars)

#Q9 want to get the answer change is.infinite to is.NA weird!!!
x<-1/0
y<-NA
my.vector <- c(1,3,y,x,9)
#print (my.vector[4])
for (i in 1:length(my.vector))
        
        if (is.infinite(my.vector[i])!=TRUE){
                
                print (my.vector[i])}

#Q10 know how many row in t
x <- 1:200
y <- c(1:123)
z <- c(1:3,c(20:62))
s <- c(x,y)
t=c(x, y, s)
t
#correct
NROW(t)
#[1] 646