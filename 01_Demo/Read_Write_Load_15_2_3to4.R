# 15.2.3 Read in a CSV file as demo_table
demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)

# Import jsonlite library
library(jsonlite)

# Read in a JSON file as demo_table2
demo_table2 <- fromJSON(txt='demo.json')

# 15.2.4 Select the third row of the Year column in demo_table
demo_table[3, "Year"]
# Same result using indices demo_table[3,3]

# Use the $ operator to select columns as single vector
demo_table$"Vehicle_Class"

# Select a single value
demo_table$"Vehicle_Class"[2]

# Use bracket notation to filter a data frame
filter_table <- demo_table2[demo_table2$price > 10000,]

# Use the subset() function to create a more elaborate filtered subset - drivetrain and price
filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status)

# Use the sample() function to count number of rows in a data frame and sample 3 rows from this data
demo_table[sample(1:nrow(demo_table), 3),]

