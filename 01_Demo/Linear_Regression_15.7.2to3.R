# 15.7.2 Linear Regression - Create a linear regression model
lm(qsec ~ hp,mtcars) #create linear model


# Determine the p-value and r-squared value for the simple linear regression model using the summary() function
summary(lm(qsec~hp,mtcars)) #summarize linear model


# Visualize using ggplot
# Calculate the data points to use for a line plot using the lm(qsec ~ hp,mtcars) coefficients
model <- lm(qsec ~ hp,mtcars) #create linear model
yvals <- model$coefficients['hp']*mtcars$hp +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model

# Plot the linear model over a scatter plot
plt <- ggplot(mtcars,aes(x=hp,y=qsec)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model



# 15.7.3 Multiple Linear Regression
# Create a multiple regression statement
lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars) #generate multiple linear regression model

# Obtain statistical metrics using the summary() function
summary(lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars)) #generate summary statistics