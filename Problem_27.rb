# Considering the quadratics of the form:
#   n**2 + an + b, where |a| < 1000 and |b| <= 1000
#   where |n| is the modulus/absolute value of n
# Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0.

def is_prime?(number)
  return false if number <= 1

  (2..Math.sqrt(number)).each do |i|
    return false if number % i == 0
  end
  return true
end

max = 0
a, b = 0, 0
(-999..999).each do |x|
  (-1000..1000).each do |y|
    number = 2
    i = -1
    while is_prime?(number)
      i += 1
      number = i**2 + x*i + y
    end
    if max < (i - 1)
      max = i - 1
      a, b = x, y
    end
  end
end

puts max, a*b
