---
title: "Code chunk: Summarize and group_by combined"
output: github_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE, message= FALSE, warning = FALSE)
```

## The function explained

The functions used is `summarize` and `group_by`. These 2 functions are used to aggregate and summarize data based on one or more grouping variables. The `group_by` function  specifies the grouping variables to summarize. 


## Why this function

I work with large data sets and need to calculate summary statistics for each group in the data on a regular basis. By using `summarise` with `group_by`, I can quickly and easily calculate summary statistics for each group without having to manually sort and filter the data or write custom functions to perform the calculations.

This is also helpful when your goal is to graph your data as plots. 



```{r func, echo = T, results = FALSE}

# Packages
library(tidyverse)

#The code chunk

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


## Example output

To see the function in action, lets use the `iris` data and summarize the lengths of the Sepals (`Sepal.Length`) by Specie type. 

Here's what happens with basic `group_by` followed by `summarize`

``` {r execute, echo = FALSE}
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
