# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

sqrsum = 0
sum = 0
(1..100).each do |i|
  sqrsum += i ** 2
  sum += i
end

sumsqr = sum ** 2

diff = sqrsum - sumsqr
puts diff.abs
