@testset "Show" begin
    io = IOBuffer()
    intreg = """
SIMPLE LINEAR REGRESSION IN TWO VARIABLES:
==========================================
Slope:       5.04638
Intercept:   1.98306
"""

    show(io,linreg(x,y))
    reg1 = String(take!(io))
    @test reg1 == intreg

    sloreg = """
SIMPLE LINEAR REGRESSION IN TWO VARIABLES:
==========================================
Slope:       5.04638
Intercept:   0.0
"""

    show(io,linreg(x,y;intercept = false))
    reg2 = String(take!(io))
    @test reg2 == sloreg
end