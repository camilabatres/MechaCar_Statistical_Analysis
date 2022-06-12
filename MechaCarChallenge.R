# Delivery 1 

# Use the library() function to load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_table <- read.csv(file='C:/Users/camil/Desktop/Class/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_table)

#Perform linear regression using the lm() function
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table)) 

# Delivery 2 

# import and read file 
suspension_coils <- read.csv('C:/Users/camil/Desktop/Class/MechaCar_Statistical_Analysis/Suspension_Coil.csv',check.names=F, stringsAsFactors = F)

# create a total_summary dataframe using the summarize()
total_summary <- suspension_coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

#create a lot_summary dataframe using the group_by() and the summarize() 
lot_summary <- suspension_coils %>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD = sd(PSI), .groups = 'keep')
lot_summary

# Deliverable 3

# use the t.test() function to determine if the PSI across all manufacturing lots
t.test(suspension_coils$PSI,mu=1500)

#t test for lot 1 
t.test(subset(suspension_coils, Manufacturing_Lot=='Lot1')$PSI,mu=1500)

#t test for lot 2
t.test(subset(suspension_coils, Manufacturing_Lot=='Lot2')$PSI,mu=1500)

#t test for lot 3
t.test(subset(suspension_coils, Manufacturing_Lot=='Lot3')$PSI,mu=1500)
