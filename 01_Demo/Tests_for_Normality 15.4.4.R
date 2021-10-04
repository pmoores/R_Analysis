#Import ggplot
library(ggplot2)

# 15.4.4 Qualitative test for normality using the geom_density() function
ggplot(mtcars,aes(x=wt)) + geom_density() #visualize distribution using density plot

# Shapiro-Wilk test - Quantitative test for normality
shapiro.test(mtcars$wt)

