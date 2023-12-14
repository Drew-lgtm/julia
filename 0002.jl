max_value = 3000000

function fibonacci(n)
    if n == 0
        return 0
    elseif n == 1
        return 1
    else
        return fibonacci(n-1) + fibonacci(n-2)
    end
end

for num in range(1, stop=max_value - 1)
    print(fibonacci(num))
end