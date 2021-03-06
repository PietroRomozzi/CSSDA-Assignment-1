##############################################
#Hertie School of Governance - Fall 2014
#Collaborative Social Science Data Analysis
##############################################

##############################################
#Assignment 1 - 25 September 2014
#Rose Camille Vincent, Federico Colombo-Ercole
#Database 2
##############################################

# Dataset "C02" uploaded
data(CO2)

# We took a look at the data description for the dataset CO2
?CO2

# Variables' names and values
names(CO2)
head(CO2)

# Explaration of variables
summary(CO2$Plant)
summary(CO2$Treatment)
summary(CO2$conc)
summary(CO2$uptake)

# We focused on variable "uptake"
hist(CO2$uptake)
hist(CO2$uptake,
     main = 'carbon dioxide uptake rates',
     xlab = 'carbon dioxide uptake rates (umol/m 2sec)'
     
# We looked at the joint distribution between variables conc and uptake

plot(CO2$conc, CO2$uptake,
     main = 'Joint distribution variables',
     xlab = 'Carbon dioxide concentration',
     ylab = 'CO2 uptakes')

# We created a new variable called conc_uptake, which is simply the ratio between variable conc and variable uptake
CO2$conc_uptake <- CO2$conc/CO2$uptake
summary(CO2$conc_uptake)
median(CO2$conc_uptake)

