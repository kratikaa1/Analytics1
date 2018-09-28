#clustering
set.seed(1234)
subject1= trunc(rnorm(30, mean=60,sd=15)) #creating marks of 30 studentds by normal distribution
range(subject1)
subject1
marks=data.frame(subject1)
head(marks)
#kmeans is a numerical function where it uses only numeric values for data frame.
k2= kmeans(marks,centers = 2)
k2
k3= kmeans(marks,centers = 3)
k3
k2$size
marks[k2$cluster==1,]
marks[k2$cluster==2,]
mean(marks[k2$cluster==1,])
mean(marks[k2$cluster==2,])
k2$centers
library(NbClust) # using this library we'll find out what shld be the optimal number of clusters
?NbClust



