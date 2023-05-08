height = [1.47, 1.50, 1.52, 1.55, 1.57, 1.60, 1.63, 1.65, 1.68, 1.70, 1.73, 1.75, 1.78, 1.80, 1.83]
weight = [52.21, 53.12, 54.48, 55.84, 57.20, 58.57, 59.93, 61.29, 63.11, 64.47, 66.28, 68.10, 69.92, 72.19, 74.46]

model1 = linreg(height, weight)
model2 = linreg(height, weight; intercept = false)

@testset "LinReg.jl" begin
    # Write your tests here.
    @test linreg([3,4],[5,6]) == LinearRegression(1,2)
    @test model1.slope ≈ 61.27218654211064
    @test model1.intrcpt ≈ -39.06195591884395
    @test model2.slope ≈ 61.27218654211064
    @test model2.intrcpt == 0
    @test_throws DimensionMismatch linreg([8,15],[2,4,10])
end