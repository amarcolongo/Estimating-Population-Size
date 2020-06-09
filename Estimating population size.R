library(tidyverse)
library(ggplot2)
library(ggthemes)
library(dplyr)
install.packages("rmarkdown")
library(rmarkdown)
library(devtools)
install_github("yihui/tinytex")
library(tinytex)
install.packages("XLConnect")
library(XLConnect)
install.packages("readxl")
library(readxl)
df <- read_excel("C:/Users/yankeeh8er/Desktop/Rproject-Marcolongo/nst-est2019-alldata.xlsx")
df
df2 <- df[16,]
df2
df2[,5]
df3 <- df2[,5:151]
df3
df4 <- df3[,1:13]
my_data <- df4[-(1:3)]
my_data
summary(my_data)
pop <- c(9711881, 9802431, 9901430,9972479,10067278,10178447,10301890,10410330,10511131,10617423)
pop
years <- c(2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019)
plot(years, pop,xlab="Year",ylab="Population", main = "Population Versus Year for Georgia", type = "b")
mod=lm(pop~years, data=my_data)
f3<-data.frame(years=c(2020,2021,2022,2023,2024,2025))
prediction<-predict(mod,f3)
prediction
f3
summary(mod)
predicted_pop <-c(pop,prediction)
predicted_pop
pred_years<-c(2020,2021,2022,2023,2024,2025)
all_years<-c(years,pred_years)
plot(all_years, predicted_pop,xlab="Year",ylab="Population", main = "Predicted Population Versus Year for Georgia", type = "b")
