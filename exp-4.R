setwd("/Users/rahamtullahsheikh/data-mining-R")
library("arules")

data("Mushroom")

fprules <- fim4r(Mushroom, method = "fpgrowth", target = "rules", supp = 70, conf = 60)

fprules

inspect(fprules[1:5])

x <- as(fprules,"data.frame")

write.csv(x, file="mushroomrules.csv")

