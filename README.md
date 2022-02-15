# MechaCar Statistical Analysis

## Overview of the project
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs' newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team's progress. AutosRUs' upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

## Resources
- Data: Suspension_Coil.csv, MechaCar_mpg.csv
- Software: R, R studio

## Linear Regression to Predict MPG
1. **Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?** <br>
Vehicle_length and ground_clearance are the variables provided a non-random amount of variance to the mpg. <br>This is because the Pr(>|t|) value is less than 0.05, these values have a statistically significant relationship with the response variable in the model.
<img width="483" alt="R_1" src="https://user-images.githubusercontent.com/85041697/153485414-2183d097-212a-405b-a39a-10a7905d6722.png">


2. **Is the slope of the linear model considered to be zero?**<br>
The slope of the linear model is not zero because the p-value is much smaller than the assumed significant level of 0.05%. 

3. **Does this linear model predict mpg of MechaCar prototypes effectively?**<br>
Yes it does. Multiple R-squared is 0.71. It means that about 71% of data fit the regression model. Threfore, I thikn the model predicts mpg effectively.
<img width="476" alt="R_2" src="https://user-images.githubusercontent.com/85041697/153485557-a097162a-553d-4647-a370-73e95a0e5f31.png">

## Summary Statistics on Suspension Coils
The design specification requirement for all the manufacturing lots and each lot individually (The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.)
- In total_summary, the variance of the suspension coils is 62 per square inch. So it meets the design specification in total. <br>However, the variance looks different when we look at the value by each lot. As we can see in the lot_summary table, the variance of the suspension coils for Lot3 is 170. Thus, the variance of the suspension coils for Lot3 does not meet the design specification requirement. 

**total_summary table**<br>
<img width="255" alt="total_summary" src="https://user-images.githubusercontent.com/85041697/153485833-791bf990-0c68-410c-aadf-ea2428b964b3.png"> 

**lot_summary table**<br>
<img width="365" alt="lot_summary" src="https://user-images.githubusercontent.com/85041697/153485844-b2384bb5-5763-4e48-9bc7-3223710fab44.png">


## T-Tests on Suspension Coils

1. The PSI across all manufacturing lots is NOT statistically different from the population mean of 1500. This is because the p-value is 0.06 and this is above the assumed significance level(0.05). 
<img width="365" alt="t test_all" src="https://user-images.githubusercontent.com/85041697/153486143-4f779f83-3a8a-4d2d-afc1-8299c68a8cb7.png">

2. The PSI for Lot 1 is NOT statistically different from the population mean of 1500. The p-value is 1 so there is no difference. 
<img width="479" alt="t test_lot1" src="https://user-images.githubusercontent.com/85041697/153486136-7b2656b3-6722-4eeb-a56d-58710d1b3227.png">

3. The PSI for Lot 2 is NOT statistically different from the population mean of 1500. The p-value is 0.60 and this is above the assumed significance level(0.05).
<img width="484" alt="t test_lot2" src="https://user-images.githubusercontent.com/85041697/153486139-c43f5b9f-4d12-423e-8291-9416cbe3626d.png">

4. The PSI for Lot 3 is statistically different from the population mean of 1500. The p-value is 0.04 and this is below the assumed significance level(0.05).
<img width="481" alt="t test_lot3" src="https://user-images.githubusercontent.com/85041697/153486141-8b38cc8e-d1a5-4ac0-8801-f1fdc5e001b3.png">


## Study Design: MechaCar vs Competition
Design a statistical study to compare vehicle performance of the MechaCar vehicles against a competitor's car.

- Metrics
    - Horse Power
    - mpg

- What is the null hypothesis or alternative hypothesis?
1. Null hypothesis:There is no meaningful difference between Horse power and mpg.
2. Alternative hypothesis: There is meaningful difference between Horse power and mpg.

- What statistical test would you use to test the hypothesis? And why?
Using two-sample t-test because we are comparing two samples.

- What data is needed to run the statistical test?
Horse power and mpg data from MechaCar and the competitor.

