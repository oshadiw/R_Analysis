# R_Analysis
Performed ETL on data then visualized and analyzed the data using R. 

This analysis was conducted to determine whether certain vehicle design specifications had an effect on the mpg of a car, and whether the weight capacity of multiple suspension coils were consistent across various lots of cars. 

  To answer the first question, a multiple linear regression was run on the mpg vs the design specifications to see which categories were significant. It was found that the vehicle length and ground clearance are statistically unlikely to provide random amounts of variance to the linear model and therefore have a significant impact on the mpg. The intercept of the regression was also significant, meaning that there are other variables that contribute to the variation of a vehicle's mpg. The slopes of the vehicle length vs mpg and ground clearance vs mpg were 6.276 and 3.546, respectively. This shows a positive correlation between the two categories and mpg. Although these two variables are significant and positively correlated with mpg, the linear model does not effectively predict the mpg of MechaCar prototypes because the high significance value of the Intercept is evidence of overfitting. This means that while the model predicts the current dataset well, it cannot be used to predict a future data set correctly. 

  To test whether the weight capacity of the suspension coils were consistent, first a summary statistics table was created to find the mean and median. The variance and standard deviations were also calculated using the var() and sd() functions. The values were then added to a table, as shown below:
       
       Mean    Median     Variance    Standard Deviation
PSI   1500.00  1500.00    76.234590     8.731242

The design specifications for MechaCar require the that the variance of the suspension coils does not exceed 100 pounds per inch. Based on these findings, the current manufacturing data meets this specification with a variance of 76.2. 
  Lastly, to determine if the suspension coil's PPI results are statiscally different from the mean population results, a one-sample t-test was conducted. The findings of this test were that the two means are statistically similar with a p-value of 1. 


  A further study could be conducted to determine whether the fuel efficiency of a MechaCar vehicle has a significant impact on the cost of the car. This would be of interest to a potential customer because many consumers are looking to lower their carbon emissions while also trying spend as little as possible. In order to answer the question of whether there is a statistical relationship between cost and fuel efficiency, a one-sample t-test could be conducted. In this instance, the null hypothesis would be there is no statistical difference in the sample mean and the population mean. The alternative hypothesis would be that there is a statistical difference between the two means. In order to carry out this study, the data needed would be the selling price of the MechaCars, as well as the fuel efficiency of the cars. 
