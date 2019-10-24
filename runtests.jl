using Test

include("prime_factors.jl")

# Tests adapted from `problem-specifications//canonical-data.json` @ v1.1.0

primes = Int[]

@testset "No factors" begin
    @test factors!(1, primes) == []
end

@testset "Prime number" begin
    @test factors!(2, primes) == [[2, 1]]
end

@testset "Square of a prime" begin
    @test factors!(9, primes) == [[3, 2]]
end

@testset "Cube of a prime" begin
    @test factors!(8, primes) == [[2, 3]]
end

@testset "Plato's number" begin
    @test factors!(5040, primes) == [[2, 4], [3, 2], [5, 1], [7, 1]]
end

@testset "Large power of 2" begin
    @test factors!(2^50, primes) == [[2, 50]]
end

@testset "Factors include a large prime" begin
    @test factors!(93_819_012_551, primes) == [[11, 1], [9539, 1], [894_119, 1]]
end

@testset "Test Sieve of Eratosthenes" begin
    @test sieve(100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43,
                         47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
end

@testset "Negative number" begin
    @test_throws DomainError factors!(-42, primes)
end
