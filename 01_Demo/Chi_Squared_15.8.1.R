# 15.8.1 Chi-Squared test
# Test whether there is a statistical difference in the distributions of vehicle class across 1999 and 2008 from the mpg dataset
table(mpg$class,mpg$year) #generate contingency table

# Pass the contingency table to the chisq.test() function
tbl <- table(mpg$class,mpg$year) #generate contingency table
chisq.test(tbl) #compare categorical distributions

