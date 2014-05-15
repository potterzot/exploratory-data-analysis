# Lesson 2: Beginning R

# set the directory
setwd('/home/potterzot/code/learning/exploratorydataanalysis')

#Messing with stateData.csv 
states <- read.csv('data/stateData.csv')

## Subset data
# you can subset data by the following:
ne_states <- subset(states, state.region==1)
# alternatively, access the subset with brackets. The columns are the second argument, left blank for all columns
ne_states <- states[states$state.region==1, ]

## Reddit data
reddit = read.csv('data/reddit.csv')

# Tabling data
table(reddit$employment.status)

# summary
summary(reddit)

# levels of a factor variable (a categorical variable)
levels(reddit$age.range)

# basic plotting
library(ggplot2)
qplot(data=reddit, x=age.range)

# note that the age.range variable is not ordered, but would be nice if it was so that "under 18" was listed first
reddit$age.ordered = ordered(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))

