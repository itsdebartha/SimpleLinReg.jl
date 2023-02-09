using SimpleLinReg
using Test
using Distributions, Random, StableRNGs

rng = StableRNG(1)
ϵ = rand(rng,Normal(),1000)
x = rand(rng,Uniform(),1000)
y = 2 .+5x .+ϵ

linreg(x,y;intercept = true)
linreg(x,y;intercept = false)

@testset "SimpleLinReg.jl" begin
    # Write your tests here.
    @test linreg([3,4],[5,6]) == LinearRegression(1,2)
    @test linreg(x,y,intercept = true).slope ≈ 5 atol = 0.2
    @test linreg(x,y,intercept = false).intrcpt == 0
end
