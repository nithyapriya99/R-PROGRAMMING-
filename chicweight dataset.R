
data <- ChickWeight

# Display first six rows
print(head(data))

# Sort by weight
s <- data[order(data$weight), ]
print(head(s))

# Reshape data
m <- reshape(data,
             varying = "weight",
             v.names = "Weight",
             timevar = "Variable",
             times = "Weight",
             direction = "long")
print(head(m))

# Average weight by Diet
avg <- aggregate(weight ~ Diet, data, mean)
print(avg)