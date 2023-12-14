# sum of all numbers divisible by 3 or 5  up to 1 000

max_number = 1000
global result = 0

for num in range(1, stop=max_number - 1)
    if num % 3 == 0
        global result = result + num
    elseif num % 5 == 0
        global result = result + num
    end
end

println(result)
