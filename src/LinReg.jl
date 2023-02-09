struct LinearRegression
    slope::Float64
    intrcpt::Float64
end

"""
    linreg(x::Vector,y::Vector;intercept::Bool = true)

Compute the Linear Regression parameters for regression of `y` on `x`.

If `intercept` is unspecified, defaults to `intercept` as `true`.
"""
function linreg(x::Vector,y::Vector;intercept::Bool = true)
    β = cov(x,y,corrected=false)/var(x,corrected=false)
    if intercept
        α = mean(y)-mean(x)*β
    else
        α = 0
    end
    lr = LinearRegression(β,α)
    return lr
end
