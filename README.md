# Structural-Mathematical-Modelling

### Introduction:





In this notebook analysis,  will work on creating a **structural model** to predict the performance of an employee in the office environment. structural model tries to learn the relationship between measured &latent variables. latent variable is the concept or idea that cannot be measured directly. It can be viewed as a mix of factor analysis and regression analysis. for example , one cannot estimate human intelligence.however, it can be indirectly measured by the IQ score and education years.


![image](https://user-images.githubusercontent.com/82542269/213283541-8568a94d-f0d2-4c08-a7d9-79658c7e4217.png)




The first few rows of data are  shown below along with its link:


![image](https://user-images.githubusercontent.com/82542269/213284152-b1e0df9c-42fc-4544-97b0-3cfdea973c9c.png)


https://articledatas3.s3.eu-central-1.amazonaws.com/StructuralEquationModelingData.csv






## Process

We started with the loading data into the notebook. Once the data is loaded, we started exploring it to get some insights about the data and its variables. In basic exploration, we checked for presence of normality, null values in the data. 



![image](https://user-images.githubusercontent.com/82542269/213281276-f7800bfd-685f-4e1f-b389-65aeab04d347.png)




Some of the exploration is shown as follow:




#### Distribution of some of the variables


![image](https://user-images.githubusercontent.com/82542269/213285660-17a28f8e-74df-459b-a8cc-81cfc7c56b12.png)


![image](https://user-images.githubusercontent.com/82542269/213284925-d6af7337-53a7-4ba6-a10f-5907a683dd5d.png)
![image](https://user-images.githubusercontent.com/82542269/213284989-d536822a-05f6-45c3-8943-13b107e86852.png)




Based on the mean , mode and others it seems like all of the columns are normally distributed. It can be seen that features are of normal distribution. 

####  Heatmap showing correlation

![image](https://user-images.githubusercontent.com/82542269/213282806-e47c9681-4d4e-453f-96c3-b93385de90e4.png)


####  Scatterplots showing the linear relationship

![image](https://user-images.githubusercontent.com/82542269/213282948-c8c24f2f-c6f4-4de6-a8fa-851d4b72f7a0.png)



![image](https://user-images.githubusercontent.com/82542269/213283003-158ece93-c4b5-4f4a-8a2d-cb4ad9167e7e.png)


![image](https://user-images.githubusercontent.com/82542269/213283135-a39f9e01-92cc-4f5d-a300-1ded5f5c1021.png)



The given scatterplots shows that there is a strong linear relationship between some of the features.


### Hypothesis testing


![image](https://user-images.githubusercontent.com/82542269/213285142-236959b4-06e2-42e6-ac12-383a6027bfa8.png)




In this change, we wanted to analyze the average mean of each variable over the Categorical variable ( is_high_low_education). By doing so, we want to know whether those with a high year of education tend to perform better in jobs, higher IQ levels, and other features compared to low year of education.



### Model Results:


The below table illustrates the information derived from using sem model (structural modelling) using lavaan package of r

<img width="495" alt="structural_results" src="https://user-images.githubusercontent.com/82542269/214037904-5638833d-e588-45cf-9868-aae9514efb13.PNG">




Based on the p-value requires, we see **significance of IQ, HrsTrn, HrsWrk , Client Sat** .It implies that Those with a high Education level tend to have a higher IQ, lower hours in training, lower average hours in work, a higher average client satisfaction rate. It reconfirms the usual belief that people with high education (like Phd holders) requires less work to train and work and a  having a more IQ score and client satisfaction rate







## Insights:

![image](https://user-images.githubusercontent.com/82542269/213285211-d8de93a9-8c78-46d2-b7d5-e2e971838291.png)




Overall impact:



The results of chisquare test, this test basically compares the observed value with the expected value

In the given case, it tells us whether the variation in the data is explained by the model
 that is structural model we have just built is good enough or not
 since the p-value is close to zero, it implies that the **given model** works really well to **explain the relationship betweenl latent and measured variables.**

 

2nd impact of each independent variable:


We should know that each variable has a significance in the model prediction. we should always avoid using variables that have insignificant impact.from the above summary details, all p-values are negligible implying that there is significant impact of eachvariable on to the job performance


 3nd Quantitative effect of variables:

all **regressors (social, intel, motivation)** have a **positive** impact on the **job performance**
however, out of all, **motivation** has the **biggest influence**( that is 2.758) a 1-unit change in motivation leads to a 2.78 units change in job performance.

There are two measured variables , number of hours trained and number of hours worked,  in calculation of the latent motivation variable. out of them , Hours worked plays the best role in prediction.




## Business Benefits:


**Businesses** should work on findings ways to improve the social and motivators factors in the workplace to influence the job satisfaction of the employees. 

Motivation Factor:

When employees are more satisfied with the jobs they are doing, they tend to work harder and smarter thereby improving the performance in the job. Put it simply, when employees are given more training, then each hour worked will be more producitive and effective leading to an improvement in overall performance. So, the businesses and firms should always **optimize the training and working hours** in a way that maximizes the productivity of the workers.



Intellectual skills:

 Businesses should focus on hiring people with a **higher IQ level** and a greater number of hours of high education. That is, **employees with a higher intelligence level** are more likely to give a better job performance than others.




Social Skills:


The employees with a **higher level of social skills** can become a handy assets group for the firms. This may be due to the fact that those who are more **sociable** can have a **positive impact** on the work environment leading to a rise in job performance level.




