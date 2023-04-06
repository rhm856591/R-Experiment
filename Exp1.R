library(RWeka)

setwd('/Users/rahamtullahsheikh/data-mining-R')
getwd()

rating <- 1:4
animal <- c('Koala', 'Hedgehog', 'Sloth', 'Panda')
country <- c('Australia', 'Italy', 'Peru', 'China')
average_sleep_hours <- c(21, 18, 17, 10)

super_sleepers <- data.frame(rating,animal,country,average_sleep_hours)
print(super_sleepers)

print(class(super_sleepers))

write.arff(super_sleepers, file="super_sleepers.arff")
