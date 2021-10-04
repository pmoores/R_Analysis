# Import ggplot2
library(ggplot2)

# 15.6.1 Visualize the distribution of driven miles for the used_car_data.csv dataset
population_table <- read.csv('used_car_data.csv',check.names = F,stringsAsFactors = F) #import used car dataset
plt <- ggplot(population_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot


# Import dplyr
library(dplyr)

# Create a sample dataset using dplyr's sample_n() function
sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
plt <- ggplot(sample_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot

