# What is the sum of the digits of the number 2**1000?

number = 2 ** 1000
digits = number.to_s.split("")
sum = digits.map { |n| n.to_i }.reduce(:+)

puts sum
