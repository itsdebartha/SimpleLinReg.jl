function Base.show(_io::IO, lreg::LinearRegression)
    regressshow(_io, lreg)
end

function regressshow(_io::IO, lreg::LinearRegression)
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