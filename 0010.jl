function is_prime(n)
    if n < 2
        return false
    end

    for i in 2:isqrt(n)
        if n % i == 0
            return false
        end
    end

    return true
end

function sum_of_primes_below(limit)
    sum_primes = 0
    for i in 2:limit
        if is_prime(i)
            sum_primes += i
        end
    end
    return sum_primes
end

# Set the limit to two million
limit = 2000000

# Find the sum of all primes below two million
result = sum_of_primes_below(limit)

println("The sum of all primes below $limit is: $result")

