# Project Euler -> Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

n = num = 600851475143
i = 2
factors = []

# Every number can at most have one prime factor greater than its own square root
while i <= num**0.5
  while num % i == 0
    num /= i
    factors.push(i)
  end
  i += 1
end

if num != 1 && num != n
  factors.push(num)
end

puts factors.max
