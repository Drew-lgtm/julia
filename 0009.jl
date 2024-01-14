function find_pythagorean_triplet(target_sum)
    for a in 1:target_sum
        for b in a:target_sum
            c = target_sum - a - b
            if a^2 + b^2 == c^2
                return a, b, c
            end
        end
    end
    return nothing
end

function calculate_product(triplet)
    if triplet !== nothing
        return triplet[1] * triplet[2] * triplet[3]
    else
        return nothing
    end
end

# Set the target sum to 1000
target_sum = 1000

# Find the Pythagorean triplet
triplet = find_pythagorean_triplet(target_sum)

# Calculate the product abc
product = calculate_product(triplet)

println("The Pythagorean triplet for which a + b + c = $target_sum is: $triplet")
println("The product abc is: $product")

