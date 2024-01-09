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

function find_nth_prime(n)
    primes = []
    i = 2
    
    while length(primes) < n
        if is_prime(i)
            push!(primes, i)
        end
        i += 1
    end
    
    return primes[end]
end

# Set the value to 10001 for the 10001st prime number
n = 10001

# Find the 10001st prime number
result = find_nth_prime(n)

println("The $n-st prime number is: $result")

