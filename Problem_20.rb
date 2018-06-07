# Find the sum of the digits in the number 100!

number = (1..100).reduce(:*)
sum = number.to_s.split("").map { |i| i.to_i }.reduce(:+)

puts sum
