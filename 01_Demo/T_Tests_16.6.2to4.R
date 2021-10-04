# 15.6.2 Use a one-sample t-test to determine is miles driven is statistically different in sample dataset
t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) #compare sample versus population means


# 15.6.2 Two sample t-test
# Produce two samples
sample_table <- population_table %>% sample_n(50) #generate 50 randomly sampled data points
sample_table2 <- population_table %>% sample_n(50) #generate another 50 randomly sampled data points

# Perform two sample t-test
t.test(log10(sample_table$Miles_Driven),log10(sample_table2$Miles_Driven)) #compare means of two samples


# 15.6.4 Perform a paired t-test
# Generate two samples from mpg_modified.csv
mpg_data <- read.csv('mpg_modified.csv') #import dataset
mpg_1999 <- mpg_data %>% filter(year==1999) #select only data points where the year is 1999
mpg_2008 <- mpg_data %>% filter(year==2008) #select only data points where the year is 2008

# Perform paired t-test
t.test(mpg_1999$hwy,mpg_2008$hwy,paired = T) #compare the mean difference between two samples