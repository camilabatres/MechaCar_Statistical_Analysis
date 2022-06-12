# MechaCar_Statistical_Analysis

## Linear Regresson to Predict MPG 
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
* Out of the 5 variables, the vehicle length and ground_clearance are the two variables that provide a non-random amount of variance due to the small p-value/high significant level. 


Is the slope of the linear model considered to be zero? Why or why not?
* The slope is not considered to be zero because some independent values had a significant relationship with mpg. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
* The R-square for this model is .7149, the model is not fully reliable but it is close to 1. This means that the value is generally considered a moderate effect size. 

IMAGE 
![image](https://user-images.githubusercontent.com/100107588/173235507-65ad6c64-8ebc-49a8-a271-0fb9280be814.png)


## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
* The results show that the variance is 62.29356. Even though the variance is below the limit of 100 pounds per square inch, the per lot table grouped data shows that the variance is 170 which is above 100. 

IMAGE 
![image](https://user-images.githubusercontent.com/100107588/173237298-c22742a2-f5ff-494a-ad0e-4773c0881e24.png)

## T-Tests on Suspension Coils
Results 

### t-test for all 
The image below demonstrates the one sample t-test for all the lots and we can see that the p-value is over the significance level of 0.05. Therefore, we cannot reject the null hypothesis. 
![image](https://user-images.githubusercontent.com/100107588/173238291-d62e3cb1-b38c-46bc-852f-1c23c2984081.png)

### t-test for each lot 
For lot 1 and lot 2 the p-value is over the significance level, therefore, we cannot reject the null hypothesis. 
For lot 3, it is different. The p-value is under the significanace level of 0.05, therefore the null hypothesis can be rejected and it is statistical different. 
![image](https://user-images.githubusercontent.com/100107588/173238236-17f418fe-e818-4aad-9911-768857985b30.png)

## Study Design: MechaCar vs Competition
What metric or metrics are you going to test?
* The metrics are vehicle weight and highway fuel efficiencies.

What is the null hypothesis or alternative hypothesis?
* Null Hypothesis is that all of the cars with the same weight have the same fuel efficienies.
* The Alternative Hypothesis is that they are not all the same.

What statistical test would you use to test the hypothesis? And why?
* I would use an ANOVA test and a ggplot2 library to show the potential spread between different cars using a boxplot.

What data is needed to run the statistical test?
* I would need fuel efficiency data from 100 individual cars to create a sample size of data for each car in the class type.
