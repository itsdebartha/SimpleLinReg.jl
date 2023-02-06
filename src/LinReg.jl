struct LinearRegression
    slope::Float64
    intrcpt::Float64
end

function linreg(x::Vector,y::Vector;intrcept::Bool = true)
    β = cov(x,y,corrected=false)/var(x,corrected=false)
    if intrcept
        α = mean(y)-mean(x)*β
    else
        α = 0
    end
    lr = LinearRegression(β,α)
    return lr
end
