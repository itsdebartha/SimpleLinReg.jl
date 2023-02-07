using SimpleLinReg
using Test
using Distributions, Random

ϵ = rand(Normal(),1000)
x = rand(Uniform(),1000)
y = 2 .+5x .+ϵ

linreg(x,y;intrcept = true)
linreg(x,y;intrcept = false)

@testset "SimpleLinReg.jl" begin
    # Write your tests here.
    @test linreg([3,4],[5,6]) == LinearRegression(1,2)
    @test linreg(x,y,intrcept = true).slope ≈ 5 atol = 0.2
    @test linreg(x,y,intrcept = false).intrcpt == 0
end
