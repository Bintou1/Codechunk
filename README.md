## The function explained

The functions used is `summarize` and `group_by`. These 2 functions are used to aggregate and summarize data based on one or more grouping variables. The `group_by` function  specifies the grouping variables to summarize. 


## Why this function

I work with large data sets and need to calculate summary statistics for each group in the data on a regular basis. By using `summarise` with `group_by`, I can quickly and easily calculate summary statistics for each group without having to manually sort and filter the data or write custom functions to perform the calculations.

This is also helpful when your goal is to graph your data as plots. 


## The code chunk and packages 

```{r func, echo = T, results = FALSE}

# Packages
library(tidyverse)

iris %>% 
  group_by(Species) %>%
  summarize(
    mean = mean(Sepal.Length,na.rm=T),
    med = median(Sepal.Length,na.rm=T),
    min = min(Sepal.Length,na.rm=T),
    max = max(Sepal.Length,na.rm=T),
    Q1=quantile(Sepal.Length,probs = 0.25, na.rm=T),
    Q3=quantile(Sepal.Length, probs = 0.75, na.rm=T)
    )

```
