# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

=begin
# Solution #1
def abundant_number?(number)
  divisors_sum = 1
  (2..Math.sqrt(number)).each do |i|
    if number % i == 0
      divisors_sum += i + (number / i)
      if i == (number / i)
        divisors_sum -= i
      end
    end
  end
  number < divisors_sum
end

abundant_numbers = []
(2..28123).each do |i|
  abundant_numbers.push(i) if abundant_number?(i)
end

all_numbers = (1..28123).to_a
numbers = []

while abundant_numbers.length > 1
  n = abundant_numbers[0]
  abundant_numbers.each { |number|
      numbers.push(n+number) if n + number <= 28123 }
  abundant_numbers.shift
end

puts (all_numbers - numbers).inject(0) { |agg, n| agg + n }
=end

# Solution #2
class Integer
  def abundant?
    return false if self == 1

    sum = 1
    (2..Math.sqrt(self)).each do |i|
      if self % i == 0
        if i != (self / i)
          sum += i + (self / i)
        else
          sum += i
        end
      end
    end
    self < sum
  end
end

require 'set'
numbers = (1..28123)
#abundants = numbers.select(&:abundant?).to_set
#puts numbers.select { |i| abundants.none? { |a|
#     abundants.include?(i - a) } }.reduce(:+)

abundants = numbers.select(&:abundant?)
puts (numbers.to_set - abundants \
      .repeated_combination(2).to_set { |x, y| x + y }) \
      .inject(0) { |agg, n| agg + n }
