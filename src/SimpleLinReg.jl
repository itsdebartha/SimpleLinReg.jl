module SimpleLinReg

using Statistics

# Write your package code here.

include("LinReg.jl")

function Base.show(_io::IO, lreg::LinearRegression)
    io = IOContext(_io, :compact=>get(_io, :compact, true))
    x = "SIMPLE LINEAR REGRESSION IN TWO VARIABLES:"
    println(io, x)
    println(io, repeat("=", length(x)))
    print(io, "Slope:       ")
    show(io, lreg.slope)
    println(io)
    print(io, "Intercept:   ")
    show(io, lreg.intrcpt)
    println(io)
end

export LinearRegression, linreg

end
