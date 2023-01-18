# Structural-Mathematical-Modelling

### Introduction:


![image](https://user-images.githubusercontent.com/82542269/213283498-bc684d19-9044-4c44-9457-8aa1082c5f52.png)


In this notebook analysis,  will work on creating a structural model to predict the performance of an employee in the office environment. structural model tries to learn the relationship between measured &latent variables. latent variable is the concept or idea that cannot be measured directly. It can be viewed as a mix of factor analysis and regression analysis. for example , one cannot estimate human intelligence.however, it can be indirectly measured by the IQ score and education years.


![image](https://user-images.githubusercontent.com/82542269/213283541-8568a94d-f0d2-4c08-a7d9-79658c7e4217.png)




The data is shown below along with its link:


![image](https://user-images.githubusercontent.com/82542269/213284152-b1e0df9c-42fc-4544-97b0-3cfdea973c9c.png)


https://articledatas3.s3.eu-central-1.amazonaws.com/StructuralEquationModelingData.csv



![image](https://user-images.githubusercontent.com/82542269/213280939-8200a4d3-9b57-4dbf-a967-db90fb9d07d6.png)



## Process

We started with the loading data into the notebook. Once the data is loaded, we started exploring it to get some insights about the data and its variables. In basic exploration, we checked for presence of normality, null values in the data. 



![image](https://user-images.githubusercontent.com/82542269/213281276-f7800bfd-685f-4e1f-b389-65aeab04d347.png)




Some of the exploration is shown as follow:




#### Distribution of some of the variables

![image](https://user-images.githubusercontent.com/82542269/213283252-db6fef4d-3156-432a-a720-ed7e099596dc.png)



![image](https://user-images.githubusercontent.com/82542269/213283278-81d83006-9511-4849-bac6-ce94aa33ef10.png)


![image](https://user-images.githubusercontent.com/82542269/213283304-264ebd03-dcee-415b-b6f1-a665b1a0c6ea.png)

Based on the mean , mode and others it seems like all of the columns are normally distributed. It can be seen that features are of normal distribution. 

####  Heatmap showing correlation

![image](https://user-images.githubusercontent.com/82542269/213282806-e47c9681-4d4e-453f-96c3-b93385de90e4.png)


####  Scatterplots showing the linear relationship

![image](https://user-images.githubusercontent.com/82542269/213282948-c8c24f2f-c6f4-4de6-a8fa-851d4b72f7a0.png)



![image](https://user-images.githubusercontent.com/82542269/213283003-158ece93-c4b5-4f4a-8a2d-cb4ad9167e7e.png)


![image](https://user-images.githubusercontent.com/82542269/213283135-a39f9e01-92cc-4f5d-a300-1ded5f5c1021.png)



The given scatterplots shows that there is a strong linear relationship between some of the features.


### Hypothesis testing


![image](https://user-images.githubusercontent.com/82542269/213281913-43fe8829-efc1-4078-87e7-137819cc358d.png)




In this change, we wanted to analyze the average mean of each variable over the Categorical variable ( is_high_low_education). By doing so, we want to know whether those with a high year of education tend to perform better in jobs, higher IQ levels, and other features compared to low year of education.





Based on the p-value requires, we see significance of IQ, HrsTrn, HrsWrk , Client Sat .It implies that Those with a high Education level tend to have a higher IQ, lower hours in training, lower average hours in work, a higher average client satisfaction rate. It reconfirms the usual belief that people with high education (like Phd holders) requires less work to train and work and a  having a more IQ score and client satisfaction rate






# 

## Insights:

![image](https://user-images.githubusercontent.com/82542269/213281520-56d2a4a7-5827-44e1-938a-eaec795737b9.png)



Overall impact:



The results of chisquare test, this test basically compares the observed value with the expected value

In the given case, it tells us whether the variation in the data is explained by the model
 that is structural model we have just built is good enough or not
 since the p-value is close to zero, it implies that the given model works really well to explain the relationship betweenl latent and measured variables.
 
 

2nd impact of each independent variable:
We should know that each variable has a significance in the model prediction. we should always avoid using variables that have insignificant impact.from the above summary details, all p-values are negligible implying that there is significant impact of eachvariable on to the job performance


 3nd Quantitative effect of variables:

all regressors (social, intel, motivation) have a positive impact on the job performance
however, out of all, motivation has the biggest influence( that is 2.758) a 1-unit change in motivation leads to a 2.78 units change in job performance.

There are two measured variables in latent motivation variable. out of them , Hours worked plays the best role in prediction.


  
