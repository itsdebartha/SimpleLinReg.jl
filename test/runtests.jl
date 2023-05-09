using SimpleLinReg
using Test

x = [1, 2, 3, 4]
y = [6, 5, 7, 10]

linreg(x, y)
linreg(x, y; intercept = false)

include("LinReg.jl")
include("show.jl")