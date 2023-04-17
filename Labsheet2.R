library(readxl)
data = read_excel('/Users/KavishLeckraz 1/Documents/Mathematics With Computer Science/Year 3/CS3003 SE/Labs/lab2_proper.xlsx')

# EX 2
ant_MAXCC = subset(data, Project == 'ant', select = c(9))
ant_MAXCC = unlist(ant_MAXCC)
mean(ant_MAXCC)

# EX 3
Sorted_data = data[order(-data$AVGCC),] # Sorts data by descending values of AVGCC

# EX 4
Sorted_data = data[order(data$AVGCC),] # Ascending values of AVGCC

# EX 5
plot(data$AVGCC,data$MAXCC)

# EX 6 
plot(data$WMC,data$AVGCC)
cor(data$WMC,data$AVGCC)
