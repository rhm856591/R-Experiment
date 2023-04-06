library(party)
library(plyr)
library(readr)
getwd()
iris <- read.csv('iris_1.csv')

print(head(iris,5))

#print all classes of iris

print(unique(iris$class))

iris$class<-as.factor(iris$class)
summary(iris)

tree1 <- ctree(class~sepal_width, data = iris)
plot(tree1)

tree2 <- ctree(class~sepal_width, data = iris)
plot(tree2)

tree5 <-ctree(class~sepal_length+sepal_width, data = iris)
plot(tree5)
