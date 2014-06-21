---
title       : The slide for my shiny
subtitle    : 
author      : Chiffon
job         : Data Scientist
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : monokai     # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## outline of my shiny
- My shiny is a simulate of a norm distribution sampling.
$$ f(x)=\frac{1}{(2\pi)^{0.5}}e^{-\frac{(x-\mu)^2}{2\sigma^2}}$$
- You can input the mean $\mu$ and variance $\sigma^2$ for a norm distribution and set the number of sampling.After clicking submit , this shiny will creeate the sample as you wished and hist it.
- It can also caculate the mean and the variance of your sample  which will be shown at the xlab.

---
## Input
### There are three inputs in my shiny
1. $\mu$ the mean for the sampling
2. $\sigma^2$ the variance for the sampling
3. number of the sampling
- Some help document is also included in my app.

--- 
## Output
### The output is calculated as follows:
1. Sampling from the normal distribution.
 - (set$\mu=0,\sigma^2=1,num=100$)

```r
mu<-0;sig<-1
num<-100
x<-rnorm(num,mu,sig)
```


--- 
## Output
2. Hist the Samples,use`hist()`and put the mean and the variance of
the sample on the xlab.

```r
hist(x,breaks=3*sqrt(num),col=rainbow(factor(x)),
          xlab=paste("Sample mu = ", round(mean(x),2),
                     "Sample Var = ", round(sqrt(var(x)), 2)))
```

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2.png) 




