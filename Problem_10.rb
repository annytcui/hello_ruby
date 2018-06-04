# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def is_prime?(n)
  i = 2
  while i <= (n ** 0.5)
    if n % i == 0
      return false
    end
    i += 1
  end
  return true
end

sum = 2
p = 3
while p < 2000000
  sum += p if is_prime?(p)
  p += 2
end
puts sum
