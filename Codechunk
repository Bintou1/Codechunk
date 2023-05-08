Code chunk: Summarize and group_by combined
================

## The function explained

The functions used is `summarize` and `group_by`. These 2 functions are
used to aggregate and summarize data based on one or more grouping
variables. The `group_by` function specifies the grouping variables to
summarize.

## Why this function

I work with large data sets and need to calculate summary statistics for
each group in the data on a regular basis. By using `summarise` with
`group_by`, I can quickly and easily calculate summary statistics for
each group without having to manually sort and filter the data or write
custom functions to perform the calculations.

This is also helpful when your goal is to graph your data as plots.

``` r
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

To see the function in action, lets use the `iris` data and summarize
the lengths of the Sepals (`Sepal.Length`) by Specie type.

Here’s what happens with basic `group_by` followed by `summarize`

    ## # A tibble: 3 × 7
    ##   Species     mean   med   min   max    Q1    Q3
    ##   <fct>      <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
    ## 1 setosa      5.01   5     4.3   5.8  4.8    5.2
    ## 2 versicolor  5.94   5.9   4.9   7    5.6    6.3
    ## 3 virginica   6.59   6.5   4.9   7.9  6.22   6.9
