using SimpleLinReg
using Test
using Distributions, Random, StableRNGs

rng = StableRNG(1)
ϵ = rand(rng,Normal(),1000)
x = rand(rng,Uniform(),1000)
y = 2 .+5x .+ϵ

linreg(x,y)
linreg(x,y;intercept = false)

include("LinReg.jl")
include("show.jl")