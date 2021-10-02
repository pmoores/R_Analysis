# Import tidyverse 15.2.5
library(tidyverse)

# Use mutate() function to add a mileage per year column and an IsActive column labeled True
demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE)

# Use the group_by() function to group data by vehicle condition and determine avg mile per condition
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep')

# Use the summarize() function to add maximum price and num of vehicles in each cat as new columns
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep')

# Load in demo2.csv
demo_table3 <- read.csv('demo2.csv',check.names = F,stringsAsFactors = F)

# Use gather() to reshape dataset - wide to long
long_table <- gather(demo_table3,key="Metric",value="Score",buying_price:popularity)

# Use spread to reshape dataset - long to wide
wide_table <- long_table %>% spread(key="Metric",value="Score")

# Check if newly created tables are the same as original
all.equal(demo_table3, wide_table)