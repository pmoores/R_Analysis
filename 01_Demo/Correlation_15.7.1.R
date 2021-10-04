#15.7.1 Correlation

# Check mtcars dataset headers
head(mtcars)

# Test whether horsepower (hp) is correlated with quarter-mile race time (qsec)
plt <- ggplot(mtcars,aes(x=hp,y=qsec)) #import dataset into ggplot2
plt + geom_point() #create scatter plot

# Use the cor() function to quantify the strength of the correlation
cor(mtcars$hp,mtcars$qsec) #calculate correlation coefficient



# Use the used_car_data.csv for another example
used_cars <- read.csv('used_car_data.csv',stringsAsFactors = F) #read in dataset
head(used_cars)

# Plot the variables
plt <- ggplot(used_cars,aes(x=Miles_Driven,y=Selling_Price)) #import dataset into ggplot2
plt + geom_point() #create a scatter plot

# Calculate the Pearson coefficient
cor(used_cars$Miles_Driven,used_cars$Selling_Price) #calculate correlation coefficient



# Create a correlation matrix for the used cars dataset
used_matrix <- as.matrix(used_cars[,c("Selling_Price","Present_Price","Miles_Driven")]) #convert data frame into numeric matrix
cor(used_matrix)


