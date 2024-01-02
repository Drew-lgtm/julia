function largest_prime_factor(n)
    # Initialize variables
    i = 2

    # Iterate while the number is greater than 1
    while n > 1
        # Check if i is a factor of n
        if n % i == 0
            # i is a factor, divide n by i
            n /= i
        else
            # i is not a factor, increment i
            i += 1
        end
    end

    # The last value of i is the largest prime factor
    return i
end

# Find the largest prime factor of 600851475143
result = largest_prime_factor(600851475143)

println("The largest prime factor of 600851475143 is: $result")

