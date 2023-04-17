# Presenting, understanding and analysing data
# Summerising data
library(readxl)
data = read_xlsx('/Users/KavishLeckraz 1/Documents/Mathematics With Computer Science/Year 3/CS3003 SE/Labs/Labsheet1_data.xlsx')
plot(data$Version,data$`No of bugs`) 
# Boxplot
# EX 2
boxplot(data$`No of bugs`,
        main = "Distribution of the No of bugs",
        ylab = "No of Bugs", ylim = c(0,14))
boxplot(data$`Size of the class (LOC)`,
        main = "Distribution of the Size of the class (LOC)",
        ylab = "LOC")
# EX 3
v1 = subset(data, Version == 1, select = c(2))
v1 = unlist(v1) # converts data frame into a list of values to carry out the next line
median(v1)
mean(v1)

v2 = subset(data, Version == 2, select = c(2))
v2 = unlist(v2) 
median(v2)
mean(v2)

v3 = subset(data, Version == 3, select = c(2))
v3 = unlist(v3) 
median(v3)
mean(v3)

v4 = subset(data, Version == 4, select = c(2))
v4 = unlist(v4) 
median(v4)
mean(v4)

v5 = subset(data, Version == 5, select = c(2))
v5 = unlist(v5) 
median(v5)
mean(v5)

# Correlation
# EX 4
plot(data$`Size of the class (LOC)`,data$`No of bugs`)
cor(data$`No of bugs`,data$`Size of the class (LOC)`) # correlation function
cor(data$`No of bugs`,data$Version)
cor(data$`Size of the class (LOC)`,data$Version)
# For argument’s sake, let’s say that a correlation value 0.0 to 0.24 is weak, 
# 0.25-0.49 medium, 0.50-.0.74 strong and 0.75-1.00 very strong. 
# The same grading applies for negative values (0.0 to -0.24 is weak, etc).


