function sum_of_squares(n)
    return sum(i^2 for i in 1:n)
end

function square_of_sum(n)
    return sum(1:n)^2
end

function difference_between_squares_and_sum_square(n)
    return square_of_sum(n) - sum_of_squares(n)
end

# Set the value to 100 for the first one hundred natural numbers
n = 100

# Find the difference between the sum of the squares and the square of the sum
result = difference_between_squares_and_sum_square(n)

println("The difference between the sum of the squares and the square of the sum for the first $n natural numbers is: $result")

