struct LinearRegression
    slope::Float64
    intrcpt::Float64
end

function linreg(x::Vector,y::Vector,intrcept::Bool)
    if intrcept
        lr = LinearRegression(cov(x,y,corrected=false)/var(x,corrected=false), mean(y)-mean(x)*cov(x,y,corrected=false)/var(x,corrected=false))
    else
        lr = LinearRegression(cov(x,y,corrected=false)/var(x,corrected=false), 0)
    end
    return lr
end
