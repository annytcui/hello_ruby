# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

def powers_sum(number)
  number.to_s.split("").map { |n| n.to_i ** 5 }.inject(0){
        |agg, n| agg + n }
end
limit = 9**5 * 5
sum = 0
(2..limit).each do |i|
  sum += i if i == powers_sum(i)
end

puts sum
