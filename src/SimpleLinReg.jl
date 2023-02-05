module SimpleLinReg

using Statistics

# Write your package code here.

include("LinReg.jl")

function Base.show(_io::IO, lreg::LinearRegression)
    io = IOContext(_io, :compact=>get(_io, :compact, true))
    print(io, "Slope:       ")
    show(io, lreg.slope)
    print(io, "Intercept:   ")
    show(io, lreg.intrcpt)
end

export LinearRegression, linreg

end
