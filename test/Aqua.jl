using Aqua

@testset "Aqua.jl" begin
    Aqua.test_all(
        SimpleLinReg;
        stale_deps=false        # TODO: fix stale dependencies
    )
end