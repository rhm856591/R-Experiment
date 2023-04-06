library(arules)
library(arulesViz)
library(RColorBrewer)

# Create a market basket dataset
market_basket <- list(
  c("a", "b", "c", "d"),
  c("a", "b", "c"),
  c("a", "b"),
  c("m", "b", "c", "d"),
  c("m", "b", "c"),
  c("m", "b"),
  c("m", "e")
  
)

# Assign names to the list elements
names(market_basket) <- paste("T", c(1:length(market_basket)), sep = "")

# Convert the dataset to a transaction object
trans <- as(market_basket, "transactions")

# Explore the transaction object
dim(trans)
itemLabels(trans)
summary(trans)

# Visualize the item frequency
itemFrequencyPlot(trans, topN=10, cex.names=1)

# Generate association rules using the apriori algorithm
rules <- apriori(trans, parameter = list(supp=0.3, conf=0.5, maxlen=10, target="rules"))

# Explore the rules
summary(rules)
inspect(rules)