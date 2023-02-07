# SimpleLinReg

*SimpleLinReg* is a Julia package that implements the simple linear regression with only one dependent and one independent variable.

[![Build Status](https://github.com/itsdebartha/SimpleLinReg.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/itsdebartha/SimpleLinReg.jl/actions/workflows/CI.yml?query=branch%3Amaster)


##  Installation:

```
using Pkg
Pkg.add(url = "https://github.com/itsdebartha/SimpleLinReg.jl.git")
```
##  Usage:
```
using SimpleLinReg
using Distributions, Random

epsilon = rand(Normal(),1000)
x = rand(Uniform(),1000)
y = 2 .+5x .+epsilon

linreg(x,y)
```
##  Output:
```
SIMPLE LINEAR REGRESSION IN TWO VARIABLES:
==========================================
Slope:       4.99556
Intercept:   2.00256
```
##  Tests:
```
@test linreg(x,y,intrcept = true).slope ≈ 5 atol = 0.2
Test passed

@test linreg(x,y,intrcept = false).intrcpt == 0
Test passed
```

----

This package implements the simple linear regression using the solutions by solving the normal equations. The assumed model is:
```math
y_i = \alpha + \beta x_i + \epsilon_i
```
where the variable $i$ takes the values from $1$ to $n$ (number of observations) The normal equations are then obtained by minimising the squared errors (or $\epsilon_i^2$).

The estimates of the slope and the intercepts, thus obtained, are:
```math
\begin{align}
\hat{\beta} = \frac{Cov(x,y)}{Var(x)} \\
\hat{\alpha} = \bar{y} - \hat{\beta}\bar{x}
\end{align}
```