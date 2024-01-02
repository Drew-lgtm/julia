function is_palindrome(n)
    # Convert the number to a string
    str_n = string(n)
    
    # Check if the string is equal to its reverse
    return str_n == reverse(str_n)
end

function largest_palindrome_product()
    largest_palindrome = 0
    
    # Iterate over all possible products of two 3-digit numbers
    for i in 100:999
        for j in 100:999
            product = i * j
            
            # Check if the product is a palindrome and larger than the current largest palindrome
            if is_palindrome(product) && product > largest_palindrome
                largest_palindrome = product
            end
        end
    end
    
    return largest_palindrome
end

# Find the largest palindrome made from the product of two 3-digit numbers
result = largest_palindrome_product()

println("The largest palindrome made from the product of two 3-digit numbers is: $result")

