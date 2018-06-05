# What is the value of the first triangle number to have over five hundred divisors?

require 'prime'
def factors_of(number)
  primes, powers = number.prime_division.transpose
  exponents = powers.map { |i| (0..i).to_a }
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map { |prime, power| prime ** power }.inject(:*)
  end
  return divisors.count
end

def triangle_number(index)
  return index * (index + 1) / 2
end

# Find the first triangle number to have over five hundred divisors
count = 0
index = 2
while count <= 500
  index += 1
  number = triangle_number(index)
  new_count = factors_of(number)
  count < new_count ? count = new_count : count
end
puts triangle_number(index)
puts count
