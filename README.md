# MechaCar_Statistical_Analysis
Module 15 – R

•	Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
•	Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
•	Run t-tests to determine if the manufacturing lots are statistically different from the mean population
•	Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.


## Linear Regression to Predict MPG

Deliverable 1:
design a linear model that predicts the mpg of MechaCar prototypes using several variables

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Vehicle length & ground clearance P-values were less than .05, so we do not reject the null hypothesis and interpret that both of those variables have a non-random impact on the mpg. 


Is the slope of the linear model considered to be zero? Why or why not?
The p-value of the model is very small, so we can reject the null-hypothesis or the assumption that the variables have no effect on the mpg. Therefore, the variables do have an effect and the slope is NOT zero.


Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The adjusted R-squared value is .6825, which infers that 68% of the resulting mpg can be explained by the variables.

## Summary Statistics on Suspension Coils

The variance of the PSI of the suspension coils must not have a variance greater than 100 pounds per square inch. From the total_summary the variance is shown to be 62.29 with a standard deviation of 7.89. Per the total_summary, the design specifications are met. However, when we look at the lot_summary it shows that the variance for Lot 3 is 170.28 with a standard deviation of 13.05. Lot 3 does not meet the design specifications as the variance is great than 100.

## T-Tests on Suspension Coils

We will use the t.test function on the subsets of Coils by Manufacturing Lot to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.


Overall, the PSI of the 150 samples in the Coil file has a mean of 1498.78 with a p-value of .06, so we reject the null hypothesis. We conclude that the overall PSI is not statistically different than 1500.

Lot 1’s mean PSI from its 50 samples, is exactly 1500 PSI. The p-value is 1 and so again we reject the null hypothesis and conclude that Lot 1 is not statistically different than 1500 PSI.

Lot 2’s mean PSI from its 50 samples, is 1500.2 PSI. The p-value is .61 and once again we reject the null hypothesis to conclude that Lot 2’s mean is also not statistically different than 1500 PSI.

Lot 3’s mean PSI From it’s 50 samples, is 1496.14 PSI. The p-value is .042, which is less than .05 and so we cannot reject the null hypothesis and we conclude that Lot 3 is statistically different.


## Study Design: MechaCar vs Competition

The metrics I would test against the competition are mpg and safety ratings to compare MechaCar to the competition. The null hypothesis would be that on each of these measurements, MechaCar and the competition are do not show a statistical difference. I would run a two-sample t-test on each of the measures to show that the MechaCar mpg & safety ratings are higher, using the p-value to show the significance of difference and the mean from the t-test to show overall difference. To run these tests the mpg and safety ratings from both MechaCar and a number (at least 20) of competitors would be required. 
