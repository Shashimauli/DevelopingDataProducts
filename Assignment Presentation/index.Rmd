---
title       : Two-tailed test of proportions
subtitle    : Explaining test of proportions
author      : Shashi Mauli Tripathi
job         : Coursera student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction to Test of Proportions

The z-score test for two population proportions is used when you want to know whether two populations or groups (e.g., males and females; theists and atheists) differ significantly on some single (categorical) characteristic - for example, whether they are vegetarians.

Requirements

+ A random sample of each of the population groups to be compared.
+ Categorial data  

Null Hypothesis

H0: p1 - p2 = 0, where p1 is the proportion from the first population and p2 the proportion from the second.

As above, the null hypothesis tends to be that there is no difference between the two population proportions; or, more formally, that the difference is zero (so, for example, that there is no difference between the proportion of males who are vegetarian and the proportion of females who are vegetarian). 



--- .class #id 



## Requirements of the application

In the application the user is to enter the following:  

1. Sample proportion from population 1 (as per the example it is the proportion of vegetarian males)  

2. Sample size of population 1 (as per the example it is the number of  males)  

3. Sample proportion from population 2 (as per the example it is the proportion of vegetarian females)  

4. Sample size of population 2 (as per the example it is the number of  females)  

5. Level of significane: This is the level at which we wish to compare the proportions of the two populations. Often, researchers choose significance levels equal to 0.01, 0.05, or 0.10; but any value between 0 and 1 can be used.  

All these values are being taken by the ui.r file and this file also gives the layout of the web page (user interface)

--- .class #id   

## Formula for Test Statistic & p-Value
  
  
We first compute the pooled proportion and then compute the pooled standard error. The formula for the same is given below:  
  
pooled_proportion(p) = [(p1*n1) + (p2*n2)]/(n1+n2)  
  
pooled standard error(SE) = sqrt[p * (1-p) * ((1/n1) + (1/n2))]  
  
testStatistic = (p1-p2)/SE  

Once we got the test statistic we calculate the p-value at this level. p-value is the probability that the z-score is less than -(testStatistic) or greater than (testStatistic).  

We use the Normal Distribution Calculator to find  
- P(z < -testStatistic) = a1 (say), and P(z > testStatistic) = a2 (say).  
- Thus, the p-value = a1 + a2 = a (say). 

All these computations are being done by the server.r file. This file controls what the application is going to perform.

--- .class #id 


## Conclusion


If "a" is less than the specified level of significance than we reject the null hypothesis else we may accept the null hypothesis.  


## Files for shiny application  

The files for the shiny application are uploaded to the github repository at the following url: https://github.com/Shashimauli/DevelopingDataProducts  

The location contains the following files:  
1. README.md  
2. ui.R  
3. server.R  
4. Assignment presentation: This is a folder that contains the index.Rmd and other files  




