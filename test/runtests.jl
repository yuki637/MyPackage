import MyPackage: myiseven ,bisect
using Test

@testset "myiseven" begin
    @test myiseven(2)
    @test !myiseven(3)
    @test myiseven(1) == false
    @test myiseven(2) == true
    for i in 1:10 
        @test myiseven(i) == (i % 2 == 0)
    end
end

@testset "myiseven2" begin
    @test myiseven(2)
    @test !myiseven(3)
end

tol = 1e-12

@testset "bisect" begin
    f(x)= x^3-1
    @test isapprox(bisect(f, 0.0, 3.0, tol ), sqrt(1), atol=tol) 
end