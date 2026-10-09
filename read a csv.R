data <- data.frame(Name=c("Ram","Priya"), Age=c(20,21))
write.csv(data, "data.csv", row.names=FALSE)
x <- read.csv("data.csv")
print(x)