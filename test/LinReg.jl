@testset "LinReg.jl" begin
    # Write your tests here.
    @test linreg([3,4],[5,6]) == LinearRegression(1,2)
    @test linreg(x,y,intercept = true).slope ≈ 5 atol = 0.2
    @test linreg(x,y,intercept = false).intrcpt == 0
    @test_throws DimensionMismatch linreg([8,15],[2,4,10])
end