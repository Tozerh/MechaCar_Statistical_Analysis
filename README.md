# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Vehicle length and ground clearance both provide a non-random amount of variance to mpg values. The p-value for vehicle length is 2.60e-12 and for ground clearance the p-value is 5.21e-08. These numbers are so close to zero that they indicate a strong correlation between MPG and these two variables. 

Is the slope of the linear model considered to be zero? Why or why not?

The slope of this linear model should be considered to not be zero based on the p-value of 5.35e-11. This p-value is significantly lower than our significance level of .05%, and indicates very strongly that the value of the slope is not zero.  

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

This linear model is reasonably effective at predicting MPG for MechaCar prototypes, with a multiple R-squared of .7149 and an adjusted R-squared of .6825. We want our R-squared value to be as close as possible to 1, and would have a more effective model if these values were .85 or greater. 

## Summary Statistics on Suspension Coils

For all manufacturing lots in total (i.e., the mean of the variance of all suspension coils' PSI), current manufacturing data does meet the design specification of coils' variance not exceeding 100 pounds per square inch:

![TotalSummary](https://github.com/Tozerh/MechaCar_Statistical_Analysis/blob/main/Deliv2%20-%20Total%20Summary%20PSI.PNG)

That said, there is a clear issue with Lot 3 that will need be investigated. The table here shows that the coils from Lot 3 have a variance value well above 100 PSI:

![LotSummary](https://github.com/Tozerh/MechaCar_Statistical_Analysis/blob/main/Deliv2%20-%20Lot%20Summary%20PSI.PNG)

Given how little variance we see in Lot 1 and Lot 2, the variance in Lot 3 seems anomalous and the manufacturing techniques and machinery used for Lot 3 should be investigated as soon as possible. 

## T-Tests on Suspension Coils
Our t-tests compare means of a sample of population to determine whether or not means are statistically similar or not. 
Our null hypothesis for this suspension coils t-test is that the true difference in means between our sample and our population is equal to zero while our alternative hypothesis is that the true difference in means between our sample and our population is not equal to zero. 

As we cal see above from suspension coil summary findings, the variance in Lot3 should translate into an overall rejection of the null hypothesis, and we should find in our t-tests that the means of Lot3 versus our population are no statistically similar. This rejection of the null hypothesis for Lot3 should also have an effect on the sample of the overall population (i.e., all three lots) to the total population. 

The t-test results for a sample from all lots combined are as follows:

[!AlltTest](https://github.com/Tozerh/MechaCar_Statistical_Analysis/blob/main/Lot1AllTtest.PNG)

The p-value resulting from this test indicates that we cannot accept the null hypothesis, and should instead assume that the true difference in mean is not equal to zero. This result would support that the variance from Lot3 is such that it is having a statistically significant impact on our difference in means test. 

Lot1 and Lot2 had small p-value results in our in individual t-tests, very close to our .05 threshhold, indicating that the difference in the mean of these lots is effecitvely zero and is not a result of random chance:

Lot1 T-Test Results: 

[!Lot1Test](https://github.com/Tozerh/MechaCar_Statistical_Analysis/blob/main/Lot1Ttest.PNG)

Lot2 T-Test Results:

[!Lot2Test](https://github.com/Tozerh/MechaCar_Statistical_Analysis/blob/main/Lot2Ttest.PNG)

Given that Lot1 and Lot2 were not causing the variance seen in the difference between a sample of all lots and our population, we would expect a much higher p-value for Lot3 to explain the overall variance in means, and indeed that is what we see with our t-test result for Lot3: 

[!Lot3Test](https://github.com/Tozerh/MechaCar_Statistical_Analysis/blob/main/Lot3Ttest.PNG)f

The p-value for our Lot3 t-test is .1818, meaning that we should reject the null hypothesis and that there is statistically significant reason that the difference in means bewteen our Lot3 sample and our overall population is not zero. In our case, the variance in PSI for Lot3 is causing this significant divergence in mean. 



