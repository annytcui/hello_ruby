# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=begin

# Solution #1
sqrsum = 0
sum = 0
(1..100).each do |i|
  sqrsum += i ** 2
  sum += i
end

sumsqr = sum ** 2

diff = sqrsum - sumsqr
puts diff.abs

=end

# Solution #2

def Diff_SumSqr_SqrSum(n)
  sumsqr = ((1 + n) * n / 2) ** 2
  sqrsum = n * ((2 * n) + 1) * (n + 1) / 6
  puts sumsqr, sqrsum
  puts (sumsqr - sqrsum).abs
end

puts Diff_SumSqr_SqrSum(100)
