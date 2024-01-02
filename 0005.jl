function gcd(a, b)
    while b != 0
        a, b = b, a % b
    end
    return a
end

function lcm(a, b)
    return a * b / gcd(a, b)
end

function smallest_multiple(limit)
    result = 1
    for i in 1:limit
        result = lcm(result, i)
    end
    return result
end

# Set the limit to 20 for the numbers from 1 to 20
limit = 20

# Find the smallest positive number that is evenly divisible by all numbers from 1 to 20
result = smallest_multiple(limit)

println("The smallest positive number evenly divisible by all numbers from 1 to $limit is: $result")

