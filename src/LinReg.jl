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
function linreg(x::Vector,y::Vector;intercept::Bool = true)
    length(x) == length(y) || throw(DimensionMismatch("size of x and y does not match"))
    β = cov(x,y,corrected=false)/var(x,corrected=false)
    if intercept
        α = mean(y)-mean(x)*β
    else
        α = 0
    end
    lr = LinearRegression(β,α)
    return lr
end
