#15.6.5 ANOVA Test
# Clean the data
mtcars_filt <- mtcars[,c("hp","cyl")] #filter columns from mtcars dataset
mtcars_filt$cyl <- factor(mtcars_filt$cyl) #convert numeric column to factor

# Use the aov() function wrapped in the summary() function to retrieve p-values
summary(aov(hp ~ cyl,data=mtcars_filt)) #compare means across multiple levels
