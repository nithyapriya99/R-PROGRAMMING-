
data <- airquality

# Melt (wide to long)
m <- reshape(
  data,
  varying = c("Ozone", "Solar.R", "Wind", "Temp"),
  v.names = "Value",
  timevar = "Variable",
  times = c("Ozone", "Solar.R", "Wind", "Temp"),
  direction = "long"
)
print(head(m))

# Monthly averages
avg <- aggregate(
  cbind(Ozone, Solar.R, Wind, Temp) ~ Month,
  data = data,
  FUN = mean,
  na.rm = TRUE
)
print(avg)