using SimpleLinReg
using Test

x = [1.5,2.3,6.3,5.6,8.1]
y = [3.2,5.6,9.6,8.7,10.1]

linreg(x,y;intrcept = true)
linreg(x,y;intrcept = false)

@testset "SimpleLinReg.jl" begin
    # Write your tests here.
    @test linreg([3,4],[5,6]) == LinearRegression(1,2)
    @test linreg(x,y,intrcept = true).slope ≈ 1.02 atol = 0.003
    @test linreg(x,y,intrcept = false).intrcpt == 0
end
