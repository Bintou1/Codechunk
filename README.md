# Codechunk

This is a code chunk I have writen for ..

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE, message= FALSE, warning = FALSE)
```

## Why this

I wrote this function to create ordred factor levels from `case_when` It allows you to vreate a foctor variable, e.g., within `mutate` that maintains the order of the levels created 

I clean a lot of survey and public opinion data in my research. I constantly 



## The function

```{r func, eval=TRUE}

# Packages
library(tidyverse)

# The Function used is ......

#The code chunk
summary(cars)


```


## Example output

To see the function in action, lets use the `mtcars` data and recode `cyl` into a labeled, ordered factor. 

Here's what happend with basic `case_when`

``` {r execute}
mtcars %>%
  mutate(
    cyl_fac = case_when(
      cyl == 4 ~ "Four cylinders",
      cyl == 6 ~ "Six cylinders",
      cyl == 8 ~ "Eight cylinders")) %>%
  count(cyl_fac)
```


Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
