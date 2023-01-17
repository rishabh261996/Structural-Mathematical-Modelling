# this notebook will work on creating a structural model to predict the 
# performance of an employee in the office environment.


# structural model tries to learn the relationship between measured &latent variables
# latent variable is the concept or idea that cannot be measured directly.

# it can be viewed as a mix of factor analysis and regression analysis

# for example , one cannot estimate human intelligence 
# however, it can be indirectly measured by the IQ score and education years.


# the below link for tutorial work

# https://towardsdatascience.com/structural-equation-modeling-dca298798f4d

# let us look to load the data

df = read.csv("StructuralEquationModelingData.csv")


# look at some rows 

head(df)

# view the table
View(df)
# str of each column
str(df)

# right type of each feature

columns  = list(names(df))



# summary of each
summary(df)

# based on the mean , mode and others it seems like all of the columns are normally distributed , let us check it using histogram as well


# histogram

hist(df$PsychTest1)
hist(df$PsychTest2)
hist(df$YrsEdu)
hist(df$IQ)
hist(df$ClientSat)
hist(df$ProjCompl)


# as it can be seen that features are of normal distribution


# looking for correlation 
cor(df)

# there appears some positive and strong correlation between the variables

attach(df) # for using each feature individually

# plotting them
plot(ClientSat, ProjCompl)
plot(HrsTrn,HrsWrk)
plot()

# creating list
columns = c(names(df))
print(columns)


# getting plot of each variable




for (i in 1:9){
  hist(df[,i],main = paste("distribution of the feature" ,columns[i]),xlab="",ylab ="")
}


# using the scatterplot 


for (i in 1:9) for (y in 9:1){
  if (i !=y){
    
  
  plot(df[,i],df[,y], main =paste("Scatterplot between",columns[i],"and " , columns[y]),xlab ="",ylab ="")
  }
}

# use of paste function

columns[3]
columns
# go through it once https://www.dataquest.io/blog/control-structures-in-r-using-loops-and-if-else-statements/


# https://bookdown.org/ndphillips/YaRrr/loops.html

# read the above too


#for (col in columns){
  
 # hist(df[col])
#}
# check for null values
#print(column
#sum(is.na(df))



# dataset


# no null values are present

attach(df)

# look at the scatterplots
plot()



# summary


# tomorrow work

# continue with this structural modelling, go the book, plan the project

# things to do


# hypothesis testing
# visual charts and others
# outliers see
# do the prediction 
# go through the theory

# india 's map work and show the resuls of densityr using r package 

#tendence linkedin post
