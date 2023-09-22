# SimpleLinReg

*SimpleLinReg* is a Julia package that implements the simple linear regression with only one dependent and one independent variable. The possible use cases for this package might be to demonstrate the efficiency of simple linear regression in two variables during the undergrad studies. Being simple and intuitive, it can handle enough data, but in only two variables.

[![Build Status](https://github.com/itsdebartha/SimpleLinReg.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/itsdebartha/SimpleLinReg.jl/actions/workflows/CI.yml?query=branch%3Amaster)
[![codecov](https://codecov.io/gh/itsdebartha/SimpleLinReg.jl/branch/master/graph/badge.svg?token=D8XLF38YUT)](https://codecov.io/gh/itsdebartha/SimpleLinReg.jl)
[![Aqua QA](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/itsdebartha/SimpleLinReg.jl)


##  Installation:

```
using Pkg
Pkg.add(url = "https://github.com/itsdebartha/SimpleLinReg.jl.git")
```
##  Usage:
```
using Distributions, Random, StableRNGs

rng = StableRNG(1)
ϵ = rand(rng,Normal(),1000)
x = rand(rng,Uniform(),1000)
y = 2 .+5x .+ϵ

linreg(x,y)
linreg(x,y;intercept = false)
```
##  Output:
```
SIMPLE LINEAR REGRESSION IN TWO VARIABLES:
==========================================
Slope:       5.04638
Intercept:   1.98306
```
```
SIMPLE LINEAR REGRESSION IN TWO VARIABLES:
==========================================
Slope:       5.04638
Intercept:   0.0
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

----

#####   Upcoming:
-   Ability to handle missing values
-   Significance tests for estimated parameters  