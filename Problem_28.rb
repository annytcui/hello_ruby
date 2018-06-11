# Project Euler Problem 28

# Solution #1
limit = 1001 ** 2
numbers = (1..limit).to_a
i, j = 0, 2
sum = 1
while j <= 1000
  4.times do
    i += j
    sum += numbers[i]
  end

  j += 2
end

puts sum
