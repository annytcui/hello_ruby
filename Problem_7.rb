# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10001st prime number?

=begin
# Solution #1
primes = {}
primes[1] = 2
i = 2
p = 3
while i <= 10001
  n = 1
  q = p
  while n < i
    while p % primes[n] == 0
      p /= primes[n]
    end
    n += 1
  end

  if p == q
    primes[i] = p
    i += 1
  else
    p = q
  end

  p += 2
end

puts primes[10001]
=end

# Solution #2
def is_prime?(n)
  (2..Math.sqrt(n)).each do |i|
    return false if n % i == 0
  end
  return true
end

def find_prime(t)
  index = 1
  count = 3

  while true
    index += 1 if is_prime?(count)
    return count if index == t
    count += 2
  end
end

puts find_prime(10001)
