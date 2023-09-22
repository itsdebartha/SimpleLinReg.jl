using SimpleLinReg
using Test

# Example from Wikipedia (https://en.wikipedia.org/wiki/Linear_least_squares#Example)
x = [1, 2, 3, 4]
y = [6, 5, 7, 10]

linreg(x, y)
linreg(x, y; intercept = false)

include("LinReg.jl")
include("show.jl")
include("Aqua.jl")