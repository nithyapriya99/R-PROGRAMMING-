data <- iris

print(dim(data))
print(summary(data))
print(sapply(data[1:4], sd))
print(sapply(data[1:4], quantile))

print(aggregate(. ~ Species, data, mean))

print(table(data$Species))

data$Category <- cut(data$Sepal.Length,
                     breaks=c(4,5,6,7,8))
print(table(data$Category))