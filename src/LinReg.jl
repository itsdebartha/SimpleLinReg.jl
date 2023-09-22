"""
LinearRegression Structure containing the slope and intercept, both of type `Float64`
"""

struct LinearRegression
    slope::Float64
    intrcpt::Float64
end

"""
    linreg(x::Vector,y::Vector;intercept::Bool = true)

Compute the Linear Regression parameters for regression of `y` on `x`.

If `intercept` is unspecified, defaults to `intercept` as `true`.

Mismatching length of vectors `x` and `y` returns `DimensionMismatch`.

This function cannot handle missing values, yet.
"""
function linreg(x::Vector, y::Vector; intercept::Bool = true)
    length(x) == length(y) || throw(DimensionMismatch("size of x and y does not match"))
    Sx = 0
    Sy = 0
    for i in eachindex(x, y)
        Sx += x[i]
        Sy += y[i]
    end
    x̄ = Sx / length(x)
    ȳ = Sy / length(y)
    Sxy = 0
    Sxx = 0
    for i in eachindex(x, y)
        Sxy += (x[i] - x̄) * (y[i] - ȳ)
        Sxx += (x[i] - x̄)^2
    end
    β = Sxy / Sxx
    if intercept
        α = ȳ - x̄ * β
    else
        α = 0
    end
    lr = LinearRegression(β,α)
    return lr
end
