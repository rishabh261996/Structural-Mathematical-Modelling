# this notebook will work on creating a structural model to predict the 
# performance of an employee in the office environment.


# structural model tries to learn the relationship between measured &latent variables
# latent variable is the concept or idea that cannot be measured directly.

# it can be viewed as a mix of factor analysis and regression analysis

# for example , one cannot estimate human intelligence 
# however, it can be indirectly measured by the IQ score and education years.





# let us look to load the data

df = read.csv("StructuralEquationModelingData.csv")


# look at some rows 

head(df)

# view the table

View(df)

# str of each column
str(df)

# right type of each feature

columns  = c(names(df))



paste("There are ", dim(df)[1] , "number of sample points and " , dim(df)[2] , "features in the data.")

# check for null values

sum(is.na(df))

# no null values

# summary of each


summary(df)

# based on the mean , mode and others it seems like all of the columns are normally distributed

# let us check it using histogram as well

# drawing histogram for each variable using loop

 for (i in 1:9) {
   hist(df[,columns[i]], main = paste(" Distribution of ",columns[i] ), xlab ="",col= "red")
 }


# As it can be seen that features are of normal distribution except that of IQ level



#  correlation analysis


# looking at the correlation coefficients 

corr_  = cor(df)
print(corr_)

# there appears some positive and strong correlation between the variables


# let us use heat map to show the corrrelation as well

heatmap(corr_, Rowv = NA, Colv = NA)

# it shows some of the features have strong correlation coefficients

# using the scatterplot for it  


for (i in 1:9) for (y in 9:1){
  if (i !=y){
    
    
    plot(df[,columns[i]],df[,columns[y]], main =paste("Scatterplot between",columns[i],"and " , columns[y]),xlab ="",ylab ="")
  }}
  

# the given scatterplots shows that there is a strong linear relationship between some of the features

# look at the aggregate over IQ

help(aggregate)

columns_without_Yedu = columns[-3]



# show the trend of average of each variable on each year of education


for (i in 1:8) {
  plot(aggregate(df[,columns_without_Yedu[i] ] ~ YrsEdu , 
                   data = df,FUN = mean ,  ylab = "",
                 main =  paste("The column is ",columns_without_Yedu[i]) ) )
  
}


# In most of the scenarioes, the average of a variable rises with that of the yearsof education
# for instance, IQ level tends rise on average with the year of education.




# hypothesis testing using bar charts as well

summary(df$YrsEdu)

# using median of 3, we will create a categorical variable "Yrsedu" low or high 

# it is counted as low if its less than 3 else 


df[,'YrsEdu_low_more']  = ifelse(df$YrsEdu > 3,"high","low")


# we will see if there is a significant difference in mean values of different variables across categorical 
# variable YrsEdu_low_more



#  using loop way to create a multiple tttest across different variables
 
for (i in 1:8){
  print(paste("The significance of ",columns_without_Yedu[i]) )
  
  
  print(t.test(formula = df[,columns_without_Yedu[i]]~YrsEdu_low_more , data=df))
  
  
}



# based on the p-value requires, we see significance of IQ, HrsTrn, HrsWrk , Client Sat

# It implies that Those with a high Education level tend to have a higher IQ, lower hours in training, lower average hours in work, a higher average client satisfaction rate

# It reconfirms the usual belief that people with high education (like Phd holders) requires less work to train and work and a  having a more IQ score and client satisfaction rate




#  Using structural matemathical modelling

# we will be using lavaan package for the modelling

# installing it


install.packages("lavaan" , dependencies =TRUE)


#get it for use

library("lavaan")

# modelling setting up

# as we know it is a way to find the relationship between latent and measurable variables

# =~for latent relation
# ~ for regression


mymodel <- 
'
  # latent relation
  jobprf  =~ ClientSat  + SuperSat+ ProjCompl
  Social =~ PsychTest1  + PsychTest2
  Intel =~ YrsEdu +IQ
  
  Motivat =~ HrsTrn + HrsWrk

#   regression
  jobprf  ~Social + Intel + Motivat

  '

  
# using the sem model
model_fit  <- sem( model= mymodel,data =df)
                  #)

summary(model_fit)


# important insights:


#1 the results of chisquare test, this test basically compares the observed value with the expected value

# in the given case, it tells us whether the variation in the data is explained by the model
# that is structural model we have just built is good enough or not
# since the p-value is close to zero, it implies that 


# 2nd impact of each independent variable

# we should know that each variable has a significance in the model prediction. we should always avoid using variables that have insignificant impact


# from the above summary details, all p-values are negligible implying that there is significant impact of eachvariable on to the job performance


#  3nd Quanititive effect of variables


# all regressors (social, intel, motivation) have a positive impact on the job performance
# however, out of all, motivation has the biggest influence( that is 2.758) a 1-unit change in motivation leads to a 2.78 units change in job performance.

# There are two measured variables in latent motivation variable
# out of them , Hours worked plays the best role in prediction.


  
