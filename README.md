# SimpleLinReg

*SimpleLinReg* is a Julia package that implements the simple linear regression with only one dependent and one independent variable.

[![Build Status](https://github.com/itsdebartha/SimpleLinReg.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/itsdebartha/SimpleLinReg.jl/actions/workflows/CI.yml?query=branch%3Amaster)


Usage:
```
using Pkg
Pkg.add(url = "https://github.com/itsdebartha/SimpleLinReg.jl.git")
```

This package implements the simple linear regression using the solutions by solving the normal equations. The assumed model is:
```math
y = \alpha + \beta * x
```
The estimates of the slope and the intercepts are:
```math
\hat{\beta} = \frac{Cov(x,y)}{Var(x)}
\hat{\alpha} = \bar{y} - \hat{\beta} * \bar{x}
```