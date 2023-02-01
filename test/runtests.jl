using SimpleLinReg
using Test

@testset "SimpleLinReg.jl" begin
    # Write your tests here.
    @test linreg([3,4],[5,6],true) == LinearRegression(1,2)
end
