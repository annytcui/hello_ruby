# Project Euler Problem 28

limit = 1001 ** 2
numbers = (1..limit).to_a
i, j = 0, 2
sum = 1
while j <= 1000
    i += j
    sum += numbers[i]

    i += j
    sum += numbers[i]

    i += j
    sum += numbers[i]

    i += j
    sum += numbers[i]

  j += 2
end

puts sum
